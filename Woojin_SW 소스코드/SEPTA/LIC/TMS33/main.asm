;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue Jan 22 10:53:09 2013                                *
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
	.file	"stdio.h"
	.sym	_size_t,0,14,13,32
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
	.file	"string.h"
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
	.file	"xr16l784.h"
	.utag	.fake3,32
	.member	_btRxd,0,12,11,32
	.member	_btTxd,0,12,11,32
	.member	_btDll,0,12,11,32
	.eos
	.utag	.fake4,32
	.member	_btDlm,0,12,11,32
	.member	_btIer,0,12,11,32
	.eos
	.utag	.fake5,32
	.member	_btIir,0,12,11,32
	.member	_btFcr,0,12,11,32
	.eos
	.stag	.fake2,512
	.member	_CREG1,0,9,8,32,.fake3
	.member	_CREG2,32,9,8,32,.fake4
	.member	_CREG3,64,9,8,32,.fake5
	.member	_btLcr,96,12,8,32
	.member	_btMcr,128,12,8,32
	.member	_btLsr,160,12,8,32
	.member	_btMsr_U,192,12,8,32
	.member	_btScr,224,12,8,32
	.member	_btSp,256,60,8,256,,8
	.eos
	.sym	_XR16L784ST,0,8,13,512,.fake2
	.sym	_PXR16L784ST,0,24,13,32,.fake2
	.stag	.fake6,2048
	.member	_xr16Reg,0,56,8,2048,.fake2,4
	.eos
	.sym	_XR16L784BDY,0,8,13,2048,.fake6
	.sym	_PXR16L784BDY,0,24,13,32,.fake6
	.file	"ds1647.h"
	.stag	.fake8,32
	.member	_R,6,4,18,1
	.member	_W,7,4,18,1
	.eos
	.stag	.fake9,32
	.member	_Sec,0,4,18,7
	.member	_Osc,7,4,18,1
	.eos
	.stag	.fake10,32
	.member	_Day,0,4,18,3
	.member	_SPare2,3,4,18,3
	.member	_FT,6,4,18,1
	.member	_Spare1,7,4,18,1
	.eos
	.utag	.fake7,32
	.member	_CtrlBit,0,8,11,32,.fake8
	.member	_SecBit,0,8,11,32,.fake9
	.member	_DayBit,0,8,11,32,.fake10
	.member	_B8,0,12,11,32
	.eos
	.sym	_DS1647ONELTP,0,9,13,32,.fake7
	.sym	_PDS1647ONELTP,0,25,13,32,.fake7
	.stag	.fake11,256
	.member	_Ctrl,0,9,8,32,.fake7
	.member	_Second,32,9,8,32,.fake7
	.member	_Minute,64,9,8,32,.fake7
	.member	_Hour,96,9,8,32,.fake7
	.member	_Day,128,9,8,32,.fake7
	.member	_Date,160,9,8,32,.fake7
	.member	_Month,192,9,8,32,.fake7
	.member	_Year,224,9,8,32,.fake7
	.eos
	.sym	_DS1647BDY,0,8,13,256,.fake11
	.sym	_PDS1647BDY,0,24,13,32,.fake11
	.stag	.fake12,224
	.member	_second,0,12,8,32
	.member	_minute,32,12,8,32
	.member	_hour,64,12,8,32
	.member	_day,96,12,8,32
	.member	_month,128,12,8,32
	.member	_year,160,12,8,32
	.member	_weekday,192,12,8,32
	.eos
	.sym	_DATE_TIME_TYPE,0,8,13,224,.fake12
	.sym	_DATE_TIME_PTR,0,24,13,32,.fake12
	.file	"main.h"
	.file	"user.h"
	.stag	.fake13,4352
	.member	_btStx,0,12,8,32
	.member	_btCmd,32,12,8,32
	.member	_btZero,64,12,8,32
	.member	_btLen,96,12,8,32
	.member	_btDat,128,60,8,4192,,131
	.member	_btSp,4320,12,8,32
	.eos
	.sym	_LNWKFTPIT,0,8,13,4352,.fake13
	.sym	_PLNWKFTPIT,0,24,13,32,.fake13
	.stag	.fake14,2048
	.member	_btStx,0,12,8,32
	.member	_btCmd,32,12,8,32
	.member	_btZero,64,12,8,32
	.member	_btLen,96,12,8,32
	.member	_btDat,128,60,8,1856,,58
	.member	_btSp,1984,60,8,64,,2
	.eos
	.sym	_LNWKGERIT,0,8,13,2048,.fake14
	.sym	_PLNWKGERIT,0,24,13,32,.fake14
	.stag	.fake15,30464
	.member	_btKind,0,12,8,32
	.member	_btVerH,32,12,8,32
	.member	_btVerL,64,12,8,32
	.member	_btBuildDateHH,96,12,8,32
	.member	_btBuildDateHL,128,12,8,32
	.member	_btBuildDateLH,160,12,8,32
	.member	_btBuildDateLL,192,12,8,32
	.member	_btSpare,224,12,8,32
	.member	_lfBuf,256,56,8,26112,.fake13,6
	.member	_lgRxBuf,26368,8,8,2048,.fake14
	.member	_lgTxBuf,28416,8,8,2048,.fake14
	.eos
	.sym	_LNWKDP,0,8,13,30464,.fake15
	.sym	_PLNWKDP,0,24,13,32,.fake15
	.stag	.fake16,352
	.member	_btSoh,0,12,8,32
	.member	_chSrcDev,32,60,8,64,,2
	.member	_chDestDev,96,60,8,64,,2
	.member	_chMsgCnt,160,60,8,64,,2
	.member	_chCmdCode,224,60,8,64,,2
	.member	_chDataLen,288,60,8,64,,2
	.eos
	.sym	_PTCHD,0,8,13,352,.fake16
	.sym	_PPTCHD,0,24,13,32,.fake16
	.stag	.fake17,768
	.member	_chPacT,0,60,8,64,,2
	.member	_chCcpM,64,60,8,64,,2
	.member	_chCncsT,128,60,8,64,,2
	.member	_chD0,192,60,8,64,,2
	.member	_chD1,256,60,8,64,,2
	.member	_chTran,320,252,8,192,,3,2
	.member	_chCid,512,252,8,192,,3,2
	.member	_chDs,704,60,8,64,,2
	.eos
	.sym	_PROTOCOL_1,0,8,13,768,.fake17
	.stag	.fake18,1472
	.member	_phHdBuf,0,8,8,352,.fake16
	.member	_chProtocol,352,8,8,768,.fake17
	.member	_chCarN,1120,252,8,128,,2,2
	.member	_chSpare,1248,252,8,128,,2,2
	.member	_chChkSum,1376,60,8,64,,2
	.member	_btEot,1440,12,8,32
	.eos
	.sym	_PACSDR,0,8,13,1472,.fake18
	.sym	_PPACSDR,0,24,13,32,.fake18
	.stag	.fake19,3136
	.member	_phHdBuf,0,8,8,352,.fake16
	.member	_chProtocol,352,8,8,768,.fake17
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
	.sym	_PAC_PAC,0,8,13,3136,.fake19
	.sym	_PPAC_PAC,0,24,13,32,.fake19
	.stag	.fake20,1536
	.member	_phHdBuf,0,8,8,352,.fake16
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
	.sym	_LICSD,0,8,13,1536,.fake20
	.sym	_PLICSDR,0,24,13,32,.fake20
	.stag	.fake21,480
	.member	_btSoh,0,12,8,32
	.member	_chSrcDev,32,60,8,64,,2
	.member	_chDestDev,96,60,8,64,,2
	.member	_chMsgCnt,160,60,8,128,,4
	.member	_chCmdCode,288,60,8,64,,2
	.member	_chDataLen,352,60,8,128,,4
	.eos
	.sym	_CNCSHD,0,8,13,480,.fake21
	.sym	_PCNCSHD,0,24,13,32,.fake21
	.stag	.fake22,10208
	.member	_phHdBuf,0,8,8,480,.fake21
	.member	_sCommand,480,60,8,64,,2
	.member	_sCarKind,544,60,8,64,,2
	.member	_sTextDataAsc,608,60,8,9600,,300
	.eos
	.sym	_LIC_CNCS_HD,0,8,13,10208,.fake22
	.sym	_PLIC_CNCS_HD,0,24,13,32,.fake22
	.stag	.fake23,320
	.member	_chVer,0,50,8,128,,4
	.member	_chBuildDate,128,50,8,192,,6
	.eos
	.sym	_CNCS_LIC_VERBDD_SD,0,8,13,320,.fake23
	.sym	_PCNCS_LIC_VERBDD_SD,0,24,13,32,.fake23
	.stag	.fake24,13856
	.member	_VerCnt,0,13,8,32
	.member	_cvbBuf,32,56,8,13760,.fake23,43
	.member	_CarNum,13792,61,8,64,,2
	.eos
	.sym	_LIC_DPRAM_Ver,0,8,13,13856,.fake24
	.sym	_PLIC_DPRAM_Ver,0,24,13,32,.fake24
	.stag	.fake25,4096
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
	.sym	_LIC_VER_LIST,0,8,13,4096,.fake25
	.sym	_PLIC_VER_LIST,0,24,13,32,.fake25
	.stag	.fake26,15168
	.member	_phHdBuf,0,8,8,480,.fake21
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
	.member	_cvbBuf,1312,56,8,13760,.fake23,43
	.member	_chChkSum,15072,60,8,64,,2
	.member	_btEot,15136,12,8,32
	.eos
	.sym	_CNCS_LIC_SD,0,8,13,15168,.fake26
	.sym	_PCNCS_LIC_SD,0,24,13,32,.fake26
	.stag	.fake27,832
	.member	_phHdBuf,0,8,8,480,.fake21
	.member	_sCommand,480,60,8,64,,2
	.member	_sTEXT,544,60,8,128,,4
	.member	_chContactSignalBuf,672,60,8,64,,2
	.member	_chChkSum,736,60,8,64,,2
	.member	_btEot,800,12,8,32
	.eos
	.sym	_CNCS_LIC_T_F,0,8,13,832,.fake27
	.sym	_PCNCS_LIC_T_F,0,24,13,32,.fake27
	.stag	.fake28,768
	.member	_phHdBuf,0,8,8,480,.fake21
	.member	_sCommand,480,60,8,64,,2
	.member	_sTEXT,544,60,8,128,,4
	.member	_chChkSum,672,60,8,64,,2
	.member	_btEot,736,12,8,32
	.eos
	.sym	_CNCS_LIC_T_F_C,0,8,13,768,.fake28
	.sym	_PCNCS_LIC_T_F_C,0,24,13,32,.fake28
	.stag	.fake29,96
	.member	_sChSum,0,60,8,64,,2
	.member	_sETX,64,12,8,32
	.eos
	.sym	_LIC_CNCS_ED,0,8,13,96,.fake29
	.sym	_PLIC_CNCS_ED,0,24,13,32,.fake29
	.stag	.fake31,32
	.member	_n1VTX,0,14,18,1
	.member	_n2CNCS,1,14,18,1
	.member	_n3PAC2,2,14,18,1
	.member	_n4LIC,3,14,18,1
	.member	_n5WLAN,4,14,18,1
	.member	_n6GPS,5,14,18,1
	.member	_n7PAC1,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake32,32
	.member	_n1DPO1,0,14,18,1
	.member	_n2DPO2,1,14,18,1
	.member	_n3CCP1,2,14,18,1
	.member	_n4CCP2,3,14,18,1
	.member	_n5TRIC1,4,14,18,1
	.member	_n6TRIC2,5,14,18,1
	.member	_n7TR1,6,14,18,1
	.member	_n8TR2,7,14,18,1
	.eos
	.stag	.fake33,32
	.member	_n1Sp,0,14,18,1
	.member	_n2Sp,1,14,18,1
	.member	_n3CPO1,2,14,18,1
	.member	_n4CPO2,3,14,18,1
	.member	_n5CPO3,4,14,18,1
	.member	_n6CPO4,5,14,18,1
	.member	_n7Sp,6,14,18,1
	.member	_n8Sp,7,14,18,1
	.eos
	.stag	.fake34,32
	.member	_n1PEI1,0,14,18,1
	.member	_n2PEI2,1,14,18,1
	.member	_n3PEI3,2,14,18,1
	.member	_n4PEI4,3,14,18,1
	.member	_n5PEI5,4,14,18,1
	.member	_n6PEI6,5,14,18,1
	.member	_n7FDI1,6,14,18,1
	.member	_n8FDI2,7,14,18,1
	.eos
	.stag	.fake35,32
	.member	_n1SDI1,0,14,18,1
	.member	_n2SDI2,1,14,18,1
	.member	_n3SDI3,2,14,18,1
	.member	_n4SDI4,3,14,18,1
	.member	_n5SDI5,4,14,18,1
	.member	_n6SDI6,5,14,18,1
	.member	_n7SDI7,6,14,18,1
	.member	_n8SDI8,7,14,18,1
	.eos
	.stag	.fake36,32
	.member	_n1PID1_1,0,14,18,1
	.member	_n2PID1_2,1,14,18,1
	.member	_n3PID1_3,2,14,18,1
	.member	_n4PID1_4,3,14,18,1
	.member	_n5PID1_5,4,14,18,1
	.member	_n6PID1_6,5,14,18,1
	.member	_n7PID1_7,6,14,18,1
	.member	_n8PID1_8,7,14,18,1
	.eos
	.stag	.fake37,32
	.member	_n1PID2_1,0,14,18,1
	.member	_n2PID2_2,1,14,18,1
	.member	_n3PID2_3,2,14,18,1
	.member	_n4PID2_4,3,14,18,1
	.member	_n5PII1,4,14,18,1
	.member	_n6PII2,5,14,18,1
	.member	_n7PII3,6,14,18,1
	.member	_n8PII4,7,14,18,1
	.eos
	.stag	.fake30,256
	.member	_BYTE_1,0,8,8,32,.fake31
	.member	_BYTE_2,32,8,8,32,.fake32
	.member	_BYTE_3,64,8,8,32,.fake33
	.member	_BYTE_4,96,8,8,32,.fake34
	.member	_BYTE_5,128,12,8,32
	.member	_BYTE_6,160,8,8,32,.fake35
	.member	_BYTE_7,192,8,8,32,.fake36
	.member	_BYTE_8,224,8,8,32,.fake37
	.eos
	.sym	_COMMSTATUS_PA,0,8,13,256,.fake30
	.sym	_PCOMMSTATUS_PA,0,24,13,32,.fake30
	.stag	.fake39,32
	.member	_n1LIC,0,14,18,1
	.member	_n2WLR,1,14,18,1
	.member	_n3GIA,2,14,18,1
	.member	_n4PID,3,14,18,1
	.member	_n5AVL,4,14,18,1
	.member	_n6PAC2,5,14,18,1
	.member	_n7PAC1,6,14,18,1
	.member	_n8TRIC1,7,14,18,1
	.eos
	.stag	.fake40,32
	.member	_n1TRIC2,0,14,18,1
	.member	_n2TMP1,1,14,18,1
	.member	_n3TMP2,2,14,18,1
	.member	_n4CCP1,3,14,18,1
	.member	_n5CCP2,4,14,18,1
	.member	_n6PII1,5,14,18,1
	.member	_n7PII2,6,14,18,1
	.member	_n8PII3,7,14,18,1
	.eos
	.stag	.fake41,32
	.member	_n1PII4,0,14,18,1
	.member	_n2FDI1,1,14,18,1
	.member	_n3FDI2,2,14,18,1
	.member	_n4SDI1,3,14,18,1
	.member	_n5SDI2,4,14,18,1
	.member	_n6SDI3,5,14,18,1
	.member	_n7SDI4,6,14,18,1
	.member	_n8SDI5,7,14,18,1
	.eos
	.stag	.fake42,32
	.member	_n1SDI6,0,14,18,1
	.member	_n2SDI7,1,14,18,1
	.member	_n3SDI8,2,14,18,1
	.member	_n4PID1_1,3,14,18,1
	.member	_n5PID1_2,4,14,18,1
	.member	_n6PID1_3,5,14,18,1
	.member	_n7PID1_4,6,14,18,1
	.member	_n8PID1_5,7,14,18,1
	.eos
	.stag	.fake43,32
	.member	_n1PID1_6,0,14,18,1
	.member	_n2PID1_7,1,14,18,1
	.member	_n3PID1_8,2,14,18,1
	.member	_n4PID2_1,3,14,18,1
	.member	_n5PID2_2,4,14,18,1
	.member	_n6PID2_3,5,14,18,1
	.member	_n7PID2_4,6,14,18,1
	.member	_n8DPO1,7,14,18,1
	.eos
	.stag	.fake44,32
	.member	_n1DPO2,0,14,18,1
	.member	_n2CPO1,1,14,18,1
	.member	_n3CPO2,2,14,18,1
	.member	_n4CPO3,3,14,18,1
	.member	_n5CPO4,4,14,18,1
	.member	_n6PEI1,5,14,18,1
	.member	_n7PEI2,6,14,18,1
	.member	_n8PEI3,7,14,18,1
	.eos
	.stag	.fake45,32
	.member	_n1PEI4,0,14,18,1
	.member	_n2PEI5,1,14,18,1
	.member	_n3PEI6,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake38,224
	.member	_BYTE_1,0,8,8,32,.fake39
	.member	_BYTE_2,32,8,8,32,.fake40
	.member	_BYTE_3,64,8,8,32,.fake41
	.member	_BYTE_4,96,8,8,32,.fake42
	.member	_BYTE_5,128,8,8,32,.fake43
	.member	_BYTE_6,160,8,8,32,.fake44
	.member	_BYTE_7,192,8,8,32,.fake45
	.eos
	.sym	_COMMSTATUS_LIC,0,8,13,224,.fake38
	.sym	_PCOMMSTATUS_LIC,0,24,13,32,.fake38
	.stag	.fake48,32
	.member	_n1Reverse,0,14,18,1
	.member	_n2ForWard,1,14,18,1
	.member	_n3Uncouple,2,14,18,1
	.member	_n4Simulation,3,14,18,1
	.member	_n5Pattern,4,14,18,1
	.member	_n6A_CabOn,5,14,18,1
	.member	_n7B_CabOn,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake47,32
	.member	_BYTE,0,12,11,32
	.member	_BIT,0,8,11,32,.fake48
	.eos
	.stag	.fake46,32
	.member	_n1DATA,0,9,8,32,.fake47
	.eos
	.sym	_RACK_DI,0,8,13,32,.fake46
	.sym	_PRACK_DI,0,24,13,32,.fake46
	.stag	.fake49,1920
	.member	_phHdBuf,0,8,8,352,.fake16
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
	.sym	_GIA_PAC,0,8,13,1920,.fake49
	.sym	_PGIA_PAC,0,24,13,32,.fake49
	.etag	_eCDT_TYPE,32
	.member	_eCDT_A,0,4,16,32
	.member	_eCDT_B,1,4,16,32
	.member	_eCDT_MAXIMUM,2,4,16,32
	.eos
	.stag	.fake50,96
	.member	_nTCnt,0,4,8,32
	.member	_nStPosi,32,4,8,32
	.member	_nEdPosi,64,4,8,32
	.eos
	.sym	_T_FAULT_INFO,0,8,13,96,.fake50
	.sym	_PFAULT_INFO,0,24,13,32,.fake50
	.file	"main.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nDebug1msTimer+0,32
	.field  	0,32		; _m_nDebug1msTimer @ 0

	.sect	".text"

	.global	_m_nDebug1msTimer
	.bss	_m_nDebug1msTimer,1
	.sym	_m_nDebug1msTimer,_m_nDebug1msTimer,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nDebugCnt+0,32
	.field  	0,32		; _m_nDebugCnt @ 0

	.sect	".text"

	.global	_m_nDebugCnt
	.bss	_m_nDebugCnt,1
	.sym	_m_nDebugCnt,_m_nDebugCnt,4,2,32

	.sect	".cinit"
	.field  	IR_1,32
	.field  	_m_pBoardIdInfo+0,32
	.field  	SL1,32		; _m_pBoardIdInfo[0] @ 0
	.field  	SL2,32		; _m_pBoardIdInfo[1] @ 32
	.field  	SL3,32		; _m_pBoardIdInfo[2] @ 64
	.field  	0,32		; _m_pBoardIdInfo[3] @ 96
