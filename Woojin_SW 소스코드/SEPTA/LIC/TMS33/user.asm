;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue Jan 22 10:53:07 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe user.c C:\Users\JDS\AppData\Local\Temp\user.if 
	.file	"user.c"
	.file	"string.h"
	.sym	_size_t,0,14,13,32
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"ds1647.h"
	.stag	.fake1,32
	.member	_R,6,4,18,1
	.member	_W,7,4,18,1
	.eos
	.stag	.fake2,32
	.member	_Sec,0,4,18,7
	.member	_Osc,7,4,18,1
	.eos
	.stag	.fake3,32
	.member	_Day,0,4,18,3
	.member	_SPare2,3,4,18,3
	.member	_FT,6,4,18,1
	.member	_Spare1,7,4,18,1
	.eos
	.utag	.fake0,32
	.member	_CtrlBit,0,8,11,32,.fake1
	.member	_SecBit,0,8,11,32,.fake2
	.member	_DayBit,0,8,11,32,.fake3
	.member	_B8,0,12,11,32
	.eos
	.sym	_DS1647ONELTP,0,9,13,32,.fake0
	.sym	_PDS1647ONELTP,0,25,13,32,.fake0
	.stag	.fake4,256
	.member	_Ctrl,0,9,8,32,.fake0
	.member	_Second,32,9,8,32,.fake0
	.member	_Minute,64,9,8,32,.fake0
	.member	_Hour,96,9,8,32,.fake0
	.member	_Day,128,9,8,32,.fake0
	.member	_Date,160,9,8,32,.fake0
	.member	_Month,192,9,8,32,.fake0
	.member	_Year,224,9,8,32,.fake0
	.eos
	.sym	_DS1647BDY,0,8,13,256,.fake4
	.sym	_PDS1647BDY,0,24,13,32,.fake4
	.stag	.fake5,224
	.member	_second,0,12,8,32
	.member	_minute,32,12,8,32
	.member	_hour,64,12,8,32
	.member	_day,96,12,8,32
	.member	_month,128,12,8,32
	.member	_year,160,12,8,32
	.member	_weekday,192,12,8,32
	.eos
	.sym	_DATE_TIME_TYPE,0,8,13,224,.fake5
	.sym	_DATE_TIME_PTR,0,24,13,32,.fake5
	.file	"main.h"
	.file	"xr16l784.h"
	.utag	.fake7,32
	.member	_btRxd,0,12,11,32
	.member	_btTxd,0,12,11,32
	.member	_btDll,0,12,11,32
	.eos
	.utag	.fake8,32
	.member	_btDlm,0,12,11,32
	.member	_btIer,0,12,11,32
	.eos
	.utag	.fake9,32
	.member	_btIir,0,12,11,32
	.member	_btFcr,0,12,11,32
	.eos
	.stag	.fake6,512
	.member	_CREG1,0,9,8,32,.fake7
	.member	_CREG2,32,9,8,32,.fake8
	.member	_CREG3,64,9,8,32,.fake9
	.member	_btLcr,96,12,8,32
	.member	_btMcr,128,12,8,32
	.member	_btLsr,160,12,8,32
	.member	_btMsr_U,192,12,8,32
	.member	_btScr,224,12,8,32
	.member	_btSp,256,60,8,256,,8
	.eos
	.sym	_XR16L784ST,0,8,13,512,.fake6
	.sym	_PXR16L784ST,0,24,13,32,.fake6
	.stag	.fake10,2048
	.member	_xr16Reg,0,56,8,2048,.fake6,4
	.eos
	.sym	_XR16L784BDY,0,8,13,2048,.fake10
	.sym	_PXR16L784BDY,0,24,13,32,.fake10
	.file	"user.h"
	.stag	.fake11,4352
	.member	_btStx,0,12,8,32
	.member	_btCmd,32,12,8,32
	.member	_btZero,64,12,8,32
	.member	_btLen,96,12,8,32
	.member	_btDat,128,60,8,4192,,131
	.member	_btSp,4320,12,8,32
	.eos
	.sym	_LNWKFTPIT,0,8,13,4352,.fake11
	.sym	_PLNWKFTPIT,0,24,13,32,.fake11
	.stag	.fake12,2048
	.member	_btStx,0,12,8,32
	.member	_btCmd,32,12,8,32
	.member	_btZero,64,12,8,32
	.member	_btLen,96,12,8,32
	.member	_btDat,128,60,8,1856,,58
	.member	_btSp,1984,60,8,64,,2
	.eos
	.sym	_LNWKGERIT,0,8,13,2048,.fake12
	.sym	_PLNWKGERIT,0,24,13,32,.fake12
	.stag	.fake13,30464
	.member	_btKind,0,12,8,32
	.member	_btVerH,32,12,8,32
	.member	_btVerL,64,12,8,32
	.member	_btBuildDateHH,96,12,8,32
	.member	_btBuildDateHL,128,12,8,32
	.member	_btBuildDateLH,160,12,8,32
	.member	_btBuildDateLL,192,12,8,32
	.member	_btSpare,224,12,8,32
	.member	_lfBuf,256,56,8,26112,.fake11,6
	.member	_lgRxBuf,26368,8,8,2048,.fake12
	.member	_lgTxBuf,28416,8,8,2048,.fake12
	.eos
	.sym	_LNWKDP,0,8,13,30464,.fake13
	.sym	_PLNWKDP,0,24,13,32,.fake13
	.stag	.fake14,352
	.member	_btSoh,0,12,8,32
	.member	_chSrcDev,32,60,8,64,,2
	.member	_chDestDev,96,60,8,64,,2
	.member	_chMsgCnt,160,60,8,64,,2
	.member	_chCmdCode,224,60,8,64,,2
	.member	_chDataLen,288,60,8,64,,2
	.eos
	.sym	_PTCHD,0,8,13,352,.fake14
	.sym	_PPTCHD,0,24,13,32,.fake14
	.stag	.fake15,768
	.member	_chPacT,0,60,8,64,,2
	.member	_chCcpM,64,60,8,64,,2
	.member	_chCncsT,128,60,8,64,,2
	.member	_chD0,192,60,8,64,,2
	.member	_chD1,256,60,8,64,,2
	.member	_chTran,320,252,8,192,,3,2
	.member	_chCid,512,252,8,192,,3,2
	.member	_chDs,704,60,8,64,,2
	.eos
	.sym	_PROTOCOL_1,0,8,13,768,.fake15
	.stag	.fake16,1472
	.member	_phHdBuf,0,8,8,352,.fake14
	.member	_chProtocol,352,8,8,768,.fake15
	.member	_chCarN,1120,252,8,128,,2,2
	.member	_chSpare,1248,252,8,128,,2,2
	.member	_chChkSum,1376,60,8,64,,2
	.member	_btEot,1440,12,8,32
	.eos
	.sym	_PACSDR,0,8,13,1472,.fake16
	.sym	_PPACSDR,0,24,13,32,.fake16
	.stag	.fake17,3136
	.member	_phHdBuf,0,8,8,352,.fake14
	.member	_chProtocol,352,8,8,768,.fake15
	.member	_chNowd,1120,60,8,64,,2
	.member	_chNexd,1184,60,8,64,,2
	.member	_chTrip,1248,252,8,192,,3,2
	.member	_chCard,1440,252,8,128,,2,2
	.member	_chSpk,1568,60,8,64,,2
	.member	_chCarInfo,1632,252,8,512,,8,2
	.member	_chD0,2144,60,8,64,,2
	.member	_chCplID,2208,60,8,64,,2
	.member	_chTrnLen,2272,60,8,64,,2
	.member	_chPeiCallst,2336,252,8,128,,2,2
	.member	_cSpBuf,2464,252,8,256,,4,2
	.member	_chFrmVer,2720,252,8,128,,2,2
	.member	_chBldData,2848,252,8,192,,3,2
	.member	_chChkSum,3040,60,8,64,,2
	.member	_btEot,3104,12,8,32
	.eos
	.sym	_PAC_PAC,0,8,13,3136,.fake17
	.sym	_PPAC_PAC,0,24,13,32,.fake17
	.stag	.fake18,1536
	.member	_phHdBuf,0,8,8,352,.fake14
	.member	_chRnum,352,60,8,64,,2
	.member	_chTran,416,252,8,192,,3,2
	.member	_chCarn,608,252,8,128,,2,2
	.member	_chDoorInfo,736,252,8,64,,1,2
	.member	_chLon_F_Ver,800,252,8,128,,2,2
	.member	_chLon_Build_Data,928,252,8,192,,3,2
	.member	_chMpu_F_Ver,1120,252,8,128,,2,2
	.member	_chMpu_Build_Data,1248,252,8,192,,3,2
	.member	_chChkSum,1440,60,8,64,,2
	.member	_btEot,1504,12,8,32
	.eos
	.sym	_LICSD,0,8,13,1536,.fake18
	.sym	_PLICSDR,0,24,13,32,.fake18
	.stag	.fake19,480
	.member	_btSoh,0,12,8,32
	.member	_chSrcDev,32,60,8,64,,2
	.member	_chDestDev,96,60,8,64,,2
	.member	_chMsgCnt,160,60,8,128,,4
	.member	_chCmdCode,288,60,8,64,,2
	.member	_chDataLen,352,60,8,128,,4
	.eos
	.sym	_CNCSHD,0,8,13,480,.fake19
	.sym	_PCNCSHD,0,24,13,32,.fake19
	.stag	.fake20,10208
	.member	_phHdBuf,0,8,8,480,.fake19
	.member	_sCommand,480,60,8,64,,2
	.member	_sCarKind,544,60,8,64,,2
	.member	_sTextDataAsc,608,60,8,9600,,300
	.eos
	.sym	_LIC_CNCS_HD,0,8,13,10208,.fake20
	.sym	_PLIC_CNCS_HD,0,24,13,32,.fake20
	.stag	.fake21,320
	.member	_chVer,0,50,8,128,,4
	.member	_chBuildDate,128,50,8,192,,6
	.eos
	.sym	_CNCS_LIC_VERBDD_SD,0,8,13,320,.fake21
	.sym	_PCNCS_LIC_VERBDD_SD,0,24,13,32,.fake21
	.stag	.fake22,13856
	.member	_VerCnt,0,13,8,32
	.member	_cvbBuf,32,56,8,13760,.fake21,43
	.member	_CarNum,13792,61,8,64,,2
	.eos
	.sym	_LIC_DPRAM_Ver,0,8,13,13856,.fake22
	.sym	_PLIC_DPRAM_Ver,0,24,13,32,.fake22
	.stag	.fake23,4096
	.member	_s1TRIC,0,252,8,256,,2,4
	.member	_s2CCP,256,252,8,256,,2,4
	.member	_s3LIC_LON,512,252,8,256,,2,4
	.member	_s4GIA,768,252,8,256,,2,4
	.member	_s5VTX,1024,252,8,256,,2,4
	.member	_s6PAC,1280,252,8,256,,2,4
	.member	_s7FDI,1536,252,8,256,,2,4
	.member	_s8SDI,1792,252,8,256,,2,4
	.member	_s9PII,2048,252,8,256,,2,4
	.member	_s10VRX,2304,252,8,256,,2,4
	.member	_s11CN_MAIN,2560,252,8,256,,2,4
	.member	_s12CN_LAVN,2816,252,8,256,,2,4
	.member	_s13CN_VP,3072,252,8,256,,2,4
	.member	_s14CN_PPLOY,3328,252,8,256,,2,4
	.member	_s15CN_SPLAY,3584,252,8,256,,2,4
	.member	_s16CN_PTU,3840,252,8,256,,2,4
	.eos
	.sym	_LIC_VER_LIST,0,8,13,4096,.fake23
	.sym	_PLIC_VER_LIST,0,24,13,32,.fake23
	.stag	.fake24,15168
	.member	_phHdBuf,0,8,8,480,.fake19
	.member	_sCommand,480,60,8,64,,2
	.member	_sYear,544,60,8,64,,2
	.member	_sMonth,608,60,8,64,,2
	.member	_sDay,672,60,8,64,,2
	.member	_sHour,736,60,8,64,,2
	.member	_sMinute,800,60,8,64,,2
	.member	_sSecond,864,60,8,64,,2
	.member	_sWaySide,928,60,8,64,,2
	.member	_sDaType,992,60,8,64,,2
	.member	_sFaultTime,1056,60,8,256,,8
	.member	_cvbBuf,1312,56,8,13760,.fake21,43
	.member	_chChkSum,15072,60,8,64,,2
	.member	_btEot,15136,12,8,32
	.eos
	.sym	_CNCS_LIC_SD,0,8,13,15168,.fake24
	.sym	_PCNCS_LIC_SD,0,24,13,32,.fake24
	.stag	.fake25,832
	.member	_phHdBuf,0,8,8,480,.fake19
	.member	_sCommand,480,60,8,64,,2
	.member	_sTEXT,544,60,8,128,,4
	.member	_chContactSignalBuf,672,60,8,64,,2
	.member	_chChkSum,736,60,8,64,,2
	.member	_btEot,800,12,8,32
	.eos
	.sym	_CNCS_LIC_T_F,0,8,13,832,.fake25
	.sym	_PCNCS_LIC_T_F,0,24,13,32,.fake25
	.stag	.fake26,768
	.member	_phHdBuf,0,8,8,480,.fake19
	.member	_sCommand,480,60,8,64,,2
	.member	_sTEXT,544,60,8,128,,4
	.member	_chChkSum,672,60,8,64,,2
	.member	_btEot,736,12,8,32
	.eos
	.sym	_CNCS_LIC_T_F_C,0,8,13,768,.fake26
	.sym	_PCNCS_LIC_T_F_C,0,24,13,32,.fake26
	.stag	.fake27,96
	.member	_sChSum,0,60,8,64,,2
	.member	_sETX,64,12,8,32
	.eos
	.sym	_LIC_CNCS_ED,0,8,13,96,.fake27
	.sym	_PLIC_CNCS_ED,0,24,13,32,.fake27
	.stag	.fake29,32
	.member	_n1VTX,0,14,18,1
	.member	_n2CNCS,1,14,18,1
	.member	_n3PAC2,2,14,18,1
	.member	_n4LIC,3,14,18,1
	.member	_n5WLAN,4,14,18,1
	.member	_n6GPS,5,14,18,1
	.member	_n7PAC1,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake30,32
	.member	_n1DPO1,0,14,18,1
	.member	_n2DPO2,1,14,18,1
	.member	_n3CCP1,2,14,18,1
	.member	_n4CCP2,3,14,18,1
	.member	_n5TRIC1,4,14,18,1
	.member	_n6TRIC2,5,14,18,1
	.member	_n7TR1,6,14,18,1
	.member	_n8TR2,7,14,18,1
	.eos
	.stag	.fake31,32
	.member	_n1Sp,0,14,18,1
	.member	_n2Sp,1,14,18,1
	.member	_n3CPO1,2,14,18,1
	.member	_n4CPO2,3,14,18,1
	.member	_n5CPO3,4,14,18,1
	.member	_n6CPO4,5,14,18,1
	.member	_n7Sp,6,14,18,1
	.member	_n8Sp,7,14,18,1
	.eos
	.stag	.fake32,32
	.member	_n1PEI1,0,14,18,1
	.member	_n2PEI2,1,14,18,1
	.member	_n3PEI3,2,14,18,1
	.member	_n4PEI4,3,14,18,1
	.member	_n5PEI5,4,14,18,1
	.member	_n6PEI6,5,14,18,1
	.member	_n7FDI1,6,14,18,1
	.member	_n8FDI2,7,14,18,1
	.eos
	.stag	.fake33,32
	.member	_n1SDI1,0,14,18,1
	.member	_n2SDI2,1,14,18,1
	.member	_n3SDI3,2,14,18,1
	.member	_n4SDI4,3,14,18,1
	.member	_n5SDI5,4,14,18,1
	.member	_n6SDI6,5,14,18,1
	.member	_n7SDI7,6,14,18,1
	.member	_n8SDI8,7,14,18,1
	.eos
	.stag	.fake34,32
	.member	_n1PID1_1,0,14,18,1
	.member	_n2PID1_2,1,14,18,1
	.member	_n3PID1_3,2,14,18,1
	.member	_n4PID1_4,3,14,18,1
	.member	_n5PID1_5,4,14,18,1
	.member	_n6PID1_6,5,14,18,1
	.member	_n7PID1_7,6,14,18,1
	.member	_n8PID1_8,7,14,18,1
	.eos
	.stag	.fake35,32
	.member	_n1PID2_1,0,14,18,1
	.member	_n2PID2_2,1,14,18,1
	.member	_n3PID2_3,2,14,18,1
	.member	_n4PID2_4,3,14,18,1
	.member	_n5PII1,4,14,18,1
	.member	_n6PII2,5,14,18,1
	.member	_n7PII3,6,14,18,1
	.member	_n8PII4,7,14,18,1
	.eos
	.stag	.fake28,256
	.member	_BYTE_1,0,8,8,32,.fake29
	.member	_BYTE_2,32,8,8,32,.fake30
	.member	_BYTE_3,64,8,8,32,.fake31
	.member	_BYTE_4,96,8,8,32,.fake32
	.member	_BYTE_5,128,12,8,32
	.member	_BYTE_6,160,8,8,32,.fake33
	.member	_BYTE_7,192,8,8,32,.fake34
	.member	_BYTE_8,224,8,8,32,.fake35
	.eos
	.sym	_COMMSTATUS_PA,0,8,13,256,.fake28
	.sym	_PCOMMSTATUS_PA,0,24,13,32,.fake28
	.stag	.fake37,32
	.member	_n1LIC,0,14,18,1
	.member	_n2WLR,1,14,18,1
	.member	_n3GIA,2,14,18,1
	.member	_n4PID,3,14,18,1
	.member	_n5AVL,4,14,18,1
	.member	_n6PAC2,5,14,18,1
	.member	_n7PAC1,6,14,18,1
	.member	_n8TRIC1,7,14,18,1
	.eos
	.stag	.fake38,32
	.member	_n1TRIC2,0,14,18,1
	.member	_n2TMP1,1,14,18,1
	.member	_n3TMP2,2,14,18,1
	.member	_n4CCP1,3,14,18,1
	.member	_n5CCP2,4,14,18,1
	.member	_n6PII1,5,14,18,1
	.member	_n7PII2,6,14,18,1
	.member	_n8PII3,7,14,18,1
	.eos
	.stag	.fake39,32
	.member	_n1PII4,0,14,18,1
	.member	_n2FDI1,1,14,18,1
	.member	_n3FDI2,2,14,18,1
	.member	_n4SDI1,3,14,18,1
	.member	_n5SDI2,4,14,18,1
	.member	_n6SDI3,5,14,18,1
	.member	_n7SDI4,6,14,18,1
	.member	_n8SDI5,7,14,18,1
	.eos
	.stag	.fake40,32
	.member	_n1SDI6,0,14,18,1
	.member	_n2SDI7,1,14,18,1
	.member	_n3SDI8,2,14,18,1
	.member	_n4PID1_1,3,14,18,1
	.member	_n5PID1_2,4,14,18,1
	.member	_n6PID1_3,5,14,18,1
	.member	_n7PID1_4,6,14,18,1
	.member	_n8PID1_5,7,14,18,1
	.eos
	.stag	.fake41,32
	.member	_n1PID1_6,0,14,18,1
	.member	_n2PID1_7,1,14,18,1
	.member	_n3PID1_8,2,14,18,1
	.member	_n4PID2_1,3,14,18,1
	.member	_n5PID2_2,4,14,18,1
	.member	_n6PID2_3,5,14,18,1
	.member	_n7PID2_4,6,14,18,1
	.member	_n8DPO1,7,14,18,1
	.eos
	.stag	.fake42,32
	.member	_n1DPO2,0,14,18,1
	.member	_n2CPO1,1,14,18,1
	.member	_n3CPO2,2,14,18,1
	.member	_n4CPO3,3,14,18,1
	.member	_n5CPO4,4,14,18,1
	.member	_n6PEI1,5,14,18,1
	.member	_n7PEI2,6,14,18,1
	.member	_n8PEI3,7,14,18,1
	.eos
	.stag	.fake43,32
	.member	_n1PEI4,0,14,18,1
	.member	_n2PEI5,1,14,18,1
	.member	_n3PEI6,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake36,224
	.member	_BYTE_1,0,8,8,32,.fake37
	.member	_BYTE_2,32,8,8,32,.fake38
	.member	_BYTE_3,64,8,8,32,.fake39
	.member	_BYTE_4,96,8,8,32,.fake40
	.member	_BYTE_5,128,8,8,32,.fake41
	.member	_BYTE_6,160,8,8,32,.fake42
	.member	_BYTE_7,192,8,8,32,.fake43
	.eos
	.sym	_COMMSTATUS_LIC,0,8,13,224,.fake36
	.sym	_PCOMMSTATUS_LIC,0,24,13,32,.fake36
	.stag	.fake46,32
	.member	_n1Reverse,0,14,18,1
	.member	_n2ForWard,1,14,18,1
	.member	_n3Uncouple,2,14,18,1
	.member	_n4Simulation,3,14,18,1
	.member	_n5Pattern,4,14,18,1
	.member	_n6A_CabOn,5,14,18,1
	.member	_n7B_CabOn,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake45,32
	.member	_BYTE,0,12,11,32
	.member	_BIT,0,8,11,32,.fake46
	.eos
	.stag	.fake44,32
	.member	_n1DATA,0,9,8,32,.fake45
	.eos
	.sym	_RACK_DI,0,8,13,32,.fake44
	.sym	_PRACK_DI,0,24,13,32,.fake44
	.stag	.fake47,1920
	.member	_phHdBuf,0,8,8,352,.fake14
	.member	_sYear,352,60,8,64,,2
	.member	_sMonth,416,60,8,64,,2
	.member	_sDay,480,60,8,64,,2
	.member	_sHour,544,60,8,64,,2
	.member	_sMinute,608,60,8,64,,2
	.member	_sSecond,672,60,8,64,,2
	.member	_chLat,736,252,8,320,,5,2
	.member	_chSpare,1056,60,8,64,,2
	.member	_chLon,1120,252,8,320,,5,2
	.member	_chD0,1440,60,8,64,,2
	.member	_chVersion,1504,252,8,128,,2,2
	.member	_chBuildDate,1632,252,8,192,,3,2
	.member	_chChkSum,1824,60,8,64,,2
	.member	_btEot,1888,12,8,32
	.eos
	.sym	_GIA_PAC,0,8,13,1920,.fake47
	.sym	_PGIA_PAC,0,24,13,32,.fake47
	.etag	_eCDT_TYPE,32
	.member	_eCDT_A,0,4,16,32
	.member	_eCDT_B,1,4,16,32
	.member	_eCDT_MAXIMUM,2,4,16,32
	.eos
	.stag	.fake48,96
	.member	_nTCnt,0,4,8,32
	.member	_nStPosi,32,4,8,32
	.member	_nEdPosi,64,4,8,32
	.eos
	.sym	_T_FAULT_INFO,0,8,13,96,.fake48
	.sym	_PFAULT_INFO,0,24,13,32,.fake48
	.file	"user.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nUserDebug1msTimer+0,32
	.field  	0,32		; _m_nUserDebug1msTimer @ 0

	.sect	".text"

	.global	_m_nUserDebug1msTimer
	.bss	_m_nUserDebug1msTimer,1
	.sym	_m_nUserDebug1msTimer,_m_nUserDebug1msTimer,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nUart1RxOneByteGapDelayTime+0,32
	.field  	0,32		; _m_nUart1RxOneByteGapDelayTime @ 0

	.sect	".text"

	.global	_m_nUart1RxOneByteGapDelayTime
	.bss	_m_nUart1RxOneByteGapDelayTime,1
	.sym	_m_nUart1RxOneByteGapDelayTime,_m_nUart1RxOneByteGapDelayTime,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nUart2RxOneByteGapDelayTime+0,32
	.field  	0,32		; _m_nUart2RxOneByteGapDelayTime @ 0

	.sect	".text"

	.global	_m_nUart2RxOneByteGapDelayTime
	.bss	_m_nUart2RxOneByteGapDelayTime,1
	.sym	_m_nUart2RxOneByteGapDelayTime,_m_nUart2RxOneByteGapDelayTime,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nUart3RxOneByteGapDelayTime+0,32
	.field  	0,32		; _m_nUart3RxOneByteGapDelayTime @ 0

	.sect	".text"

	.global	_m_nUart3RxOneByteGapDelayTime
	.bss	_m_nUart3RxOneByteGapDelayTime,1
	.sym	_m_nUart3RxOneByteGapDelayTime,_m_nUart3RxOneByteGapDelayTime,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_LIC_GIA_TimSetFlag+0,32
	.field  	0,32		; _m_LIC_GIA_TimSetFlag @ 0

	.sect	".text"

	.global	_m_LIC_GIA_TimSetFlag
	.bss	_m_LIC_GIA_TimSetFlag,1
	.sym	_m_LIC_GIA_TimSetFlag,_m_LIC_GIA_TimSetFlag,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_LIC_CNCS_Tx_Flag+0,32
	.field  	0,32		; _m_LIC_CNCS_Tx_Flag @ 0

	.sect	".text"

	.global	_m_LIC_CNCS_Tx_Flag
	.bss	_m_LIC_CNCS_Tx_Flag,1
	.sym	_m_LIC_CNCS_Tx_Flag,_m_LIC_CNCS_Tx_Flag,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_LIC_CNCS_TX_DelyTime+0,32
	.field  	0,32		; _m_LIC_CNCS_TX_DelyTime @ 0

	.sect	".text"

	.global	_m_LIC_CNCS_TX_DelyTime
	.bss	_m_LIC_CNCS_TX_DelyTime,1
	.sym	_m_LIC_CNCS_TX_DelyTime,_m_LIC_CNCS_TX_DelyTime,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nLnWkTxFlag+0,32
	.field  	0,32		; _m_nLnWkTxFlag @ 0

	.sect	".text"

	.global	_m_nLnWkTxFlag
	.bss	_m_nLnWkTxFlag,1
	.sym	_m_nLnWkTxFlag,_m_nLnWkTxFlag,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_chCarKind+0,32
	.field  	65,32		; _m_chCarKind @ 0

	.sect	".text"

	.global	_m_chCarKind
	.bss	_m_chCarKind,1
	.sym	_m_chCarKind,_m_chCarKind,2,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nFaultCnt+0,32
	.field  	0,32		; _m_nFaultCnt @ 0

	.sect	".text"

	.global	_m_nFaultCnt
	.bss	_m_nFaultCnt,1
	.sym	_m_nFaultCnt,_m_nFaultCnt,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nRecving_Posi+0,32
	.field  	0,32		; _nRecving_Posi @ 0

	.sect	".text"

	.global	_nRecving_Posi
	.bss	_nRecving_Posi,1
	.sym	_nRecving_Posi,_nRecving_Posi,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nCDT_FaultDataStFlag+0,32
	.field  	0,32		; _m_nCDT_FaultDataStFlag @ 0

	.sect	".text"

	.global	_m_nCDT_FaultDataStFlag
	.bss	_m_nCDT_FaultDataStFlag,1
	.sym	_m_nCDT_FaultDataStFlag,_m_nCDT_FaultDataStFlag,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_wCarNo+0,32
	.field  	1793,32		; _m_wCarNo @ 0

	.sect	".text"

	.global	_m_wCarNo
	.bss	_m_wCarNo,1
	.sym	_m_wCarNo,_m_wCarNo,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_bLnWkDbgTxFlag+0,32
	.field  	0,32		; _m_bLnWkDbgTxFlag @ 0

	.sect	".text"

	.global	_m_bLnWkDbgTxFlag
	.bss	_m_bLnWkDbgTxFlag,1
	.sym	_m_bLnWkDbgTxFlag,_m_bLnWkDbgTxFlag,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nLnWkWaySideOnRxOk+0,32
	.field  	0,32		; _m_nLnWkWaySideOnRxOk @ 0

	.sect	".text"

	.global	_m_nLnWkWaySideOnRxOk
	.bss	_m_nLnWkWaySideOnRxOk,1
	.sym	_m_nLnWkWaySideOnRxOk,_m_nLnWkWaySideOnRxOk,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nCarCnt+0,32
	.field  	0,32		; _m_nCarCnt @ 0

	.sect	".text"

	.global	_m_nCarCnt
	.bss	_m_nCarCnt,1
	.sym	_m_nCarCnt,_m_nCarCnt,12,2,32

	.sect	".cinit"
	.field  	IR_1,32
	.field  	_m_nCarNo+0,32
	.field  	0,32		; _m_nCarNo[0] @ 0
	.field  	0,32		; _m_nCarNo[1] @ 32
IR_1:	.set	2

	.sect	".text"

	.global	_m_nCarNo
	.bss	_m_nCarNo,2
	.sym	_m_nCarNo,_m_nCarNo,61,2,64,,2

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nNvsramPos+0,32
	.field  	0,32		; _m_nNvsramPos @ 0

	.sect	".text"

	.global	_m_nNvsramPos
	.bss	_m_nNvsramPos,1
	.sym	_m_nNvsramPos,_m_nNvsramPos,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_bLnWkFtpEndFlag+0,32
	.field  	0,32		; _m_bLnWkFtpEndFlag @ 0

	.sect	".text"

	.global	_m_bLnWkFtpEndFlag
	.bss	_m_bLnWkFtpEndFlag,1
	.sym	_m_bLnWkFtpEndFlag,_m_bLnWkFtpEndFlag,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nDateTime2SecondCnt+0,32
	.field  	0,32		; _m_nDateTime2SecondCnt @ 0

	.sect	".text"

	.global	_m_nDateTime2SecondCnt
	.bss	_m_nDateTime2SecondCnt,1
	.sym	_m_nDateTime2SecondCnt,_m_nDateTime2SecondCnt,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nTxDbg1msTimer+0,32
	.field  	0,32		; _m_nTxDbg1msTimer @ 0

	.sect	".text"

	.global	_m_nTxDbg1msTimer
	.bss	_m_nTxDbg1msTimer,1
	.sym	_m_nTxDbg1msTimer,_m_nTxDbg1msTimer,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nDbgTxPos+0,32
	.field  	-1,32		; _m_nDbgTxPos @ 0

	.sect	".text"

	.global	_m_nDbgTxPos
	.bss	_m_nDbgTxPos,1
	.sym	_m_nDbgTxPos,_m_nDbgTxPos,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSingleOrMarriedCarUpdate1msTimer+0,32
	.field  	0,32		; _m_nSingleOrMarriedCarUpdate1msTimer @ 0

	.sect	".text"

	.global	_m_nSingleOrMarriedCarUpdate1msTimer
	.bss	_m_nSingleOrMarriedCarUpdate1msTimer,1
	.sym	_m_nSingleOrMarriedCarUpdate1msTimer,_m_nSingleOrMarriedCarUpdate1msTimer,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_btCttSignalA+0,32
	.field  	0,32		; _m_btCttSignalA @ 0

	.sect	".text"

	.global	_m_btCttSignalA
	.bss	_m_btCttSignalA,1
	.sym	_m_btCttSignalA,_m_btCttSignalA,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_btCttSignalB+0,32
	.field  	0,32		; _m_btCttSignalB @ 0

	.sect	".text"

	.global	_m_btCttSignalB
	.bss	_m_btCttSignalB,1
	.sym	_m_btCttSignalB,_m_btCttSignalB,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nGiaRxCheck1msTimer+0,32
	.field  	0,32		; _m_nGiaRxCheck1msTimer @ 0

	.sect	".text"

	.global	_m_nGiaRxCheck1msTimer
	.bss	_m_nGiaRxCheck1msTimer,1
	.sym	_m_nGiaRxCheck1msTimer,_m_nGiaRxCheck1msTimer,14,2,32

	.sect	".cinit"
	.field  	IR_2,32
	.field  	_LIC_VerList+0,32
	.field  	84,32		; _LIC_VerList[0] @ 0
	.field  	82,32		; _LIC_VerList[1] @ 32
	.field  	73,32		; _LIC_VerList[2] @ 64
	.field  	67,32		; _LIC_VerList[3] @ 96
	.field  	49,32		; _LIC_VerList[4] @ 128
	.field  	0,32		; _LIC_VerList[5] @ 160
	.space	4
	.field  	84,32		; _LIC_VerList[10] @ 320
	.field  	82,32		; _LIC_VerList[11] @ 352
	.field  	73,32		; _LIC_VerList[12] @ 384
	.field  	67,32		; _LIC_VerList[13] @ 416
	.field  	50,32		; _LIC_VerList[14] @ 448
	.field  	0,32		; _LIC_VerList[15] @ 480
	.space	4
	.field  	67,32		; _LIC_VerList[20] @ 640
	.field  	67,32		; _LIC_VerList[21] @ 672
	.field  	80,32		; _LIC_VerList[22] @ 704
	.field  	49,32		; _LIC_VerList[23] @ 736
	.field  	0,32		; _LIC_VerList[24] @ 768
IR_2:	.set	25

	.sect	".text"

	.sect	".cinit"
	.field  	IR_3,32
	.field  	_LIC_VerList+30,32
	.field  	67,32		; _LIC_VerList[30] @ 960
	.field  	67,32		; _LIC_VerList[31] @ 992
	.field  	80,32		; _LIC_VerList[32] @ 1024
	.field  	50,32		; _LIC_VerList[33] @ 1056
	.field  	0,32		; _LIC_VerList[34] @ 1088
IR_3:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_4,32
	.field  	_LIC_VerList+40,32
	.field  	76,32		; _LIC_VerList[40] @ 1280
	.field  	73,32		; _LIC_VerList[41] @ 1312
	.field  	67,32		; _LIC_VerList[42] @ 1344
	.field  	95,32		; _LIC_VerList[43] @ 1376
	.field  	76,32		; _LIC_VerList[44] @ 1408
	.field  	79,32		; _LIC_VerList[45] @ 1440
	.field  	78,32		; _LIC_VerList[46] @ 1472
	.field  	0,32		; _LIC_VerList[47] @ 1504
	.space	2
	.field  	76,32		; _LIC_VerList[50] @ 1600
	.field  	73,32		; _LIC_VerList[51] @ 1632
	.field  	67,32		; _LIC_VerList[52] @ 1664
	.field  	95,32		; _LIC_VerList[53] @ 1696
	.field  	77,32		; _LIC_VerList[54] @ 1728
	.field  	80,32		; _LIC_VerList[55] @ 1760
	.field  	85,32		; _LIC_VerList[56] @ 1792
	.field  	0,32		; _LIC_VerList[57] @ 1824
	.space	2
	.field  	71,32		; _LIC_VerList[60] @ 1920
	.field  	73,32		; _LIC_VerList[61] @ 1952
	.field  	65,32		; _LIC_VerList[62] @ 1984
	.field  	0,32		; _LIC_VerList[63] @ 2016
IR_4:	.set	24

	.sect	".text"

	.sect	".cinit"
	.field  	IR_5,32
	.field  	_LIC_VerList+70,32
	.field  	86,32		; _LIC_VerList[70] @ 2240
	.field  	84,32		; _LIC_VerList[71] @ 2272
	.field  	88,32		; _LIC_VerList[72] @ 2304
	.field  	0,32		; _LIC_VerList[73] @ 2336
IR_5:	.set	4

	.sect	".text"

	.sect	".cinit"
	.field  	IR_6,32
	.field  	_LIC_VerList+80,32
	.field  	80,32		; _LIC_VerList[80] @ 2560
	.field  	65,32		; _LIC_VerList[81] @ 2592
	.field  	67,32		; _LIC_VerList[82] @ 2624
	.field  	49,32		; _LIC_VerList[83] @ 2656
	.field  	0,32		; _LIC_VerList[84] @ 2688
IR_6:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_7,32
	.field  	_LIC_VerList+90,32
	.field  	80,32		; _LIC_VerList[90] @ 2880
	.field  	65,32		; _LIC_VerList[91] @ 2912
	.field  	67,32		; _LIC_VerList[92] @ 2944
	.field  	50,32		; _LIC_VerList[93] @ 2976
	.field  	0,32		; _LIC_VerList[94] @ 3008
IR_7:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_8,32
	.field  	_LIC_VerList+100,32
	.field  	70,32		; _LIC_VerList[100] @ 3200
	.field  	68,32		; _LIC_VerList[101] @ 3232
	.field  	73,32		; _LIC_VerList[102] @ 3264
	.field  	49,32		; _LIC_VerList[103] @ 3296
	.field  	0,32		; _LIC_VerList[104] @ 3328
IR_8:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_9,32
	.field  	_LIC_VerList+110,32
	.field  	70,32		; _LIC_VerList[110] @ 3520
	.field  	68,32		; _LIC_VerList[111] @ 3552
	.field  	73,32		; _LIC_VerList[112] @ 3584
	.field  	50,32		; _LIC_VerList[113] @ 3616
	.field  	0,32		; _LIC_VerList[114] @ 3648
IR_9:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_10,32
	.field  	_LIC_VerList+120,32
	.field  	83,32		; _LIC_VerList[120] @ 3840
	.field  	68,32		; _LIC_VerList[121] @ 3872
	.field  	73,32		; _LIC_VerList[122] @ 3904
	.field  	49,32		; _LIC_VerList[123] @ 3936
	.field  	0,32		; _LIC_VerList[124] @ 3968
IR_10:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_11,32
	.field  	_LIC_VerList+130,32
	.field  	83,32		; _LIC_VerList[130] @ 4160
	.field  	68,32		; _LIC_VerList[131] @ 4192
	.field  	73,32		; _LIC_VerList[132] @ 4224
	.field  	50,32		; _LIC_VerList[133] @ 4256
	.field  	0,32		; _LIC_VerList[134] @ 4288
IR_11:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_12,32
	.field  	_LIC_VerList+140,32
	.field  	83,32		; _LIC_VerList[140] @ 4480
	.field  	68,32		; _LIC_VerList[141] @ 4512
	.field  	73,32		; _LIC_VerList[142] @ 4544
	.field  	51,32		; _LIC_VerList[143] @ 4576
	.field  	0,32		; _LIC_VerList[144] @ 4608
IR_12:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_13,32
	.field  	_LIC_VerList+150,32
	.field  	83,32		; _LIC_VerList[150] @ 4800
	.field  	68,32		; _LIC_VerList[151] @ 4832
	.field  	73,32		; _LIC_VerList[152] @ 4864
	.field  	52,32		; _LIC_VerList[153] @ 4896
	.field  	0,32		; _LIC_VerList[154] @ 4928
IR_13:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_14,32
	.field  	_LIC_VerList+160,32
	.field  	83,32		; _LIC_VerList[160] @ 5120
	.field  	68,32		; _LIC_VerList[161] @ 5152
	.field  	73,32		; _LIC_VerList[162] @ 5184
	.field  	53,32		; _LIC_VerList[163] @ 5216
	.field  	0,32		; _LIC_VerList[164] @ 5248
IR_14:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_15,32
	.field  	_LIC_VerList+170,32
	.field  	83,32		; _LIC_VerList[170] @ 5440
	.field  	68,32		; _LIC_VerList[171] @ 5472
	.field  	73,32		; _LIC_VerList[172] @ 5504
	.field  	54,32		; _LIC_VerList[173] @ 5536
	.field  	0,32		; _LIC_VerList[174] @ 5568
IR_15:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_16,32
	.field  	_LIC_VerList+180,32
	.field  	83,32		; _LIC_VerList[180] @ 5760
	.field  	68,32		; _LIC_VerList[181] @ 5792
	.field  	73,32		; _LIC_VerList[182] @ 5824
	.field  	55,32		; _LIC_VerList[183] @ 5856
	.field  	0,32		; _LIC_VerList[184] @ 5888
IR_16:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_17,32
	.field  	_LIC_VerList+190,32
	.field  	83,32		; _LIC_VerList[190] @ 6080
	.field  	68,32		; _LIC_VerList[191] @ 6112
	.field  	73,32		; _LIC_VerList[192] @ 6144
	.field  	56,32		; _LIC_VerList[193] @ 6176
	.field  	0,32		; _LIC_VerList[194] @ 6208
IR_17:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_18,32
	.field  	_LIC_VerList+200,32
	.field  	80,32		; _LIC_VerList[200] @ 6400
	.field  	73,32		; _LIC_VerList[201] @ 6432
	.field  	73,32		; _LIC_VerList[202] @ 6464
	.field  	49,32		; _LIC_VerList[203] @ 6496
	.field  	0,32		; _LIC_VerList[204] @ 6528
IR_18:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_19,32
	.field  	_LIC_VerList+210,32
	.field  	80,32		; _LIC_VerList[210] @ 6720
	.field  	73,32		; _LIC_VerList[211] @ 6752
	.field  	73,32		; _LIC_VerList[212] @ 6784
	.field  	50,32		; _LIC_VerList[213] @ 6816
	.field  	0,32		; _LIC_VerList[214] @ 6848
IR_19:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_20,32
	.field  	_LIC_VerList+220,32
	.field  	80,32		; _LIC_VerList[220] @ 7040
	.field  	73,32		; _LIC_VerList[221] @ 7072
	.field  	73,32		; _LIC_VerList[222] @ 7104
	.field  	51,32		; _LIC_VerList[223] @ 7136
	.field  	0,32		; _LIC_VerList[224] @ 7168
IR_20:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_21,32
	.field  	_LIC_VerList+230,32
	.field  	80,32		; _LIC_VerList[230] @ 7360
	.field  	73,32		; _LIC_VerList[231] @ 7392
	.field  	73,32		; _LIC_VerList[232] @ 7424
	.field  	52,32		; _LIC_VerList[233] @ 7456
	.field  	0,32		; _LIC_VerList[234] @ 7488
IR_21:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_22,32
	.field  	_LIC_VerList+240,32
	.field  	80,32		; _LIC_VerList[240] @ 7680
	.field  	73,32		; _LIC_VerList[241] @ 7712
	.field  	68,32		; _LIC_VerList[242] @ 7744
	.field  	50,32		; _LIC_VerList[243] @ 7776
	.field  	45,32		; _LIC_VerList[244] @ 7808
	.field  	49,32		; _LIC_VerList[245] @ 7840
	.field  	0,32		; _LIC_VerList[246] @ 7872
	.space	3
	.field  	80,32		; _LIC_VerList[250] @ 8000
	.field  	73,32		; _LIC_VerList[251] @ 8032
	.field  	68,32		; _LIC_VerList[252] @ 8064
	.field  	49,32		; _LIC_VerList[253] @ 8096
	.field  	45,32		; _LIC_VerList[254] @ 8128
	.field  	49,32		; _LIC_VerList[255] @ 8160
	.field  	0,32		; _LIC_VerList[256] @ 8192
	.space	3
	.field  	80,32		; _LIC_VerList[260] @ 8320
	.field  	73,32		; _LIC_VerList[261] @ 8352
	.field  	68,32		; _LIC_VerList[262] @ 8384
	.field  	49,32		; _LIC_VerList[263] @ 8416
	.field  	45,32		; _LIC_VerList[264] @ 8448
	.field  	50,32		; _LIC_VerList[265] @ 8480
	.field  	0,32		; _LIC_VerList[266] @ 8512
	.space	3
	.field  	80,32		; _LIC_VerList[270] @ 8640
	.field  	73,32		; _LIC_VerList[271] @ 8672
	.field  	68,32		; _LIC_VerList[272] @ 8704
	.field  	49,32		; _LIC_VerList[273] @ 8736
	.field  	45,32		; _LIC_VerList[274] @ 8768
	.field  	51,32		; _LIC_VerList[275] @ 8800
	.field  	0,32		; _LIC_VerList[276] @ 8832
	.space	3
	.field  	80,32		; _LIC_VerList[280] @ 8960
	.field  	73,32		; _LIC_VerList[281] @ 8992
	.field  	68,32		; _LIC_VerList[282] @ 9024
	.field  	49,32		; _LIC_VerList[283] @ 9056
	.field  	45,32		; _LIC_VerList[284] @ 9088
	.field  	52,32		; _LIC_VerList[285] @ 9120
	.field  	0,32		; _LIC_VerList[286] @ 9152
	.space	3
	.field  	80,32		; _LIC_VerList[290] @ 9280
	.field  	73,32		; _LIC_VerList[291] @ 9312
	.field  	68,32		; _LIC_VerList[292] @ 9344
	.field  	50,32		; _LIC_VerList[293] @ 9376
	.field  	45,32		; _LIC_VerList[294] @ 9408
	.field  	50,32		; _LIC_VerList[295] @ 9440
	.field  	0,32		; _LIC_VerList[296] @ 9472
	.space	3
	.field  	80,32		; _LIC_VerList[300] @ 9600
	.field  	73,32		; _LIC_VerList[301] @ 9632
	.field  	68,32		; _LIC_VerList[302] @ 9664
	.field  	50,32		; _LIC_VerList[303] @ 9696
	.field  	45,32		; _LIC_VerList[304] @ 9728
	.field  	51,32		; _LIC_VerList[305] @ 9760
	.field  	0,32		; _LIC_VerList[306] @ 9792
	.space	3
	.field  	80,32		; _LIC_VerList[310] @ 9920
	.field  	73,32		; _LIC_VerList[311] @ 9952
	.field  	68,32		; _LIC_VerList[312] @ 9984
	.field  	49,32		; _LIC_VerList[313] @ 10016
	.field  	45,32		; _LIC_VerList[314] @ 10048
	.field  	53,32		; _LIC_VerList[315] @ 10080
	.field  	0,32		; _LIC_VerList[316] @ 10112
	.space	3
	.field  	80,32		; _LIC_VerList[320] @ 10240
	.field  	73,32		; _LIC_VerList[321] @ 10272
	.field  	68,32		; _LIC_VerList[322] @ 10304
	.field  	49,32		; _LIC_VerList[323] @ 10336
	.field  	45,32		; _LIC_VerList[324] @ 10368
	.field  	54,32		; _LIC_VerList[325] @ 10400
	.field  	0,32		; _LIC_VerList[326] @ 10432
	.space	3
	.field  	80,32		; _LIC_VerList[330] @ 10560
	.field  	73,32		; _LIC_VerList[331] @ 10592
	.field  	68,32		; _LIC_VerList[332] @ 10624
	.field  	49,32		; _LIC_VerList[333] @ 10656
	.field  	45,32		; _LIC_VerList[334] @ 10688
	.field  	55,32		; _LIC_VerList[335] @ 10720
	.field  	0,32		; _LIC_VerList[336] @ 10752
	.space	3
	.field  	80,32		; _LIC_VerList[340] @ 10880
	.field  	73,32		; _LIC_VerList[341] @ 10912
	.field  	68,32		; _LIC_VerList[342] @ 10944
	.field  	49,32		; _LIC_VerList[343] @ 10976
	.field  	45,32		; _LIC_VerList[344] @ 11008
	.field  	56,32		; _LIC_VerList[345] @ 11040
	.field  	0,32		; _LIC_VerList[346] @ 11072
	.space	3
	.field  	80,32		; _LIC_VerList[350] @ 11200
	.field  	73,32		; _LIC_VerList[351] @ 11232
	.field  	68,32		; _LIC_VerList[352] @ 11264
	.field  	50,32		; _LIC_VerList[353] @ 11296
	.field  	45,32		; _LIC_VerList[354] @ 11328
	.field  	52,32		; _LIC_VerList[355] @ 11360
	.field  	0,32		; _LIC_VerList[356] @ 11392
	.space	3
	.field  	77,32		; _LIC_VerList[360] @ 11520
	.field  	65,32		; _LIC_VerList[361] @ 11552
	.field  	73,32		; _LIC_VerList[362] @ 11584
	.field  	78,32		; _LIC_VerList[363] @ 11616
	.field  	0,32		; _LIC_VerList[364] @ 11648
IR_22:	.set	125

	.sect	".text"

	.sect	".cinit"
	.field  	IR_23,32
	.field  	_LIC_VerList+370,32
	.field  	76,32		; _LIC_VerList[370] @ 11840
	.field  	97,32		; _LIC_VerList[371] @ 11872
	.field  	117,32		; _LIC_VerList[372] @ 11904
	.field  	110,32		; _LIC_VerList[373] @ 11936
	.field  	99,32		; _LIC_VerList[374] @ 11968
	.field  	104,32		; _LIC_VerList[375] @ 12000
	.field  	101,32		; _LIC_VerList[376] @ 12032
	.field  	114,32		; _LIC_VerList[377] @ 12064
	.field  	0,32		; _LIC_VerList[378] @ 12096
	.field  	0,32
	.field  	85,32		; _LIC_VerList[380] @ 12160
	.field  	112,32		; _LIC_VerList[381] @ 12192
	.field  	100,32		; _LIC_VerList[382] @ 12224
	.field  	97,32		; _LIC_VerList[383] @ 12256
	.field  	116,32		; _LIC_VerList[384] @ 12288
	.field  	97,32		; _LIC_VerList[385] @ 12320
	.field  	0,32		; _LIC_VerList[386] @ 12352
	.space	3
	.field  	80,32		; _LIC_VerList[390] @ 12480
	.field  	80,32		; _LIC_VerList[391] @ 12512
	.field  	0,32		; _LIC_VerList[392] @ 12544
IR_23:	.set	23

	.sect	".text"

	.sect	".cinit"
	.field  	IR_24,32
	.field  	_LIC_VerList+400,32
	.field  	83,32		; _LIC_VerList[400] @ 12800
	.field  	80,32		; _LIC_VerList[401] @ 12832
	.field  	0,32		; _LIC_VerList[402] @ 12864
IR_24:	.set	3

	.sect	".text"

	.sect	".cinit"
	.field  	IR_25,32
	.field  	_LIC_VerList+410,32
	.field  	70,32		; _LIC_VerList[410] @ 13120
	.field  	84,32		; _LIC_VerList[411] @ 13152
	.field  	80,32		; _LIC_VerList[412] @ 13184
	.field  	68,32		; _LIC_VerList[413] @ 13216
	.field  	97,32		; _LIC_VerList[414] @ 13248
	.field  	116,32		; _LIC_VerList[415] @ 13280
	.field  	97,32		; _LIC_VerList[416] @ 13312
	.field  	0,32		; _LIC_VerList[417] @ 13344
	.space	2
	.field  	67,32		; _LIC_VerList[420] @ 13440
	.field  	68,32		; _LIC_VerList[421] @ 13472
	.field  	84,32		; _LIC_VerList[422] @ 13504
	.field  	68,32		; _LIC_VerList[423] @ 13536
	.field  	97,32		; _LIC_VerList[424] @ 13568
	.field  	116,32		; _LIC_VerList[425] @ 13600
	.field  	97,32		; _LIC_VerList[426] @ 13632
	.field  	0,32		; _LIC_VerList[427] @ 13664
IR_25:	.set	18

	.sect	".text"

	.global	_LIC_VerList
	.bss	_LIC_VerList,500
	.sym	_LIC_VerList,_LIC_VerList,252,2,16000,,50,10
	.sect	 ".text"

	.global	_user_Init
	.sym	_user_Init,_user_Init,32,2,0
	.func	80
;******************************************************************************
;* FUNCTION NAME: _user_Init                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,r4,r5,ar0,ar1,fp,ir0,ir1,bk,sp,st       *
;*   Regs Saved         : r4,r5                                               *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 136 Auto + 2 SOE = 140 words      *
;******************************************************************************
_user_Init:
	.sym	_i,1,4,1,32
	.sym	_wCarNo,2,4,1,32
	.sym	_LL,3,12,1,32
	.sym	_LH,4,12,1,32
	.sym	_HL,5,12,1,32
	.sym	_HH,6,12,1,32
	.sym	_szBuf,7,50,1,4096,,128
	.sym	_pDpram,135,28,1,32
	.sym	_pLicVerDp,136,24,1,32,.fake22
	.line	1
;----------------------------------------------------------------------
;  80 | void user_Init()                                                       
;  82 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      136,sp
        push      r4
        push      r5
	.line	4
;----------------------------------------------------------------------
;  83 | int wCarNo = 0;                                                        
;  84 | UCHAR LL,LH,HL,HH;                                                     
;  85 | char szBuf[128];                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
;  86 | UCHAR *pDpram = (UCHAR *)DPRAM_BASE;                                   
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        sti       r0,*+fp(135)
	.line	9
;----------------------------------------------------------------------
;  88 | PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //¹öÀü Á¤º¸ Ã³¸
;     | ®¸¦ À§ÇØ ÀÓÀÇ·Î ¸¸µé¾ú´Ù.                                              
;  90 | // ÃÊ±âÈ­ÇÏ±â                                                          
;  91 | //timeGet(&m_tmCurTime);                                               
;----------------------------------------------------------------------
        ldiu      @CL2,r0
        sti       r0,*+fp(136)
	.line	13
;----------------------------------------------------------------------
;  92 | memset(m_btCommSt,0x00,sizeof(m_btCommSt)); //»óÅÂ µ¥ÀÌÅ¸ ÀúÀå ¹öÆÛ    
;----------------------------------------------------------------------
        ldiu      7,r2
        ldiu      0,r1
        push      r2
        ldiu      @CL3,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
;  94 | memset(m_btExVersionTbl,0x0000,sizeof(m_btExVersionTbl));              
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      47,r1
        push      r1
        push      r0
        ldiu      @CL4,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
;  95 | memset(m_btExVersion_DAYTbl,0x0000,sizeof(m_btExVersion_DAYTbl));      
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      47,r1
        push      r1
        push      r0
        ldiu      @CL5,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
;  96 | memset(m_bExVersionEnableTbl,0x0000,sizeof(m_bExVersionEnableTbl));    
;----------------------------------------------------------------------
        ldiu      47,r1
        ldiu      @CL6,r2
        ldiu      0,r0
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	19
;----------------------------------------------------------------------
;  98 | for(i=0;i<VER_BDD_MAX_CNT;i++)                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      43,r0
        bge       L19
;*      Branch Occurs to L19 
L2:        
	.line	21
;----------------------------------------------------------------------
; 100 | if(WORD_L(pLicVerDp->VerCnt) == TRUE)                                  
; 102 |         if(                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(136),ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      1,r0
        bned      L17
	nop
        ldine     *+fp(136),ar0
        ldine     1,r0
;*      Branch Occurs to L17 
	.line	24
;----------------------------------------------------------------------
; 103 | !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chVer[0])) || !IsNumAsc(WORD_L(pL
;     | icVerDp->cvbBuf[i].chVer[1])) ||                                       
; 104 | !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chVer[2])) || !IsNumAsc(WORD_L(pL
;     | icVerDp->cvbBuf[i].chVer[3])) ||                                       
; 106 | !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[0])) || !IsNumAsc(WOR
;     | D_L(pLicVerDp->cvbBuf[i].chBuildDate[1])) ||                           
; 107 | !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[2])) || !IsNumAsc(WOR
;     | D_L(pLicVerDp->cvbBuf[i].chBuildDate[3])) ||                           
; 108 | !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[4])) || !IsNumAsc(WOR
;     | D_L(pLicVerDp->cvbBuf[i].chBuildDate[5]))                              
; 109 | )                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(1),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L13
;*      Branch Occurs to L13 
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(2),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L13
;*      Branch Occurs to L13 
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L13
;*      Branch Occurs to L13 
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(4),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L13
;*      Branch Occurs to L13 
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(5),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L13
;*      Branch Occurs to L13 
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(6),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L13
;*      Branch Occurs to L13 
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(7),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L13
;*      Branch Occurs to L13 
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(8),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L13
;*      Branch Occurs to L13 
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(9),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L13
;*      Branch Occurs to L13 
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(10),r0
        push      r0
        call      _IsNumAsc
                                        ; Call Occurs
        cmpi      0,r0
        bned      L15
        subi      1,sp
	nop
        ldine     *+fp(1),ar0
;*      Branch Occurs to L15 
L13:        
	.line	32
;----------------------------------------------------------------------
; 111 | memset(pLicVerDp->cvbBuf[i].chVer,'0',4);                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      4,r2
        ldiu      48,r1
        mpyi      10,r0
        addi      *+fp(136),r0          ; Unsigned
        push      r2
        addi      1,r0                  ; Unsigned
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	33
;----------------------------------------------------------------------
; 112 | memset(pLicVerDp->cvbBuf[i].chBuildDate,'0',6);                        
; 114 | else                                                                   
;----------------------------------------------------------------------
        ldiu      6,r2
        ldiu      *+fp(1),r0
        ldiu      48,r1
        mpyi      10,r0
        addi      *+fp(136),r0          ; Unsigned
        push      r2
        push      r1
        addi      5,r0                  ; Unsigned
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
        bu        L18
;*      Branch Occurs to L18 
	.line	37
;----------------------------------------------------------------------
; 116 | LH = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[0])),ConvA
;     | sc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[1])));                        
;----------------------------------------------------------------------
L15:        
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(1),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      255,r1
        ldiu      *+fp(1),ar0
        ldiu      r0,r4
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ash       4,r4
        and       *+ar0(2),r1
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        subi      1,sp
        and       255,r0
        sti       r0,*+fp(4)
	.line	38
;----------------------------------------------------------------------
; 117 | LL = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[2])),ConvA
;     | sc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[3])));                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        ldiu      255,r1
        addi      *+fp(136),ar0         ; Unsigned
        ash       4,r4
        and       *+ar0(4),r1
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        subi      1,sp
        and       255,r0
        sti       r0,*+fp(3)
	.line	39
;----------------------------------------------------------------------
; 118 | m_btExVersionTbl[i] = MAKE_WORD(LH,LL);                                
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(4),r1
        and       *+fp(3),r0
        ash       8,r1
        or3       r1,r0,r0
        ldiu      @CL4,ar0
        ldiu      *+fp(1),ir0
        and       65535,r0
        sti       r0,*+ar0(ir0)
	.line	40
;----------------------------------------------------------------------
; 119 | HH = 0x20;                                                             
;----------------------------------------------------------------------
        ldiu      32,r0
        sti       r0,*+fp(6)
	.line	41
;----------------------------------------------------------------------
; 120 | HL = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[0]))
;     | ,ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[1])));            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(5),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r1
        ldiu      r0,r4
        ash       4,r4
        and       *+ar0(6),r1
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        subi      1,sp
        or3       r4,r0,r0
        and       255,r0
        sti       r0,*+fp(5)
	.line	42
;----------------------------------------------------------------------
; 121 | LH = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[2]))
;     | ,ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[3])));            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(7),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      r0,r4
        ldiu      255,r0
        subi      1,sp
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ash       4,r4
        and       *+ar0(8),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        sti       r0,*+fp(4)
	.line	43
;----------------------------------------------------------------------
; 122 | LL = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[4]))
;     | ,ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[5])));            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      10,ar0
        addi      *+fp(136),ar0         ; Unsigned
        ldiu      255,r0
        and       *+ar0(9),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(1),ar0
        ldiu      255,r1
        mpyi      10,ar0
        ldiu      r0,r4
        addi      *+fp(136),ar0         ; Unsigned
        ash       4,r4
        and       *+ar0(10),r1
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        subi      1,sp
        and       255,r0
        sti       r0,*+fp(3)
	.line	44
;----------------------------------------------------------------------
; 123 | m_btExVersion_DAYTbl[i] = MAKE_DWORD(HH,HL,LH,LL);                     
; 126 | else //ÇÑ¹øµµ ¹öÀü Á¤º¸ ÀÔ·ÂÀÌ µÇÁö¾ÊÀ» °æ¿ì 0 À¸·Î ÃÊ±âÈ­ ÇÑ´Ù.       
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(6),r3
        and       *+fp(5),r0
        ash       24,r3
        ash       16,r0
        or3       r3,r0,r0
        ldiu      255,r1
        and       *+fp(4),r1
        ldiu      255,r2
        ash       8,r1
        and       *+fp(3),r2
        ldiu      @CL5,ar0
        or3       r0,r1,r0
        ldiu      *+fp(1),ir0
        or3       r0,r2,r0
        sti       r0,*+ar0(ir0)
        bu        L18
;*      Branch Occurs to L18 
	.line	49
;----------------------------------------------------------------------
; 128 | pLicVerDp->VerCnt = TRUE;                                              
;----------------------------------------------------------------------
L17:        
        sti       r0,*ar0
	.line	50
;----------------------------------------------------------------------
; 129 | memset(pLicVerDp->cvbBuf[i].chVer,'0',4);                              
;----------------------------------------------------------------------
        ldiu      4,r2
        ldiu      48,r1
        ldiu      *+fp(1),r0
        mpyi      10,r0
        addi      *+fp(136),r0          ; Unsigned
        push      r2
        addi      1,r0                  ; Unsigned
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	51
;----------------------------------------------------------------------
; 130 | memset(pLicVerDp->cvbBuf[i].chBuildDate,'0',6);                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        mpyi      10,r0
        addi      *+fp(136),r0          ; Unsigned
        ldiu      6,r2
        push      r2
        ldiu      48,r1
        push      r1
        addi      5,r0                  ; Unsigned
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
L18:        
	.line	19
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      43,r0
        blt       L2
;*      Branch Occurs to L2 
L19:        
	.line	55
;----------------------------------------------------------------------
; 134 | if(MAKE_WORD(pLicVerDp->CarNum[0],pLicVerDp->CarNum[1]) != 0xFFFF)     
;----------------------------------------------------------------------
        ldiu      *+fp(136),ir0
        ldiu      431,ar0
        ldiu      8,r0
        ldiu      255,r1
        ldiu      432,ar1
        ldiu      ir0,ir1
        ash3      r0,*+ar0(ir0),r0
        and3      r1,*+ar1(ir1),r1
        or3       r0,r1,r0
        and       65535,r0
        cmpi      @CL7,r0
        beq       L21
;*      Branch Occurs to L21 
	.line	57
;----------------------------------------------------------------------
; 136 | m_wCarNo = MAKE_WORD(pLicVerDp->CarNum[0],pLicVerDp->CarNum[1]);       
; 139 | // LIC-MPUÁ¦¾î±â ¹öÁ¯ & ºôµåµ¥ÀÌÆ®                                     
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      8,r0
        ldiu      431,ar1
        ldiu      432,ar0
        ash3      r0,*+ar1(ir1),r0
        and3      r1,*+ar0(ir0),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,@_m_wCarNo+0
L21:        
	.line	61
;----------------------------------------------------------------------
; 140 | m_btExVersionTbl[5] = MAKE_WORD(                                       
; 141 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(1)/1000%10),ConvHex2Asc(GetFirmwareVersion(1)
;     | /100%10)),                                                             
; 142 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(1)/10%10),ConvHex2Asc(GetFirmwareVersion(1)%1
;     | 0))                                                                    
; 143 |                                                         );             
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      1000,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      1,r1
        ldiu      r0,r4
        subi      1,sp
        push      r1
        ash       4,r4
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      100,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      1,r1
        and       15,r0
        or3       r4,r0,r5
        and       255,r5
        subi      1,sp
        ash       8,r5
        push      r1
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      1,r1
        ldiu      r0,r4
        push      r1
        ash       4,r4
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        or3       r5,r0,r0
        and       65535,r0
        sti       r0,@_m_btExVersionTbl+5
        subi      1,sp
	.line	66
;----------------------------------------------------------------------
; 145 | m_btExVersion_DAYTbl[5] = MAKE_DWORD(                                  
; 146 |                                                         0x20,          
; 147 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(2)/100000%10),ConvHex2Asc(GetFirmwareVersion(
;     | 2)/10000%10)),                                                         
; 148 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(2)/1000%10),ConvHex2Asc(GetFirmwareVersion(2)
;     | /100%10)),                                                             
; 149 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(2)/10%10),ConvHex2Asc(GetFirmwareVersion(2)%1
;     | 0))                                                                    
; 150 |                                                         );             
; 152 | // ¹öÁ¯°ú ºôµåµ¥ÀÌÆ®ÀÇ ½ÃÇè¿ë ·çÆ¾
;     |                                                                        
; 247 | //                                                                     
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        ldiu      @CL8,r1
        subi      1,sp
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      2,r1
        push      r1
        ldiu      r0,r4
        ash       4,r4
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      10000,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      2,r1
        and       15,r0
        subi      1,sp
        or3       r4,r0,r4
        push      r1
        and       255,r4
        ash       16,r4
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      1000,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      r0,r5
        ldiu      2,r1
        subi      1,sp
        push      r1
        ash       4,r5
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      100,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        and       15,r0
        ldiu      2,r1
        or3       r5,r0,r0
        and       255,r0
        ash       8,r0
        subi      1,sp
        or3       r4,r0,r5
        push      r1
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      2,r1
        ldiu      r0,r4
        push      r1
        ash       4,r4
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        or3       r5,r0,r0
        or        @CL9,r0
        sti       r0,@_m_btExVersion_DAYTbl+5
        subi      1,sp
	.line	169
;----------------------------------------------------------------------
; 248 | i = GetFirmwareVersion(1);                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        sti       r0,*+fp(1)
	.line	170
;----------------------------------------------------------------------
; 249 | sprintf(szBuf,"Lonwork Monitor Program, Version:%d.%d%d%d\r\n",i/1000%1
;     | 0,i/100%10,i/10%10,i%10);                                              
;----------------------------------------------------------------------
        ldiu      1000,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      100,r1
        ldiu      r0,bk
        ldiu      *+fp(1),r0
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      r0,r3
        ldiu      10,r1
        ldiu      *+fp(1),r0
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      r0,ir0
        ldiu      10,r1
        ldiu      *+fp(1),r0
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,r1
        ldiu      @CL10,r2
        push      r0
        push      ir0
        push      r3
        push      bk
        addi      7,r1
        push      r2
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      6,sp
	.line	171
;----------------------------------------------------------------------
; 250 | user_DebugPrint(szBuf);                                                
; 252 | //memset(d_nCarNoList, 0xFFFFFF, sizeof(d_nCarNoList));                
; 254 | // DPRAM °Ë»ç                                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      7,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	198
        pop       r5
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      138,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	277,000000030h,136


	.sect	 ".text"

	.global	_user_Loop
	.sym	_user_Loop,_user_Loop,32,2,0
	.func	282
;******************************************************************************
;* FUNCTION NAME: _user_Loop                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_user_Loop:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 282 | void user_Loop()                                                       
; 284 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 286 | user_LonWorkLoop();                                                    
;----------------------------------------------------------------------
        call      _user_LonWorkLoop
                                        ; Call Occurs
	.line	7
;----------------------------------------------------------------------
; 288 | user_DebugLoop();                                                      
;----------------------------------------------------------------------
        call      _user_DebugLoop
                                        ; Call Occurs
	.line	9
;----------------------------------------------------------------------
; 290 | user_WithCncsRs232Loop();                                              
;----------------------------------------------------------------------
        call      _user_WithCncsRs232Loop
                                        ; Call Occurs
	.line	11
;----------------------------------------------------------------------
; 292 | user_WithPacRs485Loop();                                               
;----------------------------------------------------------------------
        call      _user_WithPacRs485Loop
                                        ; Call Occurs
	.line	13
;----------------------------------------------------------------------
; 294 | if(m_nSingleOrMarriedCarUpdate1msTimer > 500)                          
;----------------------------------------------------------------------
        ldiu      @_m_nSingleOrMarriedCarUpdate1msTimer+0,r0
        cmpi      500,r0
        bls       L31
;*      Branch Occurs to L31 
	.line	15
;----------------------------------------------------------------------
; 296 | m_nSingleOrMarriedCarUpdate1msTimer = 0;                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nSingleOrMarriedCarUpdate1msTimer+0
	.line	16
;----------------------------------------------------------------------
; 297 | if(user_IsSingleOrMarried()) SINGLE_OR_MARRIED_CAR = user_IsSingleOrMar
;     | ried();                                                                
;----------------------------------------------------------------------
        call      _user_IsSingleOrMarried
                                        ; Call Occurs
        cmpi      0,r0
        beq       L31
;*      Branch Occurs to L31 
        call      _user_IsSingleOrMarried
                                        ; Call Occurs
        ldiu      @CL11,ar0
        sti       r0,*ar0
L31:        
	.line	18
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	299,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_nRxPos$1+0,32
	.field  	0,32		; _nRxPos$1 @ 0

	.sect	".text"

	.sect	".cinit"
	.field  	1,32
	.field  	_nOldUart1RxOneByteGapDelayTime$2+0,32
	.field  	0,32		; _nOldUart1RxOneByteGapDelayTime$2 @ 0

	.sect	".text"
	.sect	 ".text"

	.global	_user_DebugLoop
	.sym	_user_DebugLoop,_user_DebugLoop,32,2,0
	.func	304
;******************************************************************************
;* FUNCTION NAME: _user_DebugLoop                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,r4,r5,ar0,ar1,ar2,fp,ar4,ar5,ir0,ir1,bk,*
;*                        sp,st,rs,re,rc                                      *
;*   Regs Saved         : r4,r5,ar4,ar5                                       *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 780 Auto + 4 SOE = 786 words      *
;******************************************************************************
_user_DebugLoop:
	.bss	_nRxPos$1,1
	.sym	_nRxPos,_nRxPos$1,4,3,32
	.bss	_nOldUart1RxOneByteGapDelayTime$2,1
	.sym	_nOldUart1RxOneByteGapDelayTime,_nOldUart1RxOneByteGapDelayTime$2,12,3,32
	.bss	_btRxBuf$3,256
	.sym	_btRxBuf,_btRxBuf$3,60,3,8192,,256
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_szBuf1,3,50,1,8192,,256
	.sym	_szBuf2,259,50,1,8192,,256
	.sym	_nRxLen,515,4,1,32
	.sym	_btBuf,516,60,1,8192,,256
	.sym	_tmBuf,772,8,1,224,.fake5
	.sym	_pLnWkDp,779,24,1,32,.fake13
	.sym	_pLicVerDp,780,24,1,32,.fake22
	.line	1
;----------------------------------------------------------------------
; 304 | void user_DebugLoop()                                                  
; 306 | int i,j;                                                               
; 307 | char szBuf1[256];                                                      
; 308 | char szBuf2[256];                                                      
; 309 | int nRxLen;                                                            
; 310 | UCHAR btBuf[256];                                                      
; 311 | static int nRxPos = 0;                                                 
; 312 | static UCHAR nOldUart1RxOneByteGapDelayTime = 0;                       
; 313 | static UCHAR btRxBuf[256];                                             
; 314 | DATE_TIME_TYPE tmBuf;                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      780,sp
        push      r4
        push      r5
        push      ar4
        push      ar5
	.line	12
;----------------------------------------------------------------------
; 315 | PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;                                
;----------------------------------------------------------------------
        ldiu      779,ir0
        ldiu      @CL12,r0
        sti       r0,*+fp(ir0)
	.line	13
;----------------------------------------------------------------------
; 316 | PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //¹öÀü Á¤º¸ Ã³¸
;     | ®¸¦ À§ÇØ ÀÓÀÇ·Î ¸¸µé¾ú´Ù.                                              
; 318 | // ¼ö½Å                                                                
;----------------------------------------------------------------------
        ldiu      780,ir0
        ldiu      @CL2,r0
        sti       r0,*+fp(ir0)
	.line	16
;----------------------------------------------------------------------
; 319 | nRxLen = user_DebugRx(btBuf,128);                                      
;----------------------------------------------------------------------
        ldiu      516,r1
        addi      fp,r1
        ldiu      128,r0
        push      r0
        push      r1
        call      _user_DebugRx
                                        ; Call Occurs
        ldiu      515,ir0
        subi      2,sp
        sti       r0,*+fp(ir0)
	.line	17
;----------------------------------------------------------------------
; 320 | if(nRxLen)                                                             
;----------------------------------------------------------------------
        ldi       *+fp(ir0),r0
        beq       L38
;*      Branch Occurs to L38 
	.line	19
;----------------------------------------------------------------------
; 322 | if(!m_nUart1RxOneByteGapDelayTime) nRxPos = 0;                         
;----------------------------------------------------------------------
        ldi       @_m_nUart1RxOneByteGapDelayTime+0,r0
        bne       L36
;*      Branch Occurs to L36 
        ldiu      0,r0
        sti       r0,@_nRxPos$1+0
L36:        
	.line	20
;----------------------------------------------------------------------
; 323 | m_nUart1RxOneByteGapDelayTime = 10;                                    
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_m_nUart1RxOneByteGapDelayTime+0
	.line	22
;----------------------------------------------------------------------
; 325 | if(nRxPos + nRxLen < 250)                                              
;----------------------------------------------------------------------
        ldiu      515,ir0
        ldiu      *+fp(ir0),r0
        addi      @_nRxPos$1+0,r0
        cmpi      250,r0
        bge       L38
;*      Branch Occurs to L38 
	.line	24
;----------------------------------------------------------------------
; 327 | memcpy(&btRxBuf[nRxPos],btBuf,nRxLen);                                 
;----------------------------------------------------------------------
        ldiu      @CL13,r0
        ldiu      516,r1
        ldiu      *+fp(ir0),r2
        addi      @_nRxPos$1+0,r0       ; Unsigned
        addi      fp,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	25
;----------------------------------------------------------------------
; 328 | nRxPos += nRxLen;                                                      
;----------------------------------------------------------------------
        ldiu      515,ir0
        ldiu      *+fp(ir0),r0
        addi      @_nRxPos$1+0,r0
        sti       r0,@_nRxPos$1+0
L38:        
	.line	29
;----------------------------------------------------------------------
; 332 | if(nOldUart1RxOneByteGapDelayTime && !m_nUart1RxOneByteGapDelayTime)   
;----------------------------------------------------------------------
        ldi       @_nOldUart1RxOneByteGapDelayTime$2+0,r0
        beq       L177
;*      Branch Occurs to L177 
        ldi       @_m_nUart1RxOneByteGapDelayTime+0,r0
        bne       L177
;*      Branch Occurs to L177 
	.line	31
;----------------------------------------------------------------------
; 334 | strncpy(szBuf1,(char *)btRxBuf,MIN(16,nRxPos));                        
;----------------------------------------------------------------------
        ldiu      16,r0
        cmpi      @_nRxPos$1+0,r0
        bge       L42
;*      Branch Occurs to L42 
        bu        L43
;*      Branch Occurs to L43 
L42:        
        ldiu      @_nRxPos$1+0,r0
L43:        
        ldiu      fp,r1
        push      r0
        ldiu      @CL13,r2
        addi      3,r1
        push      r2
        push      r1
        call      _strncpy
                                        ; Call Occurs
        subi      3,sp
	.line	32
;----------------------------------------------------------------------
; 335 | szBuf1[16] = NULL;                                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      19,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	33
;----------------------------------------------------------------------
; 336 | for(i=0;i<strlen(szBuf1);i++) if(!IS_ASCALPHABET(szBuf1[i]) && !IS_ASCS
;     | PEC(szBuf1[i])) {szBuf1[i] = NULL; break;}                             
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        ldiu      fp,r0
        addi      3,r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bhs       L51
;*      Branch Occurs to L51 
L44:        
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      3,ar0
        ldiu      *+ar0(ir0),r0
        cmpi      65,r0
        blt       L46
;*      Branch Occurs to L46 
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      *+ar0(ir0),r0
        cmpi      90,r0
        ble       L50
;*      Branch Occurs to L50 
L46:        
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      3,ar0
        ldiu      *+ar0(ir0),r0
        cmpi      97,r0
        blt       L48
;*      Branch Occurs to L48 
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      *+ar0(ir0),r0
        cmpi      122,r0
        ble       L50
;*      Branch Occurs to L50 
L48:        
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      3,ar0
        ldiu      *+ar0(ir0),r0
        cmpi      63,r0
        beq       L50
;*      Branch Occurs to L50 
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
        bu        L51
;*      Branch Occurs to L51 
L50:        
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      fp,r0
        addi      3,r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        blo       L44
;*      Branch Occurs to L44 
L51:        
	.line	35
;----------------------------------------------------------------------
; 338 | if(btRxBuf[0] == '\r' || btRxBuf[0] == '\n')                           
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+0,r0
        cmpi      13,r0
        beq       L53
;*      Branch Occurs to L53 
        cmpi      10,r0
        bned      L55
	nop
        ldine     @CL15,r1
        ldine     fp,r0
;*      Branch Occurs to L55 
L53:        
	.line	37
;----------------------------------------------------------------------
; 340 | user_DebugPrint((char *)"->\r\n");                                     
; 342 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL14,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	40
;----------------------------------------------------------------------
; 343 | if(!strcmp(szBuf1,"T"))                                                
;----------------------------------------------------------------------
L55:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L85
        subi      2,sp
        ldine     @CL18,r1
        ldine     fp,r0
;*      Branch Occurs to L85 
	.line	42
;----------------------------------------------------------------------
; 345 | if(IS_ASCNUMBER(btRxBuf[1]) && IS_ASCNUMBER(btRxBuf[2]) &&             
; 346 |         IS_ASCNUMBER(btRxBuf[3]) && IS_ASCNUMBER(btRxBuf[4]) &&        
; 347 |         IS_ASCNUMBER(btRxBuf[5]) && IS_ASCNUMBER(btRxBuf[6]) &&        
; 348 |         IS_ASCNUMBER(btRxBuf[7]) && IS_ASCNUMBER(btRxBuf[8]) &&        
; 349 |         IS_ASCNUMBER(btRxBuf[9]) && IS_ASCNUMBER(btRxBuf[10]) &&       
; 350 |         IS_ASCNUMBER(btRxBuf[11]) && IS_ASCNUMBER(btRxBuf[12]))        
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+1,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+2,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+3,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+4,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+5,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+6,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+7,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+8,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+9,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+10,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+11,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
        ldiu      @_btRxBuf$3+12,r0
        cmpi      48,r0
        blo       L83
;*      Branch Occurs to L83 
        cmpi      57,r0
        bhi       L83
;*      Branch Occurs to L83 
	.line	49
;----------------------------------------------------------------------
; 352 | tmBuf.second = MAKE_BYTE(ConvAsc2Hex(btRxBuf[11]),ConvAsc2Hex(btRxBuf[1
;     | 2]));                                                                  
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+11,r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      r0,r4
        ldiu      @_btRxBuf$3+12,r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      772,ir0
        and       15,r0
        or3       r4,r0,r0
        subi      1,sp
        and       255,r0
        sti       r0,*+fp(ir0)
	.line	50
;----------------------------------------------------------------------
; 353 | tmBuf.minute = MAKE_BYTE(ConvAsc2Hex(btRxBuf[9]),ConvAsc2Hex(btRxBuf[10
;     | ]));                                                                   
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+9,r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      @_btRxBuf$3+10,r1
        push      r1
        ldiu      r0,r4
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      773,ir0
        and       15,r0
        or3       r4,r0,r0
        subi      1,sp
        and       255,r0
        sti       r0,*+fp(ir0)
	.line	51
;----------------------------------------------------------------------
; 354 | tmBuf.hour = MAKE_BYTE(ConvAsc2Hex(btRxBuf[7]),ConvAsc2Hex(btRxBuf[8]))
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+7,r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      r0,r4
        ldiu      @_btRxBuf$3+8,r0
        push      r0
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      774,ir0
        and       15,r0
        subi      1,sp
        or3       r4,r0,r0
        and       255,r0
        sti       r0,*+fp(ir0)
	.line	52
;----------------------------------------------------------------------
; 355 | tmBuf.day = MAKE_BYTE(ConvAsc2Hex(btRxBuf[5]),ConvAsc2Hex(btRxBuf[6]));
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+5,r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      r0,r4
        subi      1,sp
        ldiu      @_btRxBuf$3+6,r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      775,ir0
        subi      1,sp
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        sti       r0,*+fp(ir0)
	.line	53
;----------------------------------------------------------------------
; 356 | tmBuf.month = MAKE_BYTE(ConvAsc2Hex(btRxBuf[3]),ConvAsc2Hex(btRxBuf[4])
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+3,r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      r0,r4
        ldiu      @_btRxBuf$3+4,r0
        subi      1,sp
        push      r0
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      776,ir0
        and       15,r0
        or3       r4,r0,r0
        subi      1,sp
        and       255,r0
        sti       r0,*+fp(ir0)
	.line	54
;----------------------------------------------------------------------
; 357 | tmBuf.year = MAKE_BYTE(ConvAsc2Hex(btRxBuf[1]),ConvAsc2Hex(btRxBuf[2]))
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+1,r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      r0,r4
        subi      1,sp
        ldiu      @_btRxBuf$3+2,r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      777,ir0
        and       15,r0
        subi      1,sp
        or3       r4,r0,r0
        and       255,r0
        sti       r0,*+fp(ir0)
	.line	55
;----------------------------------------------------------------------
; 358 | tmBuf.weekday = 0;                                                     
; 359 | //timeStSet(tmBuf);                                                    
; 361 | //timeGet(&tmBuf);                                                     
;----------------------------------------------------------------------
        ldiu      778,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	59
;----------------------------------------------------------------------
; 362 | m_tmCurTime.second = HEXA2BIN(tmBuf.second);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      772,ir0
        ldiu      772,ir1
        and3      r1,*+fp(ir0),r1
        ldiu      -4,r0
        lsh3      r0,*+fp(ir1),r0
        mpyi      10,r0
        addi3     r1,r0,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+0
	.line	60
;----------------------------------------------------------------------
; 363 | m_tmCurTime.minute = HEXA2BIN(tmBuf.minute);                           
;----------------------------------------------------------------------
        ldiu      773,ir0
        ldiu      -4,r1
        ldiu      15,r0
        ldiu      773,ir1
        and3      r0,*+fp(ir0),r0
        lsh3      r1,*+fp(ir1),r1
        mpyi      10,r1
        addi3     r0,r1,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+1
	.line	61
;----------------------------------------------------------------------
; 364 | m_tmCurTime.hour = HEXA2BIN(tmBuf.hour);                               
;----------------------------------------------------------------------
        ldiu      -4,r1
        ldiu      774,ir0
        ldiu      774,ir1
        ldiu      15,r0
        lsh3      r1,*+fp(ir1),r1
        and3      r0,*+fp(ir0),r0
        mpyi      10,r1
        addi3     r0,r1,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+2
	.line	62
;----------------------------------------------------------------------
; 365 | m_tmCurTime.day = HEXA2BIN(tmBuf.day);                                 
;----------------------------------------------------------------------
        ldiu      -4,r1
        ldiu      775,ir1
        ldiu      775,ir0
        lsh3      r1,*+fp(ir1),r1
        ldiu      15,r0
        mpyi      10,r1
        and3      r0,*+fp(ir0),r0
        addi3     r0,r1,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+3
	.line	63
;----------------------------------------------------------------------
; 366 | m_tmCurTime.month = HEXA2BIN(tmBuf.month);                             
;----------------------------------------------------------------------
        ldiu      -4,r1
        ldiu      776,ir1
        ldiu      15,r0
        lsh3      r1,*+fp(ir1),r1
        ldiu      776,ir0
        mpyi      10,r1
        and3      r0,*+fp(ir0),r0
        addi3     r0,r1,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+4
	.line	64
;----------------------------------------------------------------------
; 367 | m_tmCurTime.year = HEXA2BIN(tmBuf.year);                               
;----------------------------------------------------------------------
        ldiu      777,ir0
        ldiu      -4,r1
        lsh3      r1,*+fp(ir0),r1
        mpyi      10,r1
        ldiu      777,ir1
        ldiu      15,r0
        and3      r0,*+fp(ir1),r0
        addi3     r0,r1,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+5
	.line	66
;----------------------------------------------------------------------
; 369 | sprintf(btBuf,"Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour
;     | ],%02X[minute],%02X[second] \r\n",                                     
; 370 |         BIN2HEXA(m_tmCurTime.year),BIN2HEXA(m_tmCurTime.month),BIN2HEXA
;     | (m_tmCurTime.day),BIN2HEXA(m_tmCurTime.hour),BIN2HEXA(m_tmCurTime.minut
;     | e),BIN2HEXA(m_tmCurTime.second));                                      
;----------------------------------------------------------------------
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ash       4,r2
        ldiu      10,r1
        ldiu      @_m_tmCurTime+5,r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        or3       r2,r1,ir1
        ldiu      10,r1
        ldiu      @_m_tmCurTime+4,r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      @_m_tmCurTime+4,r0
        ash       4,r2
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        or3       r2,r1,ar2
        ldiu      10,r1
        ldiu      @_m_tmCurTime+3,r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ash       4,r2
        ldiu      @_m_tmCurTime+3,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        or3       r2,r1,bk
        ldiu      10,r1
        ldiu      @_m_tmCurTime+2,r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      @_m_tmCurTime+2,r0
        ldiu      10,r1
        ash       4,r2
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        or3       r2,r1,r3
        ldiu      10,r1
        ldiu      @_m_tmCurTime+1,r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      @_m_tmCurTime+1,r0
        ldiu      10,r1
        ash       4,r2
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        ldiu      @_m_tmCurTime+0,r0
        or3       r2,r1,r2
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,ir0
        ldiu      10,r1
        ldiu      @_m_tmCurTime+0,r0
        call      MOD_U30
                                        ; Call Occurs
        ash       4,ir0
        or3       ir0,r0,r0
        push      r0
        push      r2
        push      r3
        push      bk
        ldiu      @CL16,r0
        push      ar2
        ldiu      516,r1
        push      ir1
        addi      fp,r1
        push      r0
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      8,sp
	.line	68
;----------------------------------------------------------------------
; 371 | user_DebugPrint((char *)btBuf);                                        
; 373 | else                                                                   
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
L83:        
	.line	72
;----------------------------------------------------------------------
; 375 | user_DebugPrint("Not Date&time format \r\n");                          
; 378 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	76
;----------------------------------------------------------------------
; 379 | if(!strcmp(szBuf1,"t"))                                                
;----------------------------------------------------------------------
L85:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L89
        subi      2,sp
        ldine     @CL19,r1
        ldine     fp,r0
;*      Branch Occurs to L89 
	.line	78
;----------------------------------------------------------------------
; 381 | sprintf(btBuf,"Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour
;     | ],%02X[minute],%02X[second] \r\n",                                     
; 382 |         BIN2HEXA(m_tmCurTime.year),BIN2HEXA(m_tmCurTime.month),BIN2HEXA
;     | (m_tmCurTime.day),BIN2HEXA(m_tmCurTime.hour),BIN2HEXA(m_tmCurTime.minut
;     | e),BIN2HEXA(m_tmCurTime.second));                                      
;----------------------------------------------------------------------
        ldiu      @_m_tmCurTime+5,r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      10,r1
        ash       4,r2
        ldiu      @_m_tmCurTime+5,r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        or3       r2,r1,ir1
        ldiu      @_m_tmCurTime+4,r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ash       4,r2
        ldiu      @_m_tmCurTime+4,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        or3       r2,r1,ar2
        ldiu      10,r1
        ldiu      @_m_tmCurTime+3,r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ash       4,r2
        ldiu      10,r1
        ldiu      @_m_tmCurTime+3,r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        or3       r2,r1,bk
        ldiu      10,r1
        ldiu      @_m_tmCurTime+2,r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      10,r1
        ldiu      @_m_tmCurTime+2,r0
        ash       4,r2
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        ldiu      @_m_tmCurTime+1,r0
        or3       r2,r1,r3
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ash       4,r2
        ldiu      10,r1
        ldiu      @_m_tmCurTime+1,r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r1
        or3       r2,r1,r2
        ldiu      10,r1
        ldiu      @_m_tmCurTime+0,r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,ir0
        ldiu      10,r1
        ldiu      @_m_tmCurTime+0,r0
        call      MOD_U30
                                        ; Call Occurs
        ash       4,ir0
        or3       ir0,r0,r0
        ldiu      516,r1
        push      r0
        push      r2
        addi      fp,r1
        push      r3
        ldiu      @CL16,r0
        push      bk
        push      ar2
        push      ir1
        push      r0
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      8,sp
	.line	80
;----------------------------------------------------------------------
; 383 | user_DebugPrint((char *)btBuf);                                        
; 385 | else                                                                   
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	83
;----------------------------------------------------------------------
; 386 | if(!strcmp(szBuf1,"V"))                                                
;----------------------------------------------------------------------
L89:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L95
        subi      2,sp
        ldine     @CL24,r1
        ldine     fp,r0
;*      Branch Occurs to L95 
	.line	85
;----------------------------------------------------------------------
; 388 | i = GetFirmwareVersion(1);                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        sti       r0,*+fp(1)
	.line	86
;----------------------------------------------------------------------
; 389 | j = MAKE_WORD(pLnWkDp->btVerH,pLnWkDp->btVerL);                        
;----------------------------------------------------------------------
        ldiu      779,ir0
        ldiu      779,ir1
        ldiu      8,r1
        ldiu      *+fp(ir0),ar0
        ldiu      *+fp(ir1),ar1
        ldiu      255,r0
        ash3      r1,*+ar0,r1
        and       *+ar1(2),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	87
;----------------------------------------------------------------------
; 390 | sprintf(btBuf,"LIC-MPU Version:%d.%d%d%d,Build Date:20%06d, LIC-LON Ver
;     | sion:%d.%d%d%d,Build Date:%08X\r\n",                                   
; 391 |                                                 i/1000%10,i/100%10,i/10
;     | %10,i%10, GetFirmwareVersion(2),                                       
; 392 |                                                 BYTE_H(WORD_H(j)),BYTE_
;     | L(WORD_H(j)),BYTE_H(WORD_L(j)),BYTE_L(WORD_L(j)),                      
; 393 |                                                 MAKE_DWORD(pLnWkDp->btB
;     | uildDateHH,pLnWkDp->btBuildDateHL,pLnWkDp->btBuildDateLH,pLnWkDp->btBui
;     | ldDateLL));                                                            
;----------------------------------------------------------------------
        ldiu      1000,r1
        ldiu      *+fp(1),r0
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      r0,r4
        ldiu      100,r1
        ldiu      *+fp(1),r0
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      r0,r5
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      r0,ar4
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      r0,ar5
        ldiu      2,r1
        push      r1
        call      _GetFirmwareVersion
                                        ; Call Occurs
        ldiu      779,ir1
        subi      1,sp
        ldiu      779,ir0
        ldiu      255,r1
        ldiu      255,r2
        ldiu      *+fp(ir1),ar0
        ldiu      *+fp(ir0),ar1
        and       *+ar0(4),r2
        ash       16,r2
        ldiu      *+ar1(3),re
        ash       24,re
        or3       re,r2,re
        ldiu      15,r2
        ldiu      *+fp(ir1),ar0
        ldiu      255,r3
        and       *+ar0(5),r1
        and       *+fp(2),r2
        and       *+fp(2),r3
        ldiu      255,rs
        ldiu      *+fp(ir0),ar0
        ash       8,r1
        and       *+ar0(6),rs
        or3       re,r1,r1
        or3       r1,rs,r1
        ldiu      *+fp(2),rs
        push      r1
        push      r2
        ldiu      rs,re
        ash       -8,rs
        ash       -8,re
        ash       -4,r3
        and       15,re
        and       15,r3
        and       255,rs
        push      r3
        ash       -4,rs
        push      re
        and       15,rs
        push      rs
        push      r0
        push      ar5
        ldiu      @CL20,r0
        push      ar4
        push      r5
        push      r4
        push      r0
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      12,sp
	.line	92
;----------------------------------------------------------------------
; 395 | user_DebugPrint((char *)btBuf);                                        
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	94
;----------------------------------------------------------------------
; 397 | memset(btBuf,0x00,256);                                                
; 399 | //2011_03_03 ¼öÁ¤                                                      
;----------------------------------------------------------------------
        ldiu      256,r0
        ldiu      0,r1
        push      r0
        ldiu      516,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	97
;----------------------------------------------------------------------
; 400 | for(i =0 ;i<43;i++) //CNCS·Î ºÎÅÍ ¹ÞÀº ¹öÀü Á¤º¸ Ç¥Ãâ ÇÏ´Â ºÎºÐ Ãß°¡   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      43,r0
        bged      L177
	nop
        ldiu      256,r4
        ldiu      0,r5
;*      Branch Occurs to L177 
L92:        
	.line	99
;----------------------------------------------------------------------
; 402 | memset(btBuf,0x00,256);                                                
;----------------------------------------------------------------------
        push      r4
        ldiu      516,r0
        push      r5
        addi      fp,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	100
;----------------------------------------------------------------------
; 403 | memcpy(btBuf,&LIC_VerList[i][0],strlen((char*)&LIC_VerList[i][0]));    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        mpyi      10,r0
        addi      @CL21,r0              ; Unsigned
        push      r0
        call      _strlen
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(1),r2
        push      r0
        ldiu      @CL21,r0
        ldiu      516,r1
        addi      fp,r1
        mpyi      10,r2
        addi      r2,r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	101
;----------------------------------------------------------------------
; 404 | sprintf(&btBuf[strlen((char*)&btBuf)],"---");                          
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        subi      1,sp
        ldiu      @CL22,r1
        addi3     r0,fp,r0              ; Unsigned
        push      r1
        addi      516,r0                ; Unsigned
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
	.line	102
;----------------------------------------------------------------------
; 405 | memcpy(&btBuf[strlen((char*)&btBuf)],&pLicVerDp->cvbBuf[i].chVer[0],4);
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(1),r1
        ldiu      780,ir0
        mpyi      10,r1
        addi3     r1,*+fp(ir0),ar1      ; Unsigned
        addi3     r0,fp,ar0             ; Unsigned
        addi      1,ar1                 ; Unsigned
        addi      516,ar0               ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
	.line	103
;----------------------------------------------------------------------
; 406 | sprintf(&btBuf[strlen((char*)&btBuf)],"\r\n");                         
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        ldiu      @CL23,r1
        subi      1,sp
        addi3     r0,fp,r0              ; Unsigned
        push      r1
        addi      516,r0                ; Unsigned
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
	.line	105
;----------------------------------------------------------------------
; 408 | user_DebugPrint((char *)btBuf);                                        
; 413 | else                                                                   
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	97
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      43,r0
        blt       L92
;*      Branch Occurs to L92 
        bu        L177
;*      Branch Occurs to L177 
	.line	111
;----------------------------------------------------------------------
; 414 | if(!strcmp(szBuf1,"Recent"))                                           
;----------------------------------------------------------------------
L95:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L98
        subi      2,sp
        ldine     @CL26,r1
        ldine     fp,r0
;*      Branch Occurs to L98 
	.line	113
;----------------------------------------------------------------------
; 416 | m_nLnWkTxFlag = 1;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_nLnWkTxFlag+0
	.line	114
;----------------------------------------------------------------------
; 417 | user_DebugPrint("Recent fault read start send \r\n");                  
; 419 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL25,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	117
;----------------------------------------------------------------------
; 420 | if(!strcmp(szBuf1,"Historical"))                                       
;----------------------------------------------------------------------
L98:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L101
        subi      2,sp
        ldine     @CL28,r1
        ldine     fp,r0
;*      Branch Occurs to L101 
	.line	119
;----------------------------------------------------------------------
; 422 | m_nLnWkTxFlag = 2;                                                     
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_m_nLnWkTxFlag+0
	.line	120
;----------------------------------------------------------------------
; 423 | gm_SysTimeToRtc(&tmBuf,m_nDateTime2SecondCnt);                         
;----------------------------------------------------------------------
        ldiu      @_m_nDateTime2SecondCnt+0,r1
        ldiu      772,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _gm_SysTimeToRtc
                                        ; Call Occurs
        subi      2,sp
	.line	121
;----------------------------------------------------------------------
; 424 | sprintf(btBuf,"Historical read start send, Historical start time : %08X
;     | H, Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour],%02X[minut
;     | e],%02X[second] \r\n",                                                 
; 425 |         m_nDateTime2SecondCnt,                                         
; 426 |         tmBuf.year,                                                    
; 427 |         tmBuf.month,                                                   
; 428 |         tmBuf.day,                                                     
; 429 |         tmBuf.hour,                                                    
; 430 |         tmBuf.minute,                                                  
; 431 |         tmBuf.second                                                   
; 432 |         );                                                             
;----------------------------------------------------------------------
        ldiu      772,ir0
        ldiu      *+fp(ir0),r0
        ldiu      775,ir1
        ldiu      773,ir0
        push      r0
        ldiu      *+fp(ir0),r0
        ldiu      774,ir0
        push      r0
        ldiu      *+fp(ir0),r0
        push      r0
        ldiu      *+fp(ir1),r0
        ldiu      776,ir1
        push      r0
        ldiu      *+fp(ir1),r2
        push      r2
        ldiu      777,ir0
        ldiu      @CL27,r1
        ldiu      *+fp(ir0),r2
        push      r2
        ldiu      @_m_nDateTime2SecondCnt+0,r2
        ldiu      516,r0
        push      r2
        push      r1
        addi      fp,r0
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      9,sp
	.line	130
;----------------------------------------------------------------------
; 433 | user_DebugPrint((char *)btBuf);                                        
; 435 | else                                                                   
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	133
;----------------------------------------------------------------------
; 436 | if(!strcmp(szBuf1,"Rxinfo"))                                           
;----------------------------------------------------------------------
L101:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L107
        subi      2,sp
        ldine     @CL30,r1
        ldine     fp,r0
;*      Branch Occurs to L107 
	.line	135
;----------------------------------------------------------------------
; 438 | if(!m_nNvsramPos)                                                      
;----------------------------------------------------------------------
        ldi       @_m_nNvsramPos+0,r0
        bne       L104
;*      Branch Occurs to L104 
	.line	137
;----------------------------------------------------------------------
; 440 | 			sprintf(btBuf,"Total byte : %d, Packet count : %d, window count : %d
;     | , remaind packet : %d, m_nLnWkWaySideOnRxOk : %d, m_bLnWkFtpEndFlag : %
;     | d, Historical start time : %08XH \r\n",0,0,0,0,m_nLnWkWaySideOnRxOk,m_b
;     | LnWkFtpEndFlag,m_nDateTime2SecondC                                     
; 441 | nt);                                                                   
; 443 |                 else                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nDateTime2SecondCnt+0,r0
        ldiu      0,r2
        ldiu      0,r3
        ldiu      0,rs
        ldiu      0,re
        push      r0
        ldiu      @CL29,rc
        ldiu      @_m_bLnWkFtpEndFlag+0,r0
        push      r0
        ldiu      @_m_nLnWkWaySideOnRxOk+0,r1
        ldiu      516,r0
        push      r1
        push      r2
        addi      fp,r0
        push      r3
        push      rs
        push      re
        push      rc
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      9,sp
        bu        L105
;*      Branch Occurs to L105 
L104:        
	.line	141
;----------------------------------------------------------------------
; 445 | 			sprintf(btBuf,"Total byte : %d, Packet count : %d, window count : %d
;     | , remaind packet : %d, m_nLnWkWaySideOnRxOk : %d, m_bLnWkFtpEndFlag : %
;     | d, Historical start time : %08XH \r\n",m_nNvsramPos,((m_nNvsramPos-1)/1
;     | 28)+1,((m_nNvsramPos-1)/128/6)+1,m                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_m_nNvsramPos+0,r0   ; Unsigned
        ldiu      768,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      127,r2
        ldiu      @_m_nDateTime2SecondCnt+0,r3
        ldiu      1,r1
        and       @_m_nNvsramPos+0,r2
        subri     @_m_nNvsramPos+0,r1   ; Unsigned
        push      r3
        ldiu      @_m_bLnWkFtpEndFlag+0,r3
        addi      1,r0                  ; Unsigned
        push      r3
        ldiu      @_m_nLnWkWaySideOnRxOk+0,r3
        push      r3
        push      r2
        lsh       -7,r1
        push      r0
        addi      1,r1                  ; Unsigned
        ldiu      @CL29,rs
        push      r1
        ldiu      @_m_nNvsramPos+0,r0
        push      r0
        ldiu      516,r3
        addi      fp,r3
        push      rs
        push      r3
        call      _sprintf
                                        ; Call Occurs
        subi      9,sp
L105:        
	.line	143
;----------------------------------------------------------------------
; 446 | _nNvsramPos%128,m_nLnWkWaySideOnRxOk,m_bLnWkFtpEndFlag,m_nDateTime2Seco
;     | ndCnt);                                                                
; 448 | user_DebugPrint((char *)btBuf);                                        
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	146
;----------------------------------------------------------------------
; 450 | else                                                                   
;----------------------------------------------------------------------
L107:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L110
        subi      2,sp
        ldine     @CL32,r1
        ldine     fp,r0
;*      Branch Occurs to L110 
	.line	148
;----------------------------------------------------------------------
; 451 | if(!strcmp(szBuf1,"LnWayClr"))                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nLnWkWaySideOnRxOk+0
	.line	149
;----------------------------------------------------------------------
; 453 | m_nLnWkWaySideOnRxOk = 0;                                              
; 454 | user_DebugPrint("'m_nLnWkWaySideOnRxOk' Clear OK \r\n");               
;----------------------------------------------------------------------
        ldiu      @CL31,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	152
;----------------------------------------------------------------------
; 456 | else                                                                   
;----------------------------------------------------------------------
L110:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L113
        subi      2,sp
        ldine     @CL34,r1
        ldine     fp,r0
;*      Branch Occurs to L113 
	.line	154
;----------------------------------------------------------------------
; 457 | if(!strcmp(szBuf1,"LnFtpClr"))                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_bLnWkFtpEndFlag+0
	.line	155
;----------------------------------------------------------------------
; 459 | m_bLnWkFtpEndFlag = FALSE;                                             
; 460 | user_DebugPrint("'m_bLnWkFtpEndFlag' Clear OK \r\n");                  
;----------------------------------------------------------------------
        ldiu      @CL33,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	158
;----------------------------------------------------------------------
; 462 | else                                                                   
;----------------------------------------------------------------------
L113:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L166
        subi      2,sp
        ldine     @CL37,r1
        ldine     fp,r0
;*      Branch Occurs to L166 
	.line	160
;----------------------------------------------------------------------
; 463 | if(!strcmp(szBuf1,"HisStTm"))                                          
; 465 |         if(IS_ASCHEX(btRxBuf[7]) && IS_ASCHEX(btRxBuf[8]) &&           
; 466 |                 IS_ASCHEX(btRxBuf[9]) && IS_ASCHEX(btRxBuf[10]) &&     
; 467 |                 IS_ASCHEX(btRxBuf[11]) && IS_ASCHEX(btRxBuf[12]) &&    
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+7,r0
        cmpi      48,r0
        blo       L116
;*      Branch Occurs to L116 
        cmpi      57,r0
        bls       L120
;*      Branch Occurs to L120 
L116:        
        ldiu      @_btRxBuf$3+7,r0
        cmpi      65,r0
        blo       L118
;*      Branch Occurs to L118 
        cmpi      70,r0
        bls       L120
;*      Branch Occurs to L120 
L118:        
        ldiu      @_btRxBuf$3+7,r0
        cmpi      97,r0
        blo       L164
;*      Branch Occurs to L164 
        cmpi      102,r0
        bhi       L164
;*      Branch Occurs to L164 
L120:        
        ldiu      @_btRxBuf$3+8,r0
        cmpi      48,r0
        blo       L122
;*      Branch Occurs to L122 
        cmpi      57,r0
        bls       L126
;*      Branch Occurs to L126 
L122:        
        ldiu      @_btRxBuf$3+8,r0
        cmpi      65,r0
        blo       L124
;*      Branch Occurs to L124 
        cmpi      70,r0
        bls       L126
;*      Branch Occurs to L126 
L124:        
        ldiu      @_btRxBuf$3+8,r0
        cmpi      97,r0
        blo       L164
;*      Branch Occurs to L164 
        cmpi      102,r0
        bhi       L164
;*      Branch Occurs to L164 
L126:        
        ldiu      @_btRxBuf$3+9,r0
        cmpi      48,r0
        blo       L128
;*      Branch Occurs to L128 
        cmpi      57,r0
        bls       L132
;*      Branch Occurs to L132 
L128:        
        ldiu      @_btRxBuf$3+9,r0
        cmpi      65,r0
        blo       L130
;*      Branch Occurs to L130 
        cmpi      70,r0
        bls       L132
;*      Branch Occurs to L132 
L130:        
        ldiu      @_btRxBuf$3+9,r0
        cmpi      97,r0
        blo       L164
;*      Branch Occurs to L164 
        cmpi      102,r0
        bhi       L164
;*      Branch Occurs to L164 
L132:        
        ldiu      @_btRxBuf$3+10,r0
        cmpi      48,r0
        blo       L134
;*      Branch Occurs to L134 
        cmpi      57,r0
        bls       L138
;*      Branch Occurs to L138 
L134:        
        ldiu      @_btRxBuf$3+10,r0
        cmpi      65,r0
        blo       L136
;*      Branch Occurs to L136 
        cmpi      70,r0
        bls       L138
;*      Branch Occurs to L138 
L136:        
        ldiu      @_btRxBuf$3+10,r0
        cmpi      97,r0
        blo       L164
;*      Branch Occurs to L164 
        cmpi      102,r0
        bhi       L164
;*      Branch Occurs to L164 
L138:        
        ldiu      @_btRxBuf$3+11,r0
        cmpi      48,r0
        blo       L140
;*      Branch Occurs to L140 
        cmpi      57,r0
        bls       L144
;*      Branch Occurs to L144 
L140:        
        ldiu      @_btRxBuf$3+11,r0
        cmpi      65,r0
        blo       L142
;*      Branch Occurs to L142 
        cmpi      70,r0
        bls       L144
;*      Branch Occurs to L144 
L142:        
        ldiu      @_btRxBuf$3+11,r0
        cmpi      97,r0
        blo       L164
;*      Branch Occurs to L164 
        cmpi      102,r0
        bhi       L164
;*      Branch Occurs to L164 
L144:        
        ldiu      @_btRxBuf$3+12,r0
        cmpi      48,r0
        blo       L146
;*      Branch Occurs to L146 
        cmpi      57,r0
        bls       L150
;*      Branch Occurs to L150 
L146:        
        ldiu      @_btRxBuf$3+12,r0
        cmpi      65,r0
        blo       L148
;*      Branch Occurs to L148 
        cmpi      70,r0
        bls       L150
;*      Branch Occurs to L150 
L148:        
        ldiu      @_btRxBuf$3+12,r0
        cmpi      97,r0
        blo       L164
;*      Branch Occurs to L164 
        cmpi      102,r0
        bhi       L164
;*      Branch Occurs to L164 
L150:        
        ldiu      @_btRxBuf$3+13,r0
        cmpi      48,r0
        blo       L152
;*      Branch Occurs to L152 
        cmpi      57,r0
        bls       L156
;*      Branch Occurs to L156 
L152:        
        ldiu      @_btRxBuf$3+13,r0
        cmpi      65,r0
        blo       L154
;*      Branch Occurs to L154 
        cmpi      70,r0
        bls       L156
;*      Branch Occurs to L156 
L154:        
        ldiu      @_btRxBuf$3+13,r0
        cmpi      97,r0
        blo       L164
;*      Branch Occurs to L164 
        cmpi      102,r0
        bhi       L164
;*      Branch Occurs to L164 
L156:        
        ldiu      @_btRxBuf$3+14,r0
        cmpi      48,r0
        blo       L158
;*      Branch Occurs to L158 
        cmpi      57,r0
        bls       L162
;*      Branch Occurs to L162 
L158:        
        ldiu      @_btRxBuf$3+14,r0
        cmpi      65,r0
        blo       L160
;*      Branch Occurs to L160 
        cmpi      70,r0
        bls       L162
;*      Branch Occurs to L162 
L160:        
        ldiu      @_btRxBuf$3+14,r0
        cmpi      97,r0
        blo       L164
;*      Branch Occurs to L164 
        cmpi      102,r0
        bhi       L164
;*      Branch Occurs to L164 
L162:        
	.line	165
;----------------------------------------------------------------------
; 468 | IS_ASCHEX(btRxBuf[13]) && IS_ASCHEX(btRxBuf[14]))                      
; 470 | m_nDateTime2SecondCnt = MAKE_DWORD(                                    
; 471 |                         MAKE_BYTE(ConvAsc2Hex(btRxBuf[7]),ConvAsc2Hex(b
;     | tRxBuf[8])),                                                           
; 472 |                         MAKE_BYTE(ConvAsc2Hex(btRxBuf[9]),ConvAsc2Hex(b
;     | tRxBuf[10])),                                                          
; 473 |                         MAKE_BYTE(ConvAsc2Hex(btRxBuf[11]),ConvAsc2Hex(
;     | btRxBuf[12])),                                                         
; 474 |                         MAKE_BYTE(ConvAsc2Hex(btRxBuf[13]),ConvAsc2Hex(
;     | btRxBuf[14]))                                                          
;----------------------------------------------------------------------
        ldiu      @_btRxBuf$3+7,r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      r0,r4
        ldiu      @_btRxBuf$3+8,r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      @_btRxBuf$3+9,r1
        push      r1
        and       15,r0
        or3       r4,r0,r5
        and       255,r5
        ash       24,r5
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      r0,r4
        ldiu      @_btRxBuf$3+10,r0
        subi      1,sp
        push      r0
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        ash       16,r0
        ldiu      @_btRxBuf$3+11,r1
        subi      1,sp
        or3       r5,r0,r4
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      r0,r5
        ldiu      @_btRxBuf$3+12,r1
        subi      1,sp
        push      r1
        ash       4,r5
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        subi      1,sp
        or3       r5,r0,r0
        and       255,r0
        ldiu      @_btRxBuf$3+13,r1
        push      r1
        ash       8,r0
        or3       r4,r0,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      r0,r5
        subi      1,sp
        ldiu      @_btRxBuf$3+14,r1
        ash       4,r5
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r5,r0,r0
        and       255,r0
        or3       r4,r0,r0
        sti       r0,@_m_nDateTime2SecondCnt+0
        subi      1,sp
	.line	172
;----------------------------------------------------------------------
; 475 | );                                                                     
;----------------------------------------------------------------------
        ldiu      772,r1
        addi      fp,r1
        push      r0
        push      r1
        call      _gm_SysTimeToRtc
                                        ; Call Occurs
        subi      2,sp
	.line	173
;----------------------------------------------------------------------
; 477 | gm_SysTimeToRtc(&tmBuf,m_nDateTime2SecondCnt);                         
; 478 | sprintf(btBuf,"Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour
;     | ],%02X[minute],%02X[second], Setting OK \r\n",                         
; 479 |         tmBuf.year,                                                    
; 480 |         tmBuf.month,                                                   
; 481 |         tmBuf.day,                                                     
; 482 |         tmBuf.hour,                                                    
; 483 |         tmBuf.minute,                                                  
;----------------------------------------------------------------------
        ldiu      772,ir1
        ldiu      *+fp(ir1),r0
        ldiu      773,ir1
        push      r0
        ldiu      *+fp(ir1),r0
        ldiu      774,ir0
        push      r0
        ldiu      *+fp(ir0),r0
        push      r0
        ldiu      775,ir0
        ldiu      776,ir1
        ldiu      *+fp(ir0),r1
        push      r1
        ldiu      *+fp(ir1),r1
        push      r1
        ldiu      777,ir0
        ldiu      @CL35,r0
        ldiu      *+fp(ir0),r1
        push      r1
        push      r0
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      8,sp
	.line	181
;----------------------------------------------------------------------
; 484 | tmBuf.second                                                           
; 485 | );                                                                     
; 486 | user_DebugPrint((char *)btBuf);                                        
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
L164:        
	.line	185
;----------------------------------------------------------------------
; 488 | else                                                                   
; 490 |         user_DebugPrint("No format \r\n");                             
;----------------------------------------------------------------------
        ldiu      @CL36,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	189
;----------------------------------------------------------------------
; 493 | else                                                                   
;----------------------------------------------------------------------
L166:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L169
        subi      2,sp
        ldine     @CL39,r1
        ldine     fp,r0
;*      Branch Occurs to L169 
	.line	191
;----------------------------------------------------------------------
; 494 | if(!strcmp(szBuf1,"ViewCarNo"))                                        
;----------------------------------------------------------------------
        ldiu      @_m_nCarNo+1,r1
        ldiu      @_m_nCarNo+0,r3
        ldiu      516,r0
        ldiu      @CL38,r2
        push      r1
        addi      fp,r0
        push      r3
        push      r2
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      4,sp
	.line	192
;----------------------------------------------------------------------
; 496 | sprintf(btBuf,"Car number 0 : %d, Car number 1 : %d \r\n",m_nCarNo[0],m
;     | _nCarNo[1]);                                                           
; 497 | user_DebugPrint((char *)btBuf);                                        
;----------------------------------------------------------------------
        ldiu      516,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	195
;----------------------------------------------------------------------
; 499 | else                                                                   
;----------------------------------------------------------------------
L169:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L172
        subi      2,sp
        ldine     @CL41,r1
        ldine     fp,r0
;*      Branch Occurs to L172 
	.line	197
;----------------------------------------------------------------------
; 500 | if(!strcmp(szBuf1,"CarNoClr"))                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nCarNo+0
	.line	198
        sti       r0,@_m_nCarNo+1
	.line	199
;----------------------------------------------------------------------
; 502 | m_nCarNo[0] = 0x0000;                                                  
; 503 | m_nCarNo[1] = 0x0000;                                                  
; 504 | user_DebugPrint("Car number clear OK \r\n");                           
;----------------------------------------------------------------------
        ldiu      @CL40,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	202
;----------------------------------------------------------------------
; 506 | else                                                                   
;----------------------------------------------------------------------
L172:        
        push      r1
        addi      3,r0
        push      r0
        call      _strcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L176
        subi      2,sp
	nop
        ldine     @CL55,r0
;*      Branch Occurs to L176 
	.line	204
;----------------------------------------------------------------------
; 507 | if(!strcmp(szBuf1,"?"))                                                
;----------------------------------------------------------------------
        ldiu      @CL42,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	205
        ldiu      @CL43,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	206
;----------------------------------------------------------------------
; 509 | user_DebugPrint("[ENTER]      : Move next line after out '->' \r\n");  
;----------------------------------------------------------------------
        ldiu      @CL44,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	207
;----------------------------------------------------------------------
; 510 | user_DebugPrint("'?'          : Help \r\n");                           
;----------------------------------------------------------------------
        ldiu      @CL45,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	208
;----------------------------------------------------------------------
; 511 | user_DebugPrint("'T'          : Date&time setting , 'TYYMMDDHHMNSS', 'E
;     | X)T100312154200' \r\n");                                               
;----------------------------------------------------------------------
        ldiu      @CL46,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	209
;----------------------------------------------------------------------
; 512 | user_DebugPrint("'t'          : Date&time read \r\n");                 
;----------------------------------------------------------------------
        ldiu      @CL47,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	210
;----------------------------------------------------------------------
; 513 | user_DebugPrint("'V'          : Version \r\n");                        
;----------------------------------------------------------------------
        ldiu      @CL48,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	211
;----------------------------------------------------------------------
; 514 | user_DebugPrint("'Recent'     : Recently faults start \r\n");          
;----------------------------------------------------------------------
        ldiu      @CL49,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	212
;----------------------------------------------------------------------
; 515 | user_DebugPrint("'Historical' : Historical data start \r\n");          
;----------------------------------------------------------------------
        ldiu      @CL50,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	213
;----------------------------------------------------------------------
; 516 | user_DebugPrint("'Rxinfo'     : Recieve info \r\n");                   
;----------------------------------------------------------------------
        ldiu      @CL51,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	214
;----------------------------------------------------------------------
; 517 | user_DebugPrint("'LnWayClr'   : 'm_nLnWkWaySideOnRxOk' variable clear \
;     | r\n");                                                                 
;----------------------------------------------------------------------
        ldiu      @CL52,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	215
;----------------------------------------------------------------------
; 518 | user_DebugPrint("'LnFtpClr'   : 'm_bLnWkFtpEndFlag' variable clear \r\n
;     | ");                                                                    
;----------------------------------------------------------------------
        ldiu      @CL53,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	216
;----------------------------------------------------------------------
; 519 | user_DebugPrint("'HisStTm'    : Historical data start time set(2000/1/1
;     |  0:0:0 ~ total second), HisStTmxxxxxxxx, 'EX)HisStTm0000000F' \r\n");  
;----------------------------------------------------------------------
        ldiu      @CL54,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	217
;----------------------------------------------------------------------
; 520 | user_DebugPrint("'ViewCarNo'  : View car number \r\n");                
; 521 | user_DebugPrint("'CarNoClr'   : Car number clear \r\n");               
; 522 | user_DebugPrint("\r\n");                                               
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L177
;*      Branch Occurs to L177 
	.line	221
;----------------------------------------------------------------------
; 524 | else                                                                   
; 526 |         user_DebugPrint("Syntax error\r\n");                           
;----------------------------------------------------------------------
L176:        
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
L177:        
	.line	224
        ldiu      @_m_nUart1RxOneByteGapDelayTime+0,r0
        sti       r0,@_nOldUart1RxOneByteGapDelayTime$2+0
	.line	225
        pop       ar5
        ldiu      *-fp(1),bk
        pop       ar4
        pop       r5
        ldiu      *fp,fp
        pop       r4
        subi      782,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	528,000003030h,780


	.sect	 ".text"

	.global	_user_IsSingleOrMarried
	.sym	_user_IsSingleOrMarried,_user_IsSingleOrMarried,36,2,0
	.func	538
;******************************************************************************
;* FUNCTION NAME: _user_IsSingleOrMarried                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_user_IsSingleOrMarried:
	.line	1
;----------------------------------------------------------------------
; 538 | //      - 0 : ÇØ´ç»çÇ× ¾øÀ½ »ç¿ëÇÏÁö¸»°Í                               
; 539 | //*********************************************************************
;     | *********************                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 540 | int user_IsSingleOrMarried()                                           
;----------------------------------------------------------------------
        ldi       @_m_nCarNo+0,r0
        beq       L184
;*      Branch Occurs to L184 
        ldi       @_m_nCarNo+1,r0
        bne       L184
;*      Branch Occurs to L184 
        bud       L189
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L189 
L184:        
	.line	5
;----------------------------------------------------------------------
; 542 | if(m_nCarNo[0] && !m_nCarNo[1]) return 1;                              
; 543 | else                                                                   
;----------------------------------------------------------------------
        ldi       @_m_nCarNo+0,r0
        beq       L188
;*      Branch Occurs to L188 
        ldi       @_m_nCarNo+1,r0
        beq       L188
;*      Branch Occurs to L188 
        bud       L189
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L189 
L188:        
	.line	7
;----------------------------------------------------------------------
; 544 | if(m_nCarNo[0] && m_nCarNo[1]) return 2;                               
;----------------------------------------------------------------------
        ldiu      0,r0
L189:        
	.line	8
;----------------------------------------------------------------------
; 545 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	545,000000000h,0


	.sect	 ".text"

	.global	_user_SetVersionEnableTbl
	.sym	_user_SetVersionEnableTbl,_user_SetVersionEnableTbl,32,2,0
	.func	550
;******************************************************************************
;* FUNCTION NAME: _user_SetVersionEnableTbl                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ir0,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_user_SetVersionEnableTbl:
	.sym	_nVal,-2,4,9,32
	.sym	_nPos,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 550 | //      Single car ÀÎÁö, Married CarÀÎÁö¿¡ µû¶ó¼­ TRUE¶Ç´Â FALSEÇÑ´Ù.  
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 551 | //*********************************************************************
;     | *********************                                                  
; 552 | void user_SetVersionEnableTbl(int nVal)                                
; 554 | int nPos;                                                              
; 556 | switch(nVal)                                                           
;----------------------------------------------------------------------
        bud       L195
        push      fp
        ldiu      sp,fp
        addi      1,sp
;*      Branch Occurs to L195 
L192:        
	.line	9
;----------------------------------------------------------------------
; 558 | // ½Ì±ÛÄ«ÀÎ °æ¿ì                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	10
;----------------------------------------------------------------------
; 559 | case 1:                                                                
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL6,ar0
        ldiu      r0,ir0
        addi      ir0,r1
        ldiu      1,r0
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	11
;----------------------------------------------------------------------
; 560 | nPos = 0;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	12
;----------------------------------------------------------------------
; 561 | m_bExVersionEnableTbl[nPos++] = TRUE;   //TRIC, A/F                    
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	13
;----------------------------------------------------------------------
; 562 | m_bExVersionEnableTbl[nPos++] = TRUE;   //TRIC, B
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	14
;----------------------------------------------------------------------
; 563 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CCP, F/A end
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	15
;----------------------------------------------------------------------
; 564 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CCP, B
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	16
;----------------------------------------------------------------------
; 565 | m_bExVersionEnableTbl[nPos++] = TRUE;   //LIC-LON
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	17
;----------------------------------------------------------------------
; 566 | m_bExVersionEnableTbl[nPos++] = TRUE;   //LIC-MPU
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	18
;----------------------------------------------------------------------
; 567 | m_bExVersionEnableTbl[nPos++] = TRUE;   //GIA
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	19
;----------------------------------------------------------------------
; 568 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VTX
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	20
;----------------------------------------------------------------------
; 569 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PAC, F/A
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	21
;----------------------------------------------------------------------
; 570 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PAC, F/A
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	22
;----------------------------------------------------------------------
; 571 | m_bExVersionEnableTbl[nPos++] = TRUE;   //FDI, F /A
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	23
;----------------------------------------------------------------------
; 572 | m_bExVersionEnableTbl[nPos++] = TRUE;   //FDI, B
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	24
;----------------------------------------------------------------------
; 573 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 1
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	25
;----------------------------------------------------------------------
; 574 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 2
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	26
;----------------------------------------------------------------------
; 575 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 3
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        ldiu      0,r1
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	27
;----------------------------------------------------------------------
; 576 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 4
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	28
;----------------------------------------------------------------------
; 577 | m_bExVersionEnableTbl[nPos++] = FALSE;  //SDI 5
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	29
;----------------------------------------------------------------------
; 578 | m_bExVersionEnableTbl[nPos++] = FALSE;  //SDI 6
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	30
;----------------------------------------------------------------------
; 579 | m_bExVersionEnableTbl[nPos++] = FALSE;  //SDI 7
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        ldiu      1,r1
        sti       r1,*+ar0(ir0)
	.line	31
;----------------------------------------------------------------------
; 580 | m_bExVersionEnableTbl[nPos++] = FALSE;  //SDI 8
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	32
;----------------------------------------------------------------------
; 581 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PII 1
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	33
;----------------------------------------------------------------------
; 582 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PII 2
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	34
;----------------------------------------------------------------------
; 583 | m_bExVersionEnableTbl[nPos++] = FALSE;  //PII 3
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        ldiu      1,r1
        sti       r1,*+ar0(ir0)
	.line	35
;----------------------------------------------------------------------
; 584 | m_bExVersionEnableTbl[nPos++] = FALSE;  //PII 4
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	36
;----------------------------------------------------------------------
; 585 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 1
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	37
;----------------------------------------------------------------------
; 586 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 2
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	38
;----------------------------------------------------------------------
; 587 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 3
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	39
;----------------------------------------------------------------------
; 588 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 4
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	40
;----------------------------------------------------------------------
; 589 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 5
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        ldiu      0,r1
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	41
;----------------------------------------------------------------------
; 590 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 6
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	42
;----------------------------------------------------------------------
; 591 | m_bExVersionEnableTbl[nPos++] = FALSE;  //VRX 7
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	43
;----------------------------------------------------------------------
; 592 | m_bExVersionEnableTbl[nPos++] = FALSE;  //VRX 8
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	44
;----------------------------------------------------------------------
; 593 | m_bExVersionEnableTbl[nPos++] = FALSE;  //VRX 9
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	45
;----------------------------------------------------------------------
; 594 | m_bExVersionEnableTbl[nPos++] = FALSE;  //VRX 10
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	46
;----------------------------------------------------------------------
; 595 | m_bExVersionEnableTbl[nPos++] = FALSE;  //VRX 11
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	47
;----------------------------------------------------------------------
; 596 | m_bExVersionEnableTbl[nPos++] = FALSE;  //VRX 12
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	48
;----------------------------------------------------------------------
; 597 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-MAIN
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	49
;----------------------------------------------------------------------
; 598 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-LAUN
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	50
;----------------------------------------------------------------------
; 599 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-UP
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	51
;----------------------------------------------------------------------
; 600 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-PPLAY
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	52
;----------------------------------------------------------------------
; 601 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-SPLAY
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	53
;----------------------------------------------------------------------
; 602 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-FTPDATA
;     |                                                                        
; 603 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-CDTDATA
;     |                                                                        
; 604 | break;                                                                 
;----------------------------------------------------------------------
        bu        L197
;*      Branch Occurs to L197 
L193:        
	.line	57
;----------------------------------------------------------------------
; 606 | // ¸Þ¸®µå Ä«ÀÎ °æ¿ì                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	58
;----------------------------------------------------------------------
; 607 | case 2:                                                                
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL6,ar0
        ldiu      r0,ir0
        addi      ir0,r1
        ldiu      1,r0
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	59
;----------------------------------------------------------------------
; 608 | nPos = 0;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	60
;----------------------------------------------------------------------
; 609 | m_bExVersionEnableTbl[nPos++] = TRUE;   //TRIC, A/F                    
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	61
;----------------------------------------------------------------------
; 610 | m_bExVersionEnableTbl[nPos++] = TRUE;   //TRIC, B
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	62
;----------------------------------------------------------------------
; 611 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CCP, F/A end
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	63
;----------------------------------------------------------------------
; 612 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CCP, B
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	64
;----------------------------------------------------------------------
; 613 | m_bExVersionEnableTbl[nPos++] = TRUE;   //LIC-LON
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	65
;----------------------------------------------------------------------
; 614 | m_bExVersionEnableTbl[nPos++] = TRUE;   //LIC-MPU
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	66
;----------------------------------------------------------------------
; 615 | m_bExVersionEnableTbl[nPos++] = TRUE;   //GIA
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	67
;----------------------------------------------------------------------
; 616 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VTX
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	68
;----------------------------------------------------------------------
; 617 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PAC, F/A
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	69
;----------------------------------------------------------------------
; 618 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PAC, F/A
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	70
;----------------------------------------------------------------------
; 619 | m_bExVersionEnableTbl[nPos++] = TRUE;   //FDI, F /A
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	71
;----------------------------------------------------------------------
; 620 | m_bExVersionEnableTbl[nPos++] = TRUE;   //FDI, B
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	72
;----------------------------------------------------------------------
; 621 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 1
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	73
;----------------------------------------------------------------------
; 622 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 2
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	74
;----------------------------------------------------------------------
; 623 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 3
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	75
;----------------------------------------------------------------------
; 624 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 4
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	76
;----------------------------------------------------------------------
; 625 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 5
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	77
;----------------------------------------------------------------------
; 626 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 6
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	78
;----------------------------------------------------------------------
; 627 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 7
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	79
;----------------------------------------------------------------------
; 628 | m_bExVersionEnableTbl[nPos++] = TRUE;   //SDI 8
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	80
;----------------------------------------------------------------------
; 629 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PII 1
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	81
;----------------------------------------------------------------------
; 630 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PII 2
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	82
;----------------------------------------------------------------------
; 631 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PII 3
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	83
;----------------------------------------------------------------------
; 632 | m_bExVersionEnableTbl[nPos++] = TRUE;   //PII 4
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	84
;----------------------------------------------------------------------
; 633 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 1
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	85
;----------------------------------------------------------------------
; 634 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 2
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	86
;----------------------------------------------------------------------
; 635 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 3
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	87
;----------------------------------------------------------------------
; 636 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 4
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	88
;----------------------------------------------------------------------
; 637 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 5
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	89
;----------------------------------------------------------------------
; 638 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 6
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	90
;----------------------------------------------------------------------
; 639 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 7
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	91
;----------------------------------------------------------------------
; 640 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 8
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	92
;----------------------------------------------------------------------
; 641 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 9
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	93
;----------------------------------------------------------------------
; 642 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 10
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	94
;----------------------------------------------------------------------
; 643 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 11
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	95
;----------------------------------------------------------------------
; 644 | m_bExVersionEnableTbl[nPos++] = TRUE;   //VRX 12
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	96
;----------------------------------------------------------------------
; 645 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-MAIN
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	97
;----------------------------------------------------------------------
; 646 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-LAUN
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	98
;----------------------------------------------------------------------
; 647 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-UP
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	99
;----------------------------------------------------------------------
; 648 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-PPLAY
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	100
;----------------------------------------------------------------------
; 649 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-SPLAY
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	101
;----------------------------------------------------------------------
; 650 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-FTPDATA
;     |                                                                        
; 651 | m_bExVersionEnableTbl[nPos++] = TRUE;   //CN-CDTDATA                   
;----------------------------------------------------------------------
        bu        L197
;*      Branch Occurs to L197 
L195:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      1,r0
        beq       L192
;*      Branch Occurs to L192 
        cmpi      2,r0
        beq       L193
;*      Branch Occurs to L193 
L197:        
	.line	103
;----------------------------------------------------------------------
; 652 | break;                                                                 
;----------------------------------------------------------------------
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	652,000000000h,1


	.sect	 ".text"

	.global	_user_DebugRx
	.sym	_user_DebugRx,_user_DebugRx,36,2,0
	.func	657
;******************************************************************************
;* FUNCTION NAME: _user_DebugRx                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_user_DebugRx:
	.sym	_pBuf,-2,28,9,32
	.sym	_nRxBuffLen,-3,4,9,32
	.line	1
;----------------------------------------------------------------------
; 657 | //      UART Åë½Å ¼Û¼ö½Å ÇÔ¼ö                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
;----------------------------------------------------------------------
; 658 | //*********************************************************************
;     | *********************                                                  
;----------------------------------------------------------------------
	.line	3
;----------------------------------------------------------------------
; 659 | int user_DebugRx(UCHAR *pBuf,int nRxBuffLen)                           
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _xr16l784_GetRxBuffer1Ch
                                        ; Call Occurs
        subi      2,sp
	.line	4
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	660,000000000h,0


	.sect	 ".text"

	.global	_user_DebugPrint
	.sym	_user_DebugPrint,_user_DebugPrint,32,2,0
	.func	662
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
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 664 | void user_DebugPrint(char *pTxBuf)                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        ldiu      0,r1
        subi      1,sp
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _xr16l784_Send
                                        ; Call Occurs
        subi      3,sp
	.line	4
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	665,000000000h,0


	.sect	 ".text"

	.global	_user_CncsRx
	.sym	_user_CncsRx,_user_CncsRx,36,2,0
	.func	667
;******************************************************************************
;* FUNCTION NAME: _user_CncsRx                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_user_CncsRx:
	.sym	_pBuf,-2,28,9,32
	.sym	_nRxBuffLen,-3,4,9,32
	.line	1
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 669 | int user_CncsRx(UCHAR *pBuf,int nRxBuffLen)                            
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _xr16l784_GetRxBuffer2Ch
                                        ; Call Occurs
        subi      2,sp
	.line	4
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	670,000000000h,0


	.sect	 ".text"

	.global	_user_CncsTx
	.sym	_user_CncsTx,_user_CncsTx,32,2,0
	.func	672
;******************************************************************************
;* FUNCTION NAME: _user_CncsTx                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_user_CncsTx:
	.sym	_pTxBuf,-2,28,9,32
	.sym	_nTxLen,-3,4,9,32
	.line	1
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 674 | void user_CncsTx(UCHAR *pTxBuf,int nTxLen)                             
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      1,r1
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _xr16l784_RtsDelayStartSend
                                        ; Call Occurs
        subi      4,sp
	.line	5
;----------------------------------------------------------------------
; 676 | xr16l784_RtsDelayStartSend(XR16L784_2CHL,(UCHAR *)pTxBuf,nTxLen,10);   
;----------------------------------------------------------------------
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	676,000000000h,0


	.sect	 ".text"

	.global	_user_PacRx
	.sym	_user_PacRx,_user_PacRx,36,2,0
	.func	678
;******************************************************************************
;* FUNCTION NAME: _user_PacRx                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_user_PacRx:
	.sym	_pBuf,-2,28,9,32
	.sym	_nRxBuffLen,-3,4,9,32
	.line	1
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 680 | int user_PacRx(UCHAR *pBuf,int nRxBuffLen)                             
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _xr16l784_GetRxBuffer3Ch
                                        ; Call Occurs
        subi      2,sp
	.line	4
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	681,000000000h,0


	.sect	 ".text"

	.global	_user_PacTx
	.sym	_user_PacTx,_user_PacTx,32,2,0
	.func	683
;******************************************************************************
;* FUNCTION NAME: _user_PacTx                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_user_PacTx:
	.sym	_pTxBuf,-2,28,9,32
	.sym	_nTxLen,-3,4,9,32
	.line	1
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 685 | void user_PacTx(UCHAR *pTxBuf,int nTxLen)                              
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      2,r1
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _xr16l784_RtsDelayStartSend
                                        ; Call Occurs
        subi      4,sp
	.line	4
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	686,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_CdtTxCnt+0,32
	.field  	0,32		; _d_CdtTxCnt @ 0

	.sect	".text"

	.global	_d_CdtTxCnt
	.bss	_d_CdtTxCnt,1
	.sym	_d_CdtTxCnt,_d_CdtTxCnt,4,2,32
	.sect	 ".text"

	.global	_user_LonWorkLoop
	.sym	_user_LonWorkLoop,_user_LonWorkLoop,32,2,0
	.func	692
;******************************************************************************
;* FUNCTION NAME: _user_LonWorkLoop                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,sp,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 707 Auto + 0 SOE = 709 words      *
;******************************************************************************
_user_LonWorkLoop:
	.sym	_i,1,4,1,32
	.sym	_nTxPos,2,4,1,32
	.sym	_btTxBuf,3,60,1,4096,,128
	.sym	_pNvsram,131,28,1,32
	.sym	_szBuf,132,50,1,16384,,512
	.sym	_szBuf2,644,50,1,2048,,64
	.line	1
;----------------------------------------------------------------------
; 692 | //*********************************************************************
;     | *********************                                                  
; 693 | int d_CdtTxCnt = 0;                                                    
; 694 | void user_LonWorkLoop()                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      707,sp
	.line	4
;----------------------------------------------------------------------
; 696 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 697 | int nTxPos = 0;                                                        
; 698 | UCHAR btTxBuf[128];                                                    
; 699 | UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;                                 
; 700 | char szBuf[512];                                                       
;----------------------------------------------------------------------
        ldiu      @CL56,r0
        sti       r0,*+fp(131)
	.line	10
;----------------------------------------------------------------------
; 701 | char szBuf2[64];                                                       
;----------------------------------------------------------------------
        ldiu      @_m_nCDT_FaultDataStFlag+0,r0
        cmpi      1,r0
        bne       L219
;*      Branch Occurs to L219 
	.line	12
;----------------------------------------------------------------------
; 703 | if(m_nCDT_FaultDataStFlag == 1)                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nCDT_FaultDataStFlag+0
	.line	14
;----------------------------------------------------------------------
; 705 | m_nCDT_FaultDataStFlag = 0;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_LIC_CNCS_Tx_Flag+0
	.line	15
;----------------------------------------------------------------------
; 707 | m_LIC_CNCS_Tx_Flag = TRUE;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nTxDbg1msTimer+0
	.line	17
;----------------------------------------------------------------------
; 708 | m_nTxDbg1msTimer = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	18
        ldiu      fp,ar0
        ldiu      1,r1
        addi      3,ar0
        ldiu      r0,ir0
        addi      ir0,r1
        ldiu      2,r0
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	19
;----------------------------------------------------------------------
; 710 | nTxPos = 0;                                                            
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,ar0
        ldiu      *+fp(2),ir0
        addi      3,ar0
        addi      ir0,r1
        ldiu      1,r0
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	20
;----------------------------------------------------------------------
; 711 | btTxBuf[nTxPos++] = STX; // STX                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(2),ir0
        addi      ir0,r1
        sti       r1,*+fp(2)
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
	.line	21
;----------------------------------------------------------------------
; 712 | btTxBuf[nTxPos++] = LW_WAYSIDE_ON_REQ; // Command Code                 
;----------------------------------------------------------------------
        ldiu      6,r1
        ldiu      fp,ar0
        ldiu      1,r0
        ldiu      *+fp(2),ir0
        addi      ir0,r0
        addi      3,ar0
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir0)
	.line	22
;----------------------------------------------------------------------
; 713 | btTxBuf[nTxPos++] = 0x00; // 0x00À¸·Î ¼³Á¤                             
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(2),ir0
        addi      ir0,r0
        ldiu      fp,ar0
        sti       r0,*+fp(2)
        addi      3,ar0
        ldiu      @_m_nLnWkTxFlag+0,r0
        sti       r0,*+ar0(ir0)
	.line	23
;----------------------------------------------------------------------
; 714 | btTxBuf[nTxPos++] = 0x06; // ±æÀÌ                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        ldiu      1,r0
        addi      ir0,r0
        ldiu      fp,ar0
        sti       r0,*+fp(2)
        addi      3,ar0
        ldiu      @_m_chCarKind+0,r0
        sti       r0,*+ar0(ir0)
	.line	24
;----------------------------------------------------------------------
; 715 | btTxBuf[nTxPos++] = m_nLnWkTxFlag; // ½ºÅ×ÀÌ¼Ç(Recently):0x01, ±âÁöÃ¢(H
;     | istorycal):0x02                                                        
;----------------------------------------------------------------------
        ldiu      @_m_nDateTime2SecondCnt+0,r0
        ldiu      fp,ar0
        lsh       -16,r0
        ldiu      *+fp(2),ir0
        and       65535,r0
        addi      3,ar0
        ldiu      1,r1
        lsh       -8,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	25
;----------------------------------------------------------------------
; 716 | btTxBuf[nTxPos++] = m_chCarKind; // 'A' : AÄ«·ÎºÎÅÍ ¼öÁý, 'B' : BÄ«·ÎºÎ
;     | ÅÍ ¼öÁý                                                                
;----------------------------------------------------------------------
        ldiu      @_m_nDateTime2SecondCnt+0,r0
        lsh       -16,r0
        ldiu      1,r1
        ldiu      *+fp(2),ir0
        ldiu      fp,ar0
        and       255,r0
        addi      ir0,r1
        addi      3,ar0
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	26
;----------------------------------------------------------------------
; 717 | btTxBuf[nTxPos++] = WORD_H(DWORD_H(m_nDateTime2SecondCnt)); // ½Ã°£(HH)
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @_m_nDateTime2SecondCnt+0,r0
        ldiu      *+fp(2),ir0
        ldiu      1,r1
        addi      3,ar0
        addi      ir0,r1
        and       65535,r0
        sti       r1,*+fp(2)
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	27
;----------------------------------------------------------------------
; 718 | btTxBuf[nTxPos++] = WORD_L(DWORD_H(m_nDateTime2SecondCnt)); // ½Ã°£(HL)
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        ldiu      1,r1
        addi      ir0,r1
        ldiu      fp,ar0
        ldiu      255,r0
        sti       r1,*+fp(2)
        addi      3,ar0
        and       @_m_nDateTime2SecondCnt+0,r0
        sti       r0,*+ar0(ir0)
	.line	28
;----------------------------------------------------------------------
; 719 | btTxBuf[nTxPos++] = WORD_H(DWORD_L(m_nDateTime2SecondCnt)); // ½Ã°£(LH)
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,r0
        addi      4,r0
        subri     *+fp(2),r1
        push      r1
        push      r0
        call      _Make1ByteBcc
                                        ; Call Occurs
        subi      2,sp
        ldiu      *+fp(2),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(2)
        ldiu      fp,ar0
        addi      3,ar0
        sti       r0,*+ar0(ir0)
	.line	29
;----------------------------------------------------------------------
; 720 | btTxBuf[nTxPos++] = WORD_L(DWORD_L(m_nDateTime2SecondCnt)); // ½Ã°£(LL)
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r1
        ldiu      *+fp(2),ir0
        addi      ir0,r1
        addi      3,ar0
        sti       r1,*+fp(2)
        ldiu      3,r0
        sti       r0,*+ar0(ir0)
	.line	30
;----------------------------------------------------------------------
; 721 | btTxBuf[nTxPos++] = Make1ByteBcc(&btTxBuf[1],nTxPos-1); // Check Sum   
; 722 | btTxBuf[nTxPos++] = ETX; // ETX                                        
;----------------------------------------------------------------------
        ldiu      *+fp(2),r1
        ldiu      fp,r0
        push      r1
        addi      3,r0
        push      r0
        call      _user_LonWorkTx
                                        ; Call Occurs
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 723 | user_LonWorkTx(btTxBuf,nTxPos);                                        
; 725 | d_CdtTxCnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_CdtTxCnt+0,r0
        sti       r0,@_d_CdtTxCnt+0
L219:        
	.line	36
;----------------------------------------------------------------------
; 728 | // NVSRAM¿¡ ÀúÀåµÈ ³»¿ëÀ» RS232·Î Àü¼ÛÇÏ¿© µð¹ö±ëÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldi       @_m_bLnWkDbgTxFlag+0,r0
        beq       L221
;*      Branch Occurs to L221 
	.line	38
;----------------------------------------------------------------------
; 729 | if(m_bLnWkDbgTxFlag)                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_bLnWkDbgTxFlag+0
	.line	39
        sti       r0,@_m_nDbgTxPos+0
	.line	40
;----------------------------------------------------------------------
; 731 | m_bLnWkDbgTxFlag = FALSE;                                              
; 732 | m_nDbgTxPos = 0;                                                       
; 733 | m_nTxDbg1msTimer = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,@_m_nTxDbg1msTimer+0
L221:        
	.line	43
        ldiu      @_m_nDbgTxPos+0,r0
        cmpi      @_m_nNvsramPos+0,r0
        bhs       L231
;*      Branch Occurs to L231 
	.line	45
;----------------------------------------------------------------------
; 736 | if(m_nDbgTxPos < m_nNvsramPos)                                         
;----------------------------------------------------------------------
        ldiu      @_m_nTxDbg1msTimer+0,r0
        cmpi      200,r0
        bls       L232
;*      Branch Occurs to L232 
	.line	47
;----------------------------------------------------------------------
; 738 | if(m_nTxDbg1msTimer > 200)                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nTxDbg1msTimer+0
	.line	48
        ldiu      fp,ar0
        addi      132,ar0
        sti       r0,*ar0
	.line	49
;----------------------------------------------------------------------
; 740 | m_nTxDbg1msTimer = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        bu        L226
;*      Branch Occurs to L226 
	.line	49
L225:        
        addi      *+fp(131),ir0         ; Unsigned
        ldiu      @CL57,r2
        ldiu      *+ar0(ir0),r0
        addi      fp,r1
        push      r0
        push      r2
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      644,r1
        ldiu      fp,r0
        addi      fp,r1
        addi      132,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L226:        
        ldiu      @_m_nDbgTxPos+0,r0
        ldiu      128,r1
        subri     @_m_nNvsramPos+0,r0   ; Unsigned
        cmpi3     r0,r1
        bhs       L228
;*      Branch Occurs to L228 
        bud       L229
	nop
	nop
        ldiu      128,r0
;*      Branch Occurs to L229 
L228:        
        ldiu      @_m_nDbgTxPos+0,r0
        subri     @_m_nNvsramPos+0,r0   ; Unsigned
L229:        
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        blod      L225
        ldilo     @_m_nDbgTxPos+0,ir0
        ldilo     *+fp(1),ar0
        ldilo     644,r1
;*      Branch Occurs to L225 
	.line	50
;----------------------------------------------------------------------
; 741 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      @CL23,r1
        ldiu      fp,r0
        push      r1
        addi      132,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	51
;----------------------------------------------------------------------
; 742 | for(i=0;i<(MIN(128,(UINT)(m_nNvsramPos-m_nDbgTxPos)));i++) {sprintf(szB
;     | uf2,"%02X ",pNvsram[m_nDbgTxPos+i]); strcat(szBuf,szBuf2);}            
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      132,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	52
;----------------------------------------------------------------------
; 743 | strcat(szBuf,"\r\n");                                                  
; 744 | user_DebugPrint(szBuf);                                                
; 745 | m_nDbgTxPos += 128;                                                    
;----------------------------------------------------------------------
        ldiu      128,r0
        addi      @_m_nDbgTxPos+0,r0    ; Unsigned
        sti       r0,@_m_nDbgTxPos+0
        bu        L232
;*      Branch Occurs to L232 
L231:        
	.line	57
;----------------------------------------------------------------------
; 748 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL58,r0
        sti       r0,@_m_nDbgTxPos+0
L232:        
	.line	59
;----------------------------------------------------------------------
; 750 | m_nDbgTxPos = 0xFFFFFFFF;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      709,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	750,000000000h,707



	.sect	".cinit"
	.field  	1,32
	.field  	_d_LonKindNum+0,32
	.field  	0,32		; _d_LonKindNum @ 0

	.sect	".text"

	.global	_d_LonKindNum
	.bss	_d_LonKindNum,1
	.sym	_d_LonKindNum,_d_LonKindNum,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_LonStData+0,32
	.field  	0,32		; _d_LonStData @ 0

	.sect	".text"

	.global	_d_LonStData
	.bss	_d_LonStData,1
	.sym	_d_LonStData,_d_LonStData,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_VerTxCnt+0,32
	.field  	0,32		; _d_VerTxCnt @ 0

	.sect	".text"

	.global	_d_VerTxCnt
	.bss	_d_VerTxCnt,1
	.sym	_d_VerTxCnt,_d_VerTxCnt,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_EndFlagCnt+0,32
	.field  	0,32		; _d_EndFlagCnt @ 0

	.sect	".text"

	.global	_d_EndFlagCnt
	.bss	_d_EndFlagCnt,1
	.sym	_d_EndFlagCnt,_d_EndFlagCnt,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_TimeTxCnt+0,32
	.field  	0,32		; _d_TimeTxCnt @ 0

	.sect	".text"

	.global	_d_TimeTxCnt
	.bss	_d_TimeTxCnt,1
	.sym	_d_TimeTxCnt,_d_TimeTxCnt,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_StTxCnt+0,32
	.field  	0,32		; _d_StTxCnt @ 0

	.sect	".text"

	.global	_d_StTxCnt
	.bss	_d_StTxCnt,1
	.sym	_d_StTxCnt,_d_StTxCnt,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_nDoorCntA+0,32
	.field  	0,32		; _d_nDoorCntA @ 0

	.sect	".text"

	.global	_d_nDoorCntA
	.bss	_d_nDoorCntA,1
	.sym	_d_nDoorCntA,_d_nDoorCntA,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_nDoorCntB+0,32
	.field  	0,32		; _d_nDoorCntB @ 0

	.sect	".text"

	.global	_d_nDoorCntB
	.bss	_d_nDoorCntB,1
	.sym	_d_nDoorCntB,_d_nDoorCntB,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nOldKind$4+0,32
	.field  	0,32		; _nOldKind$4 @ 0

	.sect	".text"

	.sect	".cinit"
	.field  	1,32
	.field  	_nRecRxPos$5+0,32
	.field  	0,32		; _nRecRxPos$5 @ 0

	.sect	".text"
	.sect	 ".text"

	.global	_user_LonWorkRead
	.sym	_user_LonWorkRead,_user_LonWorkRead,32,2,0
	.func	762
;******************************************************************************
;* FUNCTION NAME: _user_LonWorkRead                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ar4,ir0,ir1,sp,st,rs,re,rc      *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 970 Auto + 1 SOE = 973 words      *
;******************************************************************************
_user_LonWorkRead:
	.bss	_nOldKind$4,1
	.sym	_nOldKind,_nOldKind$4,12,3,32
	.bss	_nRecRxPos$5,1
	.sym	_nRecRxPos,_nRecRxPos$5,4,3,32
	.bss	_btFtpOneRecRxBuf$6,1024
	.sym	_btFtpOneRecRxBuf,_btFtpOneRecRxBuf$6,60,3,32768,,1024
	.sym	_i,1,4,1,32
	.sym	_nTmp,2,4,1,32
	.sym	_pLnWkDp,3,24,1,32,.fake13
	.sym	_pNvsram,4,28,1,32
	.sym	_pLicVerDp,5,24,1,32,.fake22
	.sym	_nKind,6,12,1,32
	.sym	_nRxLen,7,12,1,32
	.sym	_btRxBuf,8,60,1,8192,,256
	.sym	_nTxPos,264,4,1,32
	.sym	_btTxBuf,265,60,1,4096,,128
	.sym	_szBuf,393,50,1,16384,,512
	.sym	_szBuf2,905,50,1,2048,,64
	.sym	_nCarNo,969,4,1,32
	.sym	_bCarNoUpdate,970,4,1,32
	.line	1
;----------------------------------------------------------------------
; 762 | int d_nDoorCntB = 0;                                                   
; 764 | void user_LonWorkRead()                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      970,sp
        push      ar4
	.line	5
;----------------------------------------------------------------------
; 766 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      @CL12,r0
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 767 | int nTmp;                                                              
; 768 | PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;                                
;----------------------------------------------------------------------
        ldiu      @CL56,r0
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 769 | UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;                                 
; 771 | PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //¹öÀü Á¤º¸ Ã³¸
;     | ®¸¦ À§ÇØ ÀÓÀÇ·Î ¸¸µé¾ú´Ù.                                              
; 773 | UCHAR nKind;                                                           
; 774 | static UCHAR nOldKind = 0;                                             
; 775 | UCHAR nRxLen;                                                          
; 776 | static int nRecRxPos = 0;                                              
;----------------------------------------------------------------------
        ldiu      @CL2,r0
        sti       r0,*+fp(5)
	.line	16
;----------------------------------------------------------------------
; 777 | UCHAR btRxBuf[256];                                                    
; 778 | static UCHAR btFtpOneRecRxBuf[1024];                                   
; 779 | int nTxPos = 0;                                                        
; 780 | UCHAR btTxBuf[128];                                                    
; 781 | char szBuf[512];                                                       
; 782 | char szBuf2[64];                                                       
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	22
        ldiu      969,ir0
        ldiu      @_m_wCarNo+0,r0
        sti       r0,*+fp(ir0)
	.line	23
;----------------------------------------------------------------------
; 784 | //'Y.J Ãß°¡ 2011-05-19                                                 
; 785 | int nCarNo = m_wCarNo;                                                 
;----------------------------------------------------------------------
        ldiu      970,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	25
;----------------------------------------------------------------------
; 786 | BOOL bCarNoUpdate = FALSE;                                             
; 788 | d_LonKindNum = nKind = WORD_L(pLnWkDp->btKind);                        
; 790 | switch(nKind)                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        bud       L352
        and3      r0,*ar0,r0
        sti       r0,*+fp(6)
        sti       r0,@_d_LonKindNum+0
;*      Branch Occurs to L352 
L235:        
	.line	31
;----------------------------------------------------------------------
; 792 | // FTP1~6 ÇÁ·ÎÅäÄÝ                                                     
; 793 | case 1: case 2: case 3: case 4: case 5: case 6:                        
; 794 |         nRxLen = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(7)
	.line	34
;----------------------------------------------------------------------
; 796 | // ½ÃÀÛ                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0
        cmpi      1,r0
        bne       L247
;*      Branch Occurs to L247 
	.line	36
;----------------------------------------------------------------------
; 797 | if(nKind == 1)                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nRecRxPos$5+0
	.line	37
        ldiu      *+fp(6),r1
        ldiu      fp,r0
        addi      8,r0
        push      r0
        push      r1
        call      _user_LonWorkRx
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(7)
	.line	38
;----------------------------------------------------------------------
; 799 | nRecRxPos = 0;                                                         
; 800 | nRxLen = user_LonWorkRx(nKind,btRxBuf);                                
;----------------------------------------------------------------------
        cmpi      6,r0
        bls       L272
;*      Branch Occurs to L272 
        ldiu      @_nRecRxPos$5+0,r0
        cmpi      768,r0
        bge       L272
;*      Branch Occurs to L272 
	.line	40
;----------------------------------------------------------------------
; 801 | if(nRxLen>6 && nRecRxPos<768)                                          
;----------------------------------------------------------------------
        ldiu      @CL59,r0
        ldiu      7,r1
        ldiu      fp,r2
        addi      @_nRecRxPos$5+0,r0    ; Unsigned
        subri     *+fp(7),r1            ; Unsigned
        addi      13,r2
        push      r1
        push      r2
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	41
        ldiu      7,r0
        subri     *+fp(7),r0            ; Unsigned
        sti       r0,*+fp(2)
	.line	42
;----------------------------------------------------------------------
; 803 | memcpy(&btFtpOneRecRxBuf[nRecRxPos],&btRxBuf[5],nRxLen-7);             
; 804 | nTmp = (nRxLen-7);                                                     
;----------------------------------------------------------------------
        addi      @_nRecRxPos$5+0,r0
        sti       r0,@_nRecRxPos$5+0
	.line	44
;----------------------------------------------------------------------
; 805 | nRecRxPos += nTmp;                                                     
;----------------------------------------------------------------------
        ldiu      393,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	45
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      @CL60,r1
        ldiu      905,r2
        ldiu      *ar0,r0
        push      r0
        ldiu      *+fp(7),r0
        push      r0
        ldiu      *+fp(6),r0
        push      r0
        push      r1
        addi      fp,r2
        push      r2
        call      _sprintf
                                        ; Call Occurs
        subi      5,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	46
;----------------------------------------------------------------------
; 807 | szBuf[0] = 0;                                                          
; 808 | sprintf(szBuf2,"[%d,%3d,%c]",nKind,nRxLen,(char)btRxBuf[4]); strcat(szB
;     | uf,szBuf2);                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      128,r0
        bge       L242
;*      Branch Occurs to L242 
	.line	48
;----------------------------------------------------------------------
; 809 | if(nTmp < 128)                                                         
; 811 |         for(i=0;i<nTmp;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strca
;     | t(szBuf,szBuf2);}                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        bge       L246
;*      Branch Occurs to L246 
L240:        
        ldiu      5,ir0
        ldiu      fp,ar0
        ldiu      905,r1
        addi      *+fp(1),ir0
        addi      8,ar0
        ldiu      @CL61,r0
        ldiu      *+ar0(ir0),r2
        addi      fp,r1
        push      r2
        push      r0
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        blt       L240
;*      Branch Occurs to L240 
        bu        L246
;*      Branch Occurs to L246 
L242:        
	.line	52
;----------------------------------------------------------------------
; 813 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      8,r0
        bge       L244
;*      Branch Occurs to L244 
L243:        
        ldiu      5,ir0
        ldiu      fp,ar0
        ldiu      905,r2
        addi      *+fp(1),ir0
        addi      8,ar0
        ldiu      @CL61,r0
        ldiu      *+ar0(ir0),r1
        addi      fp,r2
        push      r1
        push      r0
        push      r2
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      8,r0
        blt       L243
;*      Branch Occurs to L243 
L244:        
	.line	53
        ldiu      @CL62,r1
        ldiu      393,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	54
;----------------------------------------------------------------------
; 815 | for(i=0;i<8;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szB
;     | uf2);}                                                                 
; 816 | strcat(szBuf,"..");                                                    
;----------------------------------------------------------------------
        ldiu      120,r0
        sti       r0,*+fp(1)
        cmpi      128,r0
        bge       L246
;*      Branch Occurs to L246 
L245:        
        ldiu      5,ir0
        ldiu      fp,ar0
        ldiu      905,r0
        addi      *+fp(1),ir0
        addi      8,ar0
        ldiu      @CL61,r1
        ldiu      *+ar0(ir0),r2
        addi      fp,r0
        push      r2
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      128,r0
        blt       L245
;*      Branch Occurs to L245 
L246:        
	.line	56
;----------------------------------------------------------------------
; 817 | for(i=120;i<128;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf
;     | ,szBuf2);}                                                             
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        ldiu      393,r1
        push      r0
        addi      fp,r1
        push      r1
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	57
;----------------------------------------------------------------------
; 819 | strcat(szBuf,"\r\n");                                                  
; 820 | user_DebugPrint(szBuf);                                                
;----------------------------------------------------------------------
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L272
;*      Branch Occurs to L272 
L247:        
	.line	62
;----------------------------------------------------------------------
; 823 | else                                                                   
; 824 | // Áß°£ ·¹ÄÚµå ¼ö½Å                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0
        cmpi      2,r0
        blo       L260
;*      Branch Occurs to L260 
        cmpi      5,r0
        bhi       L260
;*      Branch Occurs to L260 
	.line	64
;----------------------------------------------------------------------
; 825 | if(nKind >= 2 && nKind <= 5)                                           
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(6),r1
        addi      8,r0
        push      r0
        push      r1
        call      _user_LonWorkRx
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(7)
	.line	65
;----------------------------------------------------------------------
; 827 | nRxLen = user_LonWorkRx(nKind,btRxBuf);                                
;----------------------------------------------------------------------
        cmpi      6,r0
        bls       L272
;*      Branch Occurs to L272 
        ldiu      @_nRecRxPos$5+0,r0
        cmpi      768,r0
        bge       L272
;*      Branch Occurs to L272 
	.line	67
;----------------------------------------------------------------------
; 828 | if(nRxLen>6 && nRecRxPos<768)                                          
;----------------------------------------------------------------------
        ldiu      @CL59,r0
        ldiu      7,r1
        ldiu      fp,r2
        addi      @_nRecRxPos$5+0,r0    ; Unsigned
        subri     *+fp(7),r1            ; Unsigned
        addi      13,r2
        push      r1
        push      r2
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	68
        ldiu      7,r0
        subri     *+fp(7),r0            ; Unsigned
        sti       r0,*+fp(2)
	.line	69
;----------------------------------------------------------------------
; 830 | memcpy(&btFtpOneRecRxBuf[nRecRxPos],&btRxBuf[5],nRxLen-7);             
; 831 | nTmp = (nRxLen-7);                                                     
;----------------------------------------------------------------------
        addi      @_nRecRxPos$5+0,r0
        sti       r0,@_nRecRxPos$5+0
	.line	71
;----------------------------------------------------------------------
; 832 | nRecRxPos += nTmp;                                                     
;----------------------------------------------------------------------
        ldiu      393,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	72
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      @CL60,r1
        ldiu      905,r2
        ldiu      *ar0,r0
        push      r0
        ldiu      *+fp(7),r0
        push      r0
        ldiu      *+fp(6),r0
        push      r0
        push      r1
        addi      fp,r2
        push      r2
        call      _sprintf
                                        ; Call Occurs
        subi      5,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	73
;----------------------------------------------------------------------
; 834 | szBuf[0] = 0;                                                          
; 835 | sprintf(szBuf2,"[%d,%3d,%c]",nKind,nRxLen,(char)btRxBuf[4]); strcat(szB
;     | uf,szBuf2);                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      128,r0
        bge       L255
;*      Branch Occurs to L255 
	.line	75
;----------------------------------------------------------------------
; 836 | if(nTmp < 128)                                                         
; 838 |         for(i=0;i<nTmp;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strca
;     | t(szBuf,szBuf2);}                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        bge       L259
;*      Branch Occurs to L259 
L253:        
        ldiu      5,ir0
        ldiu      fp,ar0
        ldiu      905,r1
        addi      *+fp(1),ir0
        addi      8,ar0
        ldiu      @CL61,r0
        ldiu      *+ar0(ir0),r2
        addi      fp,r1
        push      r2
        push      r0
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        blt       L253
;*      Branch Occurs to L253 
        bu        L259
;*      Branch Occurs to L259 
L255:        
	.line	79
;----------------------------------------------------------------------
; 840 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      8,r0
        bge       L257
;*      Branch Occurs to L257 
L256:        
        ldiu      5,ir0
        ldiu      fp,ar0
        ldiu      905,r2
        addi      *+fp(1),ir0
        addi      8,ar0
        ldiu      @CL61,r0
        ldiu      *+ar0(ir0),r1
        addi      fp,r2
        push      r1
        push      r0
        push      r2
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      8,r0
        blt       L256
;*      Branch Occurs to L256 
L257:        
	.line	80
        ldiu      @CL62,r1
        ldiu      393,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	81
;----------------------------------------------------------------------
; 842 | for(i=0;i<8;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szB
;     | uf2);}                                                                 
; 843 | strcat(szBuf,"..");                                                    
;----------------------------------------------------------------------
        ldiu      120,r0
        sti       r0,*+fp(1)
        cmpi      128,r0
        bge       L259
;*      Branch Occurs to L259 
L258:        
        ldiu      5,ir0
        ldiu      fp,ar0
        ldiu      905,r0
        addi      *+fp(1),ir0
        addi      8,ar0
        ldiu      @CL61,r1
        ldiu      *+ar0(ir0),r2
        addi      fp,r0
        push      r2
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      128,r0
        blt       L258
;*      Branch Occurs to L258 
L259:        
	.line	83
;----------------------------------------------------------------------
; 844 | for(i=120;i<128;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf
;     | ,szBuf2);}                                                             
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        ldiu      393,r1
        push      r0
        addi      fp,r1
        push      r1
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	84
;----------------------------------------------------------------------
; 846 | strcat(szBuf,"\r\n");                                                  
; 847 | user_DebugPrint(szBuf);                                                
;----------------------------------------------------------------------
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L272
;*      Branch Occurs to L272 
L260:        
	.line	89
;----------------------------------------------------------------------
; 850 | else                                                                   
; 851 | // ³¡                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0
        cmpi      6,r0
        bne       L272
;*      Branch Occurs to L272 
	.line	91
;----------------------------------------------------------------------
; 852 | if(nKind == 6)                                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(6),r1
        addi      8,r0
        push      r0
        push      r1
        call      _user_LonWorkRx
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(7)
	.line	92
;----------------------------------------------------------------------
; 854 | nRxLen = user_LonWorkRx(nKind,btRxBuf);                                
;----------------------------------------------------------------------
        cmpi      6,r0
        bls       L272
;*      Branch Occurs to L272 
        ldiu      @_nRecRxPos$5+0,r0
        cmpi      768,r0
        bge       L272
;*      Branch Occurs to L272 
	.line	94
;----------------------------------------------------------------------
; 855 | if(nRxLen>6 && nRecRxPos<768)                                          
;----------------------------------------------------------------------
        ldiu      @CL59,r0
        ldiu      7,r1
        ldiu      fp,r2
        addi      @_nRecRxPos$5+0,r0    ; Unsigned
        subri     *+fp(7),r1            ; Unsigned
        addi      13,r2
        push      r1
        push      r2
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	95
        ldiu      7,r0
        subri     *+fp(7),r0            ; Unsigned
        sti       r0,*+fp(2)
	.line	96
;----------------------------------------------------------------------
; 857 | memcpy(&btFtpOneRecRxBuf[nRecRxPos],&btRxBuf[5],nRxLen-7);             
; 858 | nTmp = (nRxLen-7);                                                     
;----------------------------------------------------------------------
        addi      @_nRecRxPos$5+0,r0
        sti       r0,@_nRecRxPos$5+0
	.line	98
;----------------------------------------------------------------------
; 859 | nRecRxPos += nTmp;                                                     
;----------------------------------------------------------------------
        ldiu      393,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	99
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      *ar0,r1
        push      r1
        ldiu      *+fp(7),r1
        push      r1
        ldiu      905,r2
        ldiu      *+fp(6),r1
        push      r1
        ldiu      @CL60,r0
        push      r0
        addi      fp,r2
        push      r2
        call      _sprintf
                                        ; Call Occurs
        subi      5,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	100
;----------------------------------------------------------------------
; 861 | szBuf[0] = 0;                                                          
; 862 | sprintf(szBuf2,"[%d,%3d,%c]",nKind,nRxLen,(char)btRxBuf[4]); strcat(szB
;     | uf,szBuf2);                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      128,r0
        bge       L267
;*      Branch Occurs to L267 
	.line	102
;----------------------------------------------------------------------
; 863 | if(nTmp < 128)                                                         
; 865 |         for(i=0;i<nTmp;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strca
;     | t(szBuf,szBuf2);}                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        bge       L271
;*      Branch Occurs to L271 
L265:        
        ldiu      5,ir0
        ldiu      fp,ar0
        ldiu      905,r1
        addi      *+fp(1),ir0
        addi      8,ar0
        ldiu      @CL61,r0
        ldiu      *+ar0(ir0),r2
        addi      fp,r1
        push      r2
        push      r0
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        blt       L265
;*      Branch Occurs to L265 
        bu        L271
;*      Branch Occurs to L271 
L267:        
	.line	106
;----------------------------------------------------------------------
; 867 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      8,r0
        bge       L269
;*      Branch Occurs to L269 
L268:        
        ldiu      5,ir0
        ldiu      fp,ar0
        ldiu      905,r1
        addi      *+fp(1),ir0
        addi      8,ar0
        ldiu      @CL61,r0
        ldiu      *+ar0(ir0),r2
        addi      fp,r1
        push      r2
        push      r0
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      8,r0
        blt       L268
;*      Branch Occurs to L268 
L269:        
	.line	107
        ldiu      @CL62,r1
        ldiu      393,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	108
;----------------------------------------------------------------------
; 869 | for(i=0;i<8;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf,szB
;     | uf2);}                                                                 
; 870 | strcat(szBuf,"..");                                                    
;----------------------------------------------------------------------
        ldiu      120,r0
        sti       r0,*+fp(1)
        cmpi      128,r0
        bge       L271
;*      Branch Occurs to L271 
L270:        
        ldiu      5,ir0
        ldiu      fp,ar0
        ldiu      905,r0
        addi      *+fp(1),ir0
        addi      8,ar0
        ldiu      @CL61,r1
        ldiu      *+ar0(ir0),r2
        addi      fp,r0
        push      r2
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      128,r0
        blt       L270
;*      Branch Occurs to L270 
L271:        
	.line	110
;----------------------------------------------------------------------
; 871 | for(i=120;i<128;i++) {sprintf(szBuf2,"%02X",btRxBuf[i+5]); strcat(szBuf
;     | ,szBuf2);}                                                             
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        ldiu      393,r1
        push      r0
        addi      fp,r1
        push      r1
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	111
;----------------------------------------------------------------------
; 873 | strcat(szBuf,"\r\n");                                                  
; 874 | user_DebugPrint(szBuf);                                                
;----------------------------------------------------------------------
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
L272:        
	.line	116
;----------------------------------------------------------------------
; 878 | // ±æÀÌ°¡ 0~127±îÁö ¿Â´Ù¸é µ¥ÀÌÅÍ¸¦ ÀúÀåÇÑ´Ù.                          
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        cmpi      6,r0
        bls       L275
;*      Branch Occurs to L275 
        cmpi      134,r0
        bhs       L275
;*      Branch Occurs to L275 
	.line	118
;----------------------------------------------------------------------
; 879 | if((nRxLen>6 && nRxLen<134))                                           
;----------------------------------------------------------------------
        ldiu      @CL63,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	119
        ldiu      @_m_nNvsramPos+0,r0
        ldiu      @_nRecRxPos$5+0,r2
        ldiu      @CL59,r1
        addi      *+fp(4),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	120
;----------------------------------------------------------------------
; 881 | user_DebugPrint("***FTP File receive end ^^;***\r\n");                 
;----------------------------------------------------------------------
        ldiu      @_nRecRxPos$5+0,r0
        addi      @_m_nNvsramPos+0,r0   ; Unsigned
        sti       r0,@_m_nNvsramPos+0
	.line	121
;----------------------------------------------------------------------
; 882 | memcpy(&pNvsram[m_nNvsramPos],btFtpOneRecRxBuf,nRecRxPos);             
; 883 | m_nNvsramPos += nRecRxPos;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_bLnWkFtpEndFlag+0
	.line	123
;----------------------------------------------------------------------
; 884 | m_bLnWkFtpEndFlag = TRUE;                                              
; 886 | d_EndFlagCnt++;                                                        
;----------------------------------------------------------------------
        addi      @_d_EndFlagCnt+0,r0
        sti       r0,@_d_EndFlagCnt+0
        bu        L277
;*      Branch Occurs to L277 
L275:        
	.line	126
;----------------------------------------------------------------------
; 888 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0
        cmpi      6,r0
        bne       L277
;*      Branch Occurs to L277 
	.line	128
;----------------------------------------------------------------------
; 889 | if(nKind == 6)                                                         
;----------------------------------------------------------------------
        ldiu      @_m_nNvsramPos+0,r0
        ldiu      @_nRecRxPos$5+0,r2
        ldiu      @CL59,r1
        addi      *+fp(4),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	129
;----------------------------------------------------------------------
; 891 | memcpy(&pNvsram[m_nNvsramPos],btFtpOneRecRxBuf,nRecRxPos);             
; 892 | m_nNvsramPos += nRecRxPos;                                             
;----------------------------------------------------------------------
        ldiu      @_nRecRxPos$5+0,r0
        addi      @_m_nNvsramPos+0,r0   ; Unsigned
        sti       r0,@_m_nNvsramPos+0
L277:        
	.line	132
        ldiu      *+fp(6),r0
        sti       r0,@_nOldKind$4+0
	.line	134
;----------------------------------------------------------------------
; 895 | nOldKind = nKind;                                                      
; 897 | break;                                                                 
;----------------------------------------------------------------------
        bu        L359
;*      Branch Occurs to L359 
	.line	138
;----------------------------------------------------------------------
; 899 | // ÀÏ¹Ý ÇÁ·ÎÅäÄÝ(¼ö½Å)                                                 
; 900 | case 7:                                                                
; 901 |         nRxLen = user_LonWorkRx(7,btRxBuf);                            
;----------------------------------------------------------------------
L279:        
        addi      8,r0
        push      r0
        push      r1
        call      _user_LonWorkRx
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(7)
	.line	142
;----------------------------------------------------------------------
; 903 | //memcpy(d_LonRxBuf,btRxBuf,nRxLen); //LonWorks¼ö½Å ¹öÆÛ µð¹ö±ë.       
;----------------------------------------------------------------------
        ldiu      @_m_nDbgTxPos+0,r0
        cmpi      @CL58,r0
        bned      L283
	nop
        ldieq     393,ir0
        ldieq     0,r0
;*      Branch Occurs to L283 
	.line	144
;----------------------------------------------------------------------
; 905 | if(m_nDbgTxPos == 0xFFFFFFFF)                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(ir0)
	.line	145
        ldiu      *+fp(7),r2
        ldiu      @CL64,r1
        ldiu      905,r0
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	146
;----------------------------------------------------------------------
; 907 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *+fp(7),r0
        bhs       L282
;*      Branch Occurs to L282 
L281:        
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        ldiu      905,r0
        addi      8,ar0
        ldiu      @CL57,r2
        ldiu      *+ar0(ir0),r1
        addi      fp,r0
        push      r1
        push      r2
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *+fp(7),r0
        blo       L281
;*      Branch Occurs to L281 
L282:        
	.line	147
;----------------------------------------------------------------------
; 908 | sprintf(szBuf2,"[RX:%02d] ",nRxLen); strcat(szBuf,szBuf2);             
;----------------------------------------------------------------------
        ldiu      @CL23,r1
        ldiu      393,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	148
;----------------------------------------------------------------------
; 909 | for(i=0;i<nRxLen;i++) {sprintf(szBuf2,"%02X ",btRxBuf[i]); strcat(szBuf
;     | ,szBuf2);}                                                             
; 910 | strcat(szBuf,"\r\n");                                                  
; 911 | user_DebugPrint(szBuf);                                                
;----------------------------------------------------------------------
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
L283:        
	.line	151
        ldi       *+fp(7),r0
        beqd      L359
	nop
        ldine     264,ir0
        ldine     0,r0
;*      Branch Occurs to L359 
	.line	153
;----------------------------------------------------------------------
; 914 | if(nRxLen)                                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(ir0)
	.line	155
;----------------------------------------------------------------------
; 916 | nTxPos = 0;                                                            
; 918 | d_LonStData = btRxBuf[1];                                              
; 919 | switch(btRxBuf[1])                                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        bud       L338
        addi      9,ar0
        ldiu      *ar0,r0
        sti       r0,@_d_LonStData+0
;*      Branch Occurs to L338 
L285:        
	.line	160
;----------------------------------------------------------------------
; 921 | // WAYSIDE ON ACK ÀÀ´ä                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_nLnWkWaySideOnRxOk+0
	.line	161
;----------------------------------------------------------------------
; 922 | case LW_WAYSIDE_ON_ACK:                                                
; 923 |         m_nLnWkWaySideOnRxOk = 1;                                      
; 924 |         break;                                                         
;----------------------------------------------------------------------
        bu        L346
;*      Branch Occurs to L346 
L286:        
	.line	164
;----------------------------------------------------------------------
; 925 | // FTPÀü¼Û ³¡                                                          
; 926 | case LW_FTP_TX_END:                                                    
;----------------------------------------------------------------------
        ldi       @_m_nLnWkWaySideOnRxOk+0,r0
        beq       L346
;*      Branch Occurs to L346 
	.line	166
;----------------------------------------------------------------------
; 927 | if(m_nLnWkWaySideOnRxOk)                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_m_nLnWkWaySideOnRxOk+0,r0 ; Unsigned
        sti       r0,@_m_nLnWkWaySideOnRxOk+0
	.line	167
;----------------------------------------------------------------------
; 929 | m_nLnWkWaySideOnRxOk--;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_bLnWkFtpEndFlag+0
	.line	169
;----------------------------------------------------------------------
; 930 | m_bLnWkFtpEndFlag = TRUE;                                              
; 932 | break;                                                                 
; 933 | // Car Number ÀÐ±â                                                     
; 934 | case LW_CARNO:                                                         
; 936 | //memcpy(d_LonRxBuf,btRxBuf,nRxLen); //LonWorks¼ö½Å ¹öÆÛ µð¹ö±ë.       
;----------------------------------------------------------------------
        bu        L346
;*      Branch Occurs to L346 
	.line	177
;----------------------------------------------------------------------
; 938 | // Y.J ¼öÁ¤(2011-05-19 ÀÓ½Ãº¯¼ö¿¡ Â÷·®¹øÈ£¸¦ ±¸ÇÑ ÈÄ, Single°ú Married¸
;     | ¦ ±¸ºÐÇÏ¿© Â÷·®¹øÈ£¸¦ ±¸ÇÔ.)                                           
; 940 | nTmp = MAKE_WORD(BYTE_L(btRxBuf[4]),btRxBuf[5]);                       
; 941 | //d_nCarNoList[d_n++] = nTmp;                                          
;----------------------------------------------------------------------
L289:        
        ldiu      255,r0
        addi      12,ar0
        addi      13,ar1
        and3      r1,*ar0,r1
        and3      r0,*ar1,r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	181
;----------------------------------------------------------------------
; 943 | // Single Car...                                                       
;----------------------------------------------------------------------
        ldiu      @_m_nCarNo+0,r0
        cmpi      *+fp(2),r0
        beq       L295
;*      Branch Occurs to L295 
        ldiu      @_m_nCarNo+1,r0
        cmpi      *+fp(2),r0
        beq       L295
;*      Branch Occurs to L295 
	.line	183
;----------------------------------------------------------------------
; 944 | if((m_nCarNo[0] != nTmp && m_nCarNo[1] != nTmp))                       
;----------------------------------------------------------------------
        ldi       @_m_nCarNo+0,r0
        bne       L293
;*      Branch Occurs to L293 
	.line	185
;----------------------------------------------------------------------
; 946 | if(m_nCarNo[0] == 0x0000)                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        sti       r0,@_m_nCarNo+0
	.line	186
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      100,r1
        ash       4,r2
        ldiu      @_m_nCarNo+0,r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r1
        ash       8,r1
        or3       r1,r2,r2
        ldiu      10,r1
        ldiu      @_m_nCarNo+0,r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      969,ir0
        or3       r2,r0,r0
        sti       r0,*+fp(ir0)
	.line	187
;----------------------------------------------------------------------
; 948 | m_nCarNo[0] = nTmp;                                                    
; 949 | nCarNo = ((m_nCarNo[0] / 100) << 8) | (((m_nCarNo[0] / 10)%10) << 4) |
;     | (m_nCarNo[0] % 10); //¸Þ¸®µå´Â ³ôÀº ¿­¹øÀ» »ç¿ëÇÑ´Ù                    
; 950 | bCarNoUpdate = ((m_nCarNo[0] / 100) == 7);                             
;----------------------------------------------------------------------
        ldiu      @_m_nCarNo+0,r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      0,r1
        cmpi      7,r0
        ldieq     1,r1
        ldiu      970,ir0
        sti       r1,*+fp(ir0)
        bu        L295
;*      Branch Occurs to L295 
L293:        
	.line	190
;----------------------------------------------------------------------
; 952 | else                                                                   
; 953 | if(m_nCarNo[1] == 0x0000) m_nCarNo[1] = nTmp;                          
;----------------------------------------------------------------------
        ldi       @_m_nCarNo+1,r0
        bne       L295
;*      Branch Occurs to L295 
        ldiu      *+fp(2),r0
        sti       r0,@_m_nCarNo+1
L295:        
	.line	193
        ldiu      @_m_nCarNo+0,r0
        cmpi      @_m_nCarNo+1,r0
        bne       L297
;*      Branch Occurs to L297 
	.line	195
;----------------------------------------------------------------------
; 956 | if(m_nCarNo[0] == m_nCarNo[1])                                         
; 958 |         m_nCarNo[1] = 0x0000;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nCarNo+1
L297:        
	.line	198
        ldi       @_m_nCarNo+0,r0
        bne       L300
;*      Branch Occurs to L300 
        ldi       @_m_nCarNo+1,r0
        beq       L300
;*      Branch Occurs to L300 
	.line	200
;----------------------------------------------------------------------
; 961 | if(m_nCarNo[0] == 0x0000 && m_nCarNo[1]) //¹ß»ýÇÒ ¼ö ¾ø´Â Á¶°Ç         
;----------------------------------------------------------------------
        ldiu      @_m_nCarNo+0,r0
        sti       r0,*+fp(2)
	.line	201
        ldiu      @_m_nCarNo+1,r0
        sti       r0,@_m_nCarNo+0
	.line	202
;----------------------------------------------------------------------
; 963 | nTmp = m_nCarNo[0];                                                    
; 964 | m_nCarNo[0] = m_nCarNo[1];                                             
; 965 | m_nCarNo[1] = nTmp;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        sti       r0,@_m_nCarNo+1
L300:        
	.line	206
;----------------------------------------------------------------------
; 968 | // Married Car...                                                      
;----------------------------------------------------------------------
        ldi       @_m_nCarNo+0,r0
        beq       L305
;*      Branch Occurs to L305 
        ldi       @_m_nCarNo+1,r0
        beq       L305
;*      Branch Occurs to L305 
	.line	208
;----------------------------------------------------------------------
; 969 | if(m_nCarNo[0] && m_nCarNo[1])                                         
;----------------------------------------------------------------------
        ldiu      @_m_nCarNo+0,r0
        cmpi      @_m_nCarNo+1,r0
        bls       L304
;*      Branch Occurs to L304 
	.line	210
;----------------------------------------------------------------------
; 971 | if(m_nCarNo[0] > m_nCarNo[1])                                          
;----------------------------------------------------------------------
        ldiu      @_m_nCarNo+0,r0
        sti       r0,*+fp(2)
	.line	211
        ldiu      @_m_nCarNo+1,r0
        sti       r0,@_m_nCarNo+0
	.line	212
;----------------------------------------------------------------------
; 973 | nTmp = m_nCarNo[0];                                                    
; 974 | m_nCarNo[0] = m_nCarNo[1];                                             
; 975 | m_nCarNo[1] = nTmp;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        sti       r0,@_m_nCarNo+1
L304:        
	.line	215
        ldiu      @_m_nCarNo+1,r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      100,r1
        ash       4,r2
        ldiu      @_m_nCarNo+1,r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r1
        ash       8,r1
        or3       r1,r2,r2
        ldiu      10,r1
        ldiu      @_m_nCarNo+1,r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      969,ir0
        or3       r2,r0,r0
        sti       r0,*+fp(ir0)
	.line	217
;----------------------------------------------------------------------
; 978 | nCarNo = ((m_nCarNo[1] / 100) << 8) | (((m_nCarNo[1] / 10)%10) << 4) |
;     | (m_nCarNo[1] % 10); //¸Þ¸®µå´Â ³ôÀº ¿­¹øÀ» »ç¿ëÇÑ´Ù.                   
; 980 | bCarNoUpdate = TRUE;                                                   
;----------------------------------------------------------------------
        ldiu      970,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L305:        
	.line	222
;----------------------------------------------------------------------
; 983 | //if(d_n < 1024)                                                       
; 984 | //      d_nCarNoList[d_n++] = m_wCarNo;                                
;----------------------------------------------------------------------
        ldiu      970,ir0
        ldi       *+fp(ir0),r0
        beq       L346
;*      Branch Occurs to L346 
	.line	224
;----------------------------------------------------------------------
; 985 | if(bCarNoUpdate)                                                       
;----------------------------------------------------------------------
        ldiu      969,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_m_wCarNo+0
	.line	226
;----------------------------------------------------------------------
; 987 | m_wCarNo =  nCarNo;                                                    
;----------------------------------------------------------------------
        ldiu      431,ar0
        ldiu      *+fp(5),ir0
        ash       -8,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	227
;----------------------------------------------------------------------
; 989 | pLicVerDp->CarNum[0] = WORD_H(m_wCarNo);                               
; 990 | pLicVerDp->CarNum[1] = WORD_L(m_wCarNo);                               
;----------------------------------------------------------------------
        ldiu      432,ar0
        ldiu      255,r0
        ldiu      *+fp(5),ir0
        and       @_m_wCarNo+0,r0
        sti       r0,*+ar0(ir0)
	.line	230
;----------------------------------------------------------------------
; 993 | break;                                                                 
; 995 | // ¼öÁ¤Àü ¿øº»                                                         
; 996 | ////memcpy(d_LonRxBuf,btRxBuf,nRxLen); //LonWorks¼ö½Å ¹öÆÛ µð¹ö±ë.     
; 998 | //nTmp = MAKE_WORD(BYTE_L(btRxBuf[4]),btRxBuf[5]);                     
; 999 | ////d_nCarNoList[d_n++] = nTmp;                                        
; 1000 | //if((m_nCarNo[0] != nTmp && m_nCarNo[1] != nTmp))                     
; 1001 | //{                                                                    
; 1002 | //      if(m_nCarNo[0] == 0x0000)                                      
; 1003 | //      {                                                              
; 1004 | //              m_nCarNo[0] = nTmp;                                    
; 1005 | //              // m_wCarNo = ((m_nCarNo[0] / 100) << 8) | (((m_nCarNo[
;     | 0] / 10)%10) << 4) % 10 | (m_nCarNo[0] % 10); //¸Þ¸®µå´Â ³ôÀº ¿­¹øÀ» »ç
;     | ¿ëÇÑ´Ù.                                                                
; 1006 | //              m_wCarNo = ((m_nCarNo[0] / 100) << 8) | (((m_nCarNo[0]
;     | / 10)%10) << 4) | (m_nCarNo[0] % 10); //¸Þ¸®µå´Â ³ôÀº ¿­¹øÀ» »ç¿ëÇÑ´Ù. 
;     |                                                                        
; 1007 | //      }                                                              
; 1008 | //      else                                                           
; 1009 | //      if(m_nCarNo[1] == 0x0000) m_nCarNo[1] = nTmp;                  
; 1010 | //}                                                                    
; 1011 | //                                                                     
; 1012 | //if(m_nCarNo[0] == m_nCarNo[1])                                       
; 1013 | //{                                                                    
; 1014 | //      m_nCarNo[1] = 0x0000;                                          
; 1015 | //}                                                                    
; 1016 | //                                                                     
; 1017 | //if(m_nCarNo[0] == 0x0000 && m_nCarNo[1]) //¹ß»ýÇÒ ¼ö ¾ø´Â Á¶°Ç       
; 1018 | //{                                                                    
; 1019 | //      nTmp = m_nCarNo[0];                                            
; 1020 | //      m_nCarNo[0] = m_nCarNo[1];                                     
; 1021 | //      m_nCarNo[1] = nTmp;                                            
; 1022 | //}                                                                    
; 1023 | //                                                                     
; 1024 | //if(m_nCarNo[0] && m_nCarNo[1])                                       
; 1025 | //{                                                                    
; 1026 | //      if(m_nCarNo[0] > m_nCarNo[1])                                  
; 1027 | //      {                                                              
; 1028 | //              nTmp = m_nCarNo[0];                                    
; 1029 | //              m_nCarNo[0] = m_nCarNo[1];                             
; 1030 | //              m_nCarNo[1] = nTmp;                                    
; 1032 | //              m_wCarNo = ((m_nCarNo[0] / 100) << 8) | (((m_nCarNo[0]
;     | / 10)%10) << 4) | (m_nCarNo[0] % 10); //¸Þ¸®µå´Â ³ôÀº ¿­¹øÀ» »ç¿ëÇÑ´Ù. 
; 1033 | //      }                                                              
; 1034 | //      else                                                           
; 1035 | //      {                                                              
; 1036 | //              m_wCarNo = ((m_nCarNo[1] / 100) << 8) | (((m_nCarNo[1]
;     | / 10)%10) << 4) | (m_nCarNo[1] % 10); //¸Þ¸®µå´Â ³ôÀº ¿­¹øÀ» »ç¿ëÇÑ´Ù. 
; 1037 | //      }                                                              
; 1038 | //}                                                                    
; 1040 | ////if(d_n < 1024)                                                     
; 1041 | ////    d_nCarNoList[d_n++] = m_wCarNo;                                
; 1043 | //pLicVerDp->CarNum[0] = WORD_H(m_wCarNo);                             
; 1044 | //pLicVerDp->CarNum[1] = WORD_L(m_wCarNo);                             
; 1046 | //break;                                                               
;----------------------------------------------------------------------
        bu        L346
;*      Branch Occurs to L346 
	.line	287
;----------------------------------------------------------------------
; 1048 | // ½Ã°£¿äÃ», MPU°¡ DPRAM¿¡ µ¥ÀÌÅÍ¸¦ ¾²°í Àü¼Û ÀÎÅÍ·´Æ®¸¦ Àü¼ÛÇÏÁö¾ÊÀ¸¸é
;     |  LIC_LON¿¡¼­ Àü¼ÛÇÏÁö ¾ÊÀ½                                             
; 1049 | case LW_TIME_REQ:                                                      
;----------------------------------------------------------------------
L308:        
        sti       r0,*+fp(ir0)
	.line	289
;----------------------------------------------------------------------
; 1050 | nTxPos = 0;                                                            
; 1051 | //if(m_LIC_CNCS_TimSetFlag && m_nCncsRxCheck1msTimer)                  
;----------------------------------------------------------------------
        ldi       @_m_LIC_GIA_TimSetFlag+0,r0
        beq       L346
;*      Branch Occurs to L346 
        ldi       @_m_nGiaRxCheck1msTimer+0,r0
        beq       L346
;*      Branch Occurs to L346 
	.line	291
;----------------------------------------------------------------------
; 1052 | if(m_LIC_GIA_TimSetFlag && m_nGiaRxCheck1msTimer)                      
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      *+fp(ir0),r0
        ldiu      264,ir1
        ldiu      265,ar0
        ldiu      2,r1
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	292
        ldiu      264,ir0
        ldiu      1,r2
        ldiu      *+fp(ir0),r0
        ldiu      9,r1
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	293
;----------------------------------------------------------------------
; 1054 | btTxBuf[nTxPos++] = STX; // STX                                        
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r2
        ldiu      *+fp(ir0),r0
        ldiu      0,r1
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	294
;----------------------------------------------------------------------
; 1055 | btTxBuf[nTxPos++] = LW_TIME_TX; // Command Code                        
; 1056 | btTxBuf[nTxPos++] = 0x00; // 0x00À¸·Î ¼³Á¤                             
; 1057 | btTxBuf[nTxPos++] = 0x06; // ±æÀÌ                                      
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      *+fp(ir0),r0
        ldiu      1,r2
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        ldiu      6,r1
        sti       r1,*+ar0(ir0)
	.line	305
        ldiu      264,ir0
        ldiu      *+fp(ir1),r0
        ldiu      1,r1
        addi      r0,r1
        sti       r1,*+fp(ir0)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      @_m_tmUtcTime+5,r0
        sti       r0,*+ar0(ir0)
	.line	306
;----------------------------------------------------------------------
; 1067 | // Y.J ¼öÁ¤                                                            
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r1
        ldiu      *+fp(ir0),r0
        addi      r0,r1
        sti       r1,*+fp(ir1)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      @_m_tmUtcTime+4,r0
        sti       r0,*+ar0(ir0)
	.line	307
;----------------------------------------------------------------------
; 1068 | btTxBuf[nTxPos++] = m_tmUtcTime.year;
;     |                          // ³â BCD                                     
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r1
        ldiu      *+fp(ir0),r0
        addi3     r0,fp,ir0             ; Unsigned
        addi      r0,r1
        sti       r1,*+fp(ir1)
        ldiu      @_m_tmUtcTime+3,r0
        sti       r0,*+ar0(ir0)
	.line	308
;----------------------------------------------------------------------
; 1069 | btTxBuf[nTxPos++] = m_tmUtcTime.month;
;     |                          // ¿ù                                         
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r1
        ldiu      *+fp(ir0),r0
        addi      r0,r1
        sti       r1,*+fp(ir1)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      @_m_tmUtcTime+2,r0
        sti       r0,*+ar0(ir0)
	.line	309
;----------------------------------------------------------------------
; 1070 | btTxBuf[nTxPos++] = m_tmUtcTime.day;
;     |                          // ÀÏ                                         
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r1
        ldiu      *+fp(ir0),r0
        addi      r0,r1
        sti       r1,*+fp(ir1)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      @_m_tmUtcTime+1,r0
        sti       r0,*+ar0(ir0)
	.line	310
;----------------------------------------------------------------------
; 1071 | btTxBuf[nTxPos++] = m_tmUtcTime.hour;
;     |                          // ½Ã                                         
; 1072 | btTxBuf[nTxPos++] = m_tmUtcTime.minute;
;     |                          // ºÐ                                         
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      *+fp(ir0),r1
        ldiu      1,r0
        addi      r1,r0
        sti       r0,*+fp(ir1)
        addi3     r1,fp,ir0             ; Unsigned
        ldiu      @_m_tmUtcTime+0,r0
        sti       r0,*+ar0(ir0)
	.line	312
;----------------------------------------------------------------------
; 1073 | btTxBuf[nTxPos++] = m_tmUtcTime.second;
;     |                          // ÃÊ                                         
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      266,r0
        ldiu      264,ir0
        addi      fp,r0
        subi3     r1,*+fp(ir0),r1
        push      r1
        push      r0
        call      _Make1ByteBcc
                                        ; Call Occurs
        subi      2,sp
        ldiu      264,ir0
        ldiu      264,ir1
        ldiu      *+fp(ir0),r1
        ldiu      265,ar0
        addi3     r1,fp,ir0             ; Unsigned
        addi      1,r1
        sti       r1,*+fp(ir1)
        sti       r0,*+ar0(ir0)
	.line	313
        ldiu      264,ir0
        ldiu      *+fp(ir0),r2
        addi3     r2,fp,ir0             ; Unsigned
        ldiu      1,r1
        addi      r2,r1
        ldiu      3,r0
        sti       r1,*+fp(ir1)
        sti       r0,*+ar0(ir0)
	.line	314
;----------------------------------------------------------------------
; 1075 | btTxBuf[nTxPos++] = Make1ByteBcc(&btTxBuf[1],nTxPos-1); // Check Sum   
; 1076 | btTxBuf[nTxPos++] = ETX; // ETX                                        
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      *+fp(ir0),r0
        push      r0
        ldiu      265,r0
        addi      fp,r0
        push      r0
        call      _user_LonWorkTx
                                        ; Call Occurs
        subi      2,sp
	.line	316
;----------------------------------------------------------------------
; 1077 | user_LonWorkTx(btTxBuf,nTxPos);                                        
;----------------------------------------------------------------------
        ldiu      10,r0
        push      r0
        ldiu      0,r1
        push      r1
        ldiu      @CL65,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	318
;----------------------------------------------------------------------
; 1079 | memset(d_TimeTxBuf,0x00,sizeof(d_TimeTxBuf));                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_TimeTxCnt+0,r0
        sti       r0,@_d_TimeTxCnt+0
	.line	319
;----------------------------------------------------------------------
; 1081 | d_TimeTxCnt++;                                                         
;----------------------------------------------------------------------
        ldiu      269,ar0
        ldiu      @CL65,ar1
        addi      fp,ar0
        ldiu      *ar0++(1),r0
        rpts      4                     ; Fast MEMCPY(#3)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	321
;----------------------------------------------------------------------
; 1082 | memcpy(d_TimeTxBuf,&btTxBuf[4],6);                                     
; 1084 | break;                                                                 
; 1086 | // »óÅÂµ¥ÀÌÅÍ ¿äÃ», MPU°¡ DPRAM¿¡ µ¥ÀÌÅÍ¸¦ ¾²°í Àü¼Û ÀÎÅÍ·´Æ®¸¦ Àü¼ÛÇÏÁ
;     | ö¾ÊÀ¸¸é LIC_LON¿¡¼­ Àü¼ÛÇÏÁö ¾ÊÀ½                                      
; 1087 | case LW_COMMST_REQ:                                                    
; 1088 | //if(m_LIC_CNCS_TimSetFlag)                                            
;----------------------------------------------------------------------
        bu        L346
;*      Branch Occurs to L346 
L311:        
	.line	328
;----------------------------------------------------------------------
; 1089 | //if(m_LIC_GIA_TimSetFlag)
;     |                          Y.J ¼öÁ¤(2011.03.03)                          
; 1090 | //{                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_StTxCnt+0,r0
        sti       r0,@_d_StTxCnt+0
	.line	330
;----------------------------------------------------------------------
; 1091 | d_StTxCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      12,ar0
        ldi       *ar0,r0
        sti       r0,@_m_nCarCnt+0
	.line	331
        bne       L314
;*      Branch Occurs to L314 
        cmpi      2,r0
        bls       L314
;*      Branch Occurs to L314 
        ldiu      1,r0
        sti       r0,@_m_nCarCnt+0
L314:        
	.line	332
;----------------------------------------------------------------------
; 1093 | m_nCarCnt = btRxBuf[4];                                                
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	333
;----------------------------------------------------------------------
; 1094 | if(m_nCarCnt < 1 && m_nCarCnt > 2) m_nCarCnt = 1;                      
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      264,ir1
        ldiu      265,ar0
        ldiu      2,r1
        ldiu      *+fp(ir0),r0
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	334
;----------------------------------------------------------------------
; 1095 | nTxPos = 0;                                                            
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r2
        ldiu      *+fp(ir0),r0
        ldiu      11,r1
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	335
;----------------------------------------------------------------------
; 1096 | btTxBuf[nTxPos++] = STX; // STX                                        
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      0,r1
        ldiu      *+fp(ir0),r0
        ldiu      1,r2
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	336
;----------------------------------------------------------------------
; 1097 | btTxBuf[nTxPos++] = LW_COMMST_TX; // Command Code                      
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r2
        ldiu      *+fp(ir0),r0
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        ldiu      7,r1
        sti       r1,*+ar0(ir0)
	.line	337
;----------------------------------------------------------------------
; 1098 | btTxBuf[nTxPos++] = 0x00; // 0x00À¸·Î ¼³Á¤                             
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r1
        ldiu      *+fp(ir0),r0
        addi      r0,r1
        sti       r1,*+fp(ir1)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      @_m_btCommSt+0,r0
        sti       r0,*+ar0(ir0)
	.line	338
;----------------------------------------------------------------------
; 1099 | btTxBuf[nTxPos++] = 0x07; // ±æÀÌ                                      
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      *+fp(ir1),r0
        ldiu      1,r1
        addi      r0,r1
        sti       r1,*+fp(ir0)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      @_m_btCommSt+1,r0
        sti       r0,*+ar0(ir0)
	.line	339
;----------------------------------------------------------------------
; 1100 | btTxBuf[nTxPos++] = m_btCommSt[0]; // »óÅÂ µ¥ÀÌÅÍ                      
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      *+fp(ir0),r0
        ldiu      1,r1
        addi      r0,r1
        sti       r1,*+fp(ir1)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      @_m_btCommSt+2,r0
        sti       r0,*+ar0(ir0)
	.line	340
;----------------------------------------------------------------------
; 1101 | btTxBuf[nTxPos++] = m_btCommSt[1]; // »óÅÂ µ¥ÀÌÅÍ                      
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r0
        ldiu      *+fp(ir0),r1
        addi      r1,r0
        addi3     r1,fp,ir0             ; Unsigned
        sti       r0,*+fp(ir1)
        ldiu      @_m_btCommSt+3,r0
        sti       r0,*+ar0(ir0)
	.line	341
;----------------------------------------------------------------------
; 1102 | btTxBuf[nTxPos++] = m_btCommSt[2]; // »óÅÂ µ¥ÀÌÅÍ                      
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r1
        ldiu      *+fp(ir1),r0
        addi      r0,r1
        sti       r1,*+fp(ir0)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      @_m_btCommSt+4,r0
        sti       r0,*+ar0(ir0)
	.line	342
;----------------------------------------------------------------------
; 1103 | btTxBuf[nTxPos++] = m_btCommSt[3]; // »óÅÂ µ¥ÀÌÅÍ                      
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r1
        ldiu      *+fp(ir0),r0
        addi      r0,r1
        addi3     r0,fp,ir0             ; Unsigned
        sti       r1,*+fp(ir1)
        ldiu      @_m_btCommSt+5,r0
        sti       r0,*+ar0(ir0)
	.line	343
;----------------------------------------------------------------------
; 1104 | btTxBuf[nTxPos++] = m_btCommSt[4]; // »óÅÂ µ¥ÀÌÅÍ                      
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r1
        ldiu      *+fp(ir1),r0
        addi      r0,r1
        sti       r1,*+fp(ir0)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      @_m_btCommSt+6,r0
        sti       r0,*+ar0(ir0)
	.line	344
;----------------------------------------------------------------------
; 1105 | btTxBuf[nTxPos++] = m_btCommSt[5]; // »óÅÂ µ¥ÀÌÅÍ                      
;----------------------------------------------------------------------
        ldiu      266,r0
        ldiu      1,r1
        ldiu      264,ir0
        addi      fp,r0
        subi3     r1,*+fp(ir0),r1
        push      r1
        push      r0
        call      _Make1ByteBcc
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r1
        ldiu      264,ir0
        ldiu      264,ir1
        ldiu      *+fp(ir0),r2
        addi      r2,r1
        sti       r1,*+fp(ir1)
        ldiu      265,ar0
        addi3     r2,fp,ir0             ; Unsigned
        sti       r0,*+ar0(ir0)
	.line	345
;----------------------------------------------------------------------
; 1106 | btTxBuf[nTxPos++] = m_btCommSt[6]; // »óÅÂ µ¥ÀÌÅÍ                      
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      *+fp(ir0),r0
        addi3     r0,fp,ir0             ; Unsigned
        addi      1,r0
        sti       r0,*+fp(ir1)
        ldiu      3,r1
        sti       r1,*+ar0(ir0)
	.line	346
;----------------------------------------------------------------------
; 1107 | btTxBuf[nTxPos++] = Make1ByteBcc(&btTxBuf[1],nTxPos-1); // Check Sum   
; 1108 | btTxBuf[nTxPos++] = ETX; // ETX                                        
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      265,r0
        addi      fp,r0
        ldiu      *+fp(ir0),r1
        push      r1
        push      r0
        call      _user_LonWorkTx
                                        ; Call Occurs
        subi      2,sp
	.line	348
;----------------------------------------------------------------------
; 1109 | user_LonWorkTx(btTxBuf,nTxPos);                                        
; 1110 | //}                                                                    
; 1111 | break;                                                                 
;----------------------------------------------------------------------
        bu        L346
;*      Branch Occurs to L346 
L315:        
	.line	352
;----------------------------------------------------------------------
; 1113 | //¹öÁ¯¿äÃ»                                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_VerTxCnt+0,r0
        sti       r0,@_d_VerTxCnt+0
	.line	353
;----------------------------------------------------------------------
; 1114 | case LW_VERSION_REQ:                                                   
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	354
;----------------------------------------------------------------------
; 1115 | d_VerTxCnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      264,ir1
        ldiu      265,ar0
        ldiu      2,r1
        ldiu      *+fp(ir0),r0
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	355
;----------------------------------------------------------------------
; 1116 | nTxPos = 0;                                                            
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      1,r2
        ldiu      *+fp(ir0),r0
        addi      r0,r2
        sti       r2,*+fp(ir1)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      13,r1
        sti       r1,*+ar0(ir0)
	.line	356
;----------------------------------------------------------------------
; 1117 | btTxBuf[nTxPos++] = STX; // STX                                        
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      *+fp(ir0),r0
        ldiu      1,r2
        addi      r0,r2
        sti       r2,*+fp(ir1)
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      0,r1
        sti       r1,*+ar0(ir0)
	.line	357
;----------------------------------------------------------------------
; 1118 | btTxBuf[nTxPos++] = LW_VERSION_TX; // Command Code                     
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      8,r1
        ldiu      *+fp(ir0),r0
        ldiu      1,r2
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	358
;----------------------------------------------------------------------
; 1119 | btTxBuf[nTxPos++] = 0x00; // 0x00À¸·Î ¼³Á¤                             
; 1120 | btTxBuf[nTxPos++] = 0x08; // ±æÀÌ                                      
; 1121 | btTxBuf[nTxPos++] = btRxBuf[4]; // Index ¹øÈ£                          
; 1123 | // 2 : Firmware                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      264,ir0
        ldiu      265,ar1
        ldiu      *+fp(ir0),r0
        ldiu      1,r1
        addi3     r0,fp,ir0             ; Unsigned
        addi      r0,r1
        addi      12,ar0
        sti       r1,*+fp(ir1)
        ldiu      *ar0,r0
        sti       r0,*+ar1(ir0)
	.line	363
;----------------------------------------------------------------------
; 1124 | // 0 : Not used¸¦ Ãâ·ÂÇÏ°í ¹öÀü°ú ³¯Â¥´Â Ãâ·ÂÇÏÁö¾Ê´Â´Ù.               
;----------------------------------------------------------------------
        ldiu      @CL11,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      1,r0
        beq       L317
;*      Branch Occurs to L317 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      2,r0
        bne       L318
;*      Branch Occurs to L318 
L317:        
        bud       L319
        ldiu      @CL11,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
;*      Branch Occurs to L319 
L318:        
        ldiu      0,r0
L319:        
        sti       r0,*+fp(1)
	.line	364
;----------------------------------------------------------------------
; 1125 | // 6 : ¹öÀüÀü¼Û(LIC -> CDT) ÁßÁö                                       
;----------------------------------------------------------------------
        cmpi      0,r0
        bne       L321
;*      Branch Occurs to L321 
        bud       L322
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L322 
L321:        
        ldiu      *+fp(1),r0
L322:        
        push      r0
        call      _user_SetVersionEnableTbl
                                        ; Call Occurs
        subi      1,sp
	.line	365
;----------------------------------------------------------------------
; 1126 | i = WORD_L(SINGLE_OR_MARRIED_CAR) == 1 || WORD_L(SINGLE_OR_MARRIED_CAR)
;     |  == 2 ? WORD_L(SINGLE_OR_MARRIED_CAR) : 0;                             
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      1,r0
        cmpi3     *ar0,r0
        ble       L324
;*      Branch Occurs to L324 
        bu        L325
;*      Branch Occurs to L325 
L324:        
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      *ar0,r0
L325:        
        sti       r0,*+fp(2)
	.line	366
;----------------------------------------------------------------------
; 1127 | user_SetVersionEnableTbl(!i ? 2 : i);                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      44,r0
        cmpi3     *ar0,r0
        bge       L327
;*      Branch Occurs to L327 
        bu        L328
;*      Branch Occurs to L328 
L327:        
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      *ar0,r0
L328:        
        sti       r0,*+fp(2)
	.line	367
;----------------------------------------------------------------------
; 1128 | nTmp = MAX(1,(int)btRxBuf[4]);                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *+fp(2),r0
        sti       r0,*+fp(2)
	.line	368
;----------------------------------------------------------------------
; 1129 | nTmp = MIN((VER_BDD_MAX_CNT+1),(int)btRxBuf[4]);                       
; 1130 | nTmp--;                                                                
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      *ar0,r0
        cmpi      44,r0
        bned      L330
	nop
        ldine     *+fp(2),ir0
        ldine     @CL6,ar0
;*      Branch Occurs to L330 
        bud       L334
	nop
	nop
        ldiu      6,r1
;*      Branch Occurs to L334 
L330:        
        ldi       *+ar0(ir0),r0
        beq       L332
;*      Branch Occurs to L332 
        bud       L333
	nop
	nop
        ldiu      2,r1
;*      Branch Occurs to L333 
L332:        
        ldiu      0,r1
L333:        
L334:        
        ldiu      264,ir0
        ldiu      1,r2
        ldiu      264,ir1
        ldiu      *+fp(ir0),r0
        ldiu      265,ar0
        addi      r0,r2
        addi3     r0,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	370
;----------------------------------------------------------------------
; 1131 | btTxBuf[nTxPos++] = btRxBuf[4] == (VER_BDD_MAX_CNT+1) ? 6 : (m_bExVersi
;     | onEnableTbl[nTmp] ? 2 : 0); // Type (2011_03_03 ´ö¼ö)È®ÀÎ ¿äÃ»         
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      264,ir0
        ldiu      -8,r2
        ldiu      *+fp(ir0),r0
        ldiu      1,r1
        ldiu      *+fp(2),ir0
        ldiu      265,ar1
        lsh3      r2,*+ar0(ir0),r2
        addi      r0,r1
        addi3     r0,fp,ir0             ; Unsigned
        and       255,r2
        sti       r1,*+fp(ir1)
        sti       r2,*+ar1(ir0)
	.line	371
        ldiu      255,r0
        ldiu      264,ir0
        ldiu      *+fp(ir0),r1
        ldiu      *+fp(2),ir0
        ldiu      1,r2
        and3      r0,*+ar0(ir0),r0
        addi      r1,r2
        addi3     r1,fp,ir0             ; Unsigned
        sti       r2,*+fp(ir1)
        sti       r0,*+ar1(ir0)
	.line	372
;----------------------------------------------------------------------
; 1133 | btTxBuf[nTxPos++] = WORD_H(m_btExVersionTbl[nTmp]); // Production Versi
;     | on                                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir1
        ldiu      @CL5,ar0
        ldiu      -16,r1
        ldiu      264,ir0
        ldiu      *+fp(ir0),r2
        lsh3      r1,*+ar0(ir1),r0
        and       65535,r0
        lsh       -8,r0
        addi3     r2,fp,ir1             ; Unsigned
        ldiu      1,r1
        addi      r2,r1
        and       255,r0
        sti       r1,*+fp(ir0)
        sti       r0,*+ar1(ir1)
	.line	373
;----------------------------------------------------------------------
; 1134 | btTxBuf[nTxPos++] = WORD_L(m_btExVersionTbl[nTmp]); // Debugging Versio
;     | n                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),r0
        addi3     r0,fp,ir1             ; Unsigned
        ldiu      1,r2
        ldiu      -16,r1
        ldiu      @CL5,ar1
        ldiu      *+fp(2),ir0
        addi      r0,r2
        lsh3      r1,*+ar1(ir0),r0
        ldiu      264,ir0
        sti       r2,*+fp(ir0)
        ldiu      265,ar0
        and       255,r0
        sti       r0,*+ar0(ir1)
	.line	374
;----------------------------------------------------------------------
; 1135 | btTxBuf[nTxPos++] = WORD_H(DWORD_H(m_btExVersion_DAYTbl[nTmp]));//0x20;
;     |  // Year(ÃµÀÚ¸®,¹éÀÚ¸®)                                                
;----------------------------------------------------------------------
        ldiu      264,ir1
        ldiu      1,r0
        ldiu      *+fp(ir0),r1
        addi      r1,r0
        ldiu      *+fp(2),ir0
        sti       r0,*+fp(ir1)
        ldiu      *+ar1(ir0),r0
        and       65535,r0
        lsh       -8,r0
        addi3     r1,fp,ir0             ; Unsigned
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	375
;----------------------------------------------------------------------
; 1136 | btTxBuf[nTxPos++] = WORD_L(DWORD_H(m_btExVersion_DAYTbl[nTmp]));//0x10;
;     | //btRxBuf[4]; // Year(½ÊÀÚ¸®,ÀÏÀÚ¸®)                                   
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      255,r1
        ldiu      *+fp(ir0),r0
        ldiu      *+fp(2),ir0
        ldiu      1,r2
        addi      r0,r2
        addi3     r0,fp,ir1             ; Unsigned
        and3      r1,*+ar1(ir0),r0
        ldiu      264,ir0
        sti       r2,*+fp(ir0)
        sti       r0,*+ar0(ir1)
	.line	376
;----------------------------------------------------------------------
; 1137 | btTxBuf[nTxPos++] = WORD_H(DWORD_L(m_btExVersion_DAYTbl[nTmp]));//0x01;
;     | //btRxBuf[4]+1; // Month(½ÊÀÚ¸®,ÀÏÀÚ¸®)                                
;----------------------------------------------------------------------
        ldiu      266,r1
        addi      fp,r1
        ldiu      1,r0
        subi3     r0,*+fp(ir0),r0
        push      r0
        push      r1
        call      _Make1ByteBcc
                                        ; Call Occurs
        ldiu      265,ar0
        subi      2,sp
        ldiu      264,ir1
        ldiu      1,r1
        ldiu      *+fp(ir1),r2
        ldiu      264,ir0
        addi      r2,r1
        sti       r1,*+fp(ir0)
        addi3     r2,fp,ir0             ; Unsigned
        sti       r0,*+ar0(ir0)
	.line	377
;----------------------------------------------------------------------
; 1138 | btTxBuf[nTxPos++] = WORD_L(DWORD_L(m_btExVersion_DAYTbl[nTmp]));//0x01;
;     | //btRxBuf[4]+2; // Day(½ÊÀÚ¸®,ÀÏÀÚ¸®)                                  
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      *+fp(ir0),r0
        addi3     r0,fp,ir0             ; Unsigned
        addi      1,r0
        ldiu      3,r1
        sti       r0,*+fp(ir1)
        sti       r1,*+ar0(ir0)
	.line	378
;----------------------------------------------------------------------
; 1139 | btTxBuf[nTxPos++] = Make1ByteBcc(&btTxBuf[1],nTxPos-1); // Check Sum   
;----------------------------------------------------------------------
        ldiu      264,ir0
        ldiu      265,r0
        addi      fp,r0
        ldiu      *+fp(ir0),r1
        push      r1
        push      r0
        call      _user_LonWorkTx
                                        ; Call Occurs
        subi      2,sp
	.line	379
;----------------------------------------------------------------------
; 1140 | btTxBuf[nTxPos++] = ETX; // ETX                                        
; 1141 | user_LonWorkTx(btTxBuf,nTxPos);                                        
; 1142 | break;                                                                 
;----------------------------------------------------------------------
        bu        L346
;*      Branch Occurs to L346 
L335:        
	.line	383
;----------------------------------------------------------------------
; 1144 | //µµ¾î»óÅÂ(Single or married A)                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_nDoorCntA+0,r0
        sti       r0,@_d_nDoorCntA+0
	.line	384
;----------------------------------------------------------------------
; 1145 | case LW_DOOR_ST_REQ1:                                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      *ar0,r0
        sti       r0,@_m_btCttSignalA+0
	.line	385
;----------------------------------------------------------------------
; 1146 | d_nDoorCntA++;                                                         
; 1147 | m_btCttSignalA = btRxBuf[4];                                           
; 1148 | break;                                                                 
;----------------------------------------------------------------------
        bu        L346
;*      Branch Occurs to L346 
L336:        
	.line	389
;----------------------------------------------------------------------
; 1150 | //µµ¾î»óÅÂ(Mmarried B)                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_nDoorCntB+0,r0
        sti       r0,@_d_nDoorCntB+0
        ldiu      fp,ar0
        addi      12,ar0
        ldiu      *ar0,r0
        sti       r0,@_m_btCttSignalB+0
	.line	390
;----------------------------------------------------------------------
; 1151 | case LW_DDOR_ST_REQ2:                                                  
; 1152 |         d_nDoorCntB++;                          m_btCttSignalB = btRxBu
;     | f[4];                                                                  
; 1153 |         break;                                                         
;----------------------------------------------------------------------
        bu        L346
;*      Branch Occurs to L346 
L338:        
	.line	156
        ldiu      fp,ar0
        addi      9,ar0
        ldiu      *ar0,r0
        cmpi      2,r0
        beq       L285
;*      Branch Occurs to L285 
        cmpi      6,r0
        beq       L286
;*      Branch Occurs to L286 
        cmpi      7,r0
        beqd      L289
        ldieq     fp,ar0
        ldieq     fp,ar1
        ldieq     15,r1
;*      Branch Occurs to L289 
        cmpi      8,r0
        beqd      L308
	nop
        ldieq     264,ir0
        ldieq     0,r0
;*      Branch Occurs to L308 
        cmpi      10,r0
        beq       L311
;*      Branch Occurs to L311 
        cmpi      12,r0
        beq       L315
;*      Branch Occurs to L315 
        cmpi      14,r0
        beq       L335
;*      Branch Occurs to L335 
        cmpi      15,r0
        beq       L336
;*      Branch Occurs to L336 
L346:        
	.line	393
        ldiu      264,ir0
        ldi       *+fp(ir0),r0
        beq       L359
;*      Branch Occurs to L359 
	.line	395
;----------------------------------------------------------------------
; 1156 | if(nTxPos)                                                             
;----------------------------------------------------------------------
        ldiu      @_m_nDbgTxPos+0,r0
        cmpi      @CL58,r0
        bned      L359
	nop
        ldieq     393,ir0
        ldieq     0,r0
;*      Branch Occurs to L359 
	.line	397
;----------------------------------------------------------------------
; 1158 | if(m_nDbgTxPos == 0xFFFFFFFF)                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(ir0)
	.line	398
        ldiu      905,r1
        ldiu      264,ir0
        addi      fp,r1
        ldiu      *+fp(ir0),r2
        ldiu      @CL66,r0
        push      r2
        push      r0
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	399
;----------------------------------------------------------------------
; 1160 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      264,ir0
        cmpi3     *+fp(ir0),r0
        ldiu      265,ar4
        bge       L350
;*      Branch Occurs to L350 
L349:        
        ldiu      *+fp(1),ir0
        ldiu      905,r1
        addi      fp,ir0
        ldiu      @CL57,r0
        ldiu      *+ar4(ir0),r2
        addi      fp,r1
        push      r2
        push      r0
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      905,r0
        addi      fp,r0
        push      r0
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      264,ir0
        cmpi3     *+fp(ir0),r0
        blt       L349
;*      Branch Occurs to L349 
L350:        
	.line	400
;----------------------------------------------------------------------
; 1161 | sprintf(szBuf2,"[TX:%02d] ",nTxPos); strcat(szBuf,szBuf2);             
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        ldiu      393,r1
        push      r0
        addi      fp,r1
        push      r1
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	401
;----------------------------------------------------------------------
; 1162 | for(i=0;i<nTxPos;i++) {sprintf(szBuf2,"%02X ",btTxBuf[i]); strcat(szBuf
;     | ,szBuf2);}                                                             
; 1163 | strcat(szBuf,"\r\n");                                                  
; 1164 | user_DebugPrint(szBuf);                                                
;----------------------------------------------------------------------
        ldiu      393,r0
        addi      fp,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	405
        bu        L359
;*      Branch Occurs to L359 
L352:        
	.line	27
        ldiu      *+fp(6),r0
        cmpi      1,r0
        beq       L235
;*      Branch Occurs to L235 
        cmpi      2,r0
        beq       L235
;*      Branch Occurs to L235 
        cmpi      3,r0
        beq       L235
;*      Branch Occurs to L235 
        cmpi      4,r0
        beq       L235
;*      Branch Occurs to L235 
        cmpi      5,r0
        beq       L235
;*      Branch Occurs to L235 
        cmpi      6,r0
        beq       L235
;*      Branch Occurs to L235 
        cmpi      7,r0
        beqd      L279
	nop
        ldieq     fp,r0
        ldieq     7,r1
;*      Branch Occurs to L279 
L359:        
	.line	407
;----------------------------------------------------------------------
; 1168 | break;                                                                 
;----------------------------------------------------------------------
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      972,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1168,000001000h,970


	.sect	 ".text"

	.global	_user_LonWorkRx
	.sym	_user_LonWorkRx,_user_LonWorkRx,44,2,0
	.func	1170
;******************************************************************************
;* FUNCTION NAME: _user_LonWorkRx                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,ir1,sp,st                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 4 Auto + 0 SOE = 8 words          *
;******************************************************************************
_user_LonWorkRx:
	.sym	_nRxPos,-2,4,9,32
	.sym	_pRxBuf,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_nRxLen,2,12,1,32
	.sym	_pBuf,3,28,1,32
	.sym	_pLnWkDp,4,24,1,32,.fake13
	.line	1
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 1172 | UCHAR user_LonWorkRx(int nRxPos, UCHAR *pRxBuf)                        
; 1174 | int i;                                                                 
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1175 | UCHAR nRxLen;                                                          
; 1176 | UCHAR *pBuf;                                                           
;----------------------------------------------------------------------
        ldiu      @CL12,r0
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 1177 | PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;                                
;----------------------------------------------------------------------
        ldi       *-fp(2),r0
        ble       L377
;*      Branch Occurs to L377 
        cmpi      6,r0
        bgt       L377
;*      Branch Occurs to L377 
	.line	10
;----------------------------------------------------------------------
; 1179 | if(nRxPos >= 1 && nRxPos <= 6)                                         
;----------------------------------------------------------------------
        ldiu      1,ar0
        subri     *-fp(2),ar0
        ldiu      255,r0
        mpyi      136,ar0
        addi      *+fp(4),ar0           ; Unsigned
        ldiu      135,r1
        and       *+ar0(11),r0
        addi      7,r0                  ; Unsigned
        cmpi3     r0,r1
        bhs       L365
;*      Branch Occurs to L365 
        bud       L366
	nop
	nop
        ldiu      135,r0
;*      Branch Occurs to L366 
L365:        
        ldiu      1,ar0
        subri     *-fp(2),ar0
        mpyi      136,ar0
        addi      *+fp(4),ar0           ; Unsigned
        ldiu      255,r0
        and       *+ar0(11),r0
        addi      7,r0                  ; Unsigned
L366:        
        sti       r0,*+fp(2)
	.line	11
;----------------------------------------------------------------------
; 1181 | nRxLen = MIN(sizeof(LNWKFTPIT)-1,WORD_L(pLnWkDp->lfBuf[nRxPos-1].btLen)
;     | +7);                                                                   
;----------------------------------------------------------------------
        cmpi      6,r0
        bls       L375
;*      Branch Occurs to L375 
	.line	13
;----------------------------------------------------------------------
; 1182 | if(nRxLen > 6)                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *-fp(2),r0
        mpyi      136,r0
        addi      *+fp(4),r0            ; Unsigned
        addi      8,r0                  ; Unsigned
        sti       r0,*+fp(3)
	.line	14
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *+fp(2),r0
        ldiu      255,r1
        bhs       L369
;*      Branch Occurs to L369 
L368:        
        ldiu      *+fp(1),ar1
        ldiu      *+fp(3),ir0
        ldiu      *-fp(3),ir1
        ldiu      ar1,ar0
        and3      r1,*+ar1(ir0),r0
        sti       r0,*+ar0(ir1)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *+fp(2),r0
        blo       L368
;*      Branch Occurs to L368 
L369:        
	.line	15
;----------------------------------------------------------------------
; 1184 | pBuf = &pLnWkDp->lfBuf[nRxPos-1].btStx;                                
; 1185 | for(i=0;i<nRxLen;i++) pRxBuf[i] = WORD_L(pBuf[i]);                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      *ar0,r0
        cmpi      2,r0
        bne       L373
;*      Branch Occurs to L373 
        ldiu      *+fp(2),ar0
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *-ar0(1),r0
        cmpi      3,r0
        bne       L373
;*      Branch Occurs to L373 
	.line	17
;----------------------------------------------------------------------
; 1186 | if(pRxBuf[0] == STX && pRxBuf[nRxLen-1] == ETX)                        
; 1188 |         return nRxLen;                                                 
;----------------------------------------------------------------------
        bud       L395
	nop
	nop
        ldiu      *+fp(2),r0
;*      Branch Occurs to L395 
L373:        
	.line	21
;----------------------------------------------------------------------
; 1190 | else                                                                   
; 1192 |         return 0;                                                      
;----------------------------------------------------------------------
        bud       L395
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L395 
L375:        
	.line	26
;----------------------------------------------------------------------
; 1195 | else                                                                   
; 1197 |         return 0;                                                      
;----------------------------------------------------------------------
        bud       L395
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L395 
L377:        
	.line	30
;----------------------------------------------------------------------
; 1200 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      7,r0
        bned      L393
        ldieq     255,r0
        ldieq     *+fp(4),ir0
        ldieq     827,ar0
;*      Branch Occurs to L393 
	.line	32
;----------------------------------------------------------------------
; 1201 | if(nRxPos == 7)                                                        
;----------------------------------------------------------------------
        ldiu      64,r1
        and3      r0,*+ar0(ir0),r0
        addi      6,r0                  ; Unsigned
        cmpi3     r0,r1
        bhsd      L380
        ldihs     *+fp(4),ir0
        ldihs     827,ar0
        ldihs     255,r0
;*      Branch Occurs to L380 
        bud       L381
	nop
	nop
        ldiu      64,r0
;*      Branch Occurs to L381 
L380:        
        and3      r0,*+ar0(ir0),r0
        addi      6,r0                  ; Unsigned
L381:        
        sti       r0,*+fp(2)
	.line	33
;----------------------------------------------------------------------
; 1203 | nRxLen = MIN(sizeof(LNWKGERIT),WORD_L(pLnWkDp->lgRxBuf.btLen)+6);      
;----------------------------------------------------------------------
        cmpi      5,r0
        bls       L391
;*      Branch Occurs to L391 
	.line	35
;----------------------------------------------------------------------
; 1204 | if(nRxLen > 5)                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *-fp(2),r0
        mpyi      136,r0
        addi      *+fp(4),r0            ; Unsigned
        addi      8,r0                  ; Unsigned
        sti       r0,*+fp(3)
	.line	36
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *+fp(2),r0
        ldiu      255,r1
        bhs       L384
;*      Branch Occurs to L384 
L383:        
        ldiu      *+fp(1),ar1
        ldiu      *+fp(3),ir0
        ldiu      *-fp(3),ir1
        ldiu      ar1,ar0
        and3      r1,*+ar1(ir0),r0
        sti       r0,*+ar0(ir1)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *+fp(2),r0
        blo       L383
;*      Branch Occurs to L383 
L384:        
	.line	37
;----------------------------------------------------------------------
; 1206 | pBuf = &pLnWkDp->lfBuf[nRxPos-1].btStx;                                
; 1207 | for(i=0;i<nRxLen;i++) pRxBuf[i] = WORD_L(pBuf[i]);                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      *ar0,r0
        cmpi      2,r0
        bne       L389
;*      Branch Occurs to L389 
        ldiu      *+fp(2),ar0
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *-ar0(1),r0
        cmpi      3,r0
        bned      L389
	nop
        ldieq     1,r1
        ldieq     2,r0
;*      Branch Occurs to L389 
        addi      *-fp(3),r1            ; Unsigned
        subri     *+fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _Make1ByteBcc
                                        ; Call Occurs
        cmpi      0,r0
        subi      2,sp
        bne       L389
;*      Branch Occurs to L389 
	.line	39
;----------------------------------------------------------------------
; 1208 | if(pRxBuf[0] == STX && pRxBuf[nRxLen-1] == ETX && !Make1ByteBcc(&pRxBuf
;     | [1],nRxLen-2))                                                         
; 1210 |         return nRxLen;                                                 
;----------------------------------------------------------------------
        bud       L395
	nop
	nop
        ldiu      *+fp(2),r0
;*      Branch Occurs to L395 
L389:        
	.line	43
;----------------------------------------------------------------------
; 1212 | else                                                                   
; 1214 |         return 0;                                                      
;----------------------------------------------------------------------
        bud       L395
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L395 
L391:        
	.line	48
;----------------------------------------------------------------------
; 1217 | else                                                                   
; 1219 |         return 0;                                                      
;----------------------------------------------------------------------
        bud       L395
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L395 
L393:        
	.line	53
;----------------------------------------------------------------------
; 1222 | else                                                                   
; 1224 |         return 0;                                                      
;----------------------------------------------------------------------
        bud       L395
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L395 
	.line	56
L395:        
	.line	57
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      6,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1226,000000000h,4



	.sect	".cinit"
	.field  	1,32
	.field  	_d_LonTxData+0,32
	.field  	0,32		; _d_LonTxData @ 0

	.sect	".text"

	.global	_d_LonTxData
	.bss	_d_LonTxData,1
	.sym	_d_LonTxData,_d_LonTxData,4,2,32
	.sect	 ".text"

	.global	_user_LonWorkTx
	.sym	_user_LonWorkTx,_user_LonWorkTx,32,2,0
	.func	1230
;******************************************************************************
;* FUNCTION NAME: _user_LonWorkTx                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,fp,sp,rs,re,rc                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_user_LonWorkTx:
	.sym	_pTxBuf,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_pBuf,1,28,1,32
	.sym	_pLnWkDp,2,24,1,32,.fake13
	.line	1
;----------------------------------------------------------------------
; 1230 | int d_LonTxData = 0;                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 1231 | int d_LonTxDataBuf[30];                                                
; 1232 | void user_LonWorkTx(UCHAR *pTxBuf,UCHAR nLen)                          
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1234 | UCHAR *pBuf;                                                           
;----------------------------------------------------------------------
        ldiu      @CL12,r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 1235 | PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;                                
;----------------------------------------------------------------------
        ldiu      888,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
; 1237 | pBuf = &pLnWkDp->lgTxBuf.btStx;                                        
;----------------------------------------------------------------------
        ldiu      @CL67,ar0
        ldiu      r0,ar1
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#6)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	10
;----------------------------------------------------------------------
; 1239 | memcpy(d_LonTxDataBuf,pBuf,30);                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_LonTxData+0,r0
        sti       r0,@_d_LonTxData+0
	.line	12
;----------------------------------------------------------------------
; 1241 | d_LonTxData++;                                                         
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        ldiu      *+fp(1),r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	13
        ldiu      1,r0
        ldiu      @CL68,ar1
        ldiu      @CL68,ar0
        andn3     *ar1,r0,r0
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
; 1243 | memcpy(pBuf,pTxBuf,(int)nLen);                                         
;----------------------------------------------------------------------
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1243,000000000h,2



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Len+0,32
	.field  	0,32		; _d_Len @ 0

	.sect	".text"

	.global	_d_Len
	.bss	_d_Len,1
	.sym	_d_Len,_d_Len,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nRxPos$7+0,32
	.field  	0,32		; _nRxPos$7 @ 0

	.sect	".text"

	.sect	".cinit"
	.field  	1,32
	.field  	_nOldUart2RxOneByteGapDelayTime$8+0,32
	.field  	0,32		; _nOldUart2RxOneByteGapDelayTime$8 @ 0

	.sect	".text"

	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeSendCnt$11+0,32
	.field  	0,32		; _nTimeSendCnt$11 @ 0

	.sect	".text"
	.sect	 ".text"

	.global	_user_WithCncsRs232Loop
	.sym	_user_WithCncsRs232Loop,_user_WithCncsRs232Loop,32,2,0
	.func	1257
;******************************************************************************
;* FUNCTION NAME: _user_WithCncsRs232Loop                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,r4,r5,ar0,ar1,fp,ir0,ir1,sp,st          *
;*   Regs Saved         : r4,r5                                               *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 284 Auto + 2 SOE = 288 words      *
;******************************************************************************
_user_WithCncsRs232Loop:
	.bss	_nRxPos$7,1
	.sym	_nRxPos,_nRxPos$7,4,3,32
	.bss	_nOldUart2RxOneByteGapDelayTime$8,1
	.sym	_nOldUart2RxOneByteGapDelayTime,_nOldUart2RxOneByteGapDelayTime$8,12,3,32
	.bss	_btRx2chBuf$9,512
	.sym	_btRx2chBuf,_btRx2chBuf$9,60,3,16384,,512
	.bss	_btTx2chBuf$10,512
	.sym	_btTx2chBuf,_btTx2chBuf$10,60,3,16384,,512
	.bss	_nTimeSendCnt$11,1
	.sym	_nTimeSendCnt,_nTimeSendCnt$11,4,3,32
	.sym	_i,1,4,1,32
	.sym	_nRxLen,2,4,1,32
	.sym	_btBuf,3,60,1,8192,,256
	.sym	_sTimeBuf,259,60,1,320,,10
	.sym	_sPotoLen,269,4,1,32
	.sym	_sBcc,270,12,1,32
	.sym	_LL,271,12,1,32
	.sym	_LH,272,12,1,32
	.sym	_HL,273,12,1,32
	.sym	_HH,274,12,1,32
	.sym	_nBlkSize,275,4,1,32
	.sym	_nTempBlkEnd,276,4,1,32
	.sym	_sTxDataSize,277,4,1,32
	.sym	_pNvsram,278,28,1,32
	.sym	_pLicVerDp,279,24,1,32,.fake22
	.sym	_pLic_Cncs,280,24,1,32,.fake20
	.sym	_pCncsLicSd,281,24,1,32,.fake24
	.sym	_pCnsc_Lic_T_F,282,24,1,32,.fake25
	.sym	_pCncs_Lic_T_F_C,283,24,1,32,.fake26
	.sym	_pInfo,284,24,1,32,.fake48
	.line	1
;----------------------------------------------------------------------
; 1257 | //int aaa_FaultBlkList[1024];                                          
; 1259 | void user_WithCncsRs232Loop()                                          
; 1261 | int i;                                                                 
; 1262 | int nRxLen;                                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      284,sp
        push      r4
        push      r5
	.line	7
;----------------------------------------------------------------------
; 1263 | UCHAR btBuf[256]; //¼ö½Å ·¹Áö½ºÆ®¿¡¼­ ÀÐ¾î ¿À´Â º¯¼ö                   
;----------------------------------------------------------------------
        ldiu      269,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	8
;----------------------------------------------------------------------
; 1264 | UCHAR sTimeBuf[10];//½Ã°£ Àü¼Û ¹öÆÛ.                                   
; 1265 | int sPotoLen = 0; //ºí·® ÆÐÅ¶ Index.                                   
; 1266 | UCHAR sBcc = 0;                                                        
; 1267 | static int nRxPos = 0; //¼ö½Å Ä«¿îÅÍ.                                  
; 1268 | static UCHAR nOldUart2RxOneByteGapDelayTime = 0; //10ms ÀÌ»ó ¼ö½ÅÀÌ ¾Êµ
;     | Ç¸é ¼ö½Å Ã³¸® ÇÑ´Ù.                                                    
; 1269 | static UCHAR btRx2chBuf[512]; //¼ö½Å ¹öÆÛ                              
; 1270 | static UCHAR btTx2chBuf[512]; //Àü¼Û ¹öÆÛ.                             
; 1271 | static int nTimeSendCnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      270,ir0
        sti       r0,*+fp(ir0)
	.line	16
;----------------------------------------------------------------------
; 1272 | UCHAR LL,LH,HL,HH;                                                     
;----------------------------------------------------------------------
        ldiu      275,ir0
        sti       r0,*+fp(ir0)
	.line	17
        ldiu      276,ir0
        sti       r0,*+fp(ir0)
	.line	18
;----------------------------------------------------------------------
; 1274 | int nBlkSize = 0;                                                      
; 1275 | int nTempBlkEnd = 0;                                                   
;----------------------------------------------------------------------
        ldiu      277,ir0
        sti       r0,*+fp(ir0)
	.line	20
;----------------------------------------------------------------------
; 1276 | int sTxDataSize = 0; //¼ö½Å¾Æ µ¥ÀÌÅ¸ size¸¦ ºñ·á ÇÏ¿© 128ÀÌ¸í Áß°£ ÀÛÀ¸
;     | ¸é ¸¶Áö¸· ÇÁ·¹ÀÓ ÀÌ´Ù.                                                 
;----------------------------------------------------------------------
        ldiu      278,ir0
        ldiu      @CL56,r0
        sti       r0,*+fp(ir0)
	.line	22
;----------------------------------------------------------------------
; 1278 | UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;                                 
; 1280 | PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //¹öÀü Á¤º¸ Ã³¸
;     | ®¸¦ À§ÇØ ÀÓÀÇ·Î ¸¸µé¾ú´Ù.                                              
; 1281 | PLIC_CNCS_HD pLic_Cncs;                                                
; 1282 | PCNCS_LIC_SD pCncsLicSd;                                               
;----------------------------------------------------------------------
        ldiu      279,ir0
        ldiu      @CL2,r0
        sti       r0,*+fp(ir0)
	.line	27
;----------------------------------------------------------------------
; 1284 | PCNCS_LIC_T_F pCnsc_Lic_T_F;                                           
; 1285 | PCNCS_LIC_T_F_C pCncs_Lic_T_F_C = (CNCS_LIC_T_F_C *) btRx2chBuf;
;     |                          // °íÀå ÆÐÅ¶ Àü¼Û ¿Ï·á È®ÀÎ ÇÁ·ÎÅäÄÝ Ãß°¡(Y.J 
;     | 2011-05-10)                                                            
;----------------------------------------------------------------------
        ldiu      283,ir0
        ldiu      @CL69,r0
        sti       r0,*+fp(ir0)
	.line	30
;----------------------------------------------------------------------
; 1287 | // Fault Block Information;                                            
; 1288 | PFAULT_INFO pInfo = NULL;                                              
;----------------------------------------------------------------------
        ldiu      284,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	33
        ldiu      128,r1
        ldiu      fp,r0
        push      r1
        addi      3,r0
        push      r0
        call      _user_CncsRx
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(2)
	.line	34
;----------------------------------------------------------------------
; 1290 | // ¼ö½Å                                                                
; 1291 | nRxLen = user_CncsRx(btBuf,128);                                       
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L405
;*      Branch Occurs to L405 
	.line	36
;----------------------------------------------------------------------
; 1292 | if(nRxLen)                                                             
;----------------------------------------------------------------------
        ldi       @_m_nUart2RxOneByteGapDelayTime+0,r0
        bne       L403
;*      Branch Occurs to L403 
        ldiu      0,r0
        sti       r0,@_nRxPos$7+0
L403:        
	.line	37
;----------------------------------------------------------------------
; 1294 | if(!m_nUart2RxOneByteGapDelayTime) nRxPos = 0;                         
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_m_nUart2RxOneByteGapDelayTime+0
	.line	39
;----------------------------------------------------------------------
; 1295 | m_nUart2RxOneByteGapDelayTime = 10;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        addi      @_nRxPos$7+0,r0
        cmpi      511,r0
        bged      L405
        ldilt     @CL69,r0
        ldilt     fp,r1
        ldilt     *+fp(2),r2
;*      Branch Occurs to L405 
	.line	41
;----------------------------------------------------------------------
; 1297 | if(nRxPos + nRxLen < 511)                                              
;----------------------------------------------------------------------
        addi      @_nRxPos$7+0,r0       ; Unsigned
        addi      3,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	42
;----------------------------------------------------------------------
; 1299 | memcpy(&btRx2chBuf[nRxPos],btBuf,nRxLen);                              
; 1300 | nRxPos += nRxLen;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        addi      @_nRxPos$7+0,r0
        sti       r0,@_nRxPos$7+0
L405:        
	.line	46
        ldi       @_nOldUart2RxOneByteGapDelayTime$8+0,r0
        beq       L442
;*      Branch Occurs to L442 
        ldi       @_m_nUart2RxOneByteGapDelayTime+0,r0
        bne       L442
;*      Branch Occurs to L442 
	.line	48
;----------------------------------------------------------------------
; 1304 | if(nOldUart2RxOneByteGapDelayTime && !m_nUart2RxOneByteGapDelayTime)   
;----------------------------------------------------------------------
        ldiu      281,ir0
        ldiu      @CL69,r0
        sti       r0,*+fp(ir0)
	.line	50
;----------------------------------------------------------------------
; 1306 | pCncsLicSd = (CNCS_LIC_SD *)btRx2chBuf;                                
;----------------------------------------------------------------------
        ldiu      282,ir0
        sti       r0,*+fp(ir0)
	.line	52
;----------------------------------------------------------------------
; 1308 | pCnsc_Lic_T_F = (CNCS_LIC_T_F *) btRx2chBuf;                           
; 1310 | if(pCncsLicSd->phHdBuf.btSoh == SOH &&                                 
; 1311 |    pCncsLicSd->btEot == EOT &&                                         
; 1312 |    sizeof(CNCS_LIC_SD) == nRxPos &&                                    
; 1313 |    (TWOBYTE_ASC2HEX(pCncsLicSd->phHdBuf.chDestDev) == LIC_DEV_NO) &&   
; 1314 |    (TWOBYTE_ASC2HEX(pCncsLicSd->sCommand) == 0x09) &&  //CNCS°¡ ½Ã°£ ÀÀ
;     | ´ä                                                                     
;----------------------------------------------------------------------
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *ar0,r0
        cmpi      1,r0
        bne       L422
;*      Branch Occurs to L422 
        ldiu      *+fp(ir0),ir0
        ldiu      473,ar0
        ldiu      *+ar0(ir0),r0
        cmpi      4,r0
        bne       L422
;*      Branch Occurs to L422 
        ldiu      474,r0
        cmpi      @_nRxPos$7+0,r0
        bne       L422
;*      Branch Occurs to L422 
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(3),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      281,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(4),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      17,r0
        subi      1,sp
        bne       L422
;*      Branch Occurs to L422 
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(15),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      281,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(16),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      9,r0
        subi      1,sp
        bne       L422
;*      Branch Occurs to L422 
        ldiu      1,r1
        ldiu      281,ir0
        ldiu      4,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$7+0,r0
        push      r0
        push      r1
        call      _Make1ByteBcc
                                        ; Call Occurs
        ldiu      281,ir0
        subi      2,sp
        ldiu      471,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        ldiu      r0,r5
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      281,ir0
        ldiu      472,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        ldiu      r0,r4
        ash       4,r4
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        xor3      r5,r0,r0
        subi      1,sp
        bne       L422
;*      Branch Occurs to L422 
	.line	59
;----------------------------------------------------------------------
; 1315 | !((Make1ByteBcc(&pCncsLicSd->phHdBuf.chSrcDev[0],nRxPos-4)^(TWOBYTE_ASC
;     | 2HEX(pCncsLicSd->chChkSum)))))                                         
; 1317 |      d_Len++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Len+0,r0
        sti       r0,@_d_Len+0
	.line	73
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      43,r0
        bge       L418
;*      Branch Occurs to L418 
L414:        
	.line	75
;----------------------------------------------------------------------
; 1331 | for(i=0;i<VER_BDD_MAX_CNT;i++)                                         
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        ldiu      255,r2
        and       @_m_tmCurTime+5,r1
        and       @_m_tmCurTime+4,r0
        and       @_m_tmCurTime+3,r2
        ash       16,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        bne       L417
;*      Branch Occurs to L417 
	.line	77
;----------------------------------------------------------------------
; 1333 | if(!MAKE_DWORD(0x00,m_tmCurTime.year,m_tmCurTime.month,m_tmCurTime.day)
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      279,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	78
        ldiu      4,r2
        ldiu      48,r1
        ldiu      *+fp(1),r0
        mpyi      10,r0
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        push      r2
        addi      1,r0                  ; Unsigned
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	79
;----------------------------------------------------------------------
; 1335 | pLicVerDp->VerCnt = FALSE;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      279,ir0
        mpyi      10,r0
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        ldiu      6,r2
        push      r2
        addi      5,r0                  ; Unsigned
        ldiu      48,r1
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	80
;----------------------------------------------------------------------
; 1336 | memset(pLicVerDp->cvbBuf[i].chVer,'0',4);                              
; 1337 | memset(pLicVerDp->cvbBuf[i].chBuildDate,'0',6);                        
; 1338 | break;                                                                 
;----------------------------------------------------------------------
        bu        L418
;*      Branch Occurs to L418 
L417:        
	.line	84
;----------------------------------------------------------------------
; 1340 | else                                                                   
; 1342 |         pLicVerDp->VerCnt = TRUE;                                      
;----------------------------------------------------------------------
        ldiu      279,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	87
        ldiu      281,ir1
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        mpyi      10,r0
        mpyi      10,r1
        addi3     r0,*+fp(ir1),ar1      ; Unsigned
        addi3     r1,*+fp(ir0),ar0      ; Unsigned
        ldiu      *+ar1(41),r0
        sti       r0,*+ar0(1)
	.line	88
;----------------------------------------------------------------------
; 1344 | // ¹öÀü ÀÔ·Â                                                           
;----------------------------------------------------------------------
        ldiu      279,ir1
        ldiu      281,ir0
        ldiu      *+fp(1),r0
        ldiu      r0,r1
        mpyi      10,r0
        mpyi      10,r1
        addi3     r1,*+fp(ir0),ar1      ; Unsigned
        addi3     r0,*+fp(ir1),ar0      ; Unsigned
        ldiu      *+ar1(42),r0
        sti       r0,*+ar0(2)
	.line	89
;----------------------------------------------------------------------
; 1345 | pLicVerDp->cvbBuf[i].chVer[0] = pCncsLicSd->cvbBuf[i].chVer[0];        
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        mpyi      10,r0
        mpyi      10,r1
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        addi3     r1,*+fp(ir1),ar0      ; Unsigned
        ldiu      *+ar1(43),r0
        sti       r0,*+ar0(3)
	.line	90
;----------------------------------------------------------------------
; 1346 | pLicVerDp->cvbBuf[i].chVer[1] = pCncsLicSd->cvbBuf[i].chVer[1];        
; 1347 | pLicVerDp->cvbBuf[i].chVer[2] = pCncsLicSd->cvbBuf[i].chVer[2];        
; 1348 | pLicVerDp->cvbBuf[i].chVer[3] = pCncsLicSd->cvbBuf[i].chVer[3];        
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      r0,r1
        mpyi      10,r1
        mpyi      10,r0
        addi3     r1,*+fp(ir0),ar1      ; Unsigned
        addi3     r0,*+fp(ir1),ar0      ; Unsigned
        ldiu      *+ar1(44),r0
        sti       r0,*+ar0(4)
	.line	93
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        mpyi      10,r0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        mpyi      10,r1
        addi3     r1,*+fp(ir1),ar0      ; Unsigned
        ldiu      *+ar1(45),r0
        sti       r0,*+ar0(5)
	.line	94
;----------------------------------------------------------------------
; 1350 | // ¸¸µé¾îÁø ³¯Â¥ ÀÔ·Â                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      r0,r1
        mpyi      10,r1
        addi3     r1,*+fp(ir0),ar1      ; Unsigned
        mpyi      10,r0
        addi3     r0,*+fp(ir1),ar0      ; Unsigned
        ldiu      *+ar1(46),r0
        sti       r0,*+ar0(6)
	.line	95
;----------------------------------------------------------------------
; 1351 | pLicVerDp->cvbBuf[i].chBuildDate[0] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [0];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      r0,r1
        mpyi      10,r1
        ldiu      281,ir1
        ldiu      279,ir0
        mpyi      10,r0
        addi3     r1,*+fp(ir1),ar0      ; Unsigned
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        ldiu      *+ar0(47),r0
        sti       r0,*+ar1(7)
	.line	96
;----------------------------------------------------------------------
; 1352 | pLicVerDp->cvbBuf[i].chBuildDate[1] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [1];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        mpyi      10,r1
        mpyi      10,r0
        addi3     r0,*+fp(ir1),ar0      ; Unsigned
        addi3     r1,*+fp(ir0),ar1      ; Unsigned
        ldiu      *+ar0(48),r0
        sti       r0,*+ar1(8)
	.line	97
;----------------------------------------------------------------------
; 1353 | pLicVerDp->cvbBuf[i].chBuildDate[2] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [2];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        mpyi      10,r1
        addi3     r1,*+fp(ir1),ar0      ; Unsigned
        ldiu      *+fp(1),r0
        mpyi      10,r0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        ldiu      *+ar0(49),r0
        sti       r0,*+ar1(9)
	.line	98
;----------------------------------------------------------------------
; 1354 | pLicVerDp->cvbBuf[i].chBuildDate[3] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [3];                                                                   
; 1355 | pLicVerDp->cvbBuf[i].chBuildDate[4] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [4];                                                                   
; 1356 | pLicVerDp->cvbBuf[i].chBuildDate[5] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [5];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        mpyi      10,r1
        mpyi      10,r0
        ldiu      281,ir0
        ldiu      279,ir1
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi3     r1,*+fp(ir1),ar1      ; Unsigned
        ldiu      *+ar0(50),r0
        sti       r0,*+ar1(10)
	.line	73
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      43,r0
        blt       L414
;*      Branch Occurs to L414 
L418:        
	.line	102
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(29),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      281,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(30),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      1,r0
        subi      1,sp
        bne       L459
;*      Branch Occurs to L459 
        ldi       @_m_LIC_CNCS_Tx_Flag+0,r0
        bne       L459
;*      Branch Occurs to L459 
	.line	104
;----------------------------------------------------------------------
; 1360 | if(TWOBYTE_ASC2HEX(pCncsLicSd->sWaySide) == 0x01 && !m_LIC_CNCS_Tx_Flag
;     | ) // wayside on ¾Ë¸²                                                   
; 1362 |         m_nCDT_FaultDataStFlag = 1;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_nCDT_FaultDataStFlag+0
	.line	107
        ldiu      0,r0
        sti       r0,@_m_nFaultCnt+0
	.line	108
;----------------------------------------------------------------------
; 1364 | //2011_03_03 ¼öÁ¤                                                      
;----------------------------------------------------------------------
        ldiu      1024,r2
        ldiu      @CL70,r1
        push      r2
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	109
;----------------------------------------------------------------------
; 1365 | m_nFaultCnt = 0;                                                // °íÀå
;     |  °¹¼ö¸¦ 0À¸·Î ÃÊ±âÈ­.(Y.J Ãß°¡);                                       
; 1366 | memset((UCHAR *)NVSRAM_BASE,0x00,1024); // °íÀå ºí·°À» "0" À¸·Î ÃÊ½ÃÈ­
;     | ÇÑ´Ù. ÃÊ±â À§Ä¡ 0ºÎÅÍ 1024±îÁö¸¸ ÃÊ±âÈ­ ÇÑ´Ù.                          
; 1367 | ClearFltBlkInfo();                                              // °íÀå
;     |  Á¤º¸¸¦ ClearÇÏ´Â ºÎºÐ.                                                
;----------------------------------------------------------------------
        call      _ClearFltBlkInfo
                                        ; Call Occurs
	.line	113
;----------------------------------------------------------------------
; 1369 | //memset(aaa_FaultBlkList, 0xFF, 1024);                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nNvsramPos+0
	.line	114
        sti       r0,@_nRecving_Posi+0
	.line	115
;----------------------------------------------------------------------
; 1371 | m_nNvsramPos = 0;       //ÀüÃ¼ ±â·Ï ±¸Á¶ À§Ä¡¸¦ Ã³À½À¸·Î               
; 1372 | nRecving_Posi = 0;      //ÇöÀç ±îÁö Àü¼ÛÇÑ À§Ä¡¸¦ Ã³À½À¸·Î             
;----------------------------------------------------------------------
        sti       r0,@_m_nLnWkTxFlag+0
	.line	117
;----------------------------------------------------------------------
; 1373 | m_nLnWkTxFlag = 0;      //°íÀå ÄÚµå ±¸ºÐÀ» 0À¸·Î ÃÊ±âÈ­                
; 1375 | m_nLnWkTxFlag = TWOBYTE_ASC2HEX(pCncsLicSd->sDaType);                  
; 1377 | //m_nDateTime2SecondCnt = MAKE_WORD(MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->s
;     | FaultTime[0]),ConvAsc2Hex(pCncsLicSd->sFaultTime[1])),                 
; 1378 | //                                     MAKE_BYTE(ConvAsc2Hex(pCncsLicSd
;     | ->sFaultTime[2]),ConvAsc2Hex(pCncsLicSd->sFaultTime[3])));             
;----------------------------------------------------------------------
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(31),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      281,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(32),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        subi      1,sp
        sti       r0,@_m_nLnWkTxFlag+0
	.line	123
;----------------------------------------------------------------------
; 1380 | // °íÀå ½Ã°£ ¿äÃ» WORD -> DWORD·Î º¯°æ.(2011.05.08)                    
; 1381 | m_nDateTime2SecondCnt = MAKE_DWORD( MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->s
;     | FaultTime[0]),ConvAsc2Hex(pCncsLicSd->sFaultTime[1])),                 
; 1382 | 
;     |  MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[2]),ConvAsc2Hex(pCncsLicS
;     | d->sFaultTime[3])),                                                    
; 1383 | 
;     |  MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[4]),ConvAsc2Hex(pCncsLicS
;     | d->sFaultTime[5])),                                                    
; 1384 | 
;     |  MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[6]),ConvAsc2Hex(pCncsLicS
;     | d->sFaultTime[7])));                                                   
;----------------------------------------------------------------------
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(33),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(34),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      281,ir0
        subi      1,sp
        and       15,r0
        ldiu      *+fp(ir0),ar0
        or3       r4,r0,r5
        ldiu      *+ar0(35),r0
        and       255,r5
        push      r0
        ash       24,r5
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(36),r0
        push      r0
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      281,ir0
        and       15,r0
        or3       r4,r0,r1
        subi      1,sp
        and       255,r1
        ldiu      *+fp(ir0),ar0
        ash       16,r1
        ldiu      *+ar0(37),r0
        or3       r5,r1,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      281,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r5
        ldiu      *+ar0(38),r0
        ash       4,r5
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      281,ir0
        subi      1,sp
        and       15,r0
        or3       r5,r0,r1
        ldiu      *+fp(ir0),ar0
        and       255,r1
        ldiu      *+ar0(39),r0
        ash       8,r1
        or3       r4,r1,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r5
        ldiu      *+ar0(40),r0
        ash       4,r5
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r5,r0,r0
        and       255,r0
        or3       r4,r0,r0
        sti       r0,@_m_nDateTime2SecondCnt+0
        subi      1,sp
        bu        L459
;*      Branch Occurs to L459 
L422:        
	.line	129
;----------------------------------------------------------------------
; 1387 | else if(pCncs_Lic_T_F_C->phHdBuf.btSoh == SOH &&
;     |                                                                        
;     |                                           		// °íÀå ½Ã°£ ¿äÃ» WORD -> D
;     | WORD·Î º¯°æ.(2011.05.11)                                               
; 1388 |         pCncs_Lic_T_F_C->btEot == EOT &&                               
; 1389 |         sizeof(CNCS_LIC_T_F_C) == nRxPos &&                            
; 1390 |    (TWOBYTE_ASC2HEX(pCncs_Lic_T_F_C->phHdBuf.chDestDev) == LIC_DEV_NO)
;     | &&                                                                     
; 1391 |    (TWOBYTE_ASC2HEX(pCncsLicSd->sCommand) == 0x07) &&  //°íÀå Àü¼Û È®ÀÎ
;     |  ÀÀ´ä(CNCS-> LIC)                                                      
; 1392 |    !((Make1ByteBcc(&pCncs_Lic_T_F_C->phHdBuf.chSrcDev[0],nRxPos-4)^(TWO
;     | BYTE_ASC2HEX(pCncs_Lic_T_F_C->chChkSum)))))                            
; 1394 | //else if(pCnsc_Lic_T_F->phHdBuf.btSoh == SOH &&                       
; 1395 | //    pCnsc_Lic_T_F->btEot == EOT &&                                   
; 1396 | //    sizeof(CNCS_LIC_T_F) == nRxPos &&                                
; 1397 | //   (TWOBYTE_ASC2HEX(pCnsc_Lic_T_F->phHdBuf.chDestDev) == LIC_DEV_NO)
;     | &&                                                                     
; 1398 | //   (TWOBYTE_ASC2HEX(pCncsLicSd->sCommand) == 0x07) &&  //°íÀå Àü¼Û È®
;     | ÀÎ ÀÀ´ä(CNCS-> LIC)                                                    
; 1399 | //   !((Make1ByteBcc(&pCnsc_Lic_T_F->phHdBuf.chSrcDev[0],nRxPos-4)^(TWO
;     | BYTE_ASC2HEX(pCnsc_Lic_T_F->chChkSum)))))                              
;----------------------------------------------------------------------
        ldiu      283,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *ar0,r0
        cmpi      1,r0
        bne       L459
;*      Branch Occurs to L459 
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(23),r0
        cmpi      4,r0
        bne       L459
;*      Branch Occurs to L459 
        ldiu      24,r0
        cmpi      @_nRxPos$7+0,r0
        bne       L459
;*      Branch Occurs to L459 
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(3),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      283,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(4),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      17,r0
        subi      1,sp
        bne       L459
;*      Branch Occurs to L459 
        ldiu      281,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(15),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      281,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(16),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      7,r0
        subi      1,sp
        bne       L459
;*      Branch Occurs to L459 
        ldiu      1,r1
        ldiu      283,ir0
        ldiu      4,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$7+0,r0
        push      r0
        push      r1
        call      _Make1ByteBcc
                                        ; Call Occurs
        ldiu      283,ir0
        subi      2,sp
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(21),r1
        ldiu      r0,r5
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      283,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(22),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        xor3      r5,r0,r0
        subi      1,sp
        bne       L459
;*      Branch Occurs to L459 
	.line	144
;----------------------------------------------------------------------
; 1401 | // Y.J 2011-05-10 ¿äÃ»ÇÑ °íÀå Index¸¦ »ç¿ëÇÏ¿©, Àü¼ÛÇÏµµ·Ï ¼öÁ¤.       
;----------------------------------------------------------------------
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(17),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(18),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      282,ir0
        and       15,r0
        subi      1,sp
        or3       r4,r0,r5
        ldiu      *+fp(ir0),ar0
        and       255,r5
        ldiu      *+ar0(19),r0
        ash       8,r5
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(20),r0
        push      r0
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      269,ir0
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        or3       r5,r0,r0
        subi      1,sp
        and       65535,r0
        sti       r0,*+fp(ir0)
	.line	146
;----------------------------------------------------------------------
; 1402 | sPotoLen = MAKE_WORD(MAKE_BYTE(ConvAsc2Hex(pCnsc_Lic_T_F->sTEXT[0]),Con
;     | vAsc2Hex(pCnsc_Lic_T_F->sTEXT[1])),                                    
; 1403 |                      MAKE_BYTE(ConvAsc2Hex(pCnsc_Lic_T_F->sTEXT[2]),Con
;     | vAsc2Hex(pCnsc_Lic_T_F->sTEXT[3])));                                   
; 1404 | if(sPotoLen)                                                           
; 1406 |         //aaa_FaultCnt++;                                              
; 1407 |         //aaa_FaultInx = sPotoLen;                                     
;----------------------------------------------------------------------
        ldi       *+fp(ir0),r0
        beq       L441
;*      Branch Occurs to L441 
	.line	152
;----------------------------------------------------------------------
; 1409 | // ÀçÀü¼ÛÇÒ °íÀå ºí·Ï Á¤º¸¸¦ ¾òÀ½.                                     
;----------------------------------------------------------------------
        ldiu      @_m_chCarKind+0,r0
        push      r0
        call      _GetFltBlkInfo
                                        ; Call Occurs
        subi      1,sp
        ldiu      284,ir0
        sti       r0,*+fp(ir0)
	.line	154
;----------------------------------------------------------------------
; 1410 | pInfo = GetFltBlkInfo(m_chCarKind);                                    
; 1412 | if(pInfo != NULL)                                                      
;----------------------------------------------------------------------
        ldi       *+fp(ir0),r0
        beq       L440
;*      Branch Occurs to L440 
	.line	157
;----------------------------------------------------------------------
; 1414 | // Àü¼ÛÇÒ ºí·Ï À§Ä¡·Î ÀÌµ¿.                                            
; 1415 | nRecving_Posi = pInfo->nStPosi + ((sPotoLen-1) * 128);                 
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      269,ir0
        ldiu      284,ir1
        subi3     r0,*+fp(ir0),r0
        ldiu      *+fp(ir1),ar0
        mpyi      128,r0
        addi      *+ar0(1),r0
        sti       r0,@_nRecving_Posi+0
	.line	160
;----------------------------------------------------------------------
; 1417 | // Àü¼ÛÇÒ ºí·Ï Å©±â¸¦ ±¸ÇÏ´Â ºÎºÐ.                                     
;----------------------------------------------------------------------
        ldiu      *+fp(ir1),ar0
        cmpi3     *ar0,*+fp(ir0)
        bged      L433
	nop
        ldige     284,ir1
        ldige     269,ir0
;*      Branch Occurs to L433 
	.line	162
;----------------------------------------------------------------------
; 1418 | if(sPotoLen < pInfo->nTCnt) //  (sPotoLen*128) <= nTempBlkEnd)         
;----------------------------------------------------------------------
        ldiu      275,ir0
        ldiu      128,r0
        sti       r0,*+fp(ir0)
        bu        L437
;*      Branch Occurs to L437 
	.line	164
;----------------------------------------------------------------------
; 1420 | nBlkSize = 128;                                                        
;----------------------------------------------------------------------
L433:        
        ldiu      *+fp(ir1),ar0
        cmpi3     *ar0,*+fp(ir0)
        bned      L436
	nop
        ldine     275,ir0
        ldine     0,r0
;*      Branch Occurs to L436 
	.line	166
;----------------------------------------------------------------------
; 1422 | else if(sPotoLen == pInfo->nTCnt)                                      
; 1424 |         nBlkSize = (pInfo->nEdPosi - pInfo->nStPosi) % 128; // - ((sPot
;     | oLen - 1) * 128);                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir1),ar1
        ldiu      284,ir0
        ldiu      2,ar0
        ldiu      *+fp(ir0),ir1
        subi3     *+ar1,*+ar0(ir1),r1
        ldiu      r1,r0
        ldiu      275,ir0
        ash       -6,r0
        lsh       @CL71,r0
        addi3     r0,r1,r0
        andn      127,r0
        subri     r1,r0
        sti       r0,*+fp(ir0)
        bu        L437
;*      Branch Occurs to L437 
	.line	170
;----------------------------------------------------------------------
; 1426 | else                                                                   
; 1428 |         nBlkSize = 0;                                                  
;----------------------------------------------------------------------
L436:        
        sti       r0,*+fp(ir0)
L437:        
	.line	173
;----------------------------------------------------------------------
; 1431 | if(nBlkSize < 0) nBlkSize = 0;                                         
;----------------------------------------------------------------------
        ldiu      275,ir0
        ldi       *+fp(ir0),r0
        bge       L439
;*      Branch Occurs to L439 
        ldiu      0,r0
        sti       r0,*+fp(ir0)
L439:        
	.line	176
;----------------------------------------------------------------------
; 1433 | // ºí·ÏÀÇ ¸¶Áö¸· À§Ä¡¸¦ ÁöÁ¤.                                          
; 1434 | nTempBlkEnd = pInfo->nEdPosi;                                          
;----------------------------------------------------------------------
        ldiu      284,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      276,ir0
        ldiu      *+ar0(2),r0
        sti       r0,*+fp(ir0)
L440:        
	.line	179
;----------------------------------------------------------------------
; 1437 | sTxDataSize = nBlkSize + 2;                                            
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      275,ir1
        ldiu      277,ir0
        addi3     r0,*+fp(ir1),r0
        sti       r0,*+fp(ir0)
	.line	182
        ldiu      269,ir1
        ldiu      1,r3
        ldiu      @CL72,r2

        ldiu      *+fp(ir1),r0
||      ldiu      *+fp(ir0),r1

        push      r0
        push      r3
        push      r1
        push      r2
        call      _user_FaultDataTx
                                        ; Call Occurs
        subi      4,sp
	.line	183
;----------------------------------------------------------------------
; 1439 | // °íÀå µ¥ÀÌÅÍ¸¦ Àü¼ÛÇÏ´Â ºÎºÐ.                                        
; 1440 | user_FaultDataTx(btTx2chBuf,sTxDataSize,TRUE,sPotoLen);                
; 1441 | user_CncsTx(btTx2chBuf,(sTxDataSize*2)+18);                            
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      2,r1
        mpyi3     r1,*+fp(ir0),r1
        addi      18,r1
        ldiu      @CL72,r0
        push      r1
        push      r0
        call      _user_CncsTx
                                        ; Call Occurs
        subi      2,sp
	.line	186
;----------------------------------------------------------------------
; 1443 | // Àü¼Û ÈÄ, ºí·Ï À§Ä¡¸¦ ¸¶Áö¸· À§Ä¡·Î º¹¿ø.                            
; 1444 | nRecving_Posi = nTempBlkEnd;                                           
; 1446 | else                                                                   
;----------------------------------------------------------------------
        ldiu      276,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nRecving_Posi+0
        bu        L459
;*      Branch Occurs to L459 
L441:        
	.line	191
;----------------------------------------------------------------------
; 1447 | //¹Ù·Î Á¾·á ÄÚµå°¡ ¼ö½Å µÉ¼ö ÀÖ´Ù.                                     
; 1449 |         user_FtpEnd_CarNumFun();                                       
; 1451 |         //memcpy(aaa_FaultBlkList, m_tFaultInfo, sizeof(m_tFaultInfo));
; 1452 |         //aaa_CollectMarriedB++;                                       
;----------------------------------------------------------------------
        call      _user_FtpEnd_CarNumFun
                                        ; Call Occurs
        bu        L459
;*      Branch Occurs to L459 
L442:        
	.line	200
;----------------------------------------------------------------------
; 1456 | else // µ¥ÀÌÅ¸ Àü¼Û                                                    
; 1458 |         if(m_nTxDbg1msTimer > 150)                                     
;----------------------------------------------------------------------
        ldiu      @_m_nTxDbg1msTimer+0,r0
        cmpi      150,r0
        bls       L459
;*      Branch Occurs to L459 
	.line	203
;----------------------------------------------------------------------
; 1460 | //°íÀå Á¤º¸ Àü¼Û.                                                      
;----------------------------------------------------------------------
        ldi       @_m_LIC_CNCS_Tx_Flag+0,r0
        beq       L455
;*      Branch Occurs to L455 
	.line	205
;----------------------------------------------------------------------
; 1461 | if(m_LIC_CNCS_Tx_Flag)                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nTxDbg1msTimer+0
	.line	207
;----------------------------------------------------------------------
; 1463 | m_nTxDbg1msTimer = 0;                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_LIC_CNCS_TX_DelyTime+0,r0
        sti       r0,@_m_LIC_CNCS_TX_DelyTime+0
	.line	209
;----------------------------------------------------------------------
; 1465 | m_LIC_CNCS_TX_DelyTime++;                                              
;----------------------------------------------------------------------
        cmpi      50,r0
        ble       L446
;*      Branch Occurs to L446 
        ldiu      1,r0
        sti       r0,@_m_bLnWkFtpEndFlag+0
L446:        
	.line	211
;----------------------------------------------------------------------
; 1467 | if(m_LIC_CNCS_TX_DelyTime > 50){m_bLnWkFtpEndFlag = TRUE;}             
;----------------------------------------------------------------------
        ldiu      @_m_nNvsramPos+0,r0
        cmpi      @_nRecving_Posi+0,r0
        beqd      L451
	nop
        ldine     128,r0
        ldine     @_m_nNvsramPos+0,r1
;*      Branch Occurs to L451 
        addi      @_nRecving_Posi+0,r0  ; Unsigned
        cmpi3     r0,r1
        blo       L451
;*      Branch Occurs to L451 
	.line	213
;----------------------------------------------------------------------
; 1469 | if((m_nNvsramPos !=  (nRecving_Posi)) && (m_nNvsramPos >= (nRecving_Pos
;     | i+128)))                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nFaultCnt+0,r0
        sti       r0,@_m_nFaultCnt+0
	.line	214
        cmpi      1,r0
        bne       L450
;*      Branch Occurs to L450 
	.line	215
;----------------------------------------------------------------------
; 1471 | m_nFaultCnt++;                                                         
; 1472 | if(m_nFaultCnt == 1)                                                   
;----------------------------------------------------------------------
        ldiu      @_nRecving_Posi+0,r0
        push      r0
        ldiu      @_m_chCarKind+0,r0
        push      r0
        call      _SetFltBlkStPos
                                        ; Call Occurs
        subi      2,sp
L450:        
	.line	217
;----------------------------------------------------------------------
; 1473 | SetFltBlkStPos(m_chCarKind, nRecving_Posi);
;     |                                          // Ã¹¹øÂ° ºí·ÏÀÏ °æ¿ì, °íÀå Á¤
;     | º¸ÀÇ ½ÃÀÛ À§Ä¡¸¦ ±â·Ï.                                                 
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      130,r0
        sti       r0,*+fp(ir0)
	.line	219
;----------------------------------------------------------------------
; 1475 | sTxDataSize = 128 + 2;                                                 
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      @CL72,r2
        ldiu      *+fp(ir0),r3
        ldiu      0,r0
        push      r1
        push      r0
        push      r3
        push      r2
        call      _user_FaultDataTx
                                        ; Call Occurs
        subi      4,sp
	.line	221
;----------------------------------------------------------------------
; 1477 | user_FaultDataTx(btTx2chBuf,sTxDataSize,FALSE,0);                      
;----------------------------------------------------------------------
        ldiu      128,r0
        addi      @_nRecving_Posi+0,r0
        sti       r0,@_nRecving_Posi+0
	.line	223
;----------------------------------------------------------------------
; 1479 | nRecving_Posi += 128;                                                  
; 1481 | user_CncsTx(btTx2chBuf,(sTxDataSize*2)+18);                            
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      2,r0
        mpyi3     r0,*+fp(ir0),r0
        addi      18,r0
        push      r0
        ldiu      @CL72,r1
        push      r1
        call      _user_CncsTx
                                        ; Call Occurs
        subi      2,sp
        bu        L459
;*      Branch Occurs to L459 
L451:        
	.line	227
;----------------------------------------------------------------------
; 1483 | else                                                                   
; 1484 | //¹Ù·Î Á¾·á ÄÚµå°¡ ¼ö½Å µÉ¼ö ÀÖ´Ù.                                     
;----------------------------------------------------------------------
        ldi       @_m_bLnWkFtpEndFlag+0,r0
        beq       L459
;*      Branch Occurs to L459 
	.line	229
;----------------------------------------------------------------------
; 1485 | if(m_bLnWkFtpEndFlag)                                                  
; 1487 |         m_nFaultCnt++;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nFaultCnt+0,r0
        sti       r0,@_m_nFaultCnt+0
	.line	232
;----------------------------------------------------------------------
; 1488 | //aaa_CarAFautlCnt = m_nFaultCnt;                                      
;----------------------------------------------------------------------
        cmpi      1,r0
        bne       L454
;*      Branch Occurs to L454 
	.line	233
;----------------------------------------------------------------------
; 1490 | if(m_nFaultCnt == 1)                                                   
; 1491 |         SetFltBlkStPos(m_chCarKind, nRecving_Posi);
;     |                                                  // Ã¹¹øÂ° ºí·ÏÀÏ °æ¿ì,
;     |  °íÀå Á¤º¸ÀÇ ½ÃÀÛ À§Ä¡¸¦ ±â·Ï.                                         
;----------------------------------------------------------------------
        ldiu      @_nRecving_Posi+0,r0
        push      r0
        ldiu      @_m_chCarKind+0,r0
        push      r0
        call      _SetFltBlkStPos
                                        ; Call Occurs
        subi      2,sp
L454:        
	.line	236
;----------------------------------------------------------------------
; 1493 | // °íÀå Á¤º¸¸¦ ÀúÀåÇÏ´Â ºÎºÐ.                                          
;----------------------------------------------------------------------
        ldiu      @_m_nFaultCnt+0,r0
        ldiu      @_m_nNvsramPos+0,r1
        push      r0
        push      r1
        ldiu      @_m_chCarKind+0,r0
        push      r0
        call      _SetFltBlkEdInfo
                                        ; Call Occurs
        subi      3,sp
	.line	238
;----------------------------------------------------------------------
; 1494 | SetFltBlkEdInfo(m_chCarKind, m_nNvsramPos, m_nFaultCnt);               
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      @_nRecving_Posi+0,r0
        subri     @_m_nNvsramPos+0,r0   ; Unsigned
        addi      2,r0                  ; Unsigned
        sti       r0,*+fp(ir0)
	.line	239
        ldiu      0,r1
        ldiu      @CL72,r2
        ldiu      *+fp(ir0),r3
        push      r1
        ldiu      1,r0
        push      r0
        push      r3
        push      r2
        call      _user_FaultDataTx
                                        ; Call Occurs
        subi      4,sp
	.line	240
;----------------------------------------------------------------------
; 1496 | sTxDataSize = (m_nNvsramPos - nRecving_Posi) + 2;                      
; 1497 | user_FaultDataTx(btTx2chBuf,sTxDataSize,TRUE,0);                       
; 1498 | nRecving_Posi += (sTxDataSize-2);                                      
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      *+fp(ir0),r0
        addi      @_nRecving_Posi+0,r0
        subi      2,r0
        sti       r0,@_nRecving_Posi+0
	.line	244
;----------------------------------------------------------------------
; 1500 | // user_FtpEnd_CarNumFun();                                            
;----------------------------------------------------------------------
        ldiu      2,r1
        mpyi3     r1,*+fp(ir0),r1
        addi      18,r1
        push      r1
        ldiu      @CL72,r0
        push      r0
        call      _user_CncsTx
                                        ; Call Occurs
        subi      2,sp
	.line	246
;----------------------------------------------------------------------
; 1502 | user_CncsTx(btTx2chBuf,(sTxDataSize*2)+18);                            
; 1504 | m_LIC_CNCS_Tx_Flag = FALSE;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_LIC_CNCS_Tx_Flag+0
        bu        L459
;*      Branch Occurs to L459 
L455:        
	.line	251
;----------------------------------------------------------------------
; 1507 | else                                                                   
; 1508 | //½Ã°£ Á¤º¸ ¿äÃ».                                                      
;----------------------------------------------------------------------
        ldiu      @_m_nTxDbg1msTimer+0,r0
        cmpi      1000,r0
        bls       L459
;*      Branch Occurs to L459 
	.line	253
;----------------------------------------------------------------------
; 1509 | if(m_nTxDbg1msTimer > 1000)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nTxDbg1msTimer+0
	.line	255
;----------------------------------------------------------------------
; 1511 | m_nTxDbg1msTimer = 0;                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeSendCnt$11+0,r0
        sti       r0,@_nTimeSendCnt$11+0
	.line	256
;----------------------------------------------------------------------
; 1513 | nTimeSendCnt++;                                                        
;----------------------------------------------------------------------
        ldiu      255,r1
        call      MOD_I30
                                        ; Call Occurs
        sti       r0,@_nTimeSendCnt$11+0
	.line	258
;----------------------------------------------------------------------
; 1514 | nTimeSendCnt = nTimeSendCnt%255;                                       
;----------------------------------------------------------------------
        ldiu      282,ir0
        ldiu      @CL72,r0
        sti       r0,*+fp(ir0)
	.line	260
;----------------------------------------------------------------------
; 1516 | pCnsc_Lic_T_F = (CNCS_LIC_T_F *) btTx2chBuf;                           
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      4,r0
        sti       r0,*+fp(ir0)
	.line	262
;----------------------------------------------------------------------
; 1518 | sTxDataSize = 4;                                                       
;----------------------------------------------------------------------
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	263
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(1)
	.line	264
;----------------------------------------------------------------------
; 1520 | pCnsc_Lic_T_F->phHdBuf.btSoh =  0x01;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(2)
	.line	265
;----------------------------------------------------------------------
; 1521 | pCnsc_Lic_T_F->phHdBuf.chSrcDev[0] =  ConvHex2Asc(BYTE_H(0x11));       
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(3)
	.line	266
;----------------------------------------------------------------------
; 1522 | pCnsc_Lic_T_F->phHdBuf.chSrcDev[1] =  ConvHex2Asc(BYTE_L(0x11));       
; 1523 | pCnsc_Lic_T_F->phHdBuf.chDestDev[0] =  ConvHex2Asc(BYTE_H(0x15));      
;----------------------------------------------------------------------
        ldiu      5,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(4)
	.line	268
;----------------------------------------------------------------------
; 1524 | pCnsc_Lic_T_F->phHdBuf.chDestDev[1] =  ConvHex2Asc(BYTE_L(0x15));      
;----------------------------------------------------------------------
        ldiu      @_nTimeSendCnt$11+0,r0
        ash       -8,r0
        and       255,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(5)
	.line	269
        ldiu      @_nTimeSendCnt$11+0,r0
        ash       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(6)
	.line	270
;----------------------------------------------------------------------
; 1526 | pCnsc_Lic_T_F->phHdBuf.chMsgCnt[0] = ConvHex2Asc(BYTE_H(WORD_H(nTimeSen
;     | dCnt)));                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTimeSendCnt$11+0,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(7)
	.line	271
;----------------------------------------------------------------------
; 1527 | pCnsc_Lic_T_F->phHdBuf.chMsgCnt[1] = ConvHex2Asc(BYTE_L(WORD_H(nTimeSen
;     | dCnt)));                                                               
; 1528 | pCnsc_Lic_T_F->phHdBuf.chMsgCnt[2] = ConvHex2Asc(BYTE_H(WORD_L(nTimeSen
;     | dCnt)));                                                               
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_nTimeSendCnt$11+0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(8)
	.line	273
;----------------------------------------------------------------------
; 1529 | pCnsc_Lic_T_F->phHdBuf.chMsgCnt[3] = ConvHex2Asc(BYTE_L(WORD_L(nTimeSen
;     | dCnt)));                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(9)
	.line	274
;----------------------------------------------------------------------
; 1531 | pCnsc_Lic_T_F->phHdBuf.chCmdCode[0] = ConvHex2Asc(BYTE_H(0x10));       
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(10)
	.line	276
;----------------------------------------------------------------------
; 1532 | pCnsc_Lic_T_F->phHdBuf.chCmdCode[1] = ConvHex2Asc(BYTE_L(0x10));       
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      -8,r0
        ash3      r0,*+fp(ir0),r0
        and       255,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(11)
	.line	277
        ldiu      277,ir0
        ldiu      -8,r0
        ash3      r0,*+fp(ir0),r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(12)
	.line	278
;----------------------------------------------------------------------
; 1534 | pCnsc_Lic_T_F->phHdBuf.chDataLen[0] = ConvHex2Asc(BYTE_H(WORD_H(sTxData
;     | Size))); // ±æÀÌ                                                       
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      255,r0
        and3      r0,*+fp(ir0),r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(13)
	.line	279
;----------------------------------------------------------------------
; 1535 | pCnsc_Lic_T_F->phHdBuf.chDataLen[1] = ConvHex2Asc(BYTE_L(WORD_H(sTxData
;     | Size))); // ±æÀÌ                                                       
; 1536 | pCnsc_Lic_T_F->phHdBuf.chDataLen[2] = ConvHex2Asc(BYTE_H(WORD_L(sTxData
;     | Size))); // ±æÀÌ                                                       
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      15,r0
        and3      r0,*+fp(ir0),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(14)
	.line	281
;----------------------------------------------------------------------
; 1537 | pCnsc_Lic_T_F->phHdBuf.chDataLen[3] = ConvHex2Asc(BYTE_L(WORD_L(sTxData
;     | Size))); // ±æÀÌ                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(15)
	.line	282
;----------------------------------------------------------------------
; 1539 | pCnsc_Lic_T_F->sCommand[0] = ConvHex2Asc(BYTE_H(0x08));                
;----------------------------------------------------------------------
        ldiu      8,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(16)
	.line	284
;----------------------------------------------------------------------
; 1540 | pCnsc_Lic_T_F->sCommand[1] = ConvHex2Asc(BYTE_L(0x08));                
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       255,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(17)
	.line	285
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(18)
	.line	286
;----------------------------------------------------------------------
; 1542 | pCnsc_Lic_T_F->sTEXT[0] = ConvHex2Asc(BYTE_H(WORD_H(m_wCarNo)));  //¿­Â
;     | ÷ ¹øÈ£ Àü¼Û                                                            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_m_wCarNo+0,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(19)
	.line	287
;----------------------------------------------------------------------
; 1543 | pCnsc_Lic_T_F->sTEXT[1] = ConvHex2Asc(BYTE_L(WORD_H(m_wCarNo)));  //¿­Â
;     | ÷ ¹øÈ£ Àü¼Û                                                            
; 1544 | pCnsc_Lic_T_F->sTEXT[2] = ConvHex2Asc(BYTE_H(WORD_L(m_wCarNo)));  //¿­Â
;     | ÷ ¹øÈ£ Àü¼Û                                                            
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_wCarNo+0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(20)
	.line	289
;----------------------------------------------------------------------
; 1545 | pCnsc_Lic_T_F->sTEXT[3] = ConvHex2Asc(BYTE_L(WORD_L(m_wCarNo)));  //¿­Â
;     | ÷ ¹øÈ£ Àü¼Û                                                            
;----------------------------------------------------------------------
        ldiu      @_m_btCttSignalB+0,r0
        or        @_m_btCttSignalA+0,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(21)
	.line	290
;----------------------------------------------------------------------
; 1547 | pCnsc_Lic_T_F->chContactSignalBuf[0] = ConvHex2Asc(BYTE_H(m_btCttSignal
;     | A | m_btCttSignalB));                                                  
;----------------------------------------------------------------------
        ldiu      @_m_btCttSignalB+0,r0
        or        @_m_btCttSignalA+0,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(22)
	.line	292
;----------------------------------------------------------------------
; 1548 | pCnsc_Lic_T_F->chContactSignalBuf[1] = ConvHex2Asc(BYTE_L(m_btCttSignal
;     | A | m_btCttSignalB));                                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      2,r0
        ldiu      277,ir1
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        mpyi3     r0,*+fp(ir1),r0
        addi      14,r0
        push      r0
        push      r1
        call      _Make1ByteBcc
                                        ; Call Occurs
        ldiu      270,ir0
        subi      2,sp
        sti       r0,*+fp(ir0)
	.line	294
;----------------------------------------------------------------------
; 1550 | sBcc = Make1ByteBcc(&pCnsc_Lic_T_F->phHdBuf.chSrcDev[0],(sTxDataSize*2)
;     | +14);                                                                  
;----------------------------------------------------------------------
        ldiu      -4,r0
        lsh3      r0,*+fp(ir0),r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(23)
	.line	295
;----------------------------------------------------------------------
; 1552 | pCnsc_Lic_T_F->chChkSum[0] = ConvHex2Asc(BYTE_H(sBcc));                
;----------------------------------------------------------------------
        ldiu      270,ir0
        ldiu      15,r0
        and3      r0,*+fp(ir0),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      282,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(24)
	.line	297
;----------------------------------------------------------------------
; 1553 | pCnsc_Lic_T_F->chChkSum[1] = ConvHex2Asc(BYTE_L(sBcc));                
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      4,r0
        sti       r0,*+ar0(25)
	.line	299
;----------------------------------------------------------------------
; 1555 | pCnsc_Lic_T_F->btEot = 0x04;                                           
; 1557 | user_CncsTx(&pCnsc_Lic_T_F->phHdBuf.btSoh,(sTxDataSize*2)+18);         
;----------------------------------------------------------------------
        ldiu      277,ir0
        ldiu      2,r0
        mpyi3     r0,*+fp(ir0),r0
        addi      18,r0
        ldiu      282,ir1
        push      r0
        ldiu      *+fp(ir1),r0
        push      r0
        call      _user_CncsTx
                                        ; Call Occurs
        subi      2,sp
L459:        
	.line	304
        ldiu      @_m_nUart2RxOneByteGapDelayTime+0,r0
        sti       r0,@_nOldUart2RxOneByteGapDelayTime$8+0
	.line	305
        pop       r5
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      286,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1561,000000030h,284


	.sect	 ".text"

	.global	_ClearFltBlkInfo
	.sym	_ClearFltBlkInfo,_ClearFltBlkInfo,32,2,0
	.func	1564
;******************************************************************************
;* FUNCTION NAME: _ClearFltBlkInfo                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_ClearFltBlkInfo:
	.line	1
;----------------------------------------------------------------------
; 1565 | // CDTº° °íÀå Á¤º¸¸¦ »èÁ¦ÇÏ´Â ºÎºÐ.                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 1566 | void ClearFltBlkInfo()                                                 
;----------------------------------------------------------------------
        ldiu      6,r2
        ldiu      0,r0
        ldiu      @CL73,r1
        push      r2
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	4
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1567,000000000h,0


	.sect	 ".text"

	.global	_SetFltBlkStPos
	.sym	_SetFltBlkStPos,_SetFltBlkStPos,32,2,0
	.func	1570
;******************************************************************************
;* FUNCTION NAME: _SetFltBlkStPos                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,fp,sp,st                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_SetFltBlkStPos:
	.sym	_chCarKind,-2,2,9,32
	.sym	_nStPosi,-3,4,9,32
	.sym	_pInfo,1,24,1,32,.fake48
	.line	1
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1571 | // CDTº° °íÀå Á¤º¸ÀÇ ½ÃÀÛ À§Ä¡¸¦ ÁöÁ¤.                                 
;----------------------------------------------------------------------
	.line	3
;----------------------------------------------------------------------
; 1572 | void SetFltBlkStPos(char chCarKind, int nStPosi)                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _GetFltBlkInfo
                                        ; Call Occurs
        subi      1,sp
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1574 | PFAULT_INFO pInfo = GetFltBlkInfo(chCarKind);                          
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L467
;*      Branch Occurs to L467 
	.line	6
        ldiu      r0,ar0
        ldiu      *-fp(3),r0
        sti       r0,*+ar0(1)
L467:        
	.line	7
;----------------------------------------------------------------------
; 1576 | if(pInfo != NULL)                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1576,000000000h,1


	.sect	 ".text"

	.global	_SetFltBlkEdInfo
	.sym	_SetFltBlkEdInfo,_SetFltBlkEdInfo,32,2,0
	.func	1579
;******************************************************************************
;* FUNCTION NAME: _SetFltBlkEdInfo                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,fp,sp,st                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 1 Auto + 0 SOE = 6 words          *
;******************************************************************************
_SetFltBlkEdInfo:
	.sym	_chCarKind,-2,2,9,32
	.sym	_nEndPosi,-3,4,9,32
	.sym	_nFltTCnt,-4,4,9,32
	.sym	_pInfo,1,24,1,32,.fake48
	.line	1
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1580 | // CDTº° °íÀå Á¤º¸¸¦ °ü¸®ÇÏ´Â ºÎºÐ.                                    
;----------------------------------------------------------------------
	.line	3
;----------------------------------------------------------------------
; 1581 | void SetFltBlkEdInfo(char chCarKind, int nEndPosi, int nFltTCnt)       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _GetFltBlkInfo
                                        ; Call Occurs
        subi      1,sp
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1583 | PFAULT_INFO pInfo = GetFltBlkInfo(chCarKind);                          
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L471
;*      Branch Occurs to L471 
	.line	7
;----------------------------------------------------------------------
; 1585 | if(pInfo != NULL)                                                      
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *-fp(4),r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 1587 | pInfo->nTCnt = nFltTCnt;
;     |                          // °íÀå ÀüÃ¼ °¹¼ö¸¦ ±â·Ï.                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(3),r0
        sti       r0,*+ar0(2)
L471:        
	.line	10
;----------------------------------------------------------------------
; 1588 | pInfo->nEdPosi = nEndPosi;
;     |                          // °íÀå ¸¶Áö¸· À§Ä¡¸¦ ÀúÀå.                   
;----------------------------------------------------------------------
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1588,000000000h,1


	.sect	 ".text"

	.global	_GetFltBlkInfo
	.sym	_GetFltBlkInfo,_GetFltBlkInfo,104,2,0,.fake48
	.func	1591
;******************************************************************************
;* FUNCTION NAME: _GetFltBlkInfo                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_GetFltBlkInfo:
	.sym	_chCarKind,-2,2,9,32
	.sym	_nIdx,1,4,1,32
	.line	1
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1592 | // CDT °íÀå Á¤º¸¸¦ µ¹·ÁÁÖ´Â ºÎºÐ.                                      
;----------------------------------------------------------------------
	.line	3
;----------------------------------------------------------------------
; 1593 | PFAULT_INFO GetFltBlkInfo(char chCarKind)                              
;----------------------------------------------------------------------
        ldiu      65,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1595 | int nIdx = chCarKind - 'A';                                            
;----------------------------------------------------------------------
        cmpi      2,r0
        bge       L475
;*      Branch Occurs to L475 
	.line	6
;----------------------------------------------------------------------
; 1597 | if(nIdx < eCDT_MAXIMUM)                                                
;----------------------------------------------------------------------
        bud       L476
	nop
        mpyi      3,r0
        addi      @CL73,r0              ; Unsigned
;*      Branch Occurs to L476 
L475:        
	.line	8
;----------------------------------------------------------------------
; 1598 | return &m_tFaultInfo[nIdx];                                            
;----------------------------------------------------------------------
        ldiu      0,r0
L476:        
	.line	9
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1599,000000000h,1


	.sect	 ".text"

	.global	_GetFltBlkStPos
	.sym	_GetFltBlkStPos,_GetFltBlkStPos,36,2,0
	.func	1602
;******************************************************************************
;* FUNCTION NAME: _GetFltBlkStPos                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,fp,sp,st                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 2 Auto + 0 SOE = 5 words          *
;******************************************************************************
_GetFltBlkStPos:
	.sym	_chCarKind,-2,2,9,32
	.sym	_nStPos,1,4,1,32
	.sym	_pInfo,2,24,1,32,.fake48
	.line	1
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 1603 | // CDT °íÀå Á¤º¸ÀÇ  ½ÃÀÛÀ§Ä¡¸¦ µ¹·ÁÁÖ´Â ºÎºÐ.                          
;----------------------------------------------------------------------
	.line	3
;----------------------------------------------------------------------
; 1604 | int GetFltBlkStPos(char chCarKind)                                     
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 1606 | int nStPos = -1;                                                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _GetFltBlkInfo
                                        ; Call Occurs
        subi      1,sp
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 1607 | PFAULT_INFO pInfo = GetFltBlkInfo(chCarKind);                          
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L480
;*      Branch Occurs to L480 
	.line	7
;----------------------------------------------------------------------
; 1609 | if(pInfo != NULL)                                                      
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+ar0(1),r0
        sti       r0,*+fp(1)
L480:        
	.line	9
;----------------------------------------------------------------------
; 1610 | nStPos = pInfo->nStPosi;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1611,000000000h,2



	.sect	".cinit"
	.field  	1,32
	.field  	_d_LicTxEndCnt+0,32
	.field  	0,32		; _d_LicTxEndCnt @ 0

	.sect	".text"

	.global	_d_LicTxEndCnt
	.bss	_d_LicTxEndCnt,1
	.sym	_d_LicTxEndCnt,_d_LicTxEndCnt,4,2,32
	.sect	 ".text"

	.global	_user_FaultDataTx
	.sym	_user_FaultDataTx,_user_FaultDataTx,32,2,0
	.func	1615
;******************************************************************************
;* FUNCTION NAME: _user_FaultDataTx                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,sp,st                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 3 Auto + 0 SOE = 9 words          *
;******************************************************************************
_user_FaultDataTx:
	.sym	_pTxBuf,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_nEndFlag,-4,12,9,32
	.sym	_nFltIdx,-5,4,9,32
	.sym	_sTempData,1,12,1,32
	.sym	_pLic_Cncs,2,24,1,32,.fake20
	.sym	_pNvsram,3,28,1,32
	.line	1
;----------------------------------------------------------------------
; 1615 | int d_LicTxEndCnt = 0;                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1617 | void user_FaultDataTx(UCHAR *pTxBuf,UCHAR nLen,UCHAR nEndFlag,int nFltI
;     | dx)                                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1619 | UCHAR sTempData = 0;                                                   
; 1620 | PLIC_CNCS_HD pLic_Cncs;                                                
;----------------------------------------------------------------------
        ldiu      @CL56,r0
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 1621 | UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;                                 
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(2)
	.line	9
;----------------------------------------------------------------------
; 1623 | pLic_Cncs =(LIC_CNCS_HD *) pTxBuf;                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	10
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(1)
	.line	11
;----------------------------------------------------------------------
; 1625 | pLic_Cncs->phHdBuf.btSoh = 0x01;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(2)
	.line	12
;----------------------------------------------------------------------
; 1626 | pLic_Cncs->phHdBuf.chSrcDev[0] =  ConvHex2Asc(BYTE_H(0x11));           
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(3)
	.line	13
;----------------------------------------------------------------------
; 1627 | pLic_Cncs->phHdBuf.chSrcDev[1] =  ConvHex2Asc(BYTE_L(0x11));           
; 1628 | pLic_Cncs->phHdBuf.chDestDev[0] =  ConvHex2Asc(BYTE_H(0x15));          
; 1629 | pLic_Cncs->phHdBuf.chDestDev[1] =  ConvHex2Asc(BYTE_L(0x15));          
;----------------------------------------------------------------------
        ldiu      5,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(4)
	.line	16
;----------------------------------------------------------------------
; 1631 | // °íÀå ÀÎµ¦½º¸¦ ½Å±Ô·Î »ý¼º(Y.J ¼öÁ¤)                                 
;----------------------------------------------------------------------
        ldi       *-fp(5),r0
        bne       L485
;*      Branch Occurs to L485 
        ldiu      @_m_nFaultCnt+0,r0
        sti       r0,*-fp(5)
L485:        
	.line	18
;----------------------------------------------------------------------
; 1632 | if(!nFltIdx) nFltIdx = m_nFaultCnt;                                    
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        ash       -8,r0
        and       255,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(5)
	.line	19
        ldiu      *-fp(5),r0
        ash       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(6)
	.line	20
;----------------------------------------------------------------------
; 1634 | pLic_Cncs->phHdBuf.chMsgCnt[0] = ConvHex2Asc(BYTE_H(WORD_H(nFltIdx))); 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(5),r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(7)
	.line	21
;----------------------------------------------------------------------
; 1635 | pLic_Cncs->phHdBuf.chMsgCnt[1] = ConvHex2Asc(BYTE_L(WORD_H(nFltIdx))); 
; 1636 | pLic_Cncs->phHdBuf.chMsgCnt[2] = ConvHex2Asc(BYTE_H(WORD_L(nFltIdx))); 
; 1637 | pLic_Cncs->phHdBuf.chMsgCnt[3] = ConvHex2Asc(BYTE_L(WORD_L(nFltIdx))); 
; 1639 | //pLic_Cncs->phHdBuf.chMsgCnt[0] = ConvHex2Asc(BYTE_H(WORD_H(m_nFaultCn
;     | t)));                                                                  
; 1640 | //pLic_Cncs->phHdBuf.chMsgCnt[1] = ConvHex2Asc(BYTE_L(WORD_H(m_nFaultCn
;     | t)));                                                                  
; 1641 | //pLic_Cncs->phHdBuf.chMsgCnt[2] = ConvHex2Asc(BYTE_H(WORD_L(m_nFaultCn
;     | t)));                                                                  
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *-fp(5),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(8)
	.line	28
;----------------------------------------------------------------------
; 1642 | //pLic_Cncs->phHdBuf.chMsgCnt[3] = ConvHex2Asc(BYTE_L(WORD_L(m_nFaultCn
;     | t)));                                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(9)
	.line	29
;----------------------------------------------------------------------
; 1644 | pLic_Cncs->phHdBuf.chCmdCode[0] = ConvHex2Asc(BYTE_H(0x10));           
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(10)
	.line	31
;----------------------------------------------------------------------
; 1645 | pLic_Cncs->phHdBuf.chCmdCode[1] = ConvHex2Asc(BYTE_L(0x10));           
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       255,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(11)
	.line	32
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(12)
	.line	33
;----------------------------------------------------------------------
; 1647 | pLic_Cncs->phHdBuf.chDataLen[0] = ConvHex2Asc(BYTE_H(WORD_H(nLen)));   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(13)
	.line	34
;----------------------------------------------------------------------
; 1648 | pLic_Cncs->phHdBuf.chDataLen[1] = ConvHex2Asc(BYTE_L(WORD_H(nLen)));   
; 1649 | pLic_Cncs->phHdBuf.chDataLen[2] = ConvHex2Asc(BYTE_H(WORD_L(nLen)));   
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *-fp(3),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(14)
	.line	36
;----------------------------------------------------------------------
; 1650 | pLic_Cncs->phHdBuf.chDataLen[3] = ConvHex2Asc(BYTE_L(WORD_L(nLen)));   
;----------------------------------------------------------------------
        ldi       *-fp(4),r0
        beq       L487
;*      Branch Occurs to L487 
	.line	38
;----------------------------------------------------------------------
; 1652 | if(nEndFlag)                                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(15)
	.line	39
;----------------------------------------------------------------------
; 1654 | pLic_Cncs->sCommand[0] = ConvHex2Asc(BYTE_H(0x06));//°íÀå Á¤º¸ ¼ö½Å ³¡.
;----------------------------------------------------------------------
        ldiu      6,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(16)
	.line	41
;----------------------------------------------------------------------
; 1655 | pLic_Cncs->sCommand[1] = ConvHex2Asc(BYTE_L(0x06));//°íÀå Á¤º¸ ¼ö½Å ³¡.
; 1657 | d_LicTxEndCnt++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_LicTxEndCnt+0,r0
        sti       r0,@_d_LicTxEndCnt+0
        bu        L488
;*      Branch Occurs to L488 
L487:        
	.line	45
;----------------------------------------------------------------------
; 1659 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(15)
	.line	46
;----------------------------------------------------------------------
; 1661 | pLic_Cncs->sCommand[0] = ConvHex2Asc(BYTE_H(0x04));//°íÀå Á¤º¸ ¼ö½Å Áß.
; 1662 | pLic_Cncs->sCommand[1] = ConvHex2Asc(BYTE_L(0x04));//°íÀå Á¤º¸ ¼ö½Å Áß.
;----------------------------------------------------------------------
        ldiu      4,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(16)
L488:        
	.line	49
        ldiu      @_m_chCarKind+0,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(17)
	.line	50
;----------------------------------------------------------------------
; 1665 | pLic_Cncs->sCarKind[0] = ConvHex2Asc(BYTE_H(m_chCarKind));             
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_chCarKind+0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(18)
	.line	52
;----------------------------------------------------------------------
; 1666 | pLic_Cncs->sCarKind[1] = ConvHex2Asc(BYTE_L(m_chCarKind));             
;----------------------------------------------------------------------
        ldiu      19,r2
        ldiu      @_nRecving_Posi+0,r1
        addi      *+fp(3),r1            ; Unsigned
        ldiu      2,r0
        addi      *+fp(2),r2            ; Unsigned
        subri     *-fp(3),r0            ; Unsigned
        push      r0
        push      r2
        push      r1
        call      _FunConvHexAsc
                                        ; Call Occurs
        subi      3,sp
	.line	54
;----------------------------------------------------------------------
; 1668 | FunConvHexAsc(&pNvsram[nRecving_Posi],(char *)pLic_Cncs->sTextDataAsc,(
;     | nLen-2));                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        addi      *+fp(2),r1            ; Unsigned
        ldiu      *-fp(3),r0
        mpyi      2,r0
        addi      14,r0                 ; Unsigned
        push      r0
        push      r1
        call      _Make1ByteBcc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	56
;----------------------------------------------------------------------
; 1670 | sTempData = Make1ByteBcc(&pLic_Cncs->phHdBuf.chSrcDev[0],(nLen*2)+14); 
;----------------------------------------------------------------------
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      2,ar0
        subri     *-fp(3),ar0           ; Unsigned
        mpyi      2,ar0
        addi      *+fp(2),ar0           ; Unsigned
        sti       r0,*+ar0(19)
	.line	57
;----------------------------------------------------------------------
; 1672 | pLic_Cncs->sTextDataAsc[((nLen-2)*2)] = ConvHex2Asc(BYTE_H(sTempData));
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *+fp(1),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      2,ar0
        subri     *-fp(3),ar0           ; Unsigned
        mpyi      2,ar0
        addi      *+fp(2),ar0           ; Unsigned
        sti       r0,*+ar0(20)
	.line	59
;----------------------------------------------------------------------
; 1673 | pLic_Cncs->sTextDataAsc[((nLen-2)*2)+1] = ConvHex2Asc(BYTE_L(sTempData)
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      2,ar0
        subri     *-fp(3),ar0           ; Unsigned
        mpyi      2,ar0
        addi      *+fp(2),ar0           ; Unsigned
        ldiu      4,r0
        sti       r0,*+ar0(21)
	.line	61
;----------------------------------------------------------------------
; 1675 | pLic_Cncs->sTextDataAsc[((nLen-2)*2)+2] = 0x04;                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_LIC_CNCS_TX_DelyTime+0
	.line	62
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1676,000000000h,3



	.sect	".cinit"
	.field  	1,32
	.field  	_d_BcarRxCnt+0,32
	.field  	0,32		; _d_BcarRxCnt @ 0

	.sect	".text"

	.global	_d_BcarRxCnt
	.bss	_d_BcarRxCnt,1
	.sym	_d_BcarRxCnt,_d_BcarRxCnt,4,2,32
	.sect	 ".text"

	.global	_user_FtpEnd_CarNumFun
	.sym	_user_FtpEnd_CarNumFun,_user_FtpEnd_CarNumFun,32,2,0
	.func	1682
;******************************************************************************
;* FUNCTION NAME: _user_FtpEnd_CarNumFun                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_user_FtpEnd_CarNumFun:
	.line	1
;----------------------------------------------------------------------
; 1682 | //*********************************************************************
;     | ********************                                                   
; 1683 | int d_BcarRxCnt = 0;                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 1684 | void user_FtpEnd_CarNumFun()                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_bLnWkFtpEndFlag+0
	.line	5
;----------------------------------------------------------------------
; 1686 | m_bLnWkFtpEndFlag = FALSE;                                             
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bne       L493
;*      Branch Occurs to L493 
	.line	7
;----------------------------------------------------------------------
; 1688 | if(BYTE_L(m_wCarNo>>8) == 0x07)                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_LIC_CNCS_Tx_Flag+0
	.line	8
        sti       r0,@_m_nNvsramPos+0
	.line	9
;----------------------------------------------------------------------
; 1690 | m_LIC_CNCS_Tx_Flag = FALSE; //°íÀå Á¤º¸ ¸¶Áö¸· ºí·° ÀÌ¹Ç·Î Àü¼Û ³¡.    
;----------------------------------------------------------------------
        sti       r0,@_nRecving_Posi+0
	.line	10
;----------------------------------------------------------------------
; 1691 | m_nNvsramPos = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,@_m_nLnWkWaySideOnRxOk+0
	.line	11
;----------------------------------------------------------------------
; 1692 | nRecving_Posi = 0;                                                     
;----------------------------------------------------------------------
        sti       r0,@_m_nFaultCnt+0
	.line	12
;----------------------------------------------------------------------
; 1693 | m_nLnWkWaySideOnRxOk = 0;                                              
;----------------------------------------------------------------------
        ldiu      65,r0
        sti       r0,@_m_chCarKind+0
	.line	13
;----------------------------------------------------------------------
; 1694 | m_nFaultCnt = 0;                                                       
; 1695 | m_chCarKind = 'A';                                                     
; 1696 | m_nLnWkTxFlag = 0;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nLnWkTxFlag+0
        bu        L497
;*      Branch Occurs to L497 
L493:        
	.line	16
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      8,r0
        bne       L497
;*      Branch Occurs to L497 
	.line	18
;----------------------------------------------------------------------
; 1699 | else if(BYTE_L(m_wCarNo>>8) == 0x08)                                   
; 1701 |         if(WORD_L(m_chCarKind) == 'A')                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_m_chCarKind+0,r0
        cmpi      65,r0
        bne       L496
;*      Branch Occurs to L496 
	.line	22
;----------------------------------------------------------------------
; 1703 | //aaa_ACarDataPosi = m_nNvsramPos;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nLnWkWaySideOnRxOk+0
	.line	23
        sti       r0,@_m_nFaultCnt+0
	.line	24
;----------------------------------------------------------------------
; 1705 | m_nLnWkWaySideOnRxOk = 0;                                              
; 1706 | m_nFaultCnt = 0;                                                       
;----------------------------------------------------------------------
        ldiu      66,r0
        sti       r0,@_m_chCarKind+0
	.line	26
;----------------------------------------------------------------------
; 1707 | m_chCarKind = 'B';                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_LIC_CNCS_Tx_Flag+0
	.line	28
;----------------------------------------------------------------------
; 1709 | m_LIC_CNCS_Tx_Flag = FALSE; //°íÀå Á¤º¸ ¸¶Áö¸· ºí·° ÀÌ¹Ç·Î Àü¼Û ³¡.    
; 1711 | m_nCDT_FaultDataStFlag = 10;                                           
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_m_nCDT_FaultDataStFlag+0
        bu        L497
;*      Branch Occurs to L497 
L496:        
	.line	32
;----------------------------------------------------------------------
; 1713 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_BcarRxCnt+0,r0
        sti       r0,@_d_BcarRxCnt+0
	.line	33
        ldiu      0,r0
        sti       r0,@_m_nNvsramPos+0
	.line	34
;----------------------------------------------------------------------
; 1715 | d_BcarRxCnt++;                                                         
;----------------------------------------------------------------------
        sti       r0,@_nRecving_Posi+0
	.line	35
;----------------------------------------------------------------------
; 1716 | m_nNvsramPos = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,@_m_nLnWkWaySideOnRxOk+0
	.line	36
;----------------------------------------------------------------------
; 1717 | nRecving_Posi = 0;                                                     
;----------------------------------------------------------------------
        sti       r0,@_m_nFaultCnt+0
	.line	37
;----------------------------------------------------------------------
; 1718 | m_nLnWkWaySideOnRxOk = 0;                                              
;----------------------------------------------------------------------
        ldiu      65,r0
        sti       r0,@_m_chCarKind+0
	.line	38
;----------------------------------------------------------------------
; 1719 | m_nFaultCnt = 0;                                                       
; 1720 | m_chCarKind = 'A';                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nLnWkTxFlag+0
	.line	40
;----------------------------------------------------------------------
; 1721 | m_nLnWkTxFlag = 0;                                                     
; 1723 | m_LIC_CNCS_Tx_Flag = FALSE; //°íÀå Á¤º¸ ¸¶Áö¸· ºí·° ÀÌ¹Ç·Î Àü¼Û ³¡.    
;----------------------------------------------------------------------
        sti       r0,@_m_LIC_CNCS_Tx_Flag+0
L497:        
	.line	43
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1724,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Rx3ch+0,32
	.field  	0,32		; _d_Rx3ch @ 0

	.sect	".text"

	.global	_d_Rx3ch
	.bss	_d_Rx3ch,1
	.sym	_d_Rx3ch,_d_Rx3ch,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_RxUnitSt_1+0,32
	.field  	0,32		; _d_RxUnitSt_1 @ 0

	.sect	".text"

	.global	_d_RxUnitSt_1
	.bss	_d_RxUnitSt_1,1
	.sym	_d_RxUnitSt_1,_d_RxUnitSt_1,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_RxUnitSt_2+0,32
	.field  	0,32		; _d_RxUnitSt_2 @ 0

	.sect	".text"

	.global	_d_RxUnitSt_2
	.bss	_d_RxUnitSt_2,1
	.sym	_d_RxUnitSt_2,_d_RxUnitSt_2,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nRxPos$12+0,32
	.field  	0,32		; _nRxPos$12 @ 0

	.sect	".text"

	.sect	".cinit"
	.field  	1,32
	.field  	_nOldUart3RxOneByteGapDelayTime$13+0,32
	.field  	0,32		; _nOldUart3RxOneByteGapDelayTime$13 @ 0

	.sect	".text"
	.sect	 ".text"

	.global	_user_WithPacRs485Loop
	.sym	_user_WithPacRs485Loop,_user_WithPacRs485Loop,32,2,0
	.func	1734
;******************************************************************************
;* FUNCTION NAME: _user_WithPacRs485Loop                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r4,r5,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc    *
;*   Regs Saved         : r4,r5                                               *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 324 Auto + 2 SOE = 328 words      *
;******************************************************************************
_user_WithPacRs485Loop:
	.bss	_nRxPos$12,1
	.sym	_nRxPos,_nRxPos$12,4,3,32
	.bss	_nOldUart3RxOneByteGapDelayTime$13,1
	.sym	_nOldUart3RxOneByteGapDelayTime,_nOldUart3RxOneByteGapDelayTime$13,12,3,32
	.bss	_btRx3chBuf$14,256
	.sym	_btRx3chBuf,_btRx3chBuf$14,60,3,8192,,256
	.sym	_i,1,4,1,32
	.sym	_nRxLen,2,4,1,32
	.sym	_nCciCnt,3,4,1,32
	.sym	_btTmp,4,12,1,32
	.sym	_btTmpBuf,5,60,1,320,,10
	.sym	_btBuf,15,60,1,8192,,256
	.sym	_pLnWkDp,271,24,1,32,.fake13
	.sym	_pPaSdrBuf,272,24,1,32,.fake16
	.sym	_lsLicSdBuf,273,8,1,1536,.fake18
	.sym	_pPa_PaBuf,321,24,1,32,.fake17
	.sym	_pGi_PaBuf,322,24,1,32,.fake47
	.sym	_pCommStatus,323,24,1,32,.fake28
	.sym	_pCommStatus_Lic,324,24,1,32,.fake36
	.line	1
;----------------------------------------------------------------------
; 1734 | UCHAR d_RxUnitStBuf[100];                                              
; 1735 | int d_RxUnitSt_2 = 0;                                                  
; 1736 | void user_WithPacRs485Loop()                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      324,sp
        push      r4
        push      r5
	.line	5
;----------------------------------------------------------------------
; 1738 | int i;                                                                 
; 1739 | int nRxLen;                                                            
; 1740 | int nCciCnt = 0;                                                       
; 1741 | UCHAR btTmp;                                                           
; 1742 | UCHAR btTmpBuf[10];                                                    
; 1743 | UCHAR btBuf[256];                                                      
; 1744 | static int nRxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
	.line	12
;----------------------------------------------------------------------
; 1745 | static UCHAR nOldUart3RxOneByteGapDelayTime = 0;                       
; 1746 | static UCHAR btRx3chBuf[256];                                          
; 1747 | PLNWKDP pLnWkDp = (LNWKDP *)DPRAM_BASE;                                
; 1749 | PPACSDR pPaSdrBuf;                                                     
; 1750 | LICSD lsLicSdBuf;                                                      
; 1751 | PPAC_PAC pPa_PaBuf;                                                    
; 1753 | PGIA_PAC pGi_PaBuf;
;     |                                                                  // Y.J
;     |  (2011-03-02 Ãß°¡.)                                                    
; 1755 | PCOMMSTATUS_PA pCommStatus;                                            
; 1756 | PCOMMSTATUS_LIC pCommStatus_Lic;                                       
;----------------------------------------------------------------------
        ldiu      271,ir0
        ldiu      @CL12,r0
        sti       r0,*+fp(ir0)
	.line	24
        ldiu      128,r1
        ldiu      fp,r0
        push      r1
        addi      15,r0
        push      r0
        call      _user_PacRx
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(2)
	.line	25
;----------------------------------------------------------------------
; 1758 | // ¼ö½Å                                                                
; 1759 | nRxLen = user_PacRx(btBuf,128);                                        
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L504
;*      Branch Occurs to L504 
	.line	27
;----------------------------------------------------------------------
; 1760 | if(nRxLen)                                                             
;----------------------------------------------------------------------
        ldi       @_m_nUart3RxOneByteGapDelayTime+0,r0
        bne       L502
;*      Branch Occurs to L502 
        ldiu      0,r0
        sti       r0,@_nRxPos$12+0
L502:        
	.line	28
;----------------------------------------------------------------------
; 1762 | if(!m_nUart3RxOneByteGapDelayTime) nRxPos = 0;                         
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_m_nUart3RxOneByteGapDelayTime+0
	.line	30
;----------------------------------------------------------------------
; 1763 | m_nUart3RxOneByteGapDelayTime = 3;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        addi      @_nRxPos$12+0,r0
        cmpi      250,r0
        bged      L504
        ldilt     @CL74,r0
        ldilt     fp,r1
        ldilt     *+fp(2),r2
;*      Branch Occurs to L504 
	.line	32
;----------------------------------------------------------------------
; 1765 | if(nRxPos + nRxLen < 250)                                              
;----------------------------------------------------------------------
        addi      @_nRxPos$12+0,r0      ; Unsigned
        addi      15,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	33
;----------------------------------------------------------------------
; 1767 | memcpy(&btRx3chBuf[nRxPos],btBuf,nRxLen);                              
; 1768 | nRxPos += nRxLen;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        addi      @_nRxPos$12+0,r0
        sti       r0,@_nRxPos$12+0
L504:        
	.line	37
;----------------------------------------------------------------------
; 1772 | if(nOldUart3RxOneByteGapDelayTime && !m_nUart3RxOneByteGapDelayTime)   
;----------------------------------------------------------------------
        ldi       @_nOldUart3RxOneByteGapDelayTime$13+0,r0
        beq       L595
;*      Branch Occurs to L595 
        ldi       @_m_nUart3RxOneByteGapDelayTime+0,r0
        bne       L595
;*      Branch Occurs to L595 
	.line	41
;----------------------------------------------------------------------
; 1774 | //d_RxUnitSt_1 = sizeof(PAC_PAC);                                      
;----------------------------------------------------------------------
        ldiu      @_nRxPos$12+0,r0
        cmpi      10,r0
        blt       L595
;*      Branch Occurs to L595 
	.line	43
;----------------------------------------------------------------------
; 1776 | if(nRxPos >= 10)                                                       
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      @CL74,r0
        sti       r0,*+fp(ir0)
	.line	45
;----------------------------------------------------------------------
; 1778 | pPaSdrBuf = (PACSDR *)btRx3chBuf;                                      
;----------------------------------------------------------------------
        ldiu      321,ir0
        sti       r0,*+fp(ir0)
	.line	47
;----------------------------------------------------------------------
; 1780 | pPa_PaBuf = (PAC_PAC *)btRx3chBuf;                                     
; 1782 | pGi_PaBuf = (GIA_PAC *)btRx3chBuf;
;     |                                          // Y.J (2011-03-02 Ãß°¡.)     
;----------------------------------------------------------------------
        ldiu      322,ir0
        sti       r0,*+fp(ir0)
	.line	52
;----------------------------------------------------------------------
; 1785 | //PAC <-> LIC ºÎºÐ ÇÁ·ÎÅäÄÝÀ» ºÐ¸® ÇÑ´Ù.                               
; 1786 | if(                                                                    
; 1787 |         WORD_L(pPaSdrBuf->phHdBuf.btSoh) == SOH &&                     
; 1788 |         WORD_L(pPaSdrBuf->btEot) == EOT &&                             
; 1789 |         sizeof(PACSDR) == nRxPos &&                                    
; 1790 |         (TWOBYTE_ASC2HEX(pPaSdrBuf->phHdBuf.chDestDev) == LIC_DEV_NO)&&
; 1791 |         !((Make1ByteBcc(&pPaSdrBuf->phHdBuf.chSrcDev[0],nRxPos-4)^(TWOB
;     | YTE_ASC2HEX(pPaSdrBuf->chChkSum))))                                    
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      1,r0
        bne       L523
;*      Branch Occurs to L523 
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(45),r0
        cmpi      4,r0
        bne       L523
;*      Branch Occurs to L523 
        ldiu      46,r0
        cmpi      @_nRxPos$12+0,r0
        bne       L523
;*      Branch Occurs to L523 
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(3),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      272,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(4),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      17,r0
        subi      1,sp
        bne       L523
;*      Branch Occurs to L523 
        ldiu      1,r1
        ldiu      272,ir0
        ldiu      4,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$12+0,r0
        push      r0
        push      r1
        call      _Make1ByteBcc
                                        ; Call Occurs
        ldiu      272,ir0
        subi      2,sp
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(43),r1
        ldiu      r0,r5
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      272,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(44),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        xor3      r5,r0,r0
        subi      1,sp
        bne       L523
;*      Branch Occurs to L523 
	.line	59
;----------------------------------------------------------------------
; 1792 | )                                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Rx3ch+0,r0
        sti       r0,@_d_Rx3ch+0
	.line	61
;----------------------------------------------------------------------
; 1794 | d_Rx3ch++;                                                             
; 1796 | mRackDi.n1DATA.BYTE = TWOBYTE_ASC2HEX(pPaSdrBuf->chProtocol.chD0); //CA
;     | B ½ÅÈ£¸¦ ÀÎ½Ä ÇÏ±â À§ÇØ »ç¿ë.                                          
; 1798 | switch(TWOBYTE_ASC2HEX(pPaSdrBuf->phHdBuf.chCmdCode))                  
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(17),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      272,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(18),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        bud       L520
        and       255,r0
        subi      1,sp
        sti       r0,@_mRackDi+0
;*      Branch Occurs to L520 
	.line	66
L514:        
        sti       r0,*+fp(ir0)
	.line	67
;----------------------------------------------------------------------
; 1800 | case REQ_CMD: //PAC <-> LIC                                            
;----------------------------------------------------------------------
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      274,ir0
        sti       r0,*+fp(ir0)
	.line	68
;----------------------------------------------------------------------
; 1801 | lsLicSdBuf.phHdBuf.btSoh = SOH;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      275,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	69
;----------------------------------------------------------------------
; 1802 | lsLicSdBuf.phHdBuf.chSrcDev[0] = ConvHex2Asc(BYTE_H(LIC_DEV_NO));      
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      276,ir0
        ldiu      *+ar0(1),r0
        sti       r0,*+fp(ir0)
	.line	70
;----------------------------------------------------------------------
; 1803 | lsLicSdBuf.phHdBuf.chSrcDev[1] = ConvHex2Asc(BYTE_L(LIC_DEV_NO));      
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      277,ir0
        ldiu      *+ar0(2),r0
        sti       r0,*+fp(ir0)
	.line	71
;----------------------------------------------------------------------
; 1804 | lsLicSdBuf.phHdBuf.chDestDev[0] = pPaSdrBuf->phHdBuf.chSrcDev[0];      
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      278,ir0
        ldiu      *+ar0(5),r0
        sti       r0,*+fp(ir0)
	.line	72
;----------------------------------------------------------------------
; 1805 | lsLicSdBuf.phHdBuf.chDestDev[1] = pPaSdrBuf->phHdBuf.chSrcDev[1];      
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      279,ir0
        ldiu      *+ar0(6),r0
        sti       r0,*+fp(ir0)
	.line	73
;----------------------------------------------------------------------
; 1806 | lsLicSdBuf.phHdBuf.chMsgCnt[0] = pPaSdrBuf->phHdBuf.chMsgCnt[0];       
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      280,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	74
;----------------------------------------------------------------------
; 1807 | lsLicSdBuf.phHdBuf.chMsgCnt[1] = pPaSdrBuf->phHdBuf.chMsgCnt[1];       
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      281,ir0
        sti       r0,*+fp(ir0)
	.line	75
;----------------------------------------------------------------------
; 1808 | lsLicSdBuf.phHdBuf.chCmdCode[0] = ConvHex2Asc(BYTE_H(RPY_CMD));        
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      282,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	76
;----------------------------------------------------------------------
; 1809 | lsLicSdBuf.phHdBuf.chCmdCode[1] = ConvHex2Asc(BYTE_L(RPY_CMD));        
; 1810 | lsLicSdBuf.phHdBuf.chDataLen[0] = ConvHex2Asc(BYTE_H(((sizeof(LICSD)-14
;     | )/2)));                                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      283,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	78
;----------------------------------------------------------------------
; 1811 | lsLicSdBuf.phHdBuf.chDataLen[1] = ConvHex2Asc(BYTE_L(((sizeof(LICSD)-14
;     | )/2)));                                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      284,ir0
        sti       r0,*+fp(ir0)
	.line	79
;----------------------------------------------------------------------
; 1813 | lsLicSdBuf.chRnum[0] = ConvHex2Asc(BYTE_H(1)); // Router Number        
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      285,ir0
        sti       r0,*+fp(ir0)
	.line	81
;----------------------------------------------------------------------
; 1814 | lsLicSdBuf.chRnum[1] = ConvHex2Asc(BYTE_L(1));                         
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      286,ir0
        ldiu      *+ar0(21),r0
        sti       r0,*+fp(ir0)
	.line	82
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      287,ir0
        ldiu      *+ar0(22),r0
        sti       r0,*+fp(ir0)
	.line	83
;----------------------------------------------------------------------
; 1816 | lsLicSdBuf.chTran[0][0] = pPaSdrBuf->chProtocol.chTran[0][0]; // Train
;     | Number                                                                 
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      288,ir0
        ldiu      *+ar0(23),r0
        sti       r0,*+fp(ir0)
	.line	84
;----------------------------------------------------------------------
; 1817 | lsLicSdBuf.chTran[0][1] = pPaSdrBuf->chProtocol.chTran[0][1];          
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      289,ir0
        ldiu      *+ar0(24),r0
        sti       r0,*+fp(ir0)
	.line	85
;----------------------------------------------------------------------
; 1818 | lsLicSdBuf.chTran[1][0] = pPaSdrBuf->chProtocol.chTran[1][0]; //       
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      290,ir0
        ldiu      *+ar0(25),r0
        sti       r0,*+fp(ir0)
	.line	86
;----------------------------------------------------------------------
; 1819 | lsLicSdBuf.chTran[1][1] = pPaSdrBuf->chProtocol.chTran[1][1];          
; 1820 | lsLicSdBuf.chTran[2][0] = pPaSdrBuf->chProtocol.chTran[2][0]; //       
;----------------------------------------------------------------------
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      291,ir0
        ldiu      *+ar0(26),r0
        sti       r0,*+fp(ir0)
	.line	88
;----------------------------------------------------------------------
; 1821 | lsLicSdBuf.chTran[2][1] = pPaSdrBuf->chProtocol.chTran[2][1];          
;----------------------------------------------------------------------
        ldiu      292,ir0
        ldiu      48,r0
        sti       r0,*+fp(ir0)
	.line	89
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      293,ir0
        sti       r0,*+fp(ir0)
	.line	90
;----------------------------------------------------------------------
; 1823 | lsLicSdBuf.chCarn[0][0] = '0'; // Car Number(-.¹éÀÚ¸®)                 
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      294,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	91
;----------------------------------------------------------------------
; 1824 | lsLicSdBuf.chCarn[0][1] = ConvHex2Asc(BYTE_L(WORD_H(m_wCarNo)));       
; 1825 | lsLicSdBuf.chCarn[1][0] = ConvHex2Asc(BYTE_H(m_wCarNo)); // Car Number(
;     | ½ÊÀÚ¸®,ÀÏÀÚ¸®)                                                         
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_wCarNo+0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      295,ir0
        sti       r0,*+fp(ir0)
	.line	93
;----------------------------------------------------------------------
; 1826 | lsLicSdBuf.chCarn[1][1] = ConvHex2Asc(BYTE_L(m_wCarNo));               
;----------------------------------------------------------------------
        ldiu      @_m_btCttSignalB+0,r0
        or        @_m_btCttSignalA+0,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      296,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	94
;----------------------------------------------------------------------
; 1828 | lsLicSdBuf.chDoorInfo[0][0] = ConvHex2Asc(BYTE_H(m_btCttSignalA | m_btC
;     | ttSignalB)); // DoorÁ¢Á¡½ÅÈ£                                           
; 1829 | lsLicSdBuf.chDoorInfo[0][1] = ConvHex2Asc(BYTE_L(m_btCttSignalA | m_btC
;     | ttSignalB));                                                           
;----------------------------------------------------------------------
        ldiu      @_m_btCttSignalB+0,r0
        or        @_m_btCttSignalA+0,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      297,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	97
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      298,ir0
        sti       r0,*+fp(ir0)
	.line	98
;----------------------------------------------------------------------
; 1831 | // LIC-LON Version                                                     
;----------------------------------------------------------------------
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      15,r0
        and       *+ar0(1),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      299,ir0
        sti       r0,*+fp(ir0)
	.line	99
;----------------------------------------------------------------------
; 1832 | lsLicSdBuf.chLon_F_Ver[0][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btVerH));   
;----------------------------------------------------------------------
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(2),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      300,ir0
        sti       r0,*+fp(ir0)
	.line	100
;----------------------------------------------------------------------
; 1833 | lsLicSdBuf.chLon_F_Ver[0][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btVerH));   
; 1834 | lsLicSdBuf.chLon_F_Ver[1][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btVerL));   
;----------------------------------------------------------------------
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      15,r0
        and       *+ar0(2),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      301,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	102
;----------------------------------------------------------------------
; 1835 | lsLicSdBuf.chLon_F_Ver[1][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btVerL));   
;----------------------------------------------------------------------
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(4),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      302,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	103
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      15,r0
        and       *+ar0(4),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      303,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	104
;----------------------------------------------------------------------
; 1837 | lsLicSdBuf.chLon_Build_Data[0][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btBuild
;     | DateHL));                                                              
;----------------------------------------------------------------------
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(5),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      304,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	105
;----------------------------------------------------------------------
; 1838 | lsLicSdBuf.chLon_Build_Data[0][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btBuild
;     | DateHL));                                                              
;----------------------------------------------------------------------
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      15,r0
        and       *+ar0(5),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      305,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	106
;----------------------------------------------------------------------
; 1839 | lsLicSdBuf.chLon_Build_Data[1][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btBuild
;     | DateLH));                                                              
;----------------------------------------------------------------------
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(6),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      306,ir0
        sti       r0,*+fp(ir0)
	.line	107
;----------------------------------------------------------------------
; 1840 | lsLicSdBuf.chLon_Build_Data[1][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btBuild
;     | DateLH));                                                              
; 1841 | lsLicSdBuf.chLon_Build_Data[2][0] = ConvHex2Asc(BYTE_H(pLnWkDp->btBuild
;     | DateLL));                                                              
; 1842 | lsLicSdBuf.chLon_Build_Data[2][1] = ConvHex2Asc(BYTE_L(pLnWkDp->btBuild
;     | DateLL));                                                              
;----------------------------------------------------------------------
        ldiu      271,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      15,r0
        and       *+ar0(6),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      307,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	110
        ldiu      1,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      1000,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      308,ir0
        sti       r0,*+fp(ir0)
	.line	111
;----------------------------------------------------------------------
; 1844 | // LON-MPU Version                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      100,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      309,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	112
;----------------------------------------------------------------------
; 1845 | lsLicSdBuf.chMpu_F_Ver[0][0] = ConvHex2Asc(GetFirmwareVersion(1)/1000%1
;     | 0);                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        ldiu      10,r1
        subi      1,sp
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      310,ir0
        sti       r0,*+fp(ir0)
	.line	113
;----------------------------------------------------------------------
; 1846 | lsLicSdBuf.chMpu_F_Ver[0][1] = ConvHex2Asc(GetFirmwareVersion(1)/100%10
;     | );                                                                     
; 1847 | lsLicSdBuf.chMpu_F_Ver[1][0] = ConvHex2Asc(GetFirmwareVersion(1)/10%10)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      311,ir0
        sti       r0,*+fp(ir0)
	.line	115
;----------------------------------------------------------------------
; 1848 | lsLicSdBuf.chMpu_F_Ver[1][1] = ConvHex2Asc(GetFirmwareVersion(1)%10);  
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        ldiu      @CL8,r1
        subi      1,sp
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      312,ir0
        sti       r0,*+fp(ir0)
	.line	116
        ldiu      2,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      10000,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      313,ir0
        sti       r0,*+fp(ir0)
	.line	117
;----------------------------------------------------------------------
; 1850 | lsLicSdBuf.chMpu_Build_Data[0][0] = ConvHex2Asc(GetFirmwareVersion(2)/1
;     | 00000%10);                                                             
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      1000,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      314,ir0
        sti       r0,*+fp(ir0)
	.line	118
;----------------------------------------------------------------------
; 1851 | lsLicSdBuf.chMpu_Build_Data[0][1] = ConvHex2Asc(GetFirmwareVersion(2)/1
;     | 0000%10);                                                              
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      100,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      315,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	119
;----------------------------------------------------------------------
; 1852 | lsLicSdBuf.chMpu_Build_Data[1][0] = ConvHex2Asc(GetFirmwareVersion(2)/1
;     | 000%10);                                                               
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      316,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	120
;----------------------------------------------------------------------
; 1853 | lsLicSdBuf.chMpu_Build_Data[1][1] = ConvHex2Asc(GetFirmwareVersion(2)/1
;     | 00%10);                                                                
; 1854 | lsLicSdBuf.chMpu_Build_Data[2][0] = ConvHex2Asc(GetFirmwareVersion(2)/1
;     | 0%10);                                                                 
; 1855 | lsLicSdBuf.chMpu_Build_Data[2][1] = ConvHex2Asc(GetFirmwareVersion(2)%1
;     | 0);                                                                    
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      317,ir0
        sti       r0,*+fp(ir0)
	.line	123
        ldiu      44,r1
        push      r1
        ldiu      274,r0
        addi      fp,r0
        push      r0
        call      _Make1ByteBcc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(4)
	.line	124
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      318,ir0
        sti       r0,*+fp(ir0)
	.line	125
;----------------------------------------------------------------------
; 1858 | btTmp = Make1ByteBcc(&lsLicSdBuf.phHdBuf.chSrcDev[0],sizeof(LICSD)-4); 
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *+fp(4),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      319,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	126
;----------------------------------------------------------------------
; 1859 | lsLicSdBuf.chChkSum[0] = ConvHex2Asc(BYTE_H(btTmp));                   
; 1860 | lsLicSdBuf.chChkSum[1] = ConvHex2Asc(BYTE_L(btTmp));                   
;----------------------------------------------------------------------
        ldiu      320,ir0
        ldiu      4,r0
        sti       r0,*+fp(ir0)
	.line	128
;----------------------------------------------------------------------
; 1861 | lsLicSdBuf.btEot = EOT;                                                
;----------------------------------------------------------------------
        ldiu      273,ar0
        ldiu      @CL75,ar1
        addi      fp,ar0
        ldiu      *ar0++(1),r0
        rpts      46                    ; Fast MEMCPY(#9)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	130
;----------------------------------------------------------------------
; 1863 | memcpy(d_RxUnitStBuf,(UCHAR *)&lsLicSdBuf,sizeof(LICSD));              
; 1865 | user_PacTx((UCHAR *)&lsLicSdBuf,sizeof(LICSD));                        
;----------------------------------------------------------------------
        ldiu      273,r1
        addi      fp,r1
        ldiu      48,r0
        push      r0
        push      r1
        call      _user_PacTx
                                        ; Call Occurs
        subi      2,sp
        bu        L595
;*      Branch Occurs to L595 
L520:        
	.line	63
        ldiu      272,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(7),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      272,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(8),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      16,r0
        beqd      L514
        subi      1,sp
        ldieq     273,ir0
        ldieq     1,r0
;*      Branch Occurs to L514 
        bu        L595
;*      Branch Occurs to L595 
L523:        
	.line	134
;----------------------------------------------------------------------
; 1868 | else                                                                   
; 1869 | if(WORD_L(pPa_PaBuf->phHdBuf.btSoh) == SOH &&  // PAC <-> PAC ¿¡¼­ »óÅÂ
;     |  Á¤º¸¸¦ ÃßÃâÇÑ´Ù.                                                      
; 1870 |             WORD_L(pPa_PaBuf->btEot) == EOT &&                         
; 1871 |             sizeof(PAC_PAC) == nRxPos &&                               
; 1872 |                 (TWOBYTE_ASC2HEX(pPa_PaBuf->phHdBuf.chSrcDev) == PAC_DE
;     | V_NO) &&                                                               
; 1873 |             (TWOBYTE_ASC2HEX(pPa_PaBuf->phHdBuf.chDestDev) == PAC_BAKDE
;     | V_NO) &&                                                               
;----------------------------------------------------------------------
        ldiu      321,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      1,r0
        bne       L585
;*      Branch Occurs to L585 
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(97),r0
        cmpi      4,r0
        bne       L585
;*      Branch Occurs to L585 
        ldiu      98,r0
        cmpi      @_nRxPos$12+0,r0
        bne       L585
;*      Branch Occurs to L585 
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(1),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      321,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(2),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      22,r0
        subi      1,sp
        bne       L585
;*      Branch Occurs to L585 
        ldiu      321,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(3),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      321,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(4),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      23,r0
        subi      1,sp
        bne       L585
;*      Branch Occurs to L585 
        ldiu      1,r1
        ldiu      321,ir0
        ldiu      4,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$12+0,r0
        push      r0
        push      r1
        call      _Make1ByteBcc
                                        ; Call Occurs
        ldiu      321,ir0
        subi      2,sp
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(95),r1
        ldiu      r0,r5
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      321,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(96),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        xor3      r5,r0,r0
        subi      1,sp
        bne       L585
;*      Branch Occurs to L585 
	.line	141
;----------------------------------------------------------------------
; 1874 | !((Make1ByteBcc(&pPa_PaBuf->phHdBuf.chSrcDev[0],nRxPos-4)^(TWOBYTE_ASC2
;     | HEX(pPa_PaBuf->chChkSum)))))                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_RxUnitSt_1+0,r0
        sti       r0,@_d_RxUnitSt_1+0
	.line	143
;----------------------------------------------------------------------
; 1876 | d_RxUnitSt_1++;                                                        
;----------------------------------------------------------------------
        ldiu      7,r2
        ldiu      0,r1
        push      r2
        ldiu      @CL3,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	144
;----------------------------------------------------------------------
; 1878 | memset(m_btCommSt,0x00,sizeof(m_btCommSt));                            
;----------------------------------------------------------------------
        ldiu      321,ir0
        ldiu      51,r1
        ldiu      16,r2
        ldiu      fp,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        push      r2
        addi      5,r0
        push      r0
        push      r1
        call      _FunConvAscHex
                                        ; Call Occurs
        subi      3,sp
	.line	146
;----------------------------------------------------------------------
; 1879 | FunConvAscHex((char *)pPa_PaBuf->chCarInfo,btTmpBuf,16);               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      323,ir0
        addi      5,r0
        sti       r0,*+fp(ir0)
	.line	148
;----------------------------------------------------------------------
; 1881 | pCommStatus = (COMMSTATUS_PA *)btTmpBuf;                               
;----------------------------------------------------------------------
        ldiu      324,ir0
        ldiu      @CL3,r0
        sti       r0,*+fp(ir0)
	.line	150
;----------------------------------------------------------------------
; 1883 | pCommStatus_Lic = (COMMSTATUS_LIC *)m_btCommSt;                        
;----------------------------------------------------------------------
        ldiu      323,ir0
        ldiu      *+fp(ir0),ar1
        ldiu      8,r0
        and3      r0,*ar1,r0
        ldiu      324,ir1
        lsh       -3,r0
        ldiu      *+fp(ir1),ar0
        and       1,r0
        ldiu      *ar0,r1
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	151
        ldiu      *+fp(ir0),ar1
        ldiu      16,r0
        and3      r0,*ar1,r1
        ldiu      *+fp(ir1),ar0
        lsh       -4,r1
        and       1,r1
        ldiu      *ar0,r0
        andn      2,r0
        ash       1,r1
        or3       r0,r1,r0
        sti       r0,*ar0
	.line	152
;----------------------------------------------------------------------
; 1885 | pCommStatus_Lic->BYTE_1.n1LIC = pCommStatus->BYTE_1.n4LIC;             
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      32,r0
        and3      r0,*ar0,r0
        lsh       -5,r0
        ldiu      324,ir0
        and       1,r0
        ldiu      *+fp(ir0),ar0
        ash       2,r0
        ldiu      *ar0,r1
        andn      4,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	153
;----------------------------------------------------------------------
; 1886 | pCommStatus_Lic->BYTE_1.n2WLR = pCommStatus->BYTE_1.n5WLAN;            
;----------------------------------------------------------------------
        ldiu      323,ir0
        ldiu      *+fp(ir0),ar1
        ldiu      1,r0
        and3      r0,*ar1,r0
        ldiu      *+fp(ir1),ar0
        ash       3,r0
        ldiu      *ar0,r1
        andn      8,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	154
;----------------------------------------------------------------------
; 1887 | pCommStatus_Lic->BYTE_1.n3GIA = pCommStatus->BYTE_1.n6GPS;             
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      324,ir0
        ldiu      2,r0
        and3      r0,*ar0,r0
        ldiu      *+fp(ir0),ar0
        lsh       -1,r0
        and       1,r0
        ldiu      *ar0,r1
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	155
;----------------------------------------------------------------------
; 1888 | pCommStatus_Lic->BYTE_1.n4PID = pCommStatus->BYTE_1.n1VTX;             
;----------------------------------------------------------------------
        ldiu      323,ir0
        ldiu      *+fp(ir0),ar1
        ldiu      4,r0
        and3      r0,*ar1,r0
        ldiu      *+fp(ir1),ar0
        lsh       -2,r0
        ldiu      *ar0,r1
        and       1,r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	156
;----------------------------------------------------------------------
; 1889 | pCommStatus_Lic->BYTE_1.n5AVL = pCommStatus->BYTE_1.n2CNCS;            
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      64,r0
        and3      r0,*ar1,r1
        ldiu      *+fp(ir1),ar0
        lsh       -6,r1
        ldiu      *ar0,r0
        and       1,r1
        ash       6,r1
        andn      64,r0
        or3       r0,r1,r0
        sti       r0,*ar0
	.line	157
;----------------------------------------------------------------------
; 1890 | pCommStatus_Lic->BYTE_1.n6PAC2 = pCommStatus->BYTE_1.n3PAC2;           
; 1891 | pCommStatus_Lic->BYTE_1.n7PAC1 = pCommStatus->BYTE_1.n7PAC1;           
;----------------------------------------------------------------------
        ldiu      32,r0
        tstb      @_mRackDi+0,r0
        beqd      L531
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldieq     0,r0
;*      Branch Occurs to L531 
        ldiu      323,ir0
        ldiu      *+fp(ir0),ar1
        ldiu      16,r0
        and       *+ar1(1),r0
        lsh       -4,r0
L531:        
        ldiu      *ar0,r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	159
;----------------------------------------------------------------------
; 1892 | pCommStatus_Lic->BYTE_1.n8TRIC1 = (mRackDi.n1DATA.BIT.n6A_CabOn) ? pCom
;     | mStatus->BYTE_2.n5TRIC1 : 0; //CRA CAB ½ÅÈ£ ÀÔ·Â½Ã¸¸ ºñ±³.             
;----------------------------------------------------------------------
        ldiu      64,r0
        tstb      @_mRackDi+0,r0
        beqd      L533
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldieq     0,r0
;*      Branch Occurs to L533 
        ldiu      323,ir0
        ldiu      *+fp(ir0),ar1
        ldiu      32,r0
        and       *+ar1(1),r0
        lsh       -5,r0
L533:        
        ldiu      *+ar0(1),r1
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	160
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(1),r0
        andn      2,r0
        sti       r0,*+ar0(1)
	.line	161
;----------------------------------------------------------------------
; 1894 | pCommStatus_Lic->BYTE_2.n1TRIC2 = (mRackDi.n1DATA.BIT.n7B_CabOn) ? pCom
;     | mStatus->BYTE_2.n6TRIC2 : 0; //CRB CAB ½ÅÈ£ ÀÔ·Â½Ã¸¸ ºñ±³.             
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(1),r0
        andn      4,r0
        sti       r0,*+ar0(1)
	.line	162
;----------------------------------------------------------------------
; 1895 | pCommStatus_Lic->BYTE_2.n2TMP1 = 0;                                    
;----------------------------------------------------------------------
        ldiu      323,ir0
        ldiu      4,r0
        ldiu      *+fp(ir0),ar1
        ldiu      324,ir1
        and       *+ar1(1),r0
        lsh       -2,r0
        and       1,r0
        ldiu      *+fp(ir1),ar0
        ash       3,r0
        ldiu      *+ar0(1),r1
        andn      8,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	163
;----------------------------------------------------------------------
; 1896 | pCommStatus_Lic->BYTE_2.n3TMP2 = 0;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(ir1),ar0
        ldiu      *+ar0(1),r1
        ldiu      8,r0
        ldiu      *+fp(ir0),ar1
        andn      16,r1
        and       *+ar1(1),r0
        lsh       -3,r0
        and       1,r0
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	164
;----------------------------------------------------------------------
; 1897 | pCommStatus_Lic->BYTE_2.n4CCP1 = pCommStatus->BYTE_2.n3CCP1;           
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      16,r0
        and       *+ar1(7),r0
        lsh       -4,r0
        ldiu      *+fp(ir1),ar0
        and       1,r0
        ldiu      *+ar0(1),r1
        ash       5,r0
        andn      32,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	165
;----------------------------------------------------------------------
; 1898 | pCommStatus_Lic->BYTE_2.n5CCP2 = pCommStatus->BYTE_2.n4CCP2;           
;----------------------------------------------------------------------
        ldiu      32,r0
        ldiu      *+fp(ir0),ar0
        ldiu      324,ir0
        and       *+ar0(7),r0
        lsh       -5,r0
        ldiu      *+fp(ir0),ar0
        and       1,r0
        ldiu      *+ar0(1),r1
        ash       6,r0
        andn      64,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	166
;----------------------------------------------------------------------
; 1899 | pCommStatus_Lic->BYTE_2.n6PII1 = pCommStatus->BYTE_8.n5PII1;           
; 1900 | pCommStatus_Lic->BYTE_2.n7PII2 = pCommStatus->BYTE_8.n6PII2;           
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L535
        ldiu      *+fp(ir0),ar0
	nop
        ldine     323,ir0
;*      Branch Occurs to L535 
        bud       L536
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L536 
L535:        
        ldiu      *+fp(ir0),ar1
        ldiu      64,r0
        and       *+ar1(7),r0
        lsh       -6,r0
L536:        
        ldiu      *+ar0(1),r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	168
;----------------------------------------------------------------------
; 1901 | pCommStatus_Lic->BYTE_2.n8PII3 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | : pCommStatus->BYTE_8.n7PII3;                                          
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L538
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L538 
        bud       L539
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L539 
L538:        
        ldiu      *+fp(ir0),ar1
        ldiu      128,r0
        and       *+ar1(7),r0
        lsh       -7,r0
L539:        
        ldiu      *+ar0(2),r1
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	169
        ldiu      323,ir0
        ldiu      324,ir1
        ldiu      *+fp(ir0),ar1
        ldiu      64,r0
        ldiu      *+fp(ir1),ar0
        and       *+ar1(3),r0
        ldiu      *+ar0(2),r1
        lsh       -6,r0
        andn      2,r1
        and       1,r0
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	170
;----------------------------------------------------------------------
; 1903 | pCommStatus_Lic->BYTE_3.n1PII4 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | : pCommStatus->BYTE_8.n8PII4;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(ir1),ar0
        ldiu      *+fp(ir0),ar1
        ldiu      *+ar0(2),r1
        ldiu      128,r0
        andn      4,r1
        and       *+ar1(3),r0
        lsh       -7,r0
        and       1,r0
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	171
;----------------------------------------------------------------------
; 1904 | pCommStatus_Lic->BYTE_3.n2FDI1 = pCommStatus->BYTE_4.n7FDI1;           
;----------------------------------------------------------------------
        ldiu      *+fp(ir1),ar0
        ldiu      1,r1
        ldiu      *+ar0(2),r0
        ldiu      *+fp(ir0),ar1
        andn      8,r0
        and       *+ar1(5),r1
        ash       3,r1
        or3       r0,r1,r0
        sti       r0,*+ar0(2)
	.line	172
;----------------------------------------------------------------------
; 1905 | pCommStatus_Lic->BYTE_3.n3FDI2 = pCommStatus->BYTE_4.n8FDI2;           
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      *+fp(ir0),ar0
        ldiu      324,ir0
        and       *+ar0(5),r0
        ldiu      *+fp(ir0),ar0
        lsh       -1,r0
        and       1,r0
        ldiu      *+ar0(2),r1
        ash       4,r0
        andn      16,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	173
;----------------------------------------------------------------------
; 1906 | pCommStatus_Lic->BYTE_3.n4SDI1 = pCommStatus->BYTE_6.n1SDI1;           
;----------------------------------------------------------------------
        ldiu      323,ir0
        ldiu      *+fp(ir0),ar1
        ldiu      4,r0
        and       *+ar1(5),r0
        ldiu      *+fp(ir1),ar0
        lsh       -2,r0
        ldiu      *+ar0(2),r1
        and       1,r0
        ash       5,r0
        andn      32,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	174
;----------------------------------------------------------------------
; 1907 | pCommStatus_Lic->BYTE_3.n5SDI2 = pCommStatus->BYTE_6.n2SDI2;           
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      8,r0
        and       *+ar1(5),r0
        lsh       -3,r0
        ldiu      *+fp(ir1),ar0
        and       1,r0
        ldiu      *+ar0(2),r1
        ash       6,r0
        andn      64,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	175
;----------------------------------------------------------------------
; 1908 | pCommStatus_Lic->BYTE_3.n6SDI3 = pCommStatus->BYTE_6.n3SDI3;           
; 1909 | pCommStatus_Lic->BYTE_3.n7SDI4 = pCommStatus->BYTE_6.n4SDI4;           
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L541
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L541 
        bud       L542
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L542 
L541:        
        ldiu      *+fp(ir0),ar1
        ldiu      16,r0
        and       *+ar1(5),r0
        lsh       -4,r0
L542:        
        ldiu      *+ar0(2),r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	177
;----------------------------------------------------------------------
; 1910 | pCommStatus_Lic->BYTE_3.n8SDI5 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | :pCommStatus->BYTE_6.n5SDI5;                                           
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L544
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L544 
        bud       L545
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L545 
L544:        
        ldiu      *+fp(ir0),ar1
        ldiu      32,r0
        and       *+ar1(5),r0
        lsh       -5,r0
L545:        
        ldiu      *+ar0(3),r1
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(3)
	.line	178
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L547
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L547 
        bud       L548
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L548 
L547:        
        ldiu      *+fp(ir0),ar1
        ldiu      64,r0
        and       *+ar1(5),r0
        lsh       -6,r0
L548:        
        ldiu      *+ar0(3),r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(3)
	.line	179
;----------------------------------------------------------------------
; 1912 | pCommStatus_Lic->BYTE_4.n1SDI6 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | :pCommStatus->BYTE_6.n6SDI6;                                           
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L550
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L550 
        bud       L551
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L551 
L550:        
        ldiu      *+fp(ir0),ar1
        ldiu      128,r0
        and       *+ar1(5),r0
        lsh       -7,r0
L551:        
        ldiu      *+ar0(3),r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(3)
	.line	180
;----------------------------------------------------------------------
; 1913 | pCommStatus_Lic->BYTE_4.n2SDI7 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | :pCommStatus->BYTE_6.n7SDI7;                                           
;----------------------------------------------------------------------
        ldiu      323,ir0
        ldiu      324,ir1
        ldiu      1,r1
        ldiu      *+fp(ir0),ar1
        ldiu      *+fp(ir1),ar0
        and       *+ar1(6),r1
        ldiu      *+ar0(3),r0
        ash       3,r1
        andn      8,r0
        or3       r0,r1,r0
        sti       r0,*+ar0(3)
	.line	181
;----------------------------------------------------------------------
; 1914 | pCommStatus_Lic->BYTE_4.n3SDI8 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | :pCommStatus->BYTE_6.n8SDI8;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      2,r0
        ldiu      *+fp(ir1),ar0
        and       *+ar1(6),r0
        ldiu      *+ar0(3),r1
        lsh       -1,r0
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(3)
	.line	182
;----------------------------------------------------------------------
; 1915 | pCommStatus_Lic->BYTE_4.n4PID1_1 = pCommStatus->BYTE_7.n1PID1_1;       
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      4,r0
        and       *+ar1(6),r0
        lsh       -2,r0
        ldiu      *+fp(ir1),ar0
        and       1,r0
        ldiu      *+ar0(3),r1
        ash       5,r0
        andn      32,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(3)
	.line	183
;----------------------------------------------------------------------
; 1916 | pCommStatus_Lic->BYTE_4.n5PID1_2 = pCommStatus->BYTE_7.n2PID1_2;       
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      8,r0
        ldiu      324,ir0
        and       *+ar0(6),r0
        ldiu      *+fp(ir0),ar0
        lsh       -3,r0
        ldiu      *+ar0(3),r1
        and       1,r0
        ash       6,r0
        andn      64,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(3)
	.line	184
;----------------------------------------------------------------------
; 1917 | pCommStatus_Lic->BYTE_4.n6PID1_3 = pCommStatus->BYTE_7.n3PID1_3;       
; 1918 | pCommStatus_Lic->BYTE_4.n7PID1_4 = pCommStatus->BYTE_7.n4PID1_4;       
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L553
        ldiu      *+fp(ir0),ar0
	nop
        ldine     323,ir0
;*      Branch Occurs to L553 
        bud       L554
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L554 
L553:        
        ldiu      *+fp(ir0),ar1
        ldiu      16,r0
        and       *+ar1(6),r0
        lsh       -4,r0
L554:        
        ldiu      *+ar0(3),r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(3)
	.line	186
;----------------------------------------------------------------------
; 1919 | pCommStatus_Lic->BYTE_4.n8PID1_5 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x0
;     | 0 :pCommStatus->BYTE_7.n5PID1_5;                                       
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L556
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L556 
        bud       L557
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L557 
L556:        
        ldiu      *+fp(ir0),ar1
        ldiu      32,r0
        and       *+ar1(6),r0
        lsh       -5,r0
L557:        
        ldiu      *+ar0(4),r1
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	187
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L559
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L559 
        bud       L560
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L560 
L559:        
        ldiu      *+fp(ir0),ar1
        ldiu      64,r0
        and       *+ar1(6),r0
        lsh       -6,r0
L560:        
        ldiu      *+ar0(4),r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	188
;----------------------------------------------------------------------
; 1921 | pCommStatus_Lic->BYTE_5.n1PID1_6 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x0
;     | 0 :pCommStatus->BYTE_7.n6PID1_6;                                       
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L562
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L562 
        bud       L563
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L563 
L562:        
        ldiu      *+fp(ir0),ar1
        ldiu      128,r0
        and       *+ar1(6),r0
        lsh       -7,r0
L563:        
        ldiu      *+ar0(4),r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	189
;----------------------------------------------------------------------
; 1922 | pCommStatus_Lic->BYTE_5.n2PID1_7 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x0
;     | 0 :pCommStatus->BYTE_7.n7PID1_7;                                       
;----------------------------------------------------------------------
        ldiu      323,ir0
        ldiu      324,ir1
        ldiu      *+fp(ir0),ar1
        ldiu      *+fp(ir1),ar0
        ldiu      1,r0
        ldiu      *+ar0(4),r1
        and       *+ar1(7),r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	190
;----------------------------------------------------------------------
; 1923 | pCommStatus_Lic->BYTE_5.n3PID1_8 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x0
;     | 0 :pCommStatus->BYTE_7.n8PID1_8;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      2,r0
        and       *+ar1(7),r0
        lsh       -1,r0
        and       1,r0
        ldiu      *+fp(ir1),ar0
        ash       4,r0
        ldiu      *+ar0(4),r1
        andn      16,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	191
;----------------------------------------------------------------------
; 1924 | pCommStatus_Lic->BYTE_5.n4PID2_1 = pCommStatus->BYTE_8.n1PID2_1;       
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L565
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L565 
        bud       L566
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L566 
L565:        
        ldiu      *+fp(ir0),ar1
        ldiu      4,r0
        and       *+ar1(7),r0
        lsh       -2,r0
L566:        
        ldiu      *+ar0(4),r1
        and       1,r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	192
;----------------------------------------------------------------------
; 1925 | pCommStatus_Lic->BYTE_5.n5PID2_2 = pCommStatus->BYTE_8.n2PID2_2;       
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L568
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L568 
        bud       L569
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L569 
L568:        
        ldiu      *+fp(ir0),ar1
        ldiu      8,r0
        and       *+ar1(7),r0
        lsh       -3,r0
L569:        
        ldiu      *+ar0(4),r1
        and       1,r0
        andn      64,r1
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	193
;----------------------------------------------------------------------
; 1926 | pCommStatus_Lic->BYTE_5.n6PID2_3 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x0
;     | 0 :pCommStatus->BYTE_8.n3PID2_3;                                       
; 1927 | pCommStatus_Lic->BYTE_5.n7PID2_4 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x0
;     | 0 :pCommStatus->BYTE_8.n4PID2_4;                                       
;----------------------------------------------------------------------
        ldiu      323,ir0
        ldiu      324,ir1
        ldiu      *+fp(ir0),ar1
        ldiu      *+fp(ir1),ar0
        ldiu      1,r0
        ldiu      *+ar0(4),r1
        and       *+ar1(1),r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	195
;----------------------------------------------------------------------
; 1928 | pCommStatus_Lic->BYTE_5.n8DPO1 = pCommStatus->BYTE_2.n1DPO1;           
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      2,r1
        and       *+ar1(1),r1
        ldiu      *+fp(ir1),ar0
        lsh       -1,r1
        ldiu      *+ar0(5),r0
        and       1,r1
        andn      1,r0
        or3       r0,r1,r0
        sti       r0,*+ar0(5)
	.line	196
        ldiu      *+fp(ir0),ar1
        ldiu      *+fp(ir1),ar0
        ldiu      4,r0
        and       *+ar1(2),r0
        lsh       -2,r0
        ldiu      *+ar0(5),r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(5)
	.line	197
;----------------------------------------------------------------------
; 1930 | pCommStatus_Lic->BYTE_6.n1DPO2 = pCommStatus->BYTE_2.n2DPO2;           
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      8,r0
        ldiu      324,ir0
        and       *+ar0(2),r0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(5),r1
        lsh       -3,r0
        andn      4,r1
        and       1,r0
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(5)
	.line	198
;----------------------------------------------------------------------
; 1931 | pCommStatus_Lic->BYTE_6.n2CPO1 = pCommStatus->BYTE_3.n3CPO1;           
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L571
        ldiu      *+fp(ir0),ar0
	nop
        ldine     323,ir0
;*      Branch Occurs to L571 
        bud       L572
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L572 
L571:        
        ldiu      *+fp(ir0),ar1
        ldiu      16,r0
        and       *+ar1(2),r0
        lsh       -4,r0
L572:        
        ldiu      *+ar0(5),r1
        and       1,r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(5)
	.line	199
;----------------------------------------------------------------------
; 1932 | pCommStatus_Lic->BYTE_6.n3CPO2 = pCommStatus->BYTE_3.n4CPO2;           
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L574
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L574 
        bud       L575
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L575 
L574:        
        ldiu      *+fp(ir0),ar1
        ldiu      32,r0
        and       *+ar1(2),r0
        lsh       -5,r0
L575:        
        ldiu      *+ar0(5),r1
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(5)
	.line	200
;----------------------------------------------------------------------
; 1933 | pCommStatus_Lic->BYTE_6.n4CPO3 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | :pCommStatus->BYTE_3.n5CPO3;                                           
;----------------------------------------------------------------------
        ldiu      323,ir0
        ldiu      324,ir1
        ldiu      *+fp(ir0),ar1
        ldiu      *+fp(ir1),ar0
        ldiu      1,r0
        ldiu      *+ar0(5),r1
        and       *+ar1(3),r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(5)
	.line	201
;----------------------------------------------------------------------
; 1934 | pCommStatus_Lic->BYTE_6.n5CPO4 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | :pCommStatus->BYTE_3.n6CPO4;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      2,r0
        and       *+ar1(3),r0
        lsh       -1,r0
        and       1,r0
        ldiu      *+fp(ir1),ar0
        ash       6,r0
        ldiu      *+ar0(5),r1
        andn      64,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(5)
	.line	202
;----------------------------------------------------------------------
; 1935 | pCommStatus_Lic->BYTE_6.n6PEI1 = pCommStatus->BYTE_4.n1PEI1;           
; 1936 | pCommStatus_Lic->BYTE_6.n7PEI2 = pCommStatus->BYTE_4.n2PEI2;           
;----------------------------------------------------------------------
        ldiu      323,ir1
        ldiu      324,ir0
        ldiu      *+fp(ir1),ar1
        ldiu      4,r0
        and       *+ar1(3),r0
        ldiu      *+fp(ir0),ar0
        lsh       -2,r0
        and       1,r0
        ldiu      *+ar0(5),r1
        ash       7,r0
        andn      128,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(5)
	.line	204
;----------------------------------------------------------------------
; 1937 | pCommStatus_Lic->BYTE_6.n8PEI3 = pCommStatus->BYTE_4.n3PEI3;           
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L577
        ldiu      *+fp(ir0),ar0
	nop
        ldine     323,ir0
;*      Branch Occurs to L577 
        bud       L578
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L578 
L577:        
        ldiu      *+fp(ir0),ar1
        ldiu      8,r0
        and       *+ar1(3),r0
        lsh       -3,r0
L578:        
        ldiu      *+ar0(6),r1
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(6)
	.line	205
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L580
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L580 
        bud       L581
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L581 
L580:        
        ldiu      *+fp(ir0),ar1
        ldiu      16,r0
        and       *+ar1(3),r0
        lsh       -4,r0
L581:        
        ldiu      *+ar0(6),r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(6)
	.line	206
;----------------------------------------------------------------------
; 1939 | pCommStatus_Lic->BYTE_7.n1PEI4 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | :pCommStatus->BYTE_4.n4PEI4;                                           
;----------------------------------------------------------------------
        ldiu      @_m_wCarNo+0,r0
        ash       -8,r0
        and       15,r0
        cmpi      7,r0
        bned      L583
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldine     323,ir0
;*      Branch Occurs to L583 
        bud       L584
	nop
	nop
        ldiu      0,r1
;*      Branch Occurs to L584 
L583:        
        ldiu      *+fp(ir0),ar1
        ldiu      32,r1
        and       *+ar1(3),r1
        lsh       -5,r1
L584:        
        ldiu      *+ar0(6),r0
        and       1,r1
        andn      4,r0
        ash       2,r1
        or3       r0,r1,r0
        sti       r0,*+ar0(6)
	.line	207
;----------------------------------------------------------------------
; 1940 | pCommStatus_Lic->BYTE_7.n2PEI5 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | :pCommStatus->BYTE_4.n5PEI5;                                           
;----------------------------------------------------------------------
        ldiu      324,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(6),r0
        andn      8,r0
        sti       r0,*+ar0(6)
	.line	208
;----------------------------------------------------------------------
; 1941 | pCommStatus_Lic->BYTE_7.n3PEI6 = (BYTE_L(m_wCarNo >>8) == 0x07) ? 0x00
;     | :pCommStatus->BYTE_4.n6PEI6;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(6),r0
        andn      16,r0
        sti       r0,*+ar0(6)
	.line	209
;----------------------------------------------------------------------
; 1942 | pCommStatus_Lic->BYTE_7.n4sp = 0x00;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(6),r0
        andn      32,r0
        sti       r0,*+ar0(6)
	.line	210
;----------------------------------------------------------------------
; 1943 | pCommStatus_Lic->BYTE_7.n5sp = 0x00;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(6),r0
        andn      64,r0
        sti       r0,*+ar0(6)
	.line	211
;----------------------------------------------------------------------
; 1944 | pCommStatus_Lic->BYTE_7.n6sp = 0x00;                                   
; 1945 | pCommStatus_Lic->BYTE_7.n7sp = 0x00;                                   
; 1946 | pCommStatus_Lic->BYTE_7.n8sp = 0x00;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(6),r0
        andn      128,r0
        sti       r0,*+ar0(6)
        bu        L595
;*      Branch Occurs to L595 
L585:        
	.line	214
;----------------------------------------------------------------------
; 1948 | else    // Y.J (2011-03-02 Ãß°¡.)                                      
; 1949 | if(WORD_L(pGi_PaBuf->phHdBuf.btSoh) == SOH &&  // PAC <-> PAC ¿¡¼­ »óÅÂ
;     |  Á¤º¸¸¦ ÃßÃâÇÑ´Ù.                                                      
; 1950 |             WORD_L(pGi_PaBuf->btEot) == EOT &&                         
; 1951 |             sizeof(GIA_PAC) == nRxPos  &&                              
; 1952 |                 (TWOBYTE_ASC2HEX(pGi_PaBuf->phHdBuf.chSrcDev) == GIA_DE
;     | V_NO) &&                                                               
; 1953 |             ((TWOBYTE_ASC2HEX(pGi_PaBuf->phHdBuf.chDestDev) == PAC_DEV_
;     | NO) || (TWOBYTE_ASC2HEX(pGi_PaBuf->phHdBuf.chDestDev) == PAC_BAKDEV_NO)
;     | )  &&                                                                  
; 1954 |             !((Make1ByteBcc(&pGi_PaBuf->phHdBuf.chSrcDev[0],nRxPos-4)^(
;     | TWOBYTE_ASC2HEX(pGi_PaBuf->chChkSum)))))                               
; 1956 |         // Y.J (2011-03-02 Ãß°¡.)                                      
;----------------------------------------------------------------------
        ldiu      322,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      1,r0
        bne       L595
;*      Branch Occurs to L595 
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(59),r0
        cmpi      4,r0
        bne       L595
;*      Branch Occurs to L595 
        ldiu      60,r0
        cmpi      @_nRxPos$12+0,r0
        bne       L595
;*      Branch Occurs to L595 
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(1),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(2),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      19,r0
        subi      1,sp
        bne       L595
;*      Branch Occurs to L595 
        ldiu      322,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(3),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(4),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      22,r0
        subi      1,sp
        beq       L591
;*      Branch Occurs to L591 
        ldiu      322,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(3),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(4),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        cmpi      23,r0
        subi      1,sp
        bne       L595
;*      Branch Occurs to L595 
L591:        
        ldiu      1,r1
        ldiu      322,ir0
        ldiu      4,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$12+0,r0
        push      r0
        push      r1
        call      _Make1ByteBcc
                                        ; Call Occurs
        ldiu      322,ir0
        subi      2,sp
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(57),r1
        ldiu      r0,r4
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(58),r1
        ldiu      r0,r5
        push      r1
        ash       4,r5
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r5,r0,r0
        and       255,r0
        xor3      r4,r0,r0
        subi      1,sp
        bne       L595
;*      Branch Occurs to L595 
	.line	224
;----------------------------------------------------------------------
; 1957 | // GIA->PACÀÇ Åë½ÅÁß GIA ½Ã°£Á¤º¸¸¦ ÃßÃâÇÏ´Â ºÎºÐ.(½Ã°£ Á¤º¸ °è»êÀ» CNC
;     | S¿¡¼­ GIA·Î ÀÌµ¿½ÃÅ´.)                                                 
;----------------------------------------------------------------------
        ldiu      322,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(21),r0
        push      r0
        call      _ConvAsc2Dec
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      10,r1
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(22),r2
        mpyi3     r1,r0,r4
        push      r2
        call      _ConvAsc2Dec
                                        ; Call Occurs
        addi3     r0,r4,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+0
        subi      1,sp
	.line	225
;----------------------------------------------------------------------
; 1958 | // ½Ã°£Á¤º¸¸¦ ±¸ÇÏ´Â ºÎºÐ.                                             
;----------------------------------------------------------------------
        ldiu      322,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(19),r0
        push      r0
        call      _ConvAsc2Dec
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      10,r1
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(20),r2
        mpyi3     r1,r0,r4
        push      r2
        call      _ConvAsc2Dec
                                        ; Call Occurs
        addi3     r0,r4,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+1
        subi      1,sp
	.line	226
;----------------------------------------------------------------------
; 1959 | m_tmCurTime.second      = TWOBYTE_ASC2DEC(pGi_PaBuf->sSecond);         
;----------------------------------------------------------------------
        ldiu      322,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(17),r0
        push      r0
        call      _ConvAsc2Dec
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      10,r1
        ldiu      *+ar0(18),r2
        push      r2
        mpyi3     r1,r0,r4
        call      _ConvAsc2Dec
                                        ; Call Occurs
        addi3     r0,r4,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+2
        subi      1,sp
	.line	227
;----------------------------------------------------------------------
; 1960 | m_tmCurTime.minute      = TWOBYTE_ASC2DEC(pGi_PaBuf->sMinute);         
;----------------------------------------------------------------------
        ldiu      322,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(15),r0
        push      r0
        call      _ConvAsc2Dec
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(16),r2
        ldiu      10,r1
        mpyi3     r1,r0,r4
        push      r2
        call      _ConvAsc2Dec
                                        ; Call Occurs
        addi3     r0,r4,r0              ; Unsigned
        subi      1,sp
        sti       r0,@_m_tmCurTime+3
	.line	228
;----------------------------------------------------------------------
; 1961 | m_tmCurTime.hour        = TWOBYTE_ASC2DEC(pGi_PaBuf->sHour  );         
;----------------------------------------------------------------------
        ldiu      322,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(13),r0
        push      r0
        call      _ConvAsc2Dec
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      10,r1
        ldiu      *+ar0(14),r2
        mpyi3     r1,r0,r4
        push      r2
        call      _ConvAsc2Dec
                                        ; Call Occurs
        addi3     r0,r4,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+4
        subi      1,sp
	.line	229
;----------------------------------------------------------------------
; 1962 | m_tmCurTime.day         = TWOBYTE_ASC2DEC(pGi_PaBuf->sDay   );         
; 1963 | m_tmCurTime.month       = TWOBYTE_ASC2DEC(pGi_PaBuf->sMonth );         
;----------------------------------------------------------------------
        ldiu      322,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(11),r0
        push      r0
        call      _ConvAsc2Dec
                                        ; Call Occurs
        ldiu      322,ir0
        subi      1,sp
        ldiu      10,r1
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(12),r2
        mpyi3     r1,r0,r4
        push      r2
        call      _ConvAsc2Dec
                                        ; Call Occurs
        addi3     r0,r4,r0              ; Unsigned
        sti       r0,@_m_tmCurTime+5
        subi      1,sp
	.line	231
;----------------------------------------------------------------------
; 1964 | m_tmCurTime.year        = TWOBYTE_ASC2DEC(pGi_PaBuf->sYear  );         
;----------------------------------------------------------------------
        ldiu      0,r2
        ldiu      @CL76,r1
        ldiu      7,r0
        push      r0
        push      r2
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	232
;----------------------------------------------------------------------
; 1966 | memset(&m_tmUtcTime, 0x00, sizeof(DATE_TIME_TYPE));                    
;----------------------------------------------------------------------
        ldiu      @CL76,r2
        push      r2
        ldiu      -5,r0
        push      r0
        ldiu      @CL77,r1
        push      r1
        call      _GetLocalTimeToUTC
                                        ; Call Occurs
        cmpi      0,r0
        beqd      L595
	nop
        sti       r0,@_m_LIC_GIA_TimSetFlag+0
        subi      3,sp
;*      Branch Occurs to L595 
	.line	234
;----------------------------------------------------------------------
; 1967 | if(m_LIC_GIA_TimSetFlag = GetLocalTimeToUTC(&m_tmCurTime, -5, &m_tmUtcT
;     | ime))                                                                  
;----------------------------------------------------------------------
        ldiu      @_m_tmUtcTime+5,r0
        push      r0
        call      _ConvDec2Hex
                                        ; Call Occurs
        sti       r0,@_m_tmUtcTime+5
        subi      1,sp
	.line	235
        ldiu      @_m_tmUtcTime+4,r0
        push      r0
        call      _ConvDec2Hex
                                        ; Call Occurs
        sti       r0,@_m_tmUtcTime+4
        subi      1,sp
	.line	236
;----------------------------------------------------------------------
; 1969 | m_tmUtcTime.year        = ConvDec2Hex(m_tmUtcTime.year  );             
;----------------------------------------------------------------------
        ldiu      @_m_tmUtcTime+3,r0
        push      r0
        call      _ConvDec2Hex
                                        ; Call Occurs
        sti       r0,@_m_tmUtcTime+3
        subi      1,sp
	.line	237
;----------------------------------------------------------------------
; 1970 | m_tmUtcTime.month       = ConvDec2Hex(m_tmUtcTime.month );             
;----------------------------------------------------------------------
        ldiu      @_m_tmUtcTime+2,r0
        push      r0
        call      _ConvDec2Hex
                                        ; Call Occurs
        sti       r0,@_m_tmUtcTime+2
        subi      1,sp
	.line	238
;----------------------------------------------------------------------
; 1971 | m_tmUtcTime.day         = ConvDec2Hex(m_tmUtcTime.day   );             
;----------------------------------------------------------------------
        ldiu      @_m_tmUtcTime+1,r0
        push      r0
        call      _ConvDec2Hex
                                        ; Call Occurs
        sti       r0,@_m_tmUtcTime+1
        subi      1,sp
	.line	239
;----------------------------------------------------------------------
; 1972 | m_tmUtcTime.hour        = ConvDec2Hex(m_tmUtcTime.hour  );             
; 1973 | m_tmUtcTime.minute      = ConvDec2Hex(m_tmUtcTime.minute);             
; 1974 | m_tmUtcTime.second      = ConvDec2Hex(m_tmUtcTime.second);             
;----------------------------------------------------------------------
        ldiu      @_m_tmUtcTime+0,r0
        push      r0
        call      _ConvDec2Hex
                                        ; Call Occurs
        sti       r0,@_m_tmUtcTime+0
        subi      1,sp
	.line	242
;----------------------------------------------------------------------
; 1977 | m_nGiaRxCheck1msTimer = 2000;                                          
;----------------------------------------------------------------------
        ldiu      2000,r0
        sti       r0,@_m_nGiaRxCheck1msTimer+0
L595:        
	.line	249
        ldiu      @_m_nUart3RxOneByteGapDelayTime+0,r0
        sti       r0,@_nOldUart3RxOneByteGapDelayTime$13+0
	.line	250
        pop       r5
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      326,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1983,000000030h,324


	.sect	 ".text"

	.global	_GetLocalTimeToUTC
	.sym	_GetLocalTimeToUTC,_GetLocalTimeToUTC,36,2,0
	.func	1988
;******************************************************************************
;* FUNCTION NAME: _GetLocalTimeToUTC                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r4,ar0,ar1,fp,sp,st                           *
;*   Regs Saved         : r4                                                  *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 5 Auto + 1 SOE = 11 words         *
;******************************************************************************
_GetLocalTimeToUTC:
	.sym	_pLocal,-2,24,9,32,.fake5
	.sym	_nHour,-3,4,9,32
	.sym	_pUTC,-4,24,9,32,.fake5
	.sym	_nHourT,1,4,1,32
	.sym	_nDayT,2,4,1,32
	.sym	_nLastDays,3,4,1,32
	.sym	_nMonthT,4,4,1,32
	.sym	_nYearT,5,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1988 | //      UTC ½Ã°£À» ±¸ÇÏ´Â ºÎºÐ.                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
        push      r4
	.line	2
;----------------------------------------------------------------------
; 1989 | //*********************************************************************
;     | ********************                                                   
; 1990 | BOOL GetLocalTimeToUTC( DATE_TIME_PTR pLocal, int nHour, DATE_TIME_PTR
;     | pUTC )                                                                 
;----------------------------------------------------------------------
	.line	4
        ldiu      *-fp(2),ar0
        ldiu      *-fp(3),r0
        subri     *+ar0(2),r0           ; Unsigned
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1992 | // ½Ã°£À» °è»êÇÏ´Â ºÎºÐ.                                               
;----------------------------------------------------------------------
        ldiu      *+ar0(3),r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 1993 | int nHourT = pLocal->hour - nHour;                                     
;----------------------------------------------------------------------
        ldiu      ar0,ar1
        ldiu      *+ar0(4),r1
        ldiu      *+ar1(5),r0
        push      r0
        push      r1
        call      _GetDaysOfMonth
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 1994 | int nDayT = pLocal->day;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(4),r0
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 1995 | int nLastDays = GetDaysOfMonth( pLocal->month, pLocal->year );
;     |                                                                        
;     |                                                                        
; 1996 | int nMonthT = pLocal->month;                                           
; 1997 | int nYearT = 2000 + pLocal->year;                                      
;----------------------------------------------------------------------
        ldiu      2000,r0
        addi      *+ar0(5),r0           ; Unsigned
        sti       r0,*+fp(5)
	.line	11
        ldi       *+fp(1),r0
        bge       L600
;*      Branch Occurs to L600 
	.line	12
;----------------------------------------------------------------------
; 1999 | // ½Ã°£ Á¤º¸¸¦ ±¸ÇÏ´Â ºÎºÐ.                                            
;----------------------------------------------------------------------
        ldiu      24,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	13
;----------------------------------------------------------------------
; 2000 | if(nHourT < 0 ) {                                                      
; 2001 |         nHourT += 24;                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *+fp(2),r0
        sti       r0,*+fp(2)
        bu        L602
;*      Branch Occurs to L602 
L600:        
	.line	15
;----------------------------------------------------------------------
; 2002 | nDayT += -1;                                                           
;----------------------------------------------------------------------
        ldiu      24,r0
        cmpi      *+fp(1),r0
        bgt       L602
;*      Branch Occurs to L602 
	.line	16
        subri     *+fp(1),r0
        sti       r0,*+fp(1)
	.line	17
;----------------------------------------------------------------------
; 2004 | else if( 24 <= nHourT ) {                                              
; 2005 |         nHourT -= 24;                                                  
; 2006 |         nDayT += 1;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
L602:        
	.line	22
;----------------------------------------------------------------------
; 2009 | // ÀÏÀÚ¸¦ ±¸ÇÏ´Â ºÎºÐ.                                                 
; 2010 | // ½Ã°£À» °è»êÇÏ¿© ÀÏÀÚ¸¦ º¯°æÇØ¾ßÇÏ´Â °æ¿ì.                           
;----------------------------------------------------------------------
        ldi       *+fp(2),r0
        bgt       L605
;*      Branch Occurs to L605 
	.line	24
;----------------------------------------------------------------------
; 2011 | if(nDayT < 1)
;     |                                                                        
;     |                                                                        
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        push      r0
        ldiu      *+fp(4),r0
        push      r0
        call      _GetDaysOfMonth
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(2)
	.line	26
;----------------------------------------------------------------------
; 2013 | nDayT = GetDaysOfMonth( nMonthT, nYearT );                             
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *+fp(4),r0
        bgtd      L608
        sti       r0,*+fp(4)
	nop
        ldile     1,r0
;*      Branch Occurs to L608 
	.line	28
;----------------------------------------------------------------------
; 2015 | if(--nMonthT < 1)                                                      
;----------------------------------------------------------------------
        subri     *+fp(5),r0
        sti       r0,*+fp(5)
	.line	29
;----------------------------------------------------------------------
; 2017 | nYearT--;                                                              
; 2018 | nMonthT = 12;                                                          
;----------------------------------------------------------------------
        ldiu      12,r0
        sti       r0,*+fp(4)
        bu        L608
;*      Branch Occurs to L608 
L605:        
	.line	32
        ldiu      *+fp(3),r0
        cmpi      *+fp(2),r0
        bge       L608
;*      Branch Occurs to L608 
	.line	34
;----------------------------------------------------------------------
; 2021 | else if(nLastDays < nDayT)                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(2)
	.line	36
;----------------------------------------------------------------------
; 2023 | nDayT = 1;                                                             
;----------------------------------------------------------------------
        ldiu      12,r1
        addi      *+fp(4),r0
        cmpi3     r0,r1
        bged      L608
        sti       r0,*+fp(4)
	nop
        ldilt     1,r0
;*      Branch Occurs to L608 
	.line	38
;----------------------------------------------------------------------
; 2025 | if(12 < ++nMonthT)                                                     
;----------------------------------------------------------------------
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
	.line	39
;----------------------------------------------------------------------
; 2027 | nYearT++;                                                              
; 2028 | nMonthT = 1;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
L608:        
	.line	44
        ldiu      *-fp(2),ar0
        ldiu      *-fp(4),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
	.line	45
;----------------------------------------------------------------------
; 2032 | // °è°£µÈ ½ÃºÐÃÊ Á¤º¸¸¦ UTC ½Ã°£À¸·Î ÀÌµ¿½ÃÅ°´Â ºÎºÐ.                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      *-fp(4),ar0
        ldiu      *+ar1(1),r0
        sti       r0,*+ar0(1)
	.line	46
;----------------------------------------------------------------------
; 2033 | pUTC->second = pLocal->second;                                         
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        ldiu      *+fp(1),r0
        sti       r0,*+ar0(2)
	.line	47
;----------------------------------------------------------------------
; 2034 | pUTC->minute = pLocal->minute;                                         
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        ldiu      *+fp(2),r0
        sti       r0,*+ar0(3)
	.line	48
;----------------------------------------------------------------------
; 2035 | pUTC->hour = nHourT;                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        ldiu      *+fp(4),r0
        sti       r0,*+ar0(4)
	.line	49
;----------------------------------------------------------------------
; 2036 | pUTC->day = nDayT;                                                     
; 2037 | pUTC->month = nMonthT;                                                 
; 2038 | pUTC->year = nYearT - 2000;                                            
; 2040 | return ( ( 10 <= pUTC->year ) &&
;     |                                                                        
;     |                                   // 10³â ÀÌ»ó                         
; 2041 |                         (( 1 <= pUTC->month ) && ( pUTC->month <= 12 ))
;     |  &&                                                                    
;     |                   // ¿ù                                                
; 2042 |                         (( 1 <= pUTC->day ) && ( pUTC->day <= GetDaysOf
;     | Month(nMonthT, nYearT) )) &&                             // ÀÏ         
;----------------------------------------------------------------------
        ldiu      2000,r0
        ldiu      *-fp(4),ar0
        subri     *+fp(5),r0            ; Unsigned
        sti       r0,*+ar0(5)
	.line	56
;----------------------------------------------------------------------
; 2043 | (( 0 <= pUTC->hour ) && ( pUTC->hour < 24 )) &&
;     |                                                                  // ½Ã 
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        ldiu      10,r0
        cmpi      *+ar0(5),r0
        ldiu      0,r4
        bhi       L619
;*      Branch Occurs to L619 
        ldiu      1,r0
        cmpi      *+ar0(4),r0
        bhi       L619
;*      Branch Occurs to L619 
        ldiu      *+ar0(4),r0
        cmpi      12,r0
        bhi       L619
;*      Branch Occurs to L619 
        ldiu      1,r0
        cmpi      *+ar0(3),r0
        bhi       L619
;*      Branch Occurs to L619 
        ldiu      *+fp(5),r0
        push      r0
        ldiu      *+fp(4),r0
        push      r0
        call      _GetDaysOfMonth
                                        ; Call Occurs
        subi      2,sp
        ldiu      *-fp(4),ar0
        ldiu      *+ar0(3),r1
        cmpi3     r0,r1
        bhi       L619
;*      Branch Occurs to L619 
        ldiu      0,r0
        cmpi      *+ar0(2),r0
        bhi       L619
;*      Branch Occurs to L619 
        ldiu      *+ar0(2),r0
        cmpi      24,r0
        bhs       L619
;*      Branch Occurs to L619 
        ldiu      0,r0
        cmpi3     *+ar0,r0
        bhi       L619
;*      Branch Occurs to L619 
        ldiu      *+ar0(1),r0
        cmpi      60,r0
        bhs       L619
;*      Branch Occurs to L619 
        ldiu      0,r0
        cmpi3     *ar0,r0
        bhi       L619
;*      Branch Occurs to L619 
        ldiu      *ar0,r0
        cmpi      60,r0
        ldilo     1,r4
L619:        
	.line	57
;----------------------------------------------------------------------
; 2044 | (( 0 <= pUTC->minute) && ( pUTC->minute < 60 )) &&
;     |                                                                  // ºÐ 
;----------------------------------------------------------------------
        ldiu      r4,r0
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      7,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2044,000000010h,5


	.sect	 ".text"

	.global	_IsLeapYear
	.sym	_IsLeapYear,_IsLeapYear,36,2,0
	.func	2049
;******************************************************************************
;* FUNCTION NAME: _IsLeapYear                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,st                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_IsLeapYear:
	.sym	_nYear,-2,4,9,32
	.line	1
;----------------------------------------------------------------------
; 2049 | //      ´ÞÀÇ ¸¶Áö¸· ÀÏÀÚ Á¤º¸¸¦ ±¸ÇÏ´Â ºÎºÐ.                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
;----------------------------------------------------------------------
; 2050 | //*********************************************************************
;     | *********************                                                  
;----------------------------------------------------------------------
	.line	3
;----------------------------------------------------------------------
; 2051 | int IsLeapYear( int nYear )
;     |                  // À±³â Á¤º¸¸¦ ±¸ÇÏ´Â ºÎºÐ.                           
;----------------------------------------------------------------------
        ldiu      400,r1
        ldiu      *-fp(2),r0
        call      MOD_I30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L624
;*      Branch Occurs to L624 
	.line	4
;----------------------------------------------------------------------
; 2053 | if( nYear % 400 == 0 )                                                 
;----------------------------------------------------------------------
        bud       L629
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L629 
L624:        
	.line	6
;----------------------------------------------------------------------
; 2054 | return 1;                                                              
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        ldiu      100,r1
        call      MOD_I30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L626
;*      Branch Occurs to L626 
	.line	7
;----------------------------------------------------------------------
; 2056 | if( nYear % 100 == 0 )                                                 
;----------------------------------------------------------------------
        bud       L629
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L629 
L626:        
	.line	9
;----------------------------------------------------------------------
; 2057 | return 0;                                                              
;----------------------------------------------------------------------
        ldiu      *-fp(2),r1
        ldiu      r1,r0
        ash       -1,r0
        lsh       @CL78,r0
        addi3     r0,r1,r0
        andn      3,r0
        subri     r1,r0
        bne       L628
;*      Branch Occurs to L628 
	.line	10
;----------------------------------------------------------------------
; 2059 | if( nYear % 4 == 0 )                                                   
;----------------------------------------------------------------------
        bud       L629
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L629 
L628:        
	.line	12
;----------------------------------------------------------------------
; 2060 | return 1;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
L629:        
	.line	13
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	2061,000000000h,0


	.sect	 ".text"

	.global	_GetDaysOfMonth
	.sym	_GetDaysOfMonth,_GetDaysOfMonth,36,2,0
	.func	2063
;******************************************************************************
;* FUNCTION NAME: _GetDaysOfMonth                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,fp,ir0,sp,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_GetDaysOfMonth:
	.sym	_nMonth,-2,4,9,32
	.sym	_nYear,-3,4,9,32
	.sym	_nDays,1,4,1,32
	.line	1
        push      fp
        ldiu      sp,fp
	.line	2
;----------------------------------------------------------------------
; 2065 | int GetDaysOfMonth( int nMonth, int nYear )
;     |  // ´ÞÀÇ ¸¶Áö¸· ÀÏÀÚ¸¦ ±¸ÇÏ´Â ºÎºÐ.                                    
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 2068 | int nDays = 0;                                                         
; 2070 | switch( nMonth )                                                       
; 2072 | case 1 :
;     |                                  // 31À» ¸¶Áö¸· ³¯´Þ                   
; 2073 | case 3 :                                                               
; 2074 | case 5 :                                                               
; 2075 | case 7 :                                                               
; 2076 | case 8 :                                                               
;----------------------------------------------------------------------
        bud       L637
        addi      1,sp
        ldiu      0,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L637 
L632:        
	.line	15
;----------------------------------------------------------------------
; 2077 | case 10 :                                                              
;----------------------------------------------------------------------
        ldiu      31,r0
        sti       r0,*+fp(1)
	.line	16
;----------------------------------------------------------------------
; 2078 | case 12 :                                                              
; 2079 |         nDays = 31;                                                    
;----------------------------------------------------------------------
        bu        L639
;*      Branch Occurs to L639 
L633:        
	.line	18
;----------------------------------------------------------------------
; 2080 | break;                                                                 
;----------------------------------------------------------------------
        ldiu      28,r0
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
; 2081 | case 2 :                                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        call      _IsLeapYear
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L639
;*      Branch Occurs to L639 
	.line	20
;----------------------------------------------------------------------
; 2082 | nDays = 28;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	21
;----------------------------------------------------------------------
; 2083 | if( IsLeapYear( nYear ) )
;     |          // À±³âÀ» °è»êÇÏ¿©, À±´ÞÀÏ °æ¿ì, +1                           
; 2084 |         nDays += 1;                                                    
; 2085 | break;                                                                 
; 2086 | case 4 :
;     |                                  // 30À» ¸¶Áö¸· ³¯´Þ                   
; 2087 | case 6 :                                                               
;----------------------------------------------------------------------
        bu        L639
;*      Branch Occurs to L639 
L635:        
	.line	26
;----------------------------------------------------------------------
; 2088 | case 9 :                                                               
;----------------------------------------------------------------------
        ldiu      30,r0
        sti       r0,*+fp(1)
	.line	27
;----------------------------------------------------------------------
; 2089 | case 11 :                                                              
; 2090 |         nDays = 30;                                                    
; 2091 |         break;                                                         
;----------------------------------------------------------------------
        bu        L639
;*      Branch Occurs to L639 
L637:        
	.line	6
        ldiu      1,r0
        ldiu      *-fp(2),ir0
        subri     ir0,r0
        cmpi      11,r0
        bhi       L639
;*      Branch Occurs to L639 
        subi      1,ir0
        ldiu      @CL79,ar0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW0:	.word	L632	; 1
	.word	L633	; 2
	.word	L632	; 3
	.word	L635	; 4
	.word	L632	; 5
	.word	L635	; 6
	.word	L632	; 7
	.word	L632	; 8
	.word	L635	; 9
	.word	L632	; 10
	.word	L635	; 11
	.word	L632	; 12
	.sect	".text"
;*      Branch Occurs to r0 
L639:        
	.line	30
        ldiu      *+fp(1),r0
	.line	31
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2093,000000000h,1


	.sect	 ".text"

	.global	_user_1msLoop
	.sym	_user_1msLoop,_user_1msLoop,32,2,0
	.func	2099
;******************************************************************************
;* FUNCTION NAME: _user_1msLoop                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,st                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_user_1msLoop:
	.line	1
;----------------------------------------------------------------------
; 2099 | //      1ms Loop                                                       
; 2100 | //*********************************************************************
;     | *********************                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 2101 | void user_1msLoop()                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nTxDbg1msTimer+0,r0 ; Unsigned
        sti       r0,@_m_nTxDbg1msTimer+0
	.line	4
        ldiu      1,r0
        addi      @_m_nUserDebug1msTimer+0,r0 ; Unsigned
        sti       r0,@_m_nUserDebug1msTimer+0
	.line	5
;----------------------------------------------------------------------
; 2103 | m_nTxDbg1msTimer++;                                                    
; 2104 | m_nUserDebug1msTimer++;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nSingleOrMarriedCarUpdate1msTimer+0,r0 ; Unsigned
        sti       r0,@_m_nSingleOrMarriedCarUpdate1msTimer+0
	.line	7
;----------------------------------------------------------------------
; 2105 | m_nSingleOrMarriedCarUpdate1msTimer++;                                 
;----------------------------------------------------------------------
        ldiu      100,r1
        ldiu      @_m_nUserDebug1msTimer+0,r0
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L645
;*      Branch Occurs to L645 
	.line	9
;----------------------------------------------------------------------
; 2107 | if(!(m_nUserDebug1msTimer%100)) //A¸¦ ¼öÁý ÇÏ°í 1ÃÊ ÀÖ´Ù°¡ B¸¦ ¼öÁý ÇÏ±
;     | â À§ÇÏ¿© ½Ã°£À» µô·¹ÀÌ ÇÑ´Ù.                                           
; 2109 |         if(m_nCDT_FaultDataStFlag) m_nCDT_FaultDataStFlag--;           
;----------------------------------------------------------------------
        ldi       @_m_nCDT_FaultDataStFlag+0,r0
        beq       L645
;*      Branch Occurs to L645 
        ldiu      1,r0
        subri     @_m_nCDT_FaultDataStFlag+0,r0
        sti       r0,@_m_nCDT_FaultDataStFlag+0
L645:        
	.line	12
        ldi       @_m_nUart1RxOneByteGapDelayTime+0,r0
        beq       L647
;*      Branch Occurs to L647 
        ldiu      1,r0
        subri     @_m_nUart1RxOneByteGapDelayTime+0,r0 ; Unsigned
        sti       r0,@_m_nUart1RxOneByteGapDelayTime+0
L647:        
	.line	13
        ldi       @_m_nUart2RxOneByteGapDelayTime+0,r0
        beq       L649
;*      Branch Occurs to L649 
        ldiu      1,r0
        subri     @_m_nUart2RxOneByteGapDelayTime+0,r0 ; Unsigned
        sti       r0,@_m_nUart2RxOneByteGapDelayTime+0
L649:        
	.line	14
;----------------------------------------------------------------------
; 2112 | if(m_nUart1RxOneByteGapDelayTime) m_nUart1RxOneByteGapDelayTime--;     
; 2113 | if(m_nUart2RxOneByteGapDelayTime) m_nUart2RxOneByteGapDelayTime--;     
;----------------------------------------------------------------------
        ldi       @_m_nUart3RxOneByteGapDelayTime+0,r0
        beq       L651
;*      Branch Occurs to L651 
        ldiu      1,r0
        subri     @_m_nUart3RxOneByteGapDelayTime+0,r0 ; Unsigned
        sti       r0,@_m_nUart3RxOneByteGapDelayTime+0
L651:        
	.line	16
;----------------------------------------------------------------------
; 2114 | if(m_nUart3RxOneByteGapDelayTime) m_nUart3RxOneByteGapDelayTime--;     
;----------------------------------------------------------------------
        ldi       @_m_nGiaRxCheck1msTimer+0,r0
        beq       L653
;*      Branch Occurs to L653 
        ldiu      1,r0
        subri     @_m_nGiaRxCheck1msTimer+0,r0 ; Unsigned
        sti       r0,@_m_nGiaRxCheck1msTimer+0
L653:        
	.line	17
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	2115,000000000h,0



	.global	_d_TimeTxBuf
	.bss	_d_TimeTxBuf,10
	.sym	_d_TimeTxBuf,_d_TimeTxBuf,52,2,320,,10

	.global	_m_tFaultInfo
	.bss	_m_tFaultInfo,6
	.sym	_m_tFaultInfo,_m_tFaultInfo,56,2,192,.fake48,2

	.global	_m_btExVersionTbl
	.bss	_m_btExVersionTbl,47
	.sym	_m_btExVersionTbl,_m_btExVersionTbl,61,2,1504,,47

	.global	_m_tmUtcTime
	.bss	_m_tmUtcTime,7
	.sym	_m_tmUtcTime,_m_tmUtcTime,8,2,224,.fake5

	.global	_m_btCommSt
	.bss	_m_btCommSt,7
	.sym	_m_btCommSt,_m_btCommSt,60,2,224,,7

	.global	_d_RxUnitStBuf
	.bss	_d_RxUnitStBuf,100
	.sym	_d_RxUnitStBuf,_d_RxUnitStBuf,60,2,3200,,100

	.global	_m_btExVersion_DAYTbl
	.bss	_m_btExVersion_DAYTbl,47
	.sym	_m_btExVersion_DAYTbl,_m_btExVersion_DAYTbl,61,2,1504,,47

	.global	_d_LonTxDataBuf
	.bss	_d_LonTxDataBuf,30
	.sym	_d_LonTxDataBuf,_d_LonTxDataBuf,52,2,960,,30

	.global	_m_bExVersionEnableTbl
	.bss	_m_bExVersionEnableTbl,47
	.sym	_m_bExVersionEnableTbl,_m_bExVersionEnableTbl,52,2,1504,,47

	.global	_mRackDi
	.bss	_mRackDi,1
	.sym	_mRackDi,_mRackDi,8,2,32,.fake44

	.global	_m_tmCurTime
	.bss	_m_tmCurTime,7
	.sym	_m_tmCurTime,_m_tmCurTime,8,2,224,.fake5
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"Lonwork Monitor Program, Version:%d.%d%d%d",13,10,0
SL2:	.byte	"->",13,10,0
SL3:	.byte	"T",0
SL4:	.byte	"Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour],%"
	.byte	"02X[minute],%02X[second] ",13,10,0
SL5:	.byte	"Not Date&time format ",13,10,0
SL6:	.byte	"t",0
SL7:	.byte	"V",0
SL8:	.byte	"LIC-MPU Version:%d.%d%d%d,Build Date:20%06d, LIC-LON Versio"
	.byte	"n:%d.%d%d%d,Build Date:%08X",13,10,0
SL9:	.byte	"---",0
SL10:	.byte	13,10,0
SL11:	.byte	"Recent",0
SL12:	.byte	"Recent fault read start send ",13,10,0
SL13:	.byte	"Historical",0
SL14:	.byte	"Historical read start send, Historical start time : %08XH, "
	.byte	"Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour],%"
	.byte	"02X[minute],%02X[second] ",13,10,0
SL15:	.byte	"Rxinfo",0
SL16:	.byte	"Total byte : %d, Packet count : %d, window count : %d, rema"
	.byte	"ind packet : %d, m_nLnWkWaySideOnRxOk : %d, m_bLnWkFtpEndFl"
	.byte	"ag : %d, Historical start time : %08XH ",13,10,0
SL17:	.byte	"LnWayClr",0
SL18:	.byte	"'m_nLnWkWaySideOnRxOk' Clear OK ",13,10,0
SL19:	.byte	"LnFtpClr",0
SL20:	.byte	"'m_bLnWkFtpEndFlag' Clear OK ",13,10,0
SL21:	.byte	"HisStTm",0
SL22:	.byte	"Date&Time : 20%02X[year],%02X[month],%02X[day],%02X[hour],%"
	.byte	"02X[minute],%02X[second], Setting OK ",13,10,0
SL23:	.byte	"No format ",13,10,0
SL24:	.byte	"ViewCarNo",0
SL25:	.byte	"Car number 0 : %d, Car number 1 : %d ",13,10,0
SL26:	.byte	"CarNoClr",0
SL27:	.byte	"Car number clear OK ",13,10,0
SL28:	.byte	"?",0
SL29:	.byte	"[ENTER]      : Move next line after out '->' ",13,10,0
SL30:	.byte	"'?'          : Help ",13,10,0
SL31:	.byte	"'T'          : Date&time setting , 'TYYMMDDHHMNSS', 'EX)T10"
	.byte	"0312154200' ",13,10,0
SL32:	.byte	"'t'          : Date&time read ",13,10,0
SL33:	.byte	"'V'          : Version ",13,10,0
SL34:	.byte	"'Recent'     : Recently faults start ",13,10,0
SL35:	.byte	"'Historical' : Historical data start ",13,10,0
SL36:	.byte	"'Rxinfo'     : Recieve info ",13,10,0
SL37:	.byte	"'LnWayClr'   : 'm_nLnWkWaySideOnRxOk' variable clear ",13,10
	.byte	0
SL38:	.byte	"'LnFtpClr'   : 'm_bLnWkFtpEndFlag' variable clear ",13,10,0
SL39:	.byte	"'HisStTm'    : Historical data start time set(2000/1/1 0:0:"
	.byte	"0 ~ total second), HisStTmxxxxxxxx, 'EX)HisStTm0000000F' ",13
	.byte	10,0
SL40:	.byte	"'ViewCarNo'  : View car number ",13,10,0
SL41:	.byte	"'CarNoClr'   : Car number clear ",13,10,0
SL42:	.byte	"Syntax error",13,10,0
SL43:	.byte	"%02X ",0
SL44:	.byte	"[%d,%3d,%c]",0
SL45:	.byte	"%02X",0
SL46:	.byte	"..",0
SL47:	.byte	"***FTP File receive end ^^;***",13,10,0
SL48:	.byte	"[RX:%02d] ",0
SL49:	.byte	"[TX:%02d] ",0
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

	.sect	".cinit"
	.field  	79,32
	.field  	CL1+0,32
	.field  	11534336,32
	.field  	16776716,32
	.field  	_m_btCommSt,32
	.field  	_m_btExVersionTbl,32
	.field  	_m_btExVersion_DAYTbl,32
	.field  	_m_bExVersionEnableTbl,32
	.field  	65535,32
	.field  	100000,32
	.field  	536870912,32
	.field  	SL1,32
	.field  	16777215,32
	.field  	11534336,32
	.field  	_btRxBuf$3,32
	.field  	SL2,32
	.field  	SL3,32
	.field  	SL4,32
	.field  	SL5,32
	.field  	SL6,32
	.field  	SL7,32
	.field  	SL8,32
	.field  	_LIC_VerList,32
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
	.field  	SL35,32
	.field  	SL36,32
	.field  	SL37,32
	.field  	SL38,32
	.field  	SL39,32
	.field  	SL40,32
	.field  	SL41,32
	.field  	SL42,32
	.field  	12582912,32
	.field  	SL43,32
	.field  	-1,32
	.field  	_btFtpOneRecRxBuf$6,32
	.field  	SL44,32
	.field  	SL45,32
	.field  	SL46,32
	.field  	SL47,32
	.field  	SL48,32
	.field  	_d_TimeTxBuf,32
	.field  	SL49,32
	.field  	_d_LonTxDataBuf,32
	.field  	10485760,32
	.field  	_btRx2chBuf$9,32
	.field  	12582912,32
	.field  	-25,32
	.field  	_btTx2chBuf$10,32
	.field  	_m_tFaultInfo,32
	.field  	_btRx3chBuf$14,32
	.field  	_d_RxUnitStBuf,32
	.field  	_m_tmUtcTime,32
	.field  	_m_tmCurTime,32
	.field  	-30,32
	.field  	SW0,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_memset

	.global	_strcat

	.global	_strcmp

	.global	_strlen

	.global	_strncpy

	.global	_IsNumAsc

	.global	_ConvAsc2Dec

	.global	_ConvHex2Asc

	.global	_ConvAsc2Hex

	.global	_GetFirmwareVersion

	.global	_Make1ByteBcc

	.global	_gm_SysTimeToRtc

	.global	_FunConvAscHex

	.global	_FunConvHexAsc

	.global	_xr16l784_GetRxBuffer1Ch

	.global	_xr16l784_GetRxBuffer2Ch

	.global	_xr16l784_GetRxBuffer3Ch

	.global	_xr16l784_Send

	.global	_xr16l784_RtsDelayStartSend
	.global	MOD_I30
	.global	DIV_I30
	.global	_sprintf
	.global	_memcpy
	.global	DIV_U30
	.global	MOD_U30
	.global	_ConvDec2Hex