IR_1:	.set	4

	.sect	".text"

	.global	_m_pBoardIdInfo
	.bss	_m_pBoardIdInfo,4
	.sym	_m_pBoardIdInfo,_m_pBoardIdInfo,114,2,128,,4
	.sect	 ".text"

	.global	_main
	.sym	_main,_main,32,2,0
	.func	62
;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,sp,st,rs                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_main:
	.sym	_i,1,4,1,32
	.sym	_tmBuf,2,8,1,224,.fake12
	.line	1
;----------------------------------------------------------------------
;  62 | void main(void)                                                        
;  64 | int i;                                                                 
;  65 | DATE_TIME_TYPE tmBuf;                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	6
;----------------------------------------------------------------------
;  67 | DINT;                                                                  
;----------------------------------------------------------------------
	AND	0DFFFh, ST	
	.line	7
;----------------------------------------------------------------------
;  68 | WDI_ACT;                                                               
;----------------------------------------------------------------------
        ldiu      8192,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
;  69 | DspInit();                                                             
;----------------------------------------------------------------------
        call      _DspInit
                                        ; Call Occurs
	.line	9
;----------------------------------------------------------------------
;  70 | Debug3xInit(TMS320C31);                                                
;----------------------------------------------------------------------
        ldiu      31,r0
        push      r0
        call      _Debug3xInit
                                        ; Call Occurs
        subi      1,sp
	.line	10
;----------------------------------------------------------------------
;  71 | XR16L784_TXDIS(XR16L784_1CHL);                                         
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      0,r0
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	11
;----------------------------------------------------------------------
;  72 | XR16L784_TXDIS(XR16L784_2CHL);                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	12
;----------------------------------------------------------------------
;  73 | XR16L784_TXDIS(XR16L784_3CHL);                                         
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	13
;----------------------------------------------------------------------
;  74 | XR16L784_TXDIS(XR16L784_4CHL);                                         
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      3,r0
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	14
;----------------------------------------------------------------------
;  75 | xr16l784_Init(XR16L784_1CHL,38400,XR16L784_DATA8,XR16L784_NONEPARITY,XR
;     | 16L784_1STOPBIT); // 디버그용                                          
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      0,r0
        ldiu      3,rs
        push      r0
        push      rs
        ldiu      @CL1,r2
        ldiu      0,r3
        push      r2
        push      r3
        call      _xr16l784_Init
                                        ; Call Occurs
        subi      5,sp
	.line	16
;----------------------------------------------------------------------
;  77 | xr16l784_Init(XR16L784_2CHL,38400,XR16L784_DATA8,XR16L784_NONEPARITY,XR
;     | 16L784_1STOPBIT); // LIC <-> CNCS                                      
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      0,r2
        push      r2
        push      r3
        ldiu      3,rs
        ldiu      @CL1,r0
        push      rs
        push      r0
        ldiu      1,r1
        push      r1
        call      _xr16l784_Init
                                        ; Call Occurs
        subi      5,sp
	.line	18
;----------------------------------------------------------------------
;  79 | xr16l784_Init(XR16L784_3CHL,19200,XR16L784_DATA8,XR16L784_NONEPARITY,XR
;     | 16L784_1STOPBIT); // LIC <-> PAC                                       
;----------------------------------------------------------------------
        ldiu      0,r2
        ldiu      0,r3
        push      r2
        push      r3
        ldiu      3,rs
        push      rs
        ldiu      19200,r0
        push      r0
        ldiu      2,r1
        push      r1
        call      _xr16l784_Init
                                        ; Call Occurs
        subi      5,sp
	.line	19
;----------------------------------------------------------------------
;  80 | xr16l784_Init(XR16L784_4CHL,19200,XR16L784_DATA8,XR16L784_NONEPARITY,XR
;     | 16L784_1STOPBIT); // LIC <-> PAC                                       
;  81 | //timeStart();                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      0,r1
        push      r0
        push      r1
        ldiu      3,r2
        push      r2
        ldiu      19200,r3
        push      r3
        ldiu      3,rs
        push      rs
        call      _xr16l784_Init
                                        ; Call Occurs
        subi      5,sp
	.line	21
;----------------------------------------------------------------------
;  82 | EINT;                                                                  
;----------------------------------------------------------------------
	OR	02000h, ST	
	.line	22
;----------------------------------------------------------------------
;  83 | user_Init();                                                           
;  95 | while(1)                                                               
;----------------------------------------------------------------------
        call      _user_Init
                                        ; Call Occurs
L2:        
	.line	36
;----------------------------------------------------------------------
;  97 | user_Loop();                                                           
;----------------------------------------------------------------------
        call      _user_Loop
                                        ; Call Occurs
	.line	37
;----------------------------------------------------------------------
;  98 | xr16l784_Loop();                                                       
;----------------------------------------------------------------------
        call      _xr16l784_Loop
                                        ; Call Occurs
	.line	39
;----------------------------------------------------------------------
; 100 | if(!XR16L784_INT_ST) xr16l784_Isr();                                   
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      1,r0
        tstb3     *ar0,r0
        calleq    _xr16l784_Isr
                                        ; Call Occurs
	.line	41
;----------------------------------------------------------------------
; 102 | if(m_nDebug1msTimer > 500)                                             
;----------------------------------------------------------------------
        ldiu      @_m_nDebug1msTimer+0,r0
        cmpi      500,r0
        bls       L4
;*      Branch Occurs to L4 
	.line	43
;----------------------------------------------------------------------
; 104 | m_nDebug1msTimer = 0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nDebug1msTimer+0
L4:        
	.line	46
;----------------------------------------------------------------------
; 107 | m_nDebugCnt++;                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nDebugCnt+0,r0
        sti       r0,@_m_nDebugCnt+0
	.line	47
        bu        L2
;*      Branch Occurs to L2 
	.line	48
	.endfunc	109,000000000h,8


	.sect	 ".text"

	.global	_DspInit
	.sym	_DspInit,_DspInit,32,2,0
	.func	115
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
; 115 | void DspInit(void)                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 117 | PRIMBUSREG = 0x10A8;                                                   
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      4264,r0
        sti       r0,*ar0
	.line	4
;----------------------------------------------------------------------
; 118 | EN_CACHE;                                                              
; 120 | // Timer 0                                                             
;----------------------------------------------------------------------
   OR	00800h, ST	
	.line	7
;----------------------------------------------------------------------
; 121 | TMR0_CTRL = 0x2c0 ; // 내부 클럭                                       
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      704,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 122 | TMR0_PERD = 25000; // 100,000,000MHz / 4 / 25000(x) = 1000Hz(1000us)   
;----------------------------------------------------------------------
        ldiu      @CL5,ar0
        ldiu      25000,r0
        sti       r0,*ar0
	.line	10
;----------------------------------------------------------------------
; 124 | INT0_VECT                       = OP_BR | (int)c_int01; // Ext Int 0
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      @CL7,r0
        ldiu      @CL6,ar0
        or        @CL8,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 125 | INT1_VECT                       = OP_BR | (int)c_int02; // Ext Int 1
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      @CL7,r0
        ldiu      @CL9,ar0
        or        @CL10,r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 126 | TINT0_VECT                      = OP_BR | (int)c_int10; // Timer 0
;     |                                                                        
; 128 | //EI_INT0;                                                             
;----------------------------------------------------------------------
        ldiu      @CL7,r0
        ldiu      @CL11,ar0
        or        @CL12,r0
        sti       r0,*ar0
	.line	15
;----------------------------------------------------------------------
; 129 | EI_INT1;                                                               
;----------------------------------------------------------------------
	OR	00002h, IE	
	.line	16
;----------------------------------------------------------------------
; 130 | EI_TINT0;                                                              
; 132 | // XF0, XF1 출력 모드                                                  
;----------------------------------------------------------------------
 OR        00100h, IE 
	.line	19
;----------------------------------------------------------------------
; 133 | asm(" LDI 0066h,IOF");                                                 
;----------------------------------------------------------------------
 LDI 0066h,IOF
	.line	21
;----------------------------------------------------------------------
; 135 | BOOT2INT;                                                              
;----------------------------------------------------------------------
        ldiu      @CL13,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	22
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      2,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	136,000000000h,0


	.sect	 ".text"

	.global	_ConvAsc2Hex
	.sym	_ConvAsc2Hex,_ConvAsc2Hex,44,2,0
	.func	142
;******************************************************************************
;* FUNCTION NAME: _ConvAsc2Hex                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_ConvAsc2Hex:
	.sym	_chDat,-2,2,9,32
	.sym	_nBuf,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 142 | UCHAR ConvAsc2Hex(char chDat)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 144 | int nBuf = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 145 | if(chDat >= '0' && chDat <= '9') nBuf = chDat-'0';                     
; 146 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      48,r0
        blt       L13
;*      Branch Occurs to L13 
        cmpi      57,r0
        bgt       L13
;*      Branch Occurs to L13 
        ldiu      48,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
        bu        L19
;*      Branch Occurs to L19 
L13:        
	.line	6
;----------------------------------------------------------------------
; 147 | if(chDat >= 'a' && chDat <= 'f') nBuf = ((chDat-'a') + 10);
;     |                                                                        
; 148 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      97,r0
        blt       L16
;*      Branch Occurs to L16 
        cmpi      102,r0
        bgt       L16
;*      Branch Occurs to L16 
        ldiu      87,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
        bu        L19
;*      Branch Occurs to L19 
L16:        
	.line	8
;----------------------------------------------------------------------
; 149 | if(chDat >= 'A' && chDat <= 'F') nBuf = ((chDat-'A') + 10);            
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      65,r0
        blt       L19
;*      Branch Occurs to L19 
        cmpi      70,r0
        bgt       L19
;*      Branch Occurs to L19 
        ldiu      55,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
L19:        
	.line	10
;----------------------------------------------------------------------
; 151 | return nBuf;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	11
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	152,000000000h,1


	.sect	 ".text"

	.global	_FunConvAscHex
	.sym	_FunConvAscHex,_FunConvAscHex,36,2,0
	.func	157
;******************************************************************************
;* FUNCTION NAME: _FunConvAscHex                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r4,ar0,fp,ar4,ir0,sp,st                          *
;*   Regs Saved         : r4,ar4                                              *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 2 Auto + 2 SOE = 9 words          *
;******************************************************************************
_FunConvAscHex:
	.sym	_InchData,-2,18,9,32
	.sym	_OuthexData,-3,28,9,32
	.sym	_Len,-4,4,9,32
	.sym	_i,1,4,1,32
	.sym	_sCnt,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 157 | int FunConvAscHex(char *InchData,UCHAR *OuthexData,int Len)            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
        push      r4
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 159 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 160 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 161 | for(i=0;i<Len; )                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      *-fp(4),r0
        bge       L24
;*      Branch Occurs to L24 
L23:        
	.line	7
;----------------------------------------------------------------------
; 163 | OuthexData[sCnt] = (ConvAsc2Hex(InchData[i++])<<4)&0xF0;               
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ar0
        ldiu      *-fp(2),ir0
        addi      ar0,r0
        sti       r0,*+fp(1)
        ldiu      *+ar0(ir0),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ash       4,r0
        ldiu      *-fp(3),ir0
        ldiu      *+fp(2),ar0
        and       240,r0
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
; 164 | OuthexData[sCnt] |= ConvAsc2Hex(InchData[i++])&0x0F;                   
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ar0
        addi      ar0,r0
        ldiu      *-fp(2),ir0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),ar4
        ldiu      *-fp(3),r4
        ldiu      *+ar0(ir0),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      r4,ir0
        and       15,r0
        or3       r0,*+ar4(ir0),r0
        subi      1,sp
        sti       r0,*+ar4(ir0)
	.line	10
;----------------------------------------------------------------------
; 166 | sCnt++;                                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
	.line	5
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        blt       L23
;*      Branch Occurs to L23 
L24:        
	.line	12
;----------------------------------------------------------------------
; 168 | return sCnt;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	13
        pop       ar4
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	169,000001010h,2


	.sect	 ".text"

	.global	_IsNumAsc
	.sym	_IsNumAsc,_IsNumAsc,36,2,0
	.func	174
;******************************************************************************
;* FUNCTION NAME: _IsNumAsc                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_IsNumAsc:
	.sym	_nCh,-2,2,9,32
	.line	1
;----------------------------------------------------------------------
; 174 | BOOL IsNumAsc(char nCh)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 176 | if(nCh >= '0' && nCh <= '9') return TRUE;                              
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      48,r0
        blt       L30
;*      Branch Occurs to L30 
        cmpi      57,r0
        bgt       L30
;*      Branch Occurs to L30 
        bud       L31
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L31 
L30:        
	.line	4
;----------------------------------------------------------------------
; 177 | return FALSE;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
L31:        
	.line	5
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	178,000000000h,0


	.sect	 ".text"

	.global	_ConvAsc2Dec
	.sym	_ConvAsc2Dec,_ConvAsc2Dec,36,2,0
	.func	183
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
; 183 | int ConvAsc2Dec(char nCh)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 185 | int nBuf = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 186 | if(nCh >= '0' && nCh <= '9') nBuf = nCh-'0';                           
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      48,r0
        blt       L36
;*      Branch Occurs to L36 
        cmpi      57,r0
        bgt       L36
;*      Branch Occurs to L36 
        ldiu      48,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
L36:        
	.line	5
;----------------------------------------------------------------------
; 187 | return nBuf;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	6
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	188,000000000h,1


	.sect	 ".text"

	.global	_ConvHex2Asc
	.sym	_ConvHex2Asc,_ConvHex2Asc,34,2,0
	.func	193
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
	.sym	_btCh,-2,12,9,32
	.sym	_chBuf,1,2,1,32
	.line	1
;----------------------------------------------------------------------
; 193 | char ConvHex2Asc(UCHAR btCh)                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 195 | char chBuf = '0';                                                      
;----------------------------------------------------------------------
        ldiu      48,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 196 | if(btCh >= 0 && btCh <= 9) chBuf = btCh+'0';                           
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      9,r0
        bhi       L41
;*      Branch Occurs to L41 
        ldiu      48,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
        bu        L44
;*      Branch Occurs to L44 
L41:        
	.line	5
;----------------------------------------------------------------------
; 197 | else if(btCh >= 10 && btCh <= 15) chBuf = (btCh-10)+'A';               
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      10,r0
        blo       L44
;*      Branch Occurs to L44 
        cmpi      15,r0
        bhi       L44
;*      Branch Occurs to L44 
        ldiu      55,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
L44:        
	.line	6
;----------------------------------------------------------------------
; 198 | return chBuf;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	7
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	199,000000000h,1


	.sect	 ".text"

	.global	_ConvDec2Hex
	.sym	_ConvDec2Hex,_ConvDec2Hex,36,2,0
	.func	203
;******************************************************************************
;* FUNCTION NAME: _ConvDec2Hex                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_ConvDec2Hex:
	.sym	_nCh,-2,2,9,32
	.line	1
;----------------------------------------------------------------------
; 203 | int ConvDec2Hex(char nCh)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 205 | return ((((nCh / 0x10) & 0x0F) << 4) | ((nCh % 0x10) & 0x0F));         
;----------------------------------------------------------------------
        ldiu      *-fp(2),r3
        ldiu      r3,r0
        ldiu      r0,r2
        ash       -3,r0
        lsh       -28,r0
        addi3     r0,r3,r0
        ash       -4,r0
        ldiu      0,r3
        and       15,r0
        subri     r2,r3
        ash       4,r0
        and       15,r3
        or3       r0,r3,r0
	.line	4
        ldiu      *-fp(1),r3
        ldiu      *fp,fp
        subi      2,sp
        bu        r3
;*      Branch Occurs to r3 
	.endfunc	206,000000000h,0


	.sect	 ".text"

	.global	_FunConvHexAsc
	.sym	_FunConvHexAsc,_FunConvHexAsc,36,2,0
	.func	208
;******************************************************************************
;* FUNCTION NAME: _FunConvHexAsc                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r4,r5,ar0,fp,ir0,sp,st                        *
;*   Regs Saved         : r4,r5                                               *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 2 Auto + 2 SOE = 9 words          *
;******************************************************************************
_FunConvHexAsc:
	.sym	_InhexData,-2,28,9,32
	.sym	_OUTAscData,-3,18,9,32
	.sym	_Len,-4,4,9,32
	.sym	_i,1,4,1,32
	.sym	_sCnt,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 208 | int FunConvHexAsc(UCHAR *InhexData,char *OUTAscData,int Len)           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
        push      r4
        push      r5
	.line	2
;----------------------------------------------------------------------
; 210 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 211 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 212 | for(i=0;i<Len;i++)                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        ldiu      -4,r5
        cmpi      *-fp(4),r0
        ldiu      15,r4
        bge       L52
;*      Branch Occurs to L52 
L51:        
	.line	7
;----------------------------------------------------------------------
; 214 | OUTAscData[sCnt++] = ConvHex2Asc(BYTE_H(InhexData[i]));                
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        lsh3      r5,*+ar0(ir0),r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        ldiu      1,r1
        ldiu      *-fp(3),ir0
        addi      ar0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
; 215 | OUTAscData[sCnt++] = ConvHex2Asc(BYTE_L(InhexData[i]));                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(2),ir0
        and3      r4,*+ar0(ir0),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(2),ar0
        ldiu      1,r1
        addi      ar0,r1
        sti       r1,*+fp(2)
        ldiu      *-fp(3),ir0
        sti       r0,*+ar0(ir0)
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *-fp(4),r0
        blt       L51
;*      Branch Occurs to L51 
L52:        
	.line	10
;----------------------------------------------------------------------
; 217 | return sCnt;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	11
        pop       r5
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	218,000000030h,2


	.sect	 ".text"

	.global	_Dec2Str
	.sym	_Dec2Str,_Dec2Str,32,2,0
	.func	222
;******************************************************************************
;* FUNCTION NAME: _Dec2Str                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 34 Auto + 0 SOE = 38 words        *
;******************************************************************************
_Dec2Str:
	.sym	_pBuf,-2,18,9,32
	.sym	_nDat,-3,4,9,32
	.sym	_i,1,4,1,32
	.sym	_nPos,2,4,1,32
	.sym	_szBuf,3,50,1,1024,,32
	.line	1
;----------------------------------------------------------------------
; 222 | void Dec2Str(char *pBuf,int nDat)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      34,sp
	.line	2
;----------------------------------------------------------------------
; 224 | int i;                                                                 
; 225 | int nPos;                                                              
; 226 | char szBuf[32];                                                        
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 228 | nPos=0;                                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	8
;----------------------------------------------------------------------
; 229 | szBuf[nPos++] = (nDat/1000000000%10)+'0';                              
;----------------------------------------------------------------------
        ldiu      @CL14,r1
        ldiu      *-fp(3),r0
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      1,r1
        addi      48,r0
        ldiu      *+fp(2),ir0
        addi      ir0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	9
;----------------------------------------------------------------------
; 230 | szBuf[nPos++] = (nDat/100000000%10)+'0';                               
;----------------------------------------------------------------------
        ldiu      @CL15,r1
        ldiu      *-fp(3),r0
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      1,r1
        addi      48,r0
        ldiu      *+fp(2),ir0
        addi      ir0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	10
;----------------------------------------------------------------------
; 231 | szBuf[nPos++] = (nDat/10000000%10)+'0';                                
;----------------------------------------------------------------------
        ldiu      @CL16,r1
        ldiu      *-fp(3),r0
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0
        ldiu      *+fp(2),ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	11
;----------------------------------------------------------------------
; 232 | szBuf[nPos++] = (nDat/1000000%10)+'0';                                 
;----------------------------------------------------------------------
        ldiu      @CL17,r1
        ldiu      *-fp(3),r0
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      1,r1
        addi      48,r0
        ldiu      *+fp(2),ir0
        addi      ir0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	12
;----------------------------------------------------------------------
; 233 | szBuf[nPos++] = (nDat/100000%10)+'0';                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL18,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0
        ldiu      1,r1
        ldiu      *+fp(2),ir0
        addi      ir0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	13
;----------------------------------------------------------------------
; 234 | szBuf[nPos++] = (nDat/10000%10)+'0';                                   
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      10000,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      *+fp(2),ir0
        ldiu      1,r1
        addi      48,r0
        addi      ir0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	14
;----------------------------------------------------------------------
; 235 | szBuf[nPos++] = (nDat/1000%10)+'0';                                    
;----------------------------------------------------------------------
        ldiu      1000,r1
        ldiu      *-fp(3),r0
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      *+fp(2),ir0
        ldiu      1,r1
        addi      48,r0
        addi      ir0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	15
;----------------------------------------------------------------------
; 236 | szBuf[nPos++] = (nDat/100%10)+'0';                                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      100,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      1,r1
        ldiu      *+fp(2),ir0
        addi      48,r0
        addi      ir0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	16
;----------------------------------------------------------------------
; 237 | szBuf[nPos++] = (nDat/10%10)+'0';                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      *+fp(2),ir0
        ldiu      1,r1
        addi      48,r0
        addi      ir0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
	.line	17
;----------------------------------------------------------------------
; 238 | szBuf[nPos++] = (nDat%10)+'0';                                         
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      *+fp(2),ir0
        ldiu      1,r1
        addi      ir0,r1
        ldiu      fp,ar0
        sti       r1,*+fp(2)
        addi      3,ar0
        addi      48,r0
        sti       r0,*+ar0(ir0)
	.line	18
;----------------------------------------------------------------------
; 239 | szBuf[nPos] = NULL;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      *+fp(2),ir0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
	.line	20
;----------------------------------------------------------------------
; 241 | for(i=0;i<nPos;i++) if(szBuf[i]!='0') break;                           
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        bge       L59
;*      Branch Occurs to L59 
L57:        
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      3,ar0
        ldiu      *+ar0(ir0),r0
        cmpi      48,r0
        bne       L59
;*      Branch Occurs to L59 
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        blt       L57
;*      Branch Occurs to L57 
L59:        
	.line	21
;----------------------------------------------------------------------
; 242 | i = MIN(i,nPos-1);                                                     
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),r0
        subri     *+fp(2),r1
        cmpi3     r1,r0
        bge       L61
;*      Branch Occurs to L61 
        bu        L62
;*      Branch Occurs to L62 
L61:        
        ldiu      1,r0
        subri     *+fp(2),r0
L62:        
        sti       r0,*+fp(1)
	.line	23
;----------------------------------------------------------------------
; 244 | StrCpy(pBuf,&szBuf[i]);                                                
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      3,r0
        addi      *+fp(1),r0            ; Unsigned
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _StrCpy
                                        ; Call Occurs
        subi      2,sp
	.line	24
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      36,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	245,000000000h,34


	.sect	 ".text"

	.global	_StrCat
	.sym	_StrCat,_StrCat,32,2,0
	.func	250
;******************************************************************************
;* FUNCTION NAME: _StrCat                                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_StrCat:
	.sym	_dest,-2,18,9,32
	.sym	_src,-3,18,9,32
	.sym	_r1,1,18,1,32
	.line	1
;----------------------------------------------------------------------
; 250 | void StrCat(char *dest, const char *src)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 252 | char *r1 = dest - 1;                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
L66:        
	.line	4
;----------------------------------------------------------------------
; 253 | while (*++r1);                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldi       *++ar0(1),r0
        sti       ar0,*+fp(1)
        bne       L66
;*      Branch Occurs to L66 
L67:        
	.line	5
;----------------------------------------------------------------------
; 254 | while ((*r1++ = *src++) != 0);                                         
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      1,r1
        ldiu      *+fp(1),ar1
        ldiu      *ar0++(1),r0
        addi      ar1,r1
        cmpi      0,r0
        bned      L67
        sti       ar0,*-fp(3)
        sti       r1,*+fp(1)
        sti       r0,*ar1
;*      Branch Occurs to L67 
	.line	6
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      3,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	255,000000000h,1


	.sect	 ".text"

	.global	_StrLen
	.sym	_StrLen,_StrLen,36,2,0
	.func	260
;******************************************************************************
;* FUNCTION NAME: _StrLen                                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_StrLen:
	.sym	_string,-2,18,9,32
	.sym	_r1,1,18,1,32
	.line	1
;----------------------------------------------------------------------
; 260 | int StrLen(const char *string)                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 262 | const char *r1 = string - 1;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
L71:        
	.line	4
;----------------------------------------------------------------------
; 263 | while (*++r1);                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldi       *++ar0(1),r0
        sti       ar0,*+fp(1)
        bne       L71
;*      Branch Occurs to L71 
	.line	5
;----------------------------------------------------------------------
; 264 | return r1 - string;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        subri     *+fp(1),r0            ; Unsigned
	.line	6
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      3,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	265,000000000h,1


	.sect	 ".text"

	.global	_StrCpy
	.sym	_StrCpy,_StrCpy,32,2,0
	.func	270
;******************************************************************************
;* FUNCTION NAME: _StrCpy                                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_StrCpy:
	.sym	_dest,-2,18,9,32
	.sym	_src,-3,18,9,32
	.sym	_result,1,18,1,32
	.line	1
;----------------------------------------------------------------------
; 270 | void StrCpy(char *dest, const char *src)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 272 | char *result = dest;                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(1)
L76:        
	.line	4
;----------------------------------------------------------------------
; 273 | while ((*dest++ = *src++) != 0);                                       
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      1,r1
        ldiu      *-fp(2),ar1
        ldiu      *ar0++(1),r0
        addi      ar1,r1
        cmpi      0,r0
        bned      L76
        sti       ar0,*-fp(3)
        sti       r1,*-fp(2)
        sti       r0,*ar1
;*      Branch Occurs to L76 
	.line	5
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      3,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	274,000000000h,1


	.sect	 ".text"

	.global	_StrCmp
	.sym	_StrCmp,_StrCmp,36,2,0
	.func	279
;******************************************************************************
;* FUNCTION NAME: _StrCmp                                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 3 Auto + 0 SOE = 7 words          *
;******************************************************************************
_StrCmp:
	.sym	_string1,-2,18,9,32
	.sym	_string2,-3,18,9,32
	.sym	_r1,1,18,1,32
	.sym	_r2,2,18,1,32
	.sym	_cp,3,2,1,32
	.line	1
;----------------------------------------------------------------------
; 279 | int StrCmp(const char *string1, const char *string2)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 281 | char *r1 = (char *)string1 - 1;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 282 | char *r2 = (char *)string2 - 1;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *-fp(3),r0            ; Unsigned
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 283 | char cp = TRUE;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(3)
L80:        
	.line	7
;----------------------------------------------------------------------
; 285 | while ( (*++r2 == (cp = *++r1)) && cp );                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *+fp(2),ar1
        ldiu      *++ar0(1),r0
        sti       ar0,*+fp(1)
        sti       r0,*+fp(3)
        ldiu      *++ar1(1),r1
        cmpi3     r0,r1
        sti       ar1,*+fp(2)
        bne       L82
;*      Branch Occurs to L82 
        cmpi      0,r0
        bne       L80
;*      Branch Occurs to L80 
L82:        
	.line	9
;----------------------------------------------------------------------
; 287 | return *r1 - *r2;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      *+fp(1),ar1
        subi3     *ar0,*ar1,r0
	.line	10
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      5,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	288,000000000h,3


	.sect	 ".text"

	.global	_MyPrintf
	.sym	_MyPrintf,_MyPrintf,32,2,0
	.func	293
;******************************************************************************
;* FUNCTION NAME: _MyPrintf                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 257 Auto + 0 SOE = 260 words      *
;******************************************************************************
_MyPrintf:
	.sym	_format,-2,18,27,32
	.sym	_args,1,18,1,32
	.sym	_szBuf,2,50,1,8192,,256
	.line	1
;----------------------------------------------------------------------
; 293 | void MyPrintf(char * format, ... )                                     
; 295 | va_list args;                                                          
; 296 | char szBuf[256];                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      257,sp
	.line	6
;----------------------------------------------------------------------
; 298 | va_start(args, format);                                                
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      -2,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 299 | vsprintf(szBuf, format, args);                                         
;----------------------------------------------------------------------
        ldiu      r0,r1
        ldiu      fp,r0
        push      r1
        addi      2,r0
        ldiu      *-fp(2),r1
        push      r1
        push      r0
        call      _vsprintf
                                        ; Call Occurs
        subi      3,sp
	.line	9
;----------------------------------------------------------------------
; 301 | xr16l784_Send(XR16L784_1CHL,(UCHAR *)szBuf,strlen(szBuf));             
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      2,r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        ldiu      0,r2
        subi      1,sp
        ldiu      fp,r1
        push      r0
        addi      2,r1
        push      r1
        push      r2
        call      _xr16l784_Send
                                        ; Call Occurs
        subi      3,sp
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      259,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	302,000000000h,257


	.sect	 ".text"

	.global	_FirmwareVersionStrCmp
	.sym	_FirmwareVersionStrCmp,_FirmwareVersionStrCmp,36,2,0
	.func	307
;******************************************************************************
;* FUNCTION NAME: _FirmwareVersionStrCmp                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,ir0,ir1,st                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 2 Auto + 0 SOE = 7 words          *
;******************************************************************************
_FirmwareVersionStrCmp:
	.sym	_pObj,-2,18,9,32
	.sym	_pSrc,-3,18,9,32
	.sym	_nLen,-4,4,9,32
	.sym	_i,1,4,1,32
	.sym	_bFlag,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 307 | BOOL FirmwareVersionStrCmp(char *pObj,char *pSrc,int nLen)             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 309 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 310 | BOOL bFlag = TRUE;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 311 | for(i=0;i<nLen;i++) if(pObj[i] != pSrc[i]) {bFlag = FALSE; break;}     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *-fp(4),r0
        bge       L92
;*      Branch Occurs to L92 
L89:        
        ldiu      *+fp(1),ar0
        ldiu      *-fp(3),ir0
        ldiu      *-fp(2),ir1
        ldiu      ar0,ar1
        cmpi3     *+ar0(ir0),*+ar1(ir1)
        beq       L91
;*      Branch Occurs to L91 
        ldiu      0,r0
        sti       r0,*+fp(2)
        bu        L92
;*      Branch Occurs to L92 
L91:        
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *-fp(4),r0
        blt       L89
;*      Branch Occurs to L89 
L92:        
	.line	6
;----------------------------------------------------------------------
; 312 | return bFlag;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	7
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      4,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	313,000000000h,2


	.sect	 ".text"

	.global	_GetFirmwareVersion
	.sym	_GetFirmwareVersion,_GetFirmwareVersion,36,2,0
	.func	320
;******************************************************************************
;* FUNCTION NAME: _GetFirmwareVersion                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r4,ar0,fp,ir0,sp,st                        *
;*   Regs Saved         : r4                                                  *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 3 Auto + 1 SOE = 7 words          *
;******************************************************************************
_GetFirmwareVersion:
	.sym	_nVerBuildData,-2,12,9,32
	.sym	_i,1,4,1,32
	.sym	_nVer,2,4,1,32
	.sym	_pVersionString,3,18,1,32
	.line	1
;----------------------------------------------------------------------
; 320 | int GetFirmwareVersion(UCHAR nVerBuildData)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
        push      r4
	.line	2
;----------------------------------------------------------------------
; 322 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 323 | int nVer = 100;                                                        
; 324 | char *pVersionString;                                                  
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 326 | for(i=0;i<128;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      128,r0
        bge       L105
;*      Branch Occurs to L105 
L96:        
	.line	9
;----------------------------------------------------------------------
; 328 | pVersionString = (char *)m_pBoardIdInfo[i];                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL19,ar0
        ldi       *+ar0(ir0),r0
        sti       r0,*+fp(3)
	.line	10
;----------------------------------------------------------------------
; 329 | if(pVersionString == NULL) break;                                      
;----------------------------------------------------------------------
        beq       L105
;*      Branch Occurs to L105 
	.line	12
;----------------------------------------------------------------------
; 331 | if(WORD_L(nVerBuildData) == 1)                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(2),r0
        cmpi      1,r0
        bne       L101
;*      Branch Occurs to L101 
	.line	14
;----------------------------------------------------------------------
; 333 | if(FirmwareVersionStrCmp("Version",pVersionString,7))                  
;----------------------------------------------------------------------
        ldiu      7,r0
        push      r0
        ldiu      *+fp(3),r1
        ldiu      @CL20,r0
        push      r1
        push      r0
        call      _FirmwareVersionStrCmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        beq       L104
;*      Branch Occurs to L104 
	.line	16
;----------------------------------------------------------------------
; 335 | nVer = ConvAsc2Dec(pVersionString[8])*1000+ConvAsc2Dec(pVersionString[1
;     | 0])*100+ConvAsc2Dec(pVersionString[11])*10+ConvAsc2Dec(pVersionString[1
;     | 2]);                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      *+ar0(8),r0
        push      r0
        call      _ConvAsc2Dec
                                        ; Call Occurs
        subi      1,sp
        ldiu      1000,r1
        ldiu      *+fp(3),ar0
        ldiu      *+ar0(10),r2
        mpyi3     r1,r0,r4
        push      r2
        call      _ConvAsc2Dec
                                        ; Call Occurs
        ldiu      100,r1
        subi      1,sp
        ldiu      *+fp(3),ar0
        mpyi3     r1,r0,r0
        ldiu      *+ar0(11),r1
        push      r1
        addi3     r0,r4,r4
        call      _ConvAsc2Dec
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,r1
        ldiu      *+fp(3),ar0
        mpyi3     r1,r0,r0
        ldiu      *+ar0(12),r1
        push      r1
        addi3     r0,r4,r4
        call      _ConvAsc2Dec
                                        ; Call Occurs
        subi      1,sp
        addi3     r0,r4,r0
        sti       r0,*+fp(2)
	.line	17
;----------------------------------------------------------------------
; 336 | break;                                                                 
;----------------------------------------------------------------------
        bu        L105
;*      Branch Occurs to L105 
L101:        
	.line	20
;----------------------------------------------------------------------
; 339 | else if(WORD_L(nVerBuildData) == 2)                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(2),r0
        cmpi      2,r0
        bne       L104
;*      Branch Occurs to L104 
	.line	22
;----------------------------------------------------------------------
; 341 | if(FirmwareVersionStrCmp("Date",pVersionString,4))                     
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      @CL21,r1
        push      r0
        ldiu      *+fp(3),r0
        push      r0
        push      r1
        call      _FirmwareVersionStrCmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        beq       L104
;*      Branch Occurs to L104 
	.line	24
;----------------------------------------------------------------------
; 343 | nVer = ConvAsc2Dec(pVersionString[7])*100000+ConvAsc2Dec(pVersionString
;     | [8])*10000+ConvAsc2Dec(pVersionString[10])*1000+                       
; 344 |        ConvAsc2Dec(pVersionString[11])*100+ConvAsc2Dec(pVersionString[1
;     | 3])*10+ConvAsc2Dec(pVersionString[14]);                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      *+ar0(7),r0
        push      r0
        call      _ConvAsc2Dec
                                        ; Call Occurs
        subi      1,sp
        ldiu      @CL18,r1
        ldiu      *+fp(3),ar0
        ldiu      *+ar0(8),r2
        mpyi3     r1,r0,r4
        push      r2
        call      _ConvAsc2Dec
                                        ; Call Occurs
        ldiu      10000,r1
        subi      1,sp
        ldiu      *+fp(3),ar0
        mpyi3     r1,r0,r1
        ldiu      *+ar0(10),r0
        push      r0
        addi3     r1,r4,r4
        call      _ConvAsc2Dec
                                        ; Call Occurs
        subi      1,sp
        ldiu      1000,r1
        ldiu      *+fp(3),ar0
        mpyi3     r1,r0,r0
        ldiu      *+ar0(11),r1
        push      r1
        addi3     r0,r4,r4
        call      _ConvAsc2Dec
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        ldiu      100,r1
        mpyi3     r1,r0,r0
        ldiu      *+ar0(13),r2
        addi3     r0,r4,r4
        push      r2
        call      _ConvAsc2Dec
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,r1
        ldiu      *+fp(3),ar0
        ldiu      *+ar0(14),r2
        push      r2
        mpyi3     r1,r0,r0
        addi3     r0,r4,r4
        call      _ConvAsc2Dec
                                        ; Call Occurs
        subi      1,sp
        addi3     r0,r4,r0
        sti       r0,*+fp(2)
	.line	26
;----------------------------------------------------------------------
; 345 | break;                                                                 
;----------------------------------------------------------------------
        bu        L105
;*      Branch Occurs to L105 
L104:        
	.line	7
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      128,r0
        blt       L96
;*      Branch Occurs to L96 
L105:        
	.line	31
;----------------------------------------------------------------------
; 350 | return nVer;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	32
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	351,000000010h,3


	.sect	 ".text"

	.global	_Make1ByteBcc
	.sym	_Make1ByteBcc,_Make1ByteBcc,44,2,0
	.func	356
;******************************************************************************
;* FUNCTION NAME: _Make1ByteBcc                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ir0,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Make1ByteBcc:
	.sym	_pDat,-2,28,9,32
	.sym	_nLen,-3,4,9,32
	.sym	_i,1,4,1,32
	.sym	_btBcc,2,12,1,32
	.line	1
;----------------------------------------------------------------------
; 356 | UCHAR Make1ByteBcc(UCHAR *pDat,int nLen)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 358 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 359 | UCHAR btBcc = 0x00;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 360 | for(i=0;i<nLen;i++)     btBcc ^= pDat[i];                              
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bge       L110
;*      Branch Occurs to L110 
L109:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(ir0),r0
        xor       *+fp(2),r0
        sti       r0,*+fp(2)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        blt       L109
;*      Branch Occurs to L109 
L110:        
	.line	6
;----------------------------------------------------------------------
; 361 | return btBcc;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	7
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      4,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	362,000000000h,2


	.sect	 ".text"

	.global	_MakeBcc
	.sym	_MakeBcc,_MakeBcc,32,2,0
	.func	367
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
; 367 | void MakeBcc(UCHAR *pDat,int nLen)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 369 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 371 | pDat[nLen] = pDat[nLen+1] = 0x00;                                      
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
; 373 | for(i=0;i<nLen;i++)     pDat[nLen + (i&0x01)] ^= pDat[i];              
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bge       L115
;*      Branch Occurs to L115 
L114:        
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
        blt       L114
;*      Branch Occurs to L114 
L115:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      3,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	374,000000000h,1


	.sect	 ".text"

	.global	_IsBccOk
	.sym	_IsBccOk,_IsBccOk,36,2,0
	.func	380
;******************************************************************************
;* FUNCTION NAME: _IsBccOk                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,st                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 3 Auto + 0 SOE = 7 words          *
;******************************************************************************
_IsBccOk:
	.sym	_pDat,-2,28,9,32
	.sym	_nLen,-3,4,9,32
	.sym	_i,1,4,1,32
	.sym	_nBCC,2,60,1,64,,2
	.line	1
;----------------------------------------------------------------------
; 380 | int IsBccOk(UCHAR *pDat,int nLen)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 382 | int i;                                                                 
; 383 | UCHAR nBCC[2];                                                         
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 385 | nBCC[0] = nBCC[1] = 0x00;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      fp,ar0
        ldiu      fp,ar1
        addi      3,ar0
        addi      2,ar1
        sti       r0,*ar0
        sti       r0,*ar1
	.line	8
;----------------------------------------------------------------------
; 387 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        ldiu      255,r1
        ldiu      1,r2
        cmpi      *-fp(3),r0
        bge       L119
;*      Branch Occurs to L119 
L118:        
	.line	10
;----------------------------------------------------------------------
; 389 | nBCC[(i&0x01)] ^= WORD_L(pDat[i]);                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      fp,ir0
        ldiu      *-fp(2),ir1
        ldiu      ar1,ar0
        addi      2,ir0
        and       r2,ar0
        and3      r1,*+ar1(ir1),r0
        xor3      r0,*+ar0(ir0),r0
        sti       r0,*+ar0(ir0)
	.line	8
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        blt       L118
;*      Branch Occurs to L118 
L119:        
	.line	13
;----------------------------------------------------------------------
; 392 | if(nBCC[0] != WORD_L(pDat[nLen]) || nBCC[1] != WORD_L(pDat[nLen+1]))   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        ldiu      *-fp(2),ir0
        addi      2,ar0
        ldiu      *-fp(3),ar1
        ldiu      *ar0,r1
        and3      r0,*+ar1(ir0),r0
        cmpi3     r0,r1
        bne       L121
;*      Branch Occurs to L121 
        ldiu      fp,ar0
        ldiu      255,r0
        addi      3,ar0
        addi      *-fp(2),ar1           ; Unsigned
        ldiu      *ar0,r1
        and       *+ar1(1),r0
        cmpi3     r0,r1
        beq       L123
;*      Branch Occurs to L123 
L121:        
	.line	15
;----------------------------------------------------------------------
; 394 | return FALSE;                                                          
; 396 | else                                                                   
;----------------------------------------------------------------------
        bud       L124
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L124 
L123:        
	.line	19
;----------------------------------------------------------------------
; 398 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
L124:        
	.line	21
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      5,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	400,000000000h,3



	.sect	".cinit"
	.field  	IR_2,32
	.field  	.init0$1+0,32
	.field  	31,32		; .init0$1[0] @ 0
	.field  	28,32		; .init0$1[1] @ 32
	.field  	31,32		; .init0$1[2] @ 64
	.field  	30,32		; .init0$1[3] @ 96
	.field  	31,32		; .init0$1[4] @ 128
	.field  	30,32		; .init0$1[5] @ 160
	.field  	31,32		; .init0$1[6] @ 192
	.field  	31,32		; .init0$1[7] @ 224
	.field  	30,32		; .init0$1[8] @ 256
	.field  	31,32		; .init0$1[9] @ 288
	.field  	30,32		; .init0$1[10] @ 320
	.field  	31,32		; .init0$1[11] @ 352
IR_2:	.set	12

	.sect	".text"
	.sect	 ".text"

	.global	_gm_SysTimeToRtc
	.sym	_gm_SysTimeToRtc,_gm_SysTimeToRtc,36,2,0
	.func	406
;******************************************************************************
;* FUNCTION NAME: _gm_SysTimeToRtc                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,st,rs,re,rc                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 19 Auto + 0 SOE = 23 words        *
;******************************************************************************
_gm_SysTimeToRtc:
	.sym	_pTime,-2,24,9,32,.fake12
	.sym	_nSysTime,-3,14,9,32
	.bss	.init0$1,12
	.sym	.init0$1,.init0$1,52,3,384,,12
	.sym	_bSec,1,4,1,32
	.sym	_days,2,52,1,384,,12
	.sym	_nTemp,14,4,1,32
	.sym	_nDays,15,14,1,32
	.sym	_nTotalSecond,16,14,1,32
	.sym	_nFrontSec,17,14,1,32
	.sym	_nRearSec,18,14,1,32
	.sym	_nBaseYear,19,4,1,32
	.line	1
;----------------------------------------------------------------------
; 406 | BOOL gm_SysTimeToRtc(DATE_TIME_PTR pTime,UINT nSysTime)                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      19,sp
	.line	2
;----------------------------------------------------------------------
; 408 | BOOL bSec;                                                             
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 409 | int days[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };       
; 410 | int nTemp;                                                             
;----------------------------------------------------------------------
        ldiu      @CL22,ar1
        ldiu      fp,ar0
        addi      2,ar0
        ldiu      *ar1++(1),r0
        rpts      10                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	6
;----------------------------------------------------------------------
; 411 | unsigned int nDays,nTotalSecond = nSysTime,nFrontSec,nRearSec;         
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,*+fp(16)
	.line	7
;----------------------------------------------------------------------
; 412 | int nBaseYear = 2000;                                                  
;----------------------------------------------------------------------
        ldiu      2000,r0
        sti       r0,*+fp(19)
	.line	9
;----------------------------------------------------------------------
; 414 | bSec = FALSE;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	10
;----------------------------------------------------------------------
; 415 | nRearSec = nFrontSec = 0;                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(17)
        sti       r0,*+fp(18)
	.line	11
;----------------------------------------------------------------------
; 416 | for(nTemp = nBaseYear; nTemp <= 2245 ;nTemp++)                         
;----------------------------------------------------------------------
        ldiu      *+fp(19),r0
        sti       r0,*+fp(14)
        cmpi      2245,r0
        bgt       L135
;*      Branch Occurs to L135 
L127:        
	.line	13
;----------------------------------------------------------------------
; 418 | nDays = 365;                                                           
;----------------------------------------------------------------------
        ldiu      365,r0
        sti       r0,*+fp(15)
	.line	14
;----------------------------------------------------------------------
; 419 | if((!(nTemp % 4) && (nTemp % 100)) || !(nTemp % 400)) nDays += 1;      
;----------------------------------------------------------------------
        ldiu      *+fp(14),r0
        ldiu      r0,r1
        ash       -1,r1
        lsh       @CL23,r1
        addi3     r1,r0,r1
        andn      3,r1
        subri     r0,r1
        bne       L129
;*      Branch Occurs to L129 
        ldiu      100,r1
        call      MOD_I30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L130
;*      Branch Occurs to L130 
L129:        
        ldiu      *+fp(14),r0
        ldiu      400,r1
        call      MOD_I30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L131
;*      Branch Occurs to L131 
L130:        
        ldiu      1,r0
        addi      *+fp(15),r0           ; Unsigned
        sti       r0,*+fp(15)
L131:        
	.line	15
;----------------------------------------------------------------------
; 420 | nRearSec = nFrontSec;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(17),r0
        sti       r0,*+fp(18)
	.line	16
;----------------------------------------------------------------------
; 421 | nFrontSec += nDays*24*60*60;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(15),r0
        mpyi      24,r0
        mpyi      60,r0
        mpyi      60,r0
        addi      *+fp(17),r0           ; Unsigned
        sti       r0,*+fp(17)
	.line	17
;----------------------------------------------------------------------
; 422 | if(ISRANGE_LOW(nTotalSecond,nRearSec,nFrontSec))                       
;----------------------------------------------------------------------
        ldiu      *+fp(16),r0
        cmpi      *+fp(18),r0
        blo       L134
;*      Branch Occurs to L134 
        cmpi      *+fp(17),r0
        bhs       L134
;*      Branch Occurs to L134 
	.line	19
;----------------------------------------------------------------------
; 424 | pTime->year = BIN2BCD(nTemp-nBaseYear);                                
;----------------------------------------------------------------------
        ldiu      *+fp(19),r0
        subri     *+fp(14),r0
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      *+fp(19),r0
        ash       4,r2
        subri     *+fp(14),r0
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      *-fp(2),ar0
        or3       r2,r0,r0
        sti       r0,*+ar0(5)
	.line	20
;----------------------------------------------------------------------
; 425 | nTotalSecond -= nRearSec;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(18),r0
        subri     *+fp(16),r0           ; Unsigned
        sti       r0,*+fp(16)
	.line	21
;----------------------------------------------------------------------
; 426 | bSec = TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
	.line	22
;----------------------------------------------------------------------
; 427 | break;                                                                 
;----------------------------------------------------------------------
        bu        L135
;*      Branch Occurs to L135 
L134:        
	.line	11
        ldiu      1,r0
        addi      *+fp(14),r0
        sti       r0,*+fp(14)
        cmpi      2245,r0
        ble       L127
;*      Branch Occurs to L127 
L135:        
	.line	26
;----------------------------------------------------------------------
; 431 | if(!bSec) return FALSE;                                                
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        bne       L137
;*      Branch Occurs to L137 
        bud       L147
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L147 
L137:        
	.line	28
;----------------------------------------------------------------------
; 433 | bSec = FALSE;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	29
;----------------------------------------------------------------------
; 434 | nDays = 0;                                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(15)
	.line	30
;----------------------------------------------------------------------
; 435 | nRearSec = nFrontSec = 0;                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(17)
        sti       r0,*+fp(18)
	.line	31
;----------------------------------------------------------------------
; 436 | for(nTemp=0;nTemp<11;nTemp++)                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(14)
        cmpi      11,r0
        bge       L142
;*      Branch Occurs to L142 
L138:        
	.line	33
;----------------------------------------------------------------------
; 438 | nDays += days[nTemp];                                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(14),ir0
        addi      2,ar0
        ldiu      *+ar0(ir0),r0
        addi      *+fp(15),r0           ; Unsigned
        sti       r0,*+fp(15)
	.line	34
;----------------------------------------------------------------------
; 439 | nRearSec = nFrontSec;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(17),r0
        sti       r0,*+fp(18)
	.line	35
;----------------------------------------------------------------------
; 440 | nFrontSec = nDays*24*60*60;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(15),r0
        mpyi      24,r0
        mpyi      60,r0
        mpyi      60,r0
        sti       r0,*+fp(17)
	.line	36
;----------------------------------------------------------------------
; 441 | if(ISRANGE_LOW(nTotalSecond,nRearSec,nFrontSec))                       
;----------------------------------------------------------------------
        ldiu      *+fp(16),r0
        cmpi      *+fp(18),r0
        blo       L141
;*      Branch Occurs to L141 
        cmpi      *+fp(17),r0
        bhs       L141
;*      Branch Occurs to L141 
	.line	38
;----------------------------------------------------------------------
; 443 | pTime->month = BIN2BCD(nTemp+1);                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(14),r0
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      1,r1
        ash       4,r2
        addi      *+fp(14),r1
        ldiu      r1,r0
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      *-fp(2),ar0
        or3       r2,r0,r0
        sti       r0,*+ar0(4)
	.line	39
;----------------------------------------------------------------------
; 444 | nTotalSecond -= nRearSec;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(18),r0
        subri     *+fp(16),r0           ; Unsigned
        sti       r0,*+fp(16)
	.line	40
;----------------------------------------------------------------------
; 445 | bSec = TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
	.line	41
;----------------------------------------------------------------------
; 446 | break;                                                                 
;----------------------------------------------------------------------
        bu        L142
;*      Branch Occurs to L142 
L141:        
	.line	31
        ldiu      1,r0
        addi      *+fp(14),r0
        sti       r0,*+fp(14)
        cmpi      11,r0
        blt       L138
;*      Branch Occurs to L138 
L142:        
	.line	45
;----------------------------------------------------------------------
; 450 | if(!bSec) return FALSE;                                                
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        bned      L145
	nop
        ldine     *+fp(16),r0
        ldine     @CL24,r1
;*      Branch Occurs to L145 
        bud       L147
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L147 
	.line	47
;----------------------------------------------------------------------
; 452 | nTemp = nTotalSecond/(24*60*60);                                       
;----------------------------------------------------------------------
L145:        
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(14)
	.line	48
;----------------------------------------------------------------------
; 453 | pTime->day = BIN2BCD(nTemp+1);                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(14),r0
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      1,r1
        ash       4,r2
        addi      *+fp(14),r1
        ldiu      r1,r0
        ldiu      10,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      *-fp(2),ar0
        or3       r2,r0,r0
        sti       r0,*+ar0(3)
	.line	49
;----------------------------------------------------------------------
; 454 | nTotalSecond %= (24*60*60);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(16),r0
        ldiu      @CL24,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(16)
	.line	51
;----------------------------------------------------------------------
; 456 | nTemp = nTotalSecond/(60*60);                                          
;----------------------------------------------------------------------
        ldiu      3600,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(14)
	.line	52
;----------------------------------------------------------------------
; 457 | pTime->hour = BIN2BCD(nTemp);                                          
;----------------------------------------------------------------------
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      10,r1
        ldiu      *+fp(14),r0
        ash       4,r2
        call      MOD_I30
                                        ; Call Occurs
        ldiu      *-fp(2),ar0
        or3       r2,r0,r0
        sti       r0,*+ar0(2)
	.line	53
;----------------------------------------------------------------------
; 458 | nTotalSecond %= (60*60);                                               
;----------------------------------------------------------------------
        ldiu      *+fp(16),r0
        ldiu      3600,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(16)
	.line	55
;----------------------------------------------------------------------
; 460 | nTemp = nTotalSecond/60;                                               
;----------------------------------------------------------------------
        ldiu      60,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(14)
	.line	56
;----------------------------------------------------------------------
; 461 | pTime->minute = BIN2BCD(nTemp);                                        
;----------------------------------------------------------------------
        ldiu      10,r1
        call      DIV_I30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      *+fp(14),r0
        ldiu      10,r1
        ash       4,r2
        call      MOD_I30
                                        ; Call Occurs
        ldiu      *-fp(2),ar0
        or3       r2,r0,r0
        sti       r0,*+ar0(1)
	.line	57
;----------------------------------------------------------------------
; 462 | nTotalSecond %= 60;                                                    
;----------------------------------------------------------------------
        ldiu      60,r1
        ldiu      *+fp(16),r0
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(16)
	.line	59
;----------------------------------------------------------------------
; 464 | pTime->second = BIN2BCD(nTotalSecond);                                 
;----------------------------------------------------------------------
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      10,r1
        ash       4,r2
        ldiu      *+fp(16),r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      *-fp(2),ar0
        or3       r2,r0,r0
        sti       r0,*ar0
	.line	61
;----------------------------------------------------------------------
; 466 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
L147:        
	.line	62
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      21,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	467,000000000h,19


	.sect	 ".text"

	.global	_Delay
	.sym	_Delay,_Delay,36,2,0
	.func	473
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
; 473 | int Delay(int nCnt)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 475 | while(nCnt--) WDI_ACT;                                                 
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        subri     r0,r1
        cmpi      0,r0
        beqd      L151
        ldiu      0,r2
        ldiu      8192,ar0
        sti       r1,*-fp(2)
;*      Branch Occurs to L151 
L150:        
        sti       r2,*ar0
        ldiu      1,r1
        ldiu      *-fp(2),r0
        subri     r0,r1
        cmpi      0,r0
        sti       r1,*-fp(2)
        bne       L150
;*      Branch Occurs to L150 
L151:        
	.line	4
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      2,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	476,000000000h,0


	.sect	 ".text"

	.global	_c_int01
	.sym	_c_int01,_c_int01,32,2,0
	.func	481
;******************************************************************************
;* FUNCTION NAME: _c_int01                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int01:
	.line	1
;----------------------------------------------------------------------
; 481 | void c_int01()                                                         
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
; 483 | xr16l784_Isr();                                                        
;----------------------------------------------------------------------
        call      _xr16l784_Isr
                                        ; Call Occurs
	.line	4
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
	.endfunc	484,0003f07ffh,0


	.sect	 ".text"

	.global	_c_int02
	.sym	_c_int02,_c_int02,32,2,0
	.func	489
;******************************************************************************
;* FUNCTION NAME: _c_int02                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int02:
	.line	1
;----------------------------------------------------------------------
; 489 | void c_int02()                                                         
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
; 491 | user_LonWorkRead();                                                    
;----------------------------------------------------------------------
        call      _user_LonWorkRead
                                        ; Call Occurs
	.line	4
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
	.endfunc	492,0003f07ffh,0



	.sect	".cinit"
	.field  	1,32
	.field  	_nRunLedCnt$2+0,32
	.field  	0,32		; _nRunLedCnt$2 @ 0

	.sect	".text"
	.sect	 ".text"

	.global	_c_int10
	.sym	_c_int10,_c_int10,32,2,0
	.func	497
;******************************************************************************
;* FUNCTION NAME: _c_int10                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,st                                       *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int10:
	.bss	_nRunLedCnt$2,1
	.sym	_nRunLedCnt,_nRunLedCnt$2,4,3,32
	.line	1
;----------------------------------------------------------------------
; 497 | void c_int10(void)                                                     
; 499 | static int nRunLedCnt=0;                                               
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
	.line	5
;----------------------------------------------------------------------
; 501 | xr16l784_1msLoop();                                                    
;----------------------------------------------------------------------
        call      _xr16l784_1msLoop
                                        ; Call Occurs
	.line	6
;----------------------------------------------------------------------
; 502 | user_1msLoop();                                                        
;----------------------------------------------------------------------
        call      _user_1msLoop
                                        ; Call Occurs
	.line	8
;----------------------------------------------------------------------
; 504 | m_nDebug1msTimer++;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nDebug1msTimer+0,r0 ; Unsigned
        sti       r0,@_m_nDebug1msTimer+0
	.line	10
;----------------------------------------------------------------------
; 506 | WDI_ACT;                                                               
;----------------------------------------------------------------------
        ldiu      8192,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 507 | RUN_LED(nRunLedCnt&0x40 ? 0 : 1);                                      
;----------------------------------------------------------------------
        ldiu      64,r0
        tstb      @_nRunLedCnt$2+0,r0
        bned      L162
        ldine     1,r0
        ldine     @CL25,ar1
        ldine     @CL25,ar0
;*      Branch Occurs to L162 
        ldiu      2,r0
        ldiu      @CL25,ar1
        ldiu      @CL25,ar0
        and3      r0,*ar1,r0
        sti       r0,*ar0
        bu        L163
;*      Branch Occurs to L163 
	.line	11
L162:        
        or3       r0,*ar1,r0
        sti       r0,*ar0
L163:        
	.line	12
;----------------------------------------------------------------------
; 508 | ERR_LED(nRunLedCnt&0x40 ? 1 : 0);                                      
;----------------------------------------------------------------------
        ldiu      64,r0
        tstb      @_nRunLedCnt$2+0,r0
        beqd      L166
        ldieq     2,r0
        ldieq     @CL25,ar1
        ldieq     @CL25,ar0
;*      Branch Occurs to L166 
        ldiu      1,r0
        ldiu      @CL25,ar1
        ldiu      @CL25,ar0
        and3      r0,*ar1,r0
        sti       r0,*ar0
        bu        L167
;*      Branch Occurs to L167 
	.line	12
L166:        
        or3       r0,*ar1,r0
        sti       r0,*ar0
L167:        
	.line	13
;----------------------------------------------------------------------
; 509 | nRunLedCnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nRunLedCnt$2+0,r0
        sti       r0,@_nRunLedCnt$2+0
	.line	14
;----------------------------------------------------------------------
; 510 | }                                                                      
;----------------------------------------------------------------------
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
	.endfunc	510,0003f07ffh,0


;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"Firmware:LIC-A0",0
SL2:	.byte	"Version:1.034",0
SL3:	.byte	"Date:2010/05/19",0
SL4:	.byte	"Version",0
SL5:	.byte	"Date",0
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

	.sect	".cinit"
	.field  	25,32
	.field  	CL1+0,32
	.field  	38400,32
	.field  	8433664,32
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
	.field  	1000000000,32
	.field  	100000000,32
	.field  	10000000,32
	.field  	1000000,32
	.field  	100000,32
	.field  	_m_pBoardIdInfo,32
	.field  	SL4,32
	.field  	SL5,32
	.field  	.init0$1,32
	.field  	-30,32
	.field  	86400,32
	.field  	2097152,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_vsprintf

	.global	_strlen

	.global	_xr16l784_Init

	.global	_xr16l784_Isr

	.global	_xr16l784_Rts

	.global	_xr16l784_Loop

	.global	_xr16l784_Send

	.global	_xr16l784_1msLoop

	.global	_user_LonWorkRead

	.global	_user_Init

	.global	_user_Loop

	.global	_user_1msLoop
	.global	_Debug3xInit
	.global	MOD_I30
	.global	DIV_I30
	.global	DIV_U30
	.global	MOD_U30
