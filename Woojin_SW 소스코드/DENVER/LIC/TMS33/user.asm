;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Apr 25 10:06:28 2016                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe user.c C:\Users\JANGDU~1\AppData\Local\Temp\user.if 
	.file	"user.c"
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
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"ds1647.h"
	.stag	.fake3,32
	.member	_R,6,4,18,1
	.member	_W,7,4,18,1
	.eos
	.stag	.fake4,32
	.member	_Sec,0,4,18,7
	.member	_Osc,7,4,18,1
	.eos
	.stag	.fake5,32
	.member	_Day,0,4,18,3
	.member	_SPare2,3,4,18,3
	.member	_FT,6,4,18,1
	.member	_Spare1,7,4,18,1
	.eos
	.utag	.fake2,32
	.member	_CtrlBit,0,8,11,32,.fake3
	.member	_SecBit,0,8,11,32,.fake4
	.member	_DayBit,0,8,11,32,.fake5
	.member	_B8,0,12,11,32
	.eos
	.sym	_DS1647ONELTP,0,9,13,32,.fake2
	.sym	_PDS1647ONELTP,0,25,13,32,.fake2
	.stag	.fake6,256
	.member	_Ctrl,0,9,8,32,.fake2
	.member	_Second,32,9,8,32,.fake2
	.member	_Minute,64,9,8,32,.fake2
	.member	_Hour,96,9,8,32,.fake2
	.member	_Day,128,9,8,32,.fake2
	.member	_Date,160,9,8,32,.fake2
	.member	_Month,192,9,8,32,.fake2
	.member	_Year,224,9,8,32,.fake2
	.eos
	.sym	_DS1647BDY,0,8,13,256,.fake6
	.sym	_PDS1647BDY,0,24,13,32,.fake6
	.stag	.fake7,224
	.member	_second,0,12,8,32
	.member	_minute,32,12,8,32
	.member	_hour,64,12,8,32
	.member	_day,96,12,8,32
	.member	_month,128,12,8,32
	.member	_year,160,12,8,32
	.member	_weekday,192,12,8,32
	.eos
	.sym	_DATE_TIME_TYPE,0,8,13,224,.fake7
	.sym	_DATE_TIME_PTR,0,24,13,32,.fake7
	.file	"main.h"
	.file	"MpuDebug.h"
	.file	"user.h"
	.stag	.fake8,6400
	.member	_btStx,0,12,8,32
	.member	_btCmd,32,12,8,32
	.member	_btMessCode,64,12,8,32
	.member	_btLen,96,12,8,32
	.member	_btDat,128,60,8,6272,,196
	.eos
	.sym	_LNWKFTPIT,0,8,13,6400,.fake8
	.sym	_PLNWKFTPIT,0,24,13,32,.fake8
	.stag	.fake9,6400
	.member	_btStx,0,12,8,32
	.member	_btCmd,32,12,8,32
	.member	_btMessCode,64,12,8,32
	.member	_btLen,96,12,8,32
	.member	_btDat,128,60,8,6272,,196
	.eos
	.sym	_LNWKGERIT,0,8,13,6400,.fake9
	.sym	_PLNWKGERIT,0,24,13,32,.fake9
	.stag	.fake10,51712
	.member	_btKind,0,12,8,32
	.member	_btVerH,32,12,8,32
	.member	_btVerL,64,12,8,32
	.member	_btBuildDateHH,96,12,8,32
	.member	_btBuildDateHL,128,12,8,32
	.member	_btBuildDateLH,160,12,8,32
	.member	_btBuildDateLL,192,12,8,32
	.member	_btSpare,224,60,8,288,,9
	.member	_lfBuf,512,56,8,38400,.fake8,6
	.member	_lgRxBuf,38912,8,8,6400,.fake9
	.member	_lgTxBuf,45312,8,8,6400,.fake9
	.eos
	.sym	_LNWKDP,0,8,13,51712,.fake10
	.sym	_PLNWKDP,0,24,13,32,.fake10
	.stag	.fake11,416
	.member	_btSoh,0,12,8,32
	.member	_chSrcDev,32,60,8,64,,2
	.member	_chDestDev,96,60,8,64,,2
	.member	_chMsgCnt,160,60,8,64,,2
	.member	_chCmdCode,224,60,8,64,,2
	.member	_chDataLen,288,60,8,128,,4
	.eos
	.sym	_PTCHD,0,8,13,416,.fake11
	.sym	_PPTCHD,0,24,13,32,.fake11
	.stag	.fake12,768
	.member	_chPacT,0,60,8,64,,2
	.member	_chCcpM,64,60,8,64,,2
	.member	_chCncsT,128,60,8,64,,2
	.member	_chD0,192,60,8,64,,2
	.member	_chD1,256,60,8,64,,2
	.member	_chTran,320,252,8,192,,3,2
	.member	_chCid,512,252,8,192,,3,2
	.member	_chDs,704,60,8,64,,2
	.eos
	.sym	_PROTOCOL_1,0,8,13,768,.fake12
	.stag	.fake13,832
	.member	_phHdBuf,0,8,8,416,.fake11
	.member	_nDdata,416,60,8,64,,2
	.member	_nData_2,480,60,8,64,,2
	.member	_nCaller_ID,544,60,8,128,,4
	.member	_nCRC,672,60,8,128,,4
	.member	_btEot,800,12,8,32
	.eos
	.sym	_PACSDR,0,8,13,832,.fake13
	.sym	_PPACSDR,0,24,13,32,.fake13
	.stag	.fake16,32
	.member	_sACab_ON,0,14,18,1
	.member	_sAVoipCM,1,14,18,1
	.member	_sAAutom,2,14,18,1
	.member	_sAHead_Bit,3,14,18,1
	.member	_sBCab_ON,4,14,18,1
	.member	_sBVoipCM,5,14,18,1
	.member	_sBAutom,6,14,18,1
	.member	_sBHead_Bit,7,14,18,1
	.eos
	.utag	.fake15,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake16
	.eos
	.stag	.fake18,32
	.member	_sAWLR,0,14,18,1
	.member	_sAGPS,1,14,18,1
	.member	_sAVOIP,2,14,18,1
	.member	_sACCP1,3,14,18,1
	.member	_sBWLR,4,14,18,1
	.member	_sBGPS,5,14,18,1
	.member	_sBVOIP,6,14,18,1
	.member	_sBCCP1,7,14,18,1
	.eos
	.utag	.fake17,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake18
	.eos
	.stag	.fake20,32
	.member	_sACNCS,0,14,18,1
	.member	_sAVTX,1,14,18,1
	.member	_sALIC,2,14,18,1
	.member	_sAPAC,3,14,18,1
	.member	_sBCNCS,4,14,18,1
	.member	_sBVTX,5,14,18,1
	.member	_sBLIC,6,14,18,1
	.member	_sBPAC,7,14,18,1
	.eos
	.utag	.fake19,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake20
	.eos
	.stag	.fake22,32
	.member	_sAPII2,0,14,18,1
	.member	_sAPII1,1,14,18,1
	.member	_sAFDI,2,14,18,1
	.member	_sASp_3,3,14,18,1
	.member	_sBPII2,4,14,18,1
	.member	_sBPII1,5,14,18,1
	.member	_sBFDI,6,14,18,1
	.member	_sBSp_3,7,14,18,1
	.eos
	.utag	.fake21,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake22
	.eos
	.stag	.fake24,32
	.member	_sASDI4,0,14,18,1
	.member	_sASDI3,1,14,18,1
	.member	_sASDI2,2,14,18,1
	.member	_sASDI1,3,14,18,1
	.member	_sBSDI4,4,14,18,1
	.member	_sBSDI3,5,14,18,1
	.member	_sBSDI2,6,14,18,1
	.member	_sBSDI1,7,14,18,1
	.eos
	.utag	.fake23,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake24
	.eos
	.stag	.fake26,32
	.member	_sAPID1_4,0,14,18,1
	.member	_sAPID1_3,1,14,18,1
	.member	_sAPID1_2,2,14,18,1
	.member	_sAPID1_1,3,14,18,1
	.member	_sBPID1_4,4,14,18,1
	.member	_sBPID1_3,5,14,18,1
	.member	_sBPID1_2,6,14,18,1
	.member	_sBPID1_1,7,14,18,1
	.eos
	.utag	.fake25,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake26
	.eos
	.stag	.fake28,32
	.member	_sAPEI1,0,14,18,1
	.member	_sAPEI2,1,14,18,1
	.member	_sASp_3,2,14,18,1
	.member	_sAPID2_1,3,14,18,1
	.member	_sBPEI1,4,14,18,1
	.member	_sBPEI2,5,14,18,1
	.member	_sBSp_3,6,14,18,1
	.member	_sBPID2_1,7,14,18,1
	.eos
	.utag	.fake27,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake28
	.eos
	.stag	.fake30,32
	.member	_sAPEI1_Call,0,14,18,1
	.member	_sAPEI2_Call,1,14,18,1
	.member	_sASp_2,2,14,18,1
	.member	_sASp_3,3,14,18,1
	.member	_sBPEI1_Call,4,14,18,1
	.member	_sBPEI2_Call,5,14,18,1
	.member	_sBSp_2,6,14,18,1
	.member	_sBSp_3,7,14,18,1
	.eos
	.utag	.fake29,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake30
	.eos
	.stag	.fake32,32
	.member	_sADPO,0,14,18,1
	.member	_sASp_2,1,14,18,1
	.member	_sASp_3,2,14,18,1
	.member	_sADPH,3,14,18,1
	.member	_sBDPO,4,14,18,1
	.member	_sBSp_2,5,14,18,1
	.member	_sBSp_3,6,14,18,1
	.member	_sBDPH,7,14,18,1
	.eos
	.utag	.fake31,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake32
	.eos
	.stag	.fake14,352
	.member	_CRA_1,0,9,8,32,.fake15
	.member	_CRA_2,32,9,8,32,.fake17
	.member	_CRA_3,64,9,8,32,.fake19
	.member	_CRA_4,96,9,8,32,.fake21
	.member	_CRA_5,128,9,8,32,.fake23
	.member	_CRA_6,160,9,8,32,.fake25
	.member	_CRA_7,192,9,8,32,.fake27
	.member	_CRA_8,224,9,8,32,.fake29
	.member	_CRA_9,256,9,8,32,.fake31
	.member	_CarNum_H,288,12,8,32
	.member	_CarNum_L,320,12,8,32
	.eos
	.sym	_CRA_STATION,0,8,13,352,.fake14
	.sym	_PCRA_STATION,0,24,13,32,.fake14
	.stag	.fake33,704
	.member	_sUnitStat,0,252,8,576,,9,2
	.member	_sCarNumBcd_H,576,252,8,64,,1,2
	.member	_sCarNumBcd_L,640,252,8,64,,1,2
	.eos
	.sym	_CARSTAT_PRO,0,8,13,704,.fake33
	.stag	.fake34,8576
	.member	_phHdBuf,0,8,8,416,.fake11
	.member	_sPAC_T,416,60,8,64,,2
	.member	_sC_ID,480,60,8,64,,2
	.member	_sDO,544,60,8,64,,2
	.member	_sD1,608,60,8,64,,2
	.member	_sD2,672,60,8,64,,2
	.member	_sODM,736,252,8,256,,4,2
	.member	_sANS,992,60,8,64,,2
	.member	_sTRAN_NO,1056,252,8,192,,3,2
	.member	_sCRAW_ID,1248,252,8,192,,3,2
	.member	_sTRIP,1440,252,8,192,,3,2
	.member	_sD3,1632,60,8,64,,2
	.member	_sSTST,1696,252,8,128,,2,2
	.member	_sNOST,1824,252,8,128,,2,2
	.member	_sNEST,1952,252,8,128,,2,2
	.member	_sDEST,2080,252,8,128,,2,2
	.member	_sSPK,2208,252,8,128,,2,2
	.member	_sD4,2336,60,8,64,,2
	.member	_sD5,2400,60,8,64,,2
	.member	_sPR,2464,60,8,64,,2
	.member	_sPRVector,2528,252,8,128,,2,2
	.member	_sPACVector,2656,252,8,128,,2,2
	.member	_sFDI_SDI_Color,2784,252,8,128,,2,2
	.member	_sFDI_SDI_Vector1,2912,252,8,128,,2,2
	.member	_sFDI_SDI_Vector2,3040,252,8,128,,2,2
	.member	_sPII_Vector,3168,252,8,128,,2,2
	.member	_sPP_Line_Vector,3296,252,8,128,,2,2
	.member	_sPP_Vector,3424,252,8,128,,2,2
	.member	_sSP_Vector,3552,252,8,128,,2,2
	.member	_sROUTE_SKIP,3680,252,8,640,,10,2
	.member	_sCI_Index,4320,252,8,512,,8,2
	.member	_sCI_Fault,4832,60,8,64,,2
	.member	_sCCI,4896,60,8,64,,2
	.member	_sCPI,4960,60,8,64,,2
	.member	_phCRA_Sta,5024,1020,8,2816,,4,11,2
	.member	_sTrainLength,7840,60,8,64,,2
	.member	_sCI_IndexLic,7904,252,8,512,,8,2
	.member	_nCRC,8416,60,8,128,,4
	.member	_btEot,8544,12,8,32
	.eos
	.sym	_PAC_PAC,0,8,13,8576,.fake34
	.sym	_PPAC_PAC,0,24,13,32,.fake34
	.stag	.fake35,4800
	.member	_phHdBuf,0,8,8,416,.fake11
	.member	_sDO,416,60,8,64,,2
	.member	_sTRAN_NO,480,252,8,192,,3,2
	.member	_sCRAW_ID,672,252,8,192,,3,2
	.member	_sTRIP,864,252,8,192,,3,2
	.member	_sD1,1056,60,8,64,,2
	.member	_sSTST,1120,252,8,128,,2,2
	.member	_sNOST,1248,252,8,128,,2,2
	.member	_sNEST,1376,252,8,128,,2,2
	.member	_sDEST,1504,252,8,128,,2,2
	.member	_sSPK,1632,252,8,128,,2,2
	.member	_sODM,1760,252,8,256,,4,2
	.member	_sD2,2016,252,8,128,,2,2
	.member	_sD3,2144,252,8,128,,2,2
	.member	_sPR,2272,60,8,64,,2
	.member	_sPRVector,2336,252,8,128,,2,2
	.member	_sPACVector,2464,252,8,128,,2,2
	.member	_sFDI_SDI_Color,2592,252,8,128,,2,2
	.member	_sFDI_SDI_Vector1,2720,252,8,128,,2,2
	.member	_sFDI_SDI_Vector2,2848,252,8,128,,2,2
	.member	_sPII_Vector,2976,252,8,128,,2,2
	.member	_sPP_Line_Vector,3104,252,8,128,,2,2
	.member	_sPP_Vector,3232,252,8,128,,2,2
	.member	_sSP_Vector,3360,252,8,128,,2,2
	.member	_sROUTE_SKIP,3488,252,8,640,,10,2
	.member	_sCI_Index,4128,252,8,512,,8,2
	.member	_nCRC,4640,60,8,128,,4
	.member	_btEot,4768,12,8,32
	.eos
	.sym	_CCP_PAC,0,8,13,4800,.fake35
	.sym	_PCCP_PAC,0,24,13,32,.fake35
	.stag	.fake38,32
	.member	_Sp_0,0,14,18,1
	.member	_Sp_1,1,14,18,1
	.member	_CI_Fault,2,14,18,1
	.member	_DST,3,14,18,1
	.member	_Sp_4,4,14,18,1
	.member	_Sp_5,5,14,18,1
	.member	_Sp_6,6,14,18,1
	.member	_Sp_7,7,14,18,1
	.eos
	.utag	.fake37,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake38
	.eos
	.stag	.fake40,32
	.member	_All_Doors_Closed,0,14,18,1
	.member	_EP_Mode,1,14,18,1
	.member	_Traction,2,14,18,1
	.member	_Atcive_Cab,3,14,18,1
	.member	_Sp_4,4,14,18,1
	.member	_Sp_5,5,14,18,1
	.member	_Sp_6,6,14,18,1
	.member	_Sp_7,7,14,18,1
	.eos
	.utag	.fake39,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake40
	.eos
	.stag	.fake36,704
	.member	_phHdBuf,0,8,8,416,.fake11
	.member	_DATA2,416,9,8,32,.fake37
	.member	_DATA1,448,9,8,32,.fake39
	.member	_CI_Index_Num,480,60,8,64,,2
	.member	_nCRC,544,60,8,128,,4
	.member	_btEot,672,12,8,32
	.eos
	.sym	_LICSD,0,8,13,704,.fake36
	.sym	_PLICSDR,0,24,13,32,.fake36
	.stag	.fake41,480
	.member	_btSoh,0,12,8,32
	.member	_chSrcDev,32,60,8,64,,2
	.member	_chDestDev,96,60,8,64,,2
	.member	_chMsgCnt,160,60,8,128,,4
	.member	_chCmdCode,288,60,8,64,,2
	.member	_chDataLen,352,60,8,128,,4
	.eos
	.sym	_CNCSHD,0,8,13,480,.fake41
	.sym	_PCNCSHD,0,24,13,32,.fake41
	.stag	.fake42,10208
	.member	_phHdBuf,0,8,8,480,.fake41
	.member	_sCommand,480,60,8,64,,2
	.member	_sCarKind,544,60,8,64,,2
	.member	_sTextDataAsc,608,60,8,9600,,300
	.eos
	.sym	_LIC_CNCS_HD,0,8,13,10208,.fake42
	.sym	_PLIC_CNCS_HD,0,24,13,32,.fake42
	.stag	.fake43,320
	.member	_chVer,0,50,8,128,,4
	.member	_chBuildDate,128,50,8,192,,6
	.eos
	.sym	_CNCS_LIC_VERBDD_SD,0,8,13,320,.fake43
	.sym	_PCNCS_LIC_VERBDD_SD,0,24,13,32,.fake43
	.stag	.fake44,8096
	.member	_VerCnt,0,13,8,32
	.member	_cvbBuf,32,56,8,8000,.fake43,25
	.member	_CarNum,8032,61,8,64,,2
	.eos
	.sym	_LIC_DPRAM_Ver,0,8,13,8096,.fake44
	.sym	_PLIC_DPRAM_Ver,0,24,13,32,.fake44
	.stag	.fake45,9600
	.member	_phHdBuf,0,8,8,480,.fake41
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
	.member	_cvbBuf,1312,56,8,8000,.fake43,25
	.member	_sRailNumVer,9312,60,8,128,,4
	.member	_nCRC,9440,60,8,128,,4
	.member	_btEot,9568,12,8,32
	.eos
	.sym	_CNCS_LIC_SD,0,8,13,9600,.fake45
	.sym	_PCNCS_LIC_SD,0,24,13,32,.fake45
	.stag	.fake46,896
	.member	_phHdBuf,0,8,8,480,.fake41
	.member	_sCommand,480,60,8,64,,2
	.member	_sTEXT,544,60,8,128,,4
	.member	_chContactSignalBuf,672,60,8,64,,2
	.member	_nCRC,736,60,8,128,,4
	.member	_btEot,864,12,8,32
	.eos
	.sym	_CNCS_LIC_T_F,0,8,13,896,.fake46
	.sym	_PCNCS_LIC_T_F,0,24,13,32,.fake46
	.stag	.fake47,832
	.member	_phHdBuf,0,8,8,480,.fake41
	.member	_sCommand,480,60,8,64,,2
	.member	_sTEXT,544,60,8,128,,4
	.member	_nCRC,672,60,8,128,,4
	.member	_btEot,800,12,8,32
	.eos
	.sym	_CNCS_LIC_T_F_C,0,8,13,832,.fake47
	.sym	_PCNCS_LIC_T_F_C,0,24,13,32,.fake47
	.stag	.fake48,96
	.member	_sChSum,0,60,8,64,,2
	.member	_sETX,64,12,8,32
	.eos
	.sym	_LIC_CNCS_ED,0,8,13,96,.fake48
	.sym	_PLIC_CNCS_ED,0,24,13,32,.fake48
	.stag	.fake50,32
	.member	_n1VTX,0,14,18,1
	.member	_n2CNCS,1,14,18,1
	.member	_n3PAC2,2,14,18,1
	.member	_n4LIC,3,14,18,1
	.member	_n5WLAN,4,14,18,1
	.member	_n6GPS,5,14,18,1
	.member	_n7PAC1,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake51,32
	.member	_n1DPO1,0,14,18,1
	.member	_n2DPO2,1,14,18,1
	.member	_n3CCP1,2,14,18,1
	.member	_n4CCP2,3,14,18,1
	.member	_n5TRIC1,4,14,18,1
	.member	_n6TRIC2,5,14,18,1
	.member	_n7TR1,6,14,18,1
	.member	_n8TR2,7,14,18,1
	.eos
	.stag	.fake52,32
	.member	_n1Sp,0,14,18,1
	.member	_n2Sp,1,14,18,1
	.member	_n3CPO1,2,14,18,1
	.member	_n4CPO2,3,14,18,1
	.member	_n5CPO3,4,14,18,1
	.member	_n6CPO4,5,14,18,1
	.member	_n7Sp,6,14,18,1
	.member	_n8Sp,7,14,18,1
	.eos
	.stag	.fake53,32
	.member	_n1PEI1,0,14,18,1
	.member	_n2PEI2,1,14,18,1
	.member	_n3PEI3,2,14,18,1
	.member	_n4PEI4,3,14,18,1
	.member	_n5PEI5,4,14,18,1
	.member	_n6PEI6,5,14,18,1
	.member	_n7FDI1,6,14,18,1
	.member	_n8FDI2,7,14,18,1
	.eos
	.stag	.fake54,32
	.member	_n1SDI1,0,14,18,1
	.member	_n2SDI2,1,14,18,1
	.member	_n3SDI3,2,14,18,1
	.member	_n4SDI4,3,14,18,1
	.member	_n5SDI5,4,14,18,1
	.member	_n6SDI6,5,14,18,1
	.member	_n7SDI7,6,14,18,1
	.member	_n8SDI8,7,14,18,1
	.eos
	.stag	.fake55,32
	.member	_n1PID1_1,0,14,18,1
	.member	_n2PID1_2,1,14,18,1
	.member	_n3PID1_3,2,14,18,1
	.member	_n4PID1_4,3,14,18,1
	.member	_n5PID1_5,4,14,18,1
	.member	_n6PID1_6,5,14,18,1
	.member	_n7PID1_7,6,14,18,1
	.member	_n8PID1_8,7,14,18,1
	.eos
	.stag	.fake56,32
	.member	_n1PID2_1,0,14,18,1
	.member	_n2PID2_2,1,14,18,1
	.member	_n3PID2_3,2,14,18,1
	.member	_n4PID2_4,3,14,18,1
	.member	_n5PII1,4,14,18,1
	.member	_n6PII2,5,14,18,1
	.member	_n7PII3,6,14,18,1
	.member	_n8PII4,7,14,18,1
	.eos
	.stag	.fake49,256
	.member	_BYTE_1,0,8,8,32,.fake50
	.member	_BYTE_2,32,8,8,32,.fake51
	.member	_BYTE_3,64,8,8,32,.fake52
	.member	_BYTE_4,96,8,8,32,.fake53
	.member	_BYTE_5,128,12,8,32
	.member	_BYTE_6,160,8,8,32,.fake54
	.member	_BYTE_7,192,8,8,32,.fake55
	.member	_BYTE_8,224,8,8,32,.fake56
	.eos
	.sym	_COMMSTATUS_PA,0,8,13,256,.fake49
	.sym	_PCOMMSTATUS_PA,0,24,13,32,.fake49
	.stag	.fake59,32
	.member	_nCcp,0,14,18,1
	.member	_nsp,1,14,18,1
	.member	_nVtx,2,14,18,1
	.member	_nVoip,3,14,18,1
	.member	_nPac,4,14,18,1
	.member	_nLic,5,14,18,1
	.member	_nFdi,6,14,18,1
	.member	_nSdi1,7,14,18,1
	.eos
	.utag	.fake58,32
	.member	_BYTE,0,12,11,32
	.member	_BIT,0,8,11,32,.fake59
	.eos
	.stag	.fake61,32
	.member	_nSdi2,0,14,18,1
	.member	_nSdi3,1,14,18,1
	.member	_nSdi4,2,14,18,1
	.member	_nPii1,3,14,18,1
	.member	_nPii2,4,14,18,1
	.member	_nPid1_1,5,14,18,1
	.member	_nPid1_2,6,14,18,1
	.member	_nPid1_3,7,14,18,1
	.eos
	.utag	.fake60,32
	.member	_BYTE,0,12,11,32
	.member	_BIT,0,8,11,32,.fake61
	.eos
	.stag	.fake63,32
	.member	_nPid1_4,0,14,18,1
	.member	_nPid2_1,1,14,18,1
	.member	_nCncs,2,14,18,1
	.member	_CRA_LAUN,3,14,18,1
	.member	_CRA_UP,4,14,18,1
	.member	_CRA_PP,5,14,18,1
	.member	_CRA_SP,6,14,18,1
	.member	_CRA_FTP,7,14,18,1
	.eos
	.utag	.fake62,32
	.member	_BYTE,0,12,11,32
	.member	_BIT,0,8,11,32,.fake63
	.eos
	.stag	.fake65,32
	.member	_nPei1,0,14,18,1
	.member	_nPei2,1,14,18,1
	.member	_sp_2,2,14,18,1
	.member	_sp_3,3,14,18,1
	.member	_nDpo,4,14,18,1
	.member	_sp_5,5,14,18,1
	.member	_sp_6,6,14,18,1
	.member	_nDph,7,14,18,1
	.eos
	.utag	.fake64,32
	.member	_BYTE,0,12,11,32
	.member	_BIT,0,8,11,32,.fake65
	.eos
	.stag	.fake67,32
	.member	_sp_0,0,14,18,1
	.member	_sp_1,1,14,18,1
	.member	_sp_2,2,14,18,1
	.member	_sp_3,3,14,18,1
	.member	_sp_4,4,14,18,1
	.member	_sp_5,5,14,18,1
	.member	_sp_6,6,14,18,1
	.member	_sp_7,7,14,18,1
	.eos
	.utag	.fake66,32
	.member	_BYTE,0,12,11,32
	.member	_BIT,0,8,11,32,.fake67
	.eos
	.stag	.fake57,160
	.member	_BYTE_1,0,9,8,32,.fake58
	.member	_BYTE_2,32,9,8,32,.fake60
	.member	_BYTE_3,64,9,8,32,.fake62
	.member	_BYTE_4,96,9,8,32,.fake64
	.member	_BYTE_5,128,9,8,32,.fake66
	.eos
	.sym	_COMMSTATUS_LIC,0,8,13,160,.fake57
	.sym	_PCOMMSTATUS_LIC,0,24,13,32,.fake57
	.etag	_eCDT_TYPE,32
	.member	_eCDT_A,0,4,16,32
	.member	_eCDT_B,1,4,16,32
	.member	_eCDT_MAXIMUM,2,4,16,32
	.eos
	.stag	.fake68,96
	.member	_nTCnt,0,4,8,32
	.member	_nStPosi,32,4,8,32
	.member	_nEdPosi,64,4,8,32
	.eos
	.sym	_T_FAULT_INFO,0,8,13,96,.fake68
	.sym	_PFAULT_INFO,0,24,13,32,.fake68
	.file	"Variable.h"
	.stag	.fake71,32
	.member	_Atcive_Cab,0,14,18,1
	.member	_Traction,1,14,18,1
	.member	_EP_Mode,2,14,18,1
	.member	_All_Doors_Closed,3,14,18,1
	.member	_Ci_CutOff,4,14,18,1
	.member	_Sp_5,5,14,18,1
	.member	_Sp_6,6,14,18,1
	.member	_Sp_7,7,14,18,1
	.eos
	.utag	.fake70,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake71
	.eos
	.stag	.fake69,11744
	.member	_LIC_VerList,0,242,8,7200,,25,9
	.member	_m_nUart1RxOneByteGapDelayTime,7200,14,8,32
	.member	_m_nUart2RxOneByteGapDelayTime,7232,14,8,32
	.member	_m_nUart3RxOneByteGapDelayTime,7264,14,8,32
	.member	_m_nUserDebug1msTimer,7296,14,8,32
	.member	_m_nTest1msTimer,7328,14,8,32
	.member	_m_tmCurTime,7360,8,8,224,.fake7
	.member	_m_tmUtcTime,7584,8,8,224,.fake7
	.member	_m_btCommSt,7808,60,8,256,,8
	.member	_m_btOldCommSt,8064,60,8,256,,8
	.member	_m_btSenseCommStBuf,8320,60,8,256,,8
	.member	_m_LIC_CNCS_Tx_Flag,8576,4,8,32
	.member	_m_LIC_CNCS_TX_DelyTime,8608,4,8,32
	.member	_m_nLnWkTxFlag,8640,4,8,32
	.member	_m_nFaultCnt,8672,4,8,32
	.member	_m_Recving_Posi,8704,4,8,32
	.member	_m_nCDT_FaultDataStFlag,8736,4,8,32
	.member	_m_TrainCofVal,8768,4,8,32
	.member	_m_TrainCofVal_Time_Flag,8800,4,8,32
	.member	_m_TrainCofVal_Chick,8832,4,8,32
	.member	_m_TrainCofVal_ing,8864,4,8,32
	.member	_m_nCarPos,8896,4,8,32
	.member	_m_nCarPos_Backup,8928,4,8,32
	.member	_m_btCiFaultVal,8960,4,8,32
	.member	_m_nCarNo,8992,13,8,32
	.member	_m_nCarNo_CncsRx,9024,13,8,32
	.member	_m_chCarKind,9056,2,8,32
	.member	_m_nCarKindToLonCnt,9088,4,8,32
	.member	_m_chCarKindNum,9120,2,8,32
	.member	_m_chCncsKindNum,9152,2,8,32
	.member	_m_bLnWkDbgTxFlag,9184,4,8,32
	.member	_m_nLnWkWaySideOnRxOk,9216,12,8,32
	.member	_m_nCarCnt,9248,12,8,32
	.member	_m_nNvsramPos,9280,14,8,32
	.member	_m_bLnWkFtpEndFlag,9312,4,8,32
	.member	_m_nDateTime2SecondCnt,9344,14,8,32
	.member	_m_nTxDbg1msTimer,9376,14,8,32
	.member	_m_nDbgTxPos,9408,14,8,32
	.member	_m_btExVersionTbl,9440,61,8,928,,29
	.member	_m_btExVersion_DAYTbl,10368,61,8,928,,29
	.member	_m_btCttSignalA,11296,9,8,32,.fake70
	.member	_m_btCttSignalB,11328,12,8,32
	.member	_m_LIC_CNCS_TimSetFlag,11360,4,8,32
	.member	_m_LIC_GIA_TimSetFlag,11392,4,8,32
	.member	_m_nCncsRxCheck1msTimer,11424,14,8,32
	.member	_m_nGiaRxCheck1msTimer,11456,14,8,32
	.member	_m_btTestOtherCiFault,11488,12,8,32
	.member	_m_bCiFaultFlag,11520,4,8,32
	.member	_m_tFaultInfo,11552,56,8,192,.fake68,2
	.eos
	.sym	_VARIABLE_H,0,8,13,11744,.fake69
	.sym	_PVARIABLE_H,0,24,13,32,.fake69
	.file	"LonInfo.h"
	.file	"xr16l784.h"
	.utag	.fake73,32
	.member	_btRxd,0,12,11,32
	.member	_btTxd,0,12,11,32
	.member	_btDll,0,12,11,32
	.eos
	.utag	.fake74,32
	.member	_btDlm,0,12,11,32
	.member	_btIer,0,12,11,32
	.eos
	.utag	.fake75,32
	.member	_btIir,0,12,11,32
	.member	_btFcr,0,12,11,32
	.eos
	.stag	.fake72,512
	.member	_CREG1,0,9,8,32,.fake73
	.member	_CREG2,32,9,8,32,.fake74
	.member	_CREG3,64,9,8,32,.fake75
	.member	_btLcr,96,12,8,32
	.member	_btMcr,128,12,8,32
	.member	_btLsr,160,12,8,32
	.member	_btMsr_U,192,12,8,32
	.member	_btScr,224,12,8,32
	.member	_btSp,256,60,8,256,,8
	.eos
	.sym	_XR16L784ST,0,8,13,512,.fake72
	.sym	_PXR16L784ST,0,24,13,32,.fake72
	.stag	.fake76,2048
	.member	_xr16Reg,0,56,8,2048,.fake72,4
	.eos
	.sym	_XR16L784BDY,0,8,13,2048,.fake76
	.sym	_PXR16L784BDY,0,24,13,32,.fake76
	.file	"user.c"
	.sect	 ".text"

	.global	_user_Init
	.sym	_user_Init,_user_Init,32,2,0
	.func	19
;******************************************************************************
;* FUNCTION NAME: _user_Init                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,r4,r5,ar0,ar1,fp,ir0,bk,sp,st           *
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
	.sym	_pLicVerDp,136,24,1,32,.fake44
	.line	1
;----------------------------------------------------------------------
;  19 | void user_Init()                                                       
;  21 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      136,sp
        push      r4
        push      r5
	.line	4
;----------------------------------------------------------------------
;  22 | int wCarNo = 0;                                                        
;  23 | UCHAR LL,LH,HL,HH;                                                     
;  24 | char szBuf[128];                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
;  25 | UCHAR *pDpram = (UCHAR *)DPRAM_BASE;                                   
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        sti       r0,*+fp(135)
	.line	9
;----------------------------------------------------------------------
;  27 | PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //¹öÀü Á¤º¸ Ã³¸
;     | ®¸¦ À§ÇØ ÀÓÀÇ·Î ¸¸µé¾ú´Ù.                                              
;----------------------------------------------------------------------
        ldiu      @CL2,r0
        sti       r0,*+fp(136)
	.line	11
;----------------------------------------------------------------------
;  29 | user_Variable_Init();                                                  
;  31 | // ÃÊ±âÈ­ÇÏ±â                                                          
;  32 | //timeGet(&m_tmCurTime);                                               
;----------------------------------------------------------------------
        call      _user_Variable_Init
                                        ; Call Occurs
	.line	15
;----------------------------------------------------------------------
;  33 | memset(m_Variable.m_btCommSt,0x00,sizeof(m_Variable.m_btCommSt)); //»óÅ
;     | Â µ¥ÀÌÅ¸ ÀúÀå ¹öÆÛ                                                     
;----------------------------------------------------------------------
        ldiu      8,r2
        ldiu      0,r1
        ldiu      @CL3,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
;  34 | memset(m_Variable.m_btOldCommSt,0x00,sizeof(m_Variable.m_btOldCommSt));
;     |  //»óÅÂ µ¥ÀÌÅ¸ ÀúÀå ¹öÆÛ                                               
;----------------------------------------------------------------------
        ldiu      @CL4,r2
        ldiu      0,r1
        ldiu      8,r0
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
;  35 | memset(m_Variable.m_btSenseCommStBuf,0x00,sizeof(m_Variable.m_btSenseCo
;     | mmStBuf)); //»óÅÂ µ¥ÀÌÅ¸ ÀúÀå ¹öÆÛ                                     
;----------------------------------------------------------------------
        ldiu      8,r0
        ldiu      0,r1
        push      r0
        push      r1
        ldiu      @CL5,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	19
;----------------------------------------------------------------------
;  37 | memset(m_Variable.m_btExVersionTbl,0x0000,sizeof(m_Variable.m_btExVersi
;     | onTbl));                                                               
;----------------------------------------------------------------------
        ldiu      29,r0
        ldiu      0,r1
        push      r0
        push      r1
        ldiu      @CL6,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	20
;----------------------------------------------------------------------
;  38 | memset(m_Variable.m_btExVersion_DAYTbl,0x0000,sizeof(m_Variable.m_btExV
;     | ersion_DAYTbl));                                                       
;----------------------------------------------------------------------
        ldiu      29,r0
        push      r0
        ldiu      @CL7,r2
        ldiu      0,r1
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	22
;----------------------------------------------------------------------
;  40 | m_Variable.m_LIC_CNCS_Tx_Flag = FALSE;                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+268
	.line	23
;----------------------------------------------------------------------
;  41 | m_Variable.m_LIC_CNCS_TX_DelyTime = 0;                                 
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+269
	.line	24
;----------------------------------------------------------------------
;  42 | m_Variable.m_nLnWkTxFlag = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+270
	.line	25
;----------------------------------------------------------------------
;  43 | m_Variable.m_nFaultCnt = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+271
	.line	26
;----------------------------------------------------------------------
;  44 | m_Variable.m_Recving_Posi = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+272
	.line	27
;----------------------------------------------------------------------
;  45 | m_Variable.m_nCDT_FaultDataStFlag = FALSE;                             
;  48 | //memset(&m_Variable,0x00,sizeof(m_Variable));                         
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+273
	.line	33
;----------------------------------------------------------------------
;  51 | for(i=0;i<VER_BDD_MAX_CNT;i++)                                         
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      25,r0
        bge       L19
;*      Branch Occurs to L19 
L2:        
	.line	36
;----------------------------------------------------------------------
;  54 | if(WORD_L(pLicVerDp->VerCnt) == TRUE)                                  
;  56 |         // ¹öÀü Á¤º¸°¡  '0' ~ '9' ¼ý°¡ÀÎÁö È®ÀÎ ÇÑ´Ù. --> ¾Æ´Ï¸é ÃÊ±âÈ­
;     |  ÇÑ´Ù.(¾²·¹±â °ªÀÌ µé¾î ÀÖ´Â °É·Î ÆÇ´Ü)                                
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
	.line	39
;----------------------------------------------------------------------
;  57 | if( !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chVer[0])) || !IsNumAsc(WORD_
;     | L(pLicVerDp->cvbBuf[i].chVer[1])) ||                                   
;  58 |         !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chVer[2])) || !IsNumAsc(W
;     | ORD_L(pLicVerDp->cvbBuf[i].chVer[3])) ||                               
;  60 |         !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[0])) || !IsNu
;     | mAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[1])) ||                   
;  61 |         !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[2])) || !IsNu
;     | mAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[3])) ||                   
;  62 |         !IsNumAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[4])) || !IsNu
;     | mAsc(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[5])))                     
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
	.line	46
;----------------------------------------------------------------------
;  64 | memset(pLicVerDp->cvbBuf[i].chVer,'0',4);                              
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
	.line	47
;----------------------------------------------------------------------
;  65 | memset(pLicVerDp->cvbBuf[i].chBuildDate,'0',6);                        
;  67 | else                                                                   
;  68 | {   //°¢ ÀåÄ¡ ¹öÀü Á¤º¸¸¦ ÀÐ¾î¿Â´Ù.                                    
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
	.line	51
;----------------------------------------------------------------------
;  69 | LH = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[0])),ConvA
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
	.line	52
;----------------------------------------------------------------------
;  70 | LL = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chVer[2])),ConvA
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
	.line	53
;----------------------------------------------------------------------
;  71 | m_Variable.m_btExVersionTbl[i] = MAKE_WORD(LH,LL);                     
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(4),r1
        and       *+fp(3),r0
        ash       8,r1
        or3       r1,r0,r0
        ldiu      @CL6,ar0
        ldiu      *+fp(1),ir0
        and       65535,r0
        sti       r0,*+ar0(ir0)
	.line	54
;----------------------------------------------------------------------
;  72 | HH = 0x20;                                                             
;----------------------------------------------------------------------
        ldiu      32,r0
        sti       r0,*+fp(6)
	.line	55
;----------------------------------------------------------------------
;  73 | HL = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[0]))
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
	.line	56
;----------------------------------------------------------------------
;  74 | LH = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[2]))
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
	.line	57
;----------------------------------------------------------------------
;  75 | LL = MAKE_BYTE(ConvAsc2Hex(WORD_L(pLicVerDp->cvbBuf[i].chBuildDate[4]))
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
	.line	59
;----------------------------------------------------------------------
;  77 | m_Variable.m_btExVersion_DAYTbl[i] = MAKE_DWORD(HH,HL,LH,LL);          
;  80 | else //ÇÑ¹øµµ ¹öÀü Á¤º¸ ÀÔ·ÂÀÌ µÇÁö¾ÊÀ» °æ¿ì 0 À¸·Î ÃÊ±âÈ­ ÇÑ´Ù.       
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
        ldiu      @CL7,ar0
        or3       r0,r1,r0
        ldiu      *+fp(1),ir0
        or3       r0,r2,r0
        sti       r0,*+ar0(ir0)
        bu        L18
;*      Branch Occurs to L18 
	.line	64
;----------------------------------------------------------------------
;  82 | pLicVerDp->VerCnt = TRUE;                                              
;----------------------------------------------------------------------
L17:        
        sti       r0,*ar0
	.line	65
;----------------------------------------------------------------------
;  83 | memset(pLicVerDp->cvbBuf[i].chVer,'0',4);                              
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
	.line	66
;----------------------------------------------------------------------
;  84 | memset(pLicVerDp->cvbBuf[i].chBuildDate,'0',6);                        
;  88 | // LIC-MPUÁ¦¾î±â ¹öÁ¯ & ºôµåµ¥ÀÌÆ®                                     
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
	.line	33
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      25,r0
        blt       L2
;*      Branch Occurs to L2 
L19:        
	.line	71
;----------------------------------------------------------------------
;  89 | m_Variable.m_btExVersionTbl[5] = MAKE_WORD(                            
;  90 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(1)/1000%10),ConvHex2Asc(GetFirmwareVersion(1)
;     | /100%10)),                                                             
;  91 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(1)/10%10),ConvHex2Asc(GetFirmwareVersion(1)%1
;     | 0))                                                                    
;  92 |                                                         );             
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
        sti       r0,@_m_Variable+300
        subi      1,sp
	.line	76
;----------------------------------------------------------------------
;  94 | m_Variable.m_btExVersion_DAYTbl[5] = MAKE_DWORD(                       
;  95 |                                                         0x20,          
;  96 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(2)/100000%10),ConvHex2Asc(GetFirmwareVersion(
;     | 2)/10000%10)),                                                         
;  97 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(2)/1000%10),ConvHex2Asc(GetFirmwareVersion(2)
;     | /100%10)),                                                             
;  98 |                                                         MAKE_BYTE(ConvH
;     | ex2Asc(GetFirmwareVersion(2)/10%10),ConvHex2Asc(GetFirmwareVersion(2)%1
;     | 0))                                                                    
;  99 |                                                         );             
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
        sti       r0,@_m_Variable+329
        subi      1,sp
	.line	83
;----------------------------------------------------------------------
; 101 | i = GetFirmwareVersion(1);                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _GetFirmwareVersion
                                        ; Call Occurs
        subi      1,sp
        sti       r0,*+fp(1)
	.line	84
;----------------------------------------------------------------------
; 102 | sprintf(szBuf,"Lonwork Monitor Program, Version:%d.%d%d%d\r\n",i/1000%1
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
	.line	85
;----------------------------------------------------------------------
; 103 | user_DebugPrint(szBuf);                                                
; 105 | // ¾îµå·¹½º¿¡ ´ëÇÑ ÃÊ±â ¼³Á¤ °ª.                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      7,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
	.line	88
;----------------------------------------------------------------------
; 106 | if(DI_ADDRESS_A)                                                       
;----------------------------------------------------------------------
        ldiu      @CL11,ar0
        ldiu      1,r0
        tstb3     *ar0,r0
        beqd      L26
	nop
        ldieq     @CL11,ar0
        ldieq     -1,r0
;*      Branch Occurs to L26 
	.line	90
;----------------------------------------------------------------------
; 108 | m_Variable.m_chCarKindNum = LIC_DEV_NO;                                
;----------------------------------------------------------------------
        ldiu      34,r0
        sti       r0,@_m_Variable+285
	.line	91
;----------------------------------------------------------------------
; 109 | m_Variable.m_chCncsKindNum = CNCS_DEV_NUM_A; //                        
;----------------------------------------------------------------------
        ldiu      36,r0
        sti       r0,@_m_Variable+286
	.line	93
;----------------------------------------------------------------------
; 111 | m_Variable.m_chCarKind = 'A';                                          
;----------------------------------------------------------------------
        ldiu      65,r0
        sti       r0,@_m_Variable+283
	.line	94
;----------------------------------------------------------------------
; 112 | m_Variable.m_nCarNo = MAKE_WORD(pLicVerDp->CarNum[0],pLicVerDp->CarNum[
;     | 1]);                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(136),ar1
        ldiu      ar1,ar0
        ldiu      *+ar1(251),r1
        ldiu      255,r0
        ash       8,r1
        and       *+ar0(252),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,@_m_Variable+281
	.line	95
;----------------------------------------------------------------------
; 113 | m_Variable.m_nCarNo_CncsRx = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+282
	.line	97
;----------------------------------------------------------------------
; 115 | m_Variable.m_nCarPos = 1;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_Variable+278
        bu        L28
;*      Branch Occurs to L28 
	.line	99
;----------------------------------------------------------------------
; 117 | else if(DI_ADDRESS_B)                                                  
;----------------------------------------------------------------------
L26:        
        lsh3      r0,*ar0,r0
        tstb      1,r0
        beq       L28
;*      Branch Occurs to L28 
	.line	101
;----------------------------------------------------------------------
; 119 | m_Variable.m_chCarKindNum = LIC_BAKDEV_NO;                             
;----------------------------------------------------------------------
        ldiu      38,r0
        sti       r0,@_m_Variable+285
	.line	102
;----------------------------------------------------------------------
; 120 | m_Variable.m_chCncsKindNum = CNCS_DEV_NUM_B; //                        
;----------------------------------------------------------------------
        ldiu      40,r0
        sti       r0,@_m_Variable+286
	.line	103
;----------------------------------------------------------------------
; 121 | m_Variable.m_chCarKind = 'B';                                          
;----------------------------------------------------------------------
        ldiu      66,r0
        sti       r0,@_m_Variable+283
	.line	104
;----------------------------------------------------------------------
; 122 | m_Variable.m_nCarNo = MAKE_WORD(pLicVerDp->CarNum[0],pLicVerDp->CarNum[
;     | 1]);                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(136),ar1
        ldiu      ar1,ar0
        ldiu      *+ar1(251),r1
        ldiu      255,r0
        ash       8,r1
        and       *+ar0(252),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,@_m_Variable+281
	.line	105
;----------------------------------------------------------------------
; 123 | m_Variable.m_nCarNo_CncsRx = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+282
	.line	106
;----------------------------------------------------------------------
; 124 | m_Variable.m_nCarPos = 2;                                              
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_m_Variable+278
L28:        
	.line	108
        pop       r5
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      138,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	126,000000030h,136


	.sect	 ".text"

	.global	_user_Variable_Init
	.sym	_user_Variable_Init,_user_Variable_Init,32,2,0
	.func	130
;******************************************************************************
;* FUNCTION NAME: _user_Variable_Init                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_user_Variable_Init:
	.line	1
;----------------------------------------------------------------------
; 130 | void user_Variable_Init()                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 132 | memset(&m_Variable,0x00,sizeof(VARIABLE_H));                           
;----------------------------------------------------------------------
        ldiu      367,r2
        ldiu      0,r0
        ldiu      @CL12,r1
        push      r2
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	5
;----------------------------------------------------------------------
; 134 | m_Variable.m_TrainCofVal = 0x8000;                                     
;----------------------------------------------------------------------
        ldiu      @CL13,r0
        sti       r0,@_m_Variable+274
	.line	7
;----------------------------------------------------------------------
; 136 | m_Variable.m_TrainCofVal_Time_Flag = 0;                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+275
	.line	8
;----------------------------------------------------------------------
; 137 | m_Variable.m_TrainCofVal_Chick = 0;                                    
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+276
	.line	11
;----------------------------------------------------------------------
; 140 | m_Variable.m_nCarPos = 0x8000;                                         
;----------------------------------------------------------------------
        ldiu      @CL13,r0
        sti       r0,@_m_Variable+278
	.line	12
;----------------------------------------------------------------------
; 141 | m_Variable.m_btCiFaultVal = 0x8000;                                    
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+280
	.line	13
;----------------------------------------------------------------------
; 142 | m_Variable.m_nCarNo = 0x8000;                                          
;----------------------------------------------------------------------
        ldiu      @CL14,r0
        sti       r0,@_m_Variable+281
	.line	14
;----------------------------------------------------------------------
; 143 | m_Variable.m_chCarKind = 'A';                                          
;----------------------------------------------------------------------
        ldiu      65,r0
        sti       r0,@_m_Variable+283
	.line	15
;----------------------------------------------------------------------
; 144 | m_Variable.m_bLnWkFtpEndFlag = FALSE;                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+291
	.line	16
;----------------------------------------------------------------------
; 145 | m_Variable.m_nDbgTxPos = 0xFFFFFFFF;                                   
;----------------------------------------------------------------------
        ldiu      @CL15,r0
        sti       r0,@_m_Variable+294
	.line	17
;----------------------------------------------------------------------
; 146 | m_Variable.m_btTestOtherCiFault = 0x8000;                              
;----------------------------------------------------------------------
        ldiu      @CL16,r0
        sti       r0,@_m_Variable+359
	.line	18
;----------------------------------------------------------------------
; 147 | m_Variable.m_bCiFaultFlag = FALSE;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+360
	.line	20
;----------------------------------------------------------------------
; 149 | strcpy(&m_Variable.LIC_VerList[0][0],"CCP");                           
;----------------------------------------------------------------------
        ldiu      @CL12,r1
        ldiu      @CL17,r0
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 150 | strcpy(&m_Variable.LIC_VerList[1][0],"CRA-LICL");                      
;----------------------------------------------------------------------
        ldiu      @CL19,r0
        ldiu      @CL18,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 151 | strcpy(&m_Variable.LIC_VerList[2][0],"CRA-VTX");                       
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        ldiu      @CL20,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 152 | strcpy(&m_Variable.LIC_VerList[3][0],"CRA-VOIP");                      
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        ldiu      @CL22,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 153 | strcpy(&m_Variable.LIC_VerList[4][0],"CRA-PAC");                       
;----------------------------------------------------------------------
        ldiu      @CL25,r0
        push      r0
        ldiu      @CL24,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 154 | strcpy(&m_Variable.LIC_VerList[5][0],"CRA-LICM");                      
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        ldiu      @CL26,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	26
;----------------------------------------------------------------------
; 155 | strcpy(&m_Variable.LIC_VerList[6][0],"FDI1");                          
;----------------------------------------------------------------------
        ldiu      @CL29,r0
        push      r0
        ldiu      @CL28,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	27
;----------------------------------------------------------------------
; 156 | strcpy(&m_Variable.LIC_VerList[7][0],"SDI1");                          
;----------------------------------------------------------------------
        ldiu      @CL31,r0
        push      r0
        ldiu      @CL30,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	28
;----------------------------------------------------------------------
; 157 | strcpy(&m_Variable.LIC_VerList[8][0],"SDI2");                          
;----------------------------------------------------------------------
        ldiu      @CL33,r0
        push      r0
        ldiu      @CL32,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	29
;----------------------------------------------------------------------
; 158 | strcpy(&m_Variable.LIC_VerList[9][0],"SDI3");                          
;----------------------------------------------------------------------
        ldiu      @CL35,r0
        ldiu      @CL34,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	30
;----------------------------------------------------------------------
; 159 | strcpy(&m_Variable.LIC_VerList[10][0],"SDI4");                         
;----------------------------------------------------------------------
        ldiu      @CL37,r0
        ldiu      @CL36,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	31
;----------------------------------------------------------------------
; 160 | strcpy(&m_Variable.LIC_VerList[11][0],"PII1");                         
;----------------------------------------------------------------------
        ldiu      @CL39,r0
        ldiu      @CL38,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 161 | strcpy(&m_Variable.LIC_VerList[12][0],"PII2");                         
;----------------------------------------------------------------------
        ldiu      @CL41,r0
        push      r0
        ldiu      @CL40,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	33
;----------------------------------------------------------------------
; 162 | strcpy(&m_Variable.LIC_VerList[13][0],"VRX1");                         
;----------------------------------------------------------------------
        ldiu      @CL43,r0
        ldiu      @CL42,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 163 | strcpy(&m_Variable.LIC_VerList[14][0],"VRX2");                         
;----------------------------------------------------------------------
        ldiu      @CL45,r0
        push      r0
        ldiu      @CL44,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	35
;----------------------------------------------------------------------
; 164 | strcpy(&m_Variable.LIC_VerList[15][0],"VRX3");                         
;----------------------------------------------------------------------
        ldiu      @CL47,r0
        ldiu      @CL46,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	36
;----------------------------------------------------------------------
; 165 | strcpy(&m_Variable.LIC_VerList[16][0],"VRX4");                         
;----------------------------------------------------------------------
        ldiu      @CL49,r0
        ldiu      @CL48,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	37
;----------------------------------------------------------------------
; 166 | strcpy(&m_Variable.LIC_VerList[17][0],"VRX5");                         
;----------------------------------------------------------------------
        ldiu      @CL51,r0
        push      r0
        ldiu      @CL50,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	38
;----------------------------------------------------------------------
; 167 | strcpy(&m_Variable.LIC_VerList[18][0],"CRA-MAIN");                     
;----------------------------------------------------------------------
        ldiu      @CL53,r0
        push      r0
        ldiu      @CL52,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	39
;----------------------------------------------------------------------
; 168 | strcpy(&m_Variable.LIC_VerList[19][0],"CRA-LAUN");                     
;----------------------------------------------------------------------
        ldiu      @CL55,r0
        push      r0
        ldiu      @CL54,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	40
;----------------------------------------------------------------------
; 169 | strcpy(&m_Variable.LIC_VerList[20][0],"CRA-UP");                       
;----------------------------------------------------------------------
        ldiu      @CL57,r0
        ldiu      @CL56,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	41
;----------------------------------------------------------------------
; 170 | strcpy(&m_Variable.LIC_VerList[21][0],"CRA-PP");                       
;----------------------------------------------------------------------
        ldiu      @CL59,r0
        ldiu      @CL58,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	42
;----------------------------------------------------------------------
; 171 | strcpy(&m_Variable.LIC_VerList[22][0],"CRA-SP");                       
;----------------------------------------------------------------------
        ldiu      @CL61,r0
        ldiu      @CL60,r1
        push      r0
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	43
;----------------------------------------------------------------------
; 172 | strcpy(&m_Variable.LIC_VerList[23][0],"CRA-FTP");                      
;----------------------------------------------------------------------
        ldiu      @CL63,r0
        push      r0
        ldiu      @CL62,r1
        push      r1
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	44
;----------------------------------------------------------------------
; 173 | strcpy(&m_Variable.LIC_VerList[24][0],"CRA-CDT");                      
;----------------------------------------------------------------------
        ldiu      @CL64,r0
        ldiu      @CL65,r1
        push      r1
        push      r0
        call      _strcpy
                                        ; Call Occurs
        subi      2,sp
	.line	45
;----------------------------------------------------------------------
; 174 | m_Variable.LIC_VerList[25][0] = NULL;                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+225
	.line	47
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	176,000000000h,0


	.sect	 ".text"

	.global	_user_Loop
	.sym	_user_Loop,_user_Loop,32,2,0
	.func	180
;******************************************************************************
;* FUNCTION NAME: _user_Loop                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_user_Loop:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 180 | void user_Loop()                                                       
; 182 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 184 | LonWorkLoop();                                                         
;----------------------------------------------------------------------
        call      _LonWorkLoop
                                        ; Call Occurs
	.line	7
;----------------------------------------------------------------------
; 186 | DebugLoop();                                                           
;----------------------------------------------------------------------
        call      _DebugLoop
                                        ; Call Occurs
	.line	9
;----------------------------------------------------------------------
; 188 | user_WithCncsRs232Loop();                                              
;----------------------------------------------------------------------
        call      _user_WithCncsRs232Loop
                                        ; Call Occurs
	.line	11
;----------------------------------------------------------------------
; 190 | user_WithPacRs485Loop();                                               
;----------------------------------------------------------------------
        call      _user_WithPacRs485Loop
                                        ; Call Occurs
	.line	13
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	192,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_nRxPos$1+0,32
	.field  	0,32		; _nRxPos$1 @ 0

	.sect	".text"

	.sect	".cinit"
	.field  	1,32
	.field  	_nOldUart3RxOneByteGapDelayTime$2+0,32
	.field  	0,32		; _nOldUart3RxOneByteGapDelayTime$2 @ 0

	.sect	".text"
	.sect	 ".text"

	.global	_user_Lic2LicLoop
	.sym	_user_Lic2LicLoop,_user_Lic2LicLoop,32,2,0
	.func	198
;******************************************************************************
;* FUNCTION NAME: _user_Lic2LicLoop                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,sp,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 258 Auto + 0 SOE = 260 words      *
;******************************************************************************
_user_Lic2LicLoop:
	.bss	_nRxPos$1,1
	.sym	_nRxPos,_nRxPos$1,4,3,32
	.bss	_nOldUart3RxOneByteGapDelayTime$2,1
	.sym	_nOldUart3RxOneByteGapDelayTime,_nOldUart3RxOneByteGapDelayTime$2,12,3,32
	.bss	_btRx3chBuf_Test$3,256
	.sym	_btRx3chBuf_Test,_btRx3chBuf_Test$3,60,3,8192,,256
	.sym	_nTxPos,1,4,1,32
	.sym	_btBuf,2,60,1,4096,,128
	.sym	_btTxBuf,130,60,1,4096,,128
	.sym	_nRxLen,258,4,1,32
	.line	1
;----------------------------------------------------------------------
; 198 | void user_Lic2LicLoop()                                                
; 200 | int nTxPos;                                                            
; 201 | UCHAR btBuf[128];                                                      
; 202 | UCHAR btTxBuf[128];                                                    
; 203 | int nRxLen;                                                            
; 204 | static int nRxPos = 0;                                                 
; 205 | static UCHAR nOldUart3RxOneByteGapDelayTime = 0;                       
; 206 | static UCHAR btRx3chBuf_Test[256];                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      258,sp
	.line	11
;----------------------------------------------------------------------
; 208 | m_Variable.m_bCiFaultFlag = m_Variable.m_btCttSignalA.BIT.Ci_CutOff ? T
;     | RUE : FALSE;                                                           
;----------------------------------------------------------------------
        ldiu      16,r0
        tstb      @_m_Variable+353,r0
        beq       L40
;*      Branch Occurs to L40 
        bud       L41
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L41 
L40:        
        ldiu      0,r0
L41:        
        sti       r0,@_m_Variable+360
	.line	13
;----------------------------------------------------------------------
; 210 | if(m_Variable.m_nCarPos >= 1 && m_Variable.m_nCarPos <= 8) m_Variable.m
;     | _btCiFaultVal = MASKBIT(m_Variable.m_bCiFaultFlag,m_Variable.m_nCarPos-
;     | 1);                                                                    
; 212 | // Àü¼ÛÇÏ±â                                                            
;----------------------------------------------------------------------
        ldi       @_m_Variable+278,r0
        ble       L44
;*      Branch Occurs to L44 
        cmpi      8,r0
        bgt       L44
;*      Branch Occurs to L44 
        ldiu      1,r0
        ldiu      1,r1
        and       @_m_Variable+360,r0
        subri     @_m_Variable+278,r1
        ash3      r1,r0,r0
        sti       r0,@_m_Variable+280
L44:        
	.line	16
;----------------------------------------------------------------------
; 213 | if(m_Variable.m_nTest1msTimer > 100) // 100ms ÀÌÈÄ¿¡´Â Áö¼ÓÀûÀ¸·Î A ->
;     | B ·Î Àü¼Û ÇÑ´Ù.                                                        
;----------------------------------------------------------------------
        ldiu      @_m_Variable+229,r0
        cmpi      100,r0
        bls       L47
;*      Branch Occurs to L47 
	.line	18
;----------------------------------------------------------------------
; 215 | m_Variable.m_nTest1msTimer = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+229
	.line	20
;----------------------------------------------------------------------
; 217 | if(m_Variable.m_chCarKind == 'A')                                      
;----------------------------------------------------------------------
        ldiu      @_m_Variable+283,r0
        cmpi      65,r0
        bne       L47
;*      Branch Occurs to L47 
	.line	22
;----------------------------------------------------------------------
; 219 | nTxPos = 0;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	23
;----------------------------------------------------------------------
; 220 | btTxBuf[nTxPos++] = 0x02;                                              
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      2,r1
        ldiu      r0,ir0
        addi      130,ar0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	24
;----------------------------------------------------------------------
; 221 | btTxBuf[nTxPos++] = m_Variable.m_btCiFaultVal;                         
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r0
        addi      130,ar0
        ldiu      *+fp(1),ir0
        ldiu      @_m_Variable+280,r1
        addi      ir0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	25
;----------------------------------------------------------------------
; 222 | btTxBuf[nTxPos++] = m_Variable.m_btCiFaultVal;                         
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        addi      ir0,r0
        sti       r0,*+fp(1)
        addi      130,ar0
        ldiu      @_m_Variable+280,r1
        sti       r1,*+ar0(ir0)
	.line	26
;----------------------------------------------------------------------
; 223 | btTxBuf[nTxPos++] = 0x03;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        addi      ir0,r0
        addi      130,ar0
        ldiu      3,r1
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
	.line	28
;----------------------------------------------------------------------
; 225 | xr16l784_RtsDelayStartSend(XR16L784_3CHL,(UCHAR *)btTxBuf,nTxPos,1);   
; 229 | // ¼ö½Å ¹Þ±â                                                           
;----------------------------------------------------------------------
        ldiu      2,r2
        ldiu      1,r1
        push      r1
        ldiu      *+fp(1),r1
        push      r1
        ldiu      fp,r0
        addi      130,r0
        push      r0
        push      r2
        call      _xr16l784_RtsDelayStartSend
                                        ; Call Occurs
        subi      4,sp
L47:        
	.line	33
;----------------------------------------------------------------------
; 230 | nRxLen = user_PacRx(btBuf,128);                                        
;----------------------------------------------------------------------
        ldiu      128,r1
        ldiu      fp,r0
        push      r1
        addi      2,r0
        push      r0
        call      _user_PacRx
                                        ; Call Occurs
        ldiu      258,ir0
        subi      2,sp
        sti       r0,*+fp(ir0)
	.line	34
;----------------------------------------------------------------------
; 231 | if(nRxLen)                                                             
;----------------------------------------------------------------------
        ldi       *+fp(ir0),r0
        beq       L52
;*      Branch Occurs to L52 
	.line	36
;----------------------------------------------------------------------
; 233 | if(!m_Variable.m_nUart3RxOneByteGapDelayTime) nRxPos = 0;              
;----------------------------------------------------------------------
        ldi       @_m_Variable+227,r0
        bne       L50
;*      Branch Occurs to L50 
        ldiu      0,r0
        sti       r0,@_nRxPos$1+0
L50:        
	.line	37
;----------------------------------------------------------------------
; 234 | nOldUart3RxOneByteGapDelayTime = m_Variable.m_nUart3RxOneByteGapDelayTi
;     | me = 10;                                                               
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_m_Variable+227
        sti       r0,@_nOldUart3RxOneByteGapDelayTime$2+0
	.line	39
;----------------------------------------------------------------------
; 236 | if(nRxPos + nRxLen < 250)                                              
;----------------------------------------------------------------------
        ldiu      258,ir0
        ldiu      *+fp(ir0),r0
        addi      @_nRxPos$1+0,r0
        cmpi      250,r0
        bge       L52
;*      Branch Occurs to L52 
	.line	41
;----------------------------------------------------------------------
; 238 | memcpy(&btRx3chBuf_Test[nRxPos],btBuf,nRxLen);                         
;----------------------------------------------------------------------
        ldiu      @CL66,r0
        ldiu      fp,r2
        ldiu      *+fp(ir0),r1
        addi      @_nRxPos$1+0,r0       ; Unsigned
        addi      2,r2
        push      r1
        push      r2
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	42
;----------------------------------------------------------------------
; 239 | nRxPos += nRxLen;                                                      
;----------------------------------------------------------------------
        ldiu      258,ir0
        ldiu      *+fp(ir0),r0
        addi      @_nRxPos$1+0,r0
        sti       r0,@_nRxPos$1+0
L52:        
	.line	46
;----------------------------------------------------------------------
; 243 | if(nOldUart3RxOneByteGapDelayTime && !m_Variable.m_nUart3RxOneByteGapDe
;     | layTime)                                                               
;----------------------------------------------------------------------
        ldi       @_nOldUart3RxOneByteGapDelayTime$2+0,r0
        beq       L60
;*      Branch Occurs to L60 
        ldi       @_m_Variable+227,r0
        bne       L60
;*      Branch Occurs to L60 
	.line	48
;----------------------------------------------------------------------
; 245 | if(nRxPos >= 4)                                                        
;----------------------------------------------------------------------
        ldiu      @_nRxPos$1+0,r0
        cmpi      4,r0
        blt       L59
;*      Branch Occurs to L59 
	.line	50
;----------------------------------------------------------------------
; 247 | if(btRx3chBuf_Test[0] == 0x02 && btRx3chBuf_Test[3] == 0x03 && btRx3chB
;     | uf_Test[1] == btRx3chBuf_Test[2])                                      
;----------------------------------------------------------------------
        ldiu      @_btRx3chBuf_Test$3+0,r0
        cmpi      2,r0
        bne       L59
;*      Branch Occurs to L59 
        ldiu      @_btRx3chBuf_Test$3+3,r0
        cmpi      3,r0
        bne       L59
;*      Branch Occurs to L59 
        ldiu      @_btRx3chBuf_Test$3+1,r0
        cmpi      @_btRx3chBuf_Test$3+2,r0
        bne       L59
;*      Branch Occurs to L59 
	.line	52
;----------------------------------------------------------------------
; 249 | m_Variable.m_btTestOtherCiFault = btRx3chBuf_Test[1];                  
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+359
	.line	54
;----------------------------------------------------------------------
; 251 | nTxPos = 0;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	55
;----------------------------------------------------------------------
; 252 | btTxBuf[nTxPos++] = 0x02;                                              
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r1
        addi      130,ar0
        ldiu      r0,ir0
        addi      ir0,r1
        ldiu      2,r0
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	56
;----------------------------------------------------------------------
; 253 | btTxBuf[nTxPos++] = m_Variable.m_btCiFaultVal;                         
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      130,ar0
        addi      ir0,r1
        ldiu      @_m_Variable+280,r0
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	57
;----------------------------------------------------------------------
; 254 | btTxBuf[nTxPos++] = m_Variable.m_btCiFaultVal;                         
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      130,ar0
        addi      ir0,r1
        sti       r1,*+fp(1)
        ldiu      @_m_Variable+280,r0
        sti       r0,*+ar0(ir0)
	.line	58
;----------------------------------------------------------------------
; 255 | btTxBuf[nTxPos++] = 0x03;                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(1),ir0
        addi      ir0,r1
        ldiu      3,r0
        ldiu      fp,ar0
        addi      130,ar0
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
	.line	60
;----------------------------------------------------------------------
; 257 | xr16l784_RtsDelayStartSend(XR16L784_3CHL,(UCHAR *)btTxBuf,nTxPos,10);  
;----------------------------------------------------------------------
        ldiu      10,r2
        push      r2
        ldiu      *+fp(1),r2
        push      r2
        ldiu      fp,r0
        addi      130,r0
        push      r0
        ldiu      2,r1
        push      r1
        call      _xr16l784_RtsDelayStartSend
                                        ; Call Occurs
        subi      4,sp
L59:        
	.line	64
;----------------------------------------------------------------------
; 261 | nOldUart3RxOneByteGapDelayTime = m_Variable.m_nUart3RxOneByteGapDelayTi
;     | me;                                                                    
;----------------------------------------------------------------------
        ldiu      @_m_Variable+227,r0
        sti       r0,@_nOldUart3RxOneByteGapDelayTime$2+0
L60:        
	.line	66
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      260,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	263,000000000h,258


	.sect	 ".text"

	.global	_user_IsSingleOrMarried
	.sym	_user_IsSingleOrMarried,_user_IsSingleOrMarried,36,2,0
	.func	274
;******************************************************************************
;* FUNCTION NAME: _user_IsSingleOrMarried                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_user_IsSingleOrMarried:
	.line	1
;----------------------------------------------------------------------
; 274 | int user_IsSingleOrMarried()                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 276 | return 1;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
	.line	4
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	277,000000000h,0


	.sect	 ".text"

	.global	_user_DebugRx
	.sym	_user_DebugRx,_user_DebugRx,36,2,0
	.func	282
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
; 282 | int user_DebugRx(UCHAR *pBuf,int nRxBuffLen)                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 284 | return xr16l784_GetRxBuffer1Ch(pBuf,nRxBuffLen);                       
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
	.endfunc	285,000000000h,0


	.sect	 ".text"

	.global	_user_DebugPrint
	.sym	_user_DebugPrint,_user_DebugPrint,32,2,0
	.func	287
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
; 287 | void user_DebugPrint(char *pTxBuf)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 289 | xr16l784_Send(XR16L784_1CHL,(UCHAR *)pTxBuf,strlen(pTxBuf));           
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
	.endfunc	290,000000000h,0


	.sect	 ".text"

	.global	_user_CncsRx
	.sym	_user_CncsRx,_user_CncsRx,36,2,0
	.func	293
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
;----------------------------------------------------------------------
; 293 | int user_CncsRx(UCHAR *pBuf,int nRxBuffLen)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 295 | return xr16l784_GetRxBuffer2Ch(pBuf,nRxBuffLen);                       
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
	.endfunc	296,000000000h,0


	.sect	 ".text"

	.global	_user_CncsTx
	.sym	_user_CncsTx,_user_CncsTx,32,2,0
	.func	298
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
;----------------------------------------------------------------------
; 298 | void user_CncsTx(UCHAR *pTxBuf,int nTxLen)                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 300 | xr16l784_RtsDelayStartSend(XR16L784_2CHL,(UCHAR *)pTxBuf,nTxLen,10);   
; 301 | //xr16l784_Send(XR16L784_2CHL,(UCHAR *)pTxBuf,nTxLen);                 
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
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	302,000000000h,0


	.sect	 ".text"

	.global	_user_PacRx
	.sym	_user_PacRx,_user_PacRx,36,2,0
	.func	306
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
;----------------------------------------------------------------------
; 306 | int user_PacRx(UCHAR *pBuf,int nRxBuffLen)                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 308 | return xr16l784_GetRxBuffer3Ch(pBuf,nRxBuffLen);                       
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
	.endfunc	309,000000000h,0


	.sect	 ".text"

	.global	_user_PacTx
	.sym	_user_PacTx,_user_PacTx,32,2,0
	.func	311
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
;----------------------------------------------------------------------
; 311 | void user_PacTx(UCHAR *pTxBuf,int nTxLen)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 313 | xr16l784_RtsDelayStartSend(XR16L784_3CHL,(UCHAR *)pTxBuf,nTxLen,10);   
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
	.endfunc	314,000000000h,0


	.sect	 ".text"

	.global	_BitSwap
	.sym	_BitSwap,_BitSwap,44,2,0
	.func	321
;******************************************************************************
;* FUNCTION NAME: _BitSwap                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_BitSwap:
	.sym	_btDat,-2,12,9,32
	.sym	_btBuf,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 321 | UCHAR BitSwap(UCHAR btDat)                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 323 | UCHAR btBuf = 0x00;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 325 | btBuf |= MASKBIT(btDat&0x01?1:0,7);                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      *-fp(2),r0
        beq       L85
;*      Branch Occurs to L85 
        bu        L86
;*      Branch Occurs to L86 
L85:        
        ldiu      0,r0
L86:        
        and       1,r0
        ash       7,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 326 | btBuf |= MASKBIT(btDat&0x02?1:0,6);                                    
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *-fp(2),r0
        beq       L88
;*      Branch Occurs to L88 
        bud       L89
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L89 
L88:        
        ldiu      0,r0
L89:        
        and       1,r0
        ash       6,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 327 | btBuf |= MASKBIT(btDat&0x04?1:0,5);                                    
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *-fp(2),r0
        beq       L91
;*      Branch Occurs to L91 
        bud       L92
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L92 
L91:        
        ldiu      0,r0
L92:        
        and       1,r0
        ash       5,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
; 328 | btBuf |= MASKBIT(btDat&0x08?1:0,4);                                    
;----------------------------------------------------------------------
        ldiu      8,r0
        tstb      *-fp(2),r0
        beq       L94
;*      Branch Occurs to L94 
        bud       L95
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L95 
L94:        
        ldiu      0,r0
L95:        
        and       1,r0
        ash       4,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	9
;----------------------------------------------------------------------
; 329 | btBuf |= MASKBIT(btDat&0x10?1:0,3);                                    
;----------------------------------------------------------------------
        ldiu      16,r0
        tstb      *-fp(2),r0
        beq       L97
;*      Branch Occurs to L97 
        bud       L98
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L98 
L97:        
        ldiu      0,r0
L98:        
        and       1,r0
        ash       3,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	10
;----------------------------------------------------------------------
; 330 | btBuf |= MASKBIT(btDat&0x20?1:0,2);                                    
;----------------------------------------------------------------------
        ldiu      32,r0
        tstb      *-fp(2),r0
        beq       L100
;*      Branch Occurs to L100 
        bud       L101
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L101 
L100:        
        ldiu      0,r0
L101:        
        and       1,r0
        ash       2,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	11
;----------------------------------------------------------------------
; 331 | btBuf |= MASKBIT(btDat&0x40?1:0,1);                                    
;----------------------------------------------------------------------
        ldiu      64,r0
        tstb      *-fp(2),r0
        beq       L103
;*      Branch Occurs to L103 
        bud       L104
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L104 
L103:        
        ldiu      0,r0
L104:        
        and       1,r0
        ash       1,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	12
;----------------------------------------------------------------------
; 332 | btBuf |= MASKBIT(btDat&0x80?1:0,0);                                    
;----------------------------------------------------------------------
        ldiu      128,r0
        tstb      *-fp(2),r0
        beq       L106
;*      Branch Occurs to L106 
        bud       L107
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L107 
L106:        
        ldiu      0,r0
L107:        
        and       1,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	14
;----------------------------------------------------------------------
; 334 | return btBuf;                                                          
;----------------------------------------------------------------------
	.line	15
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	335,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_MDS_info+0,32
	.field  	0,32		; _d_MDS_info @ 0

	.sect	".text"

	.global	_d_MDS_info
	.bss	_d_MDS_info,1
	.sym	_d_MDS_info,_d_MDS_info,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nRxPos$4+0,32
	.field  	0,32		; _nRxPos$4 @ 0

	.sect	".text"

	.sect	".cinit"
	.field  	1,32
	.field  	_nOldUart2RxOneByteGapDelayTime$5+0,32
	.field  	0,32		; _nOldUart2RxOneByteGapDelayTime$5 @ 0

	.sect	".text"

	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeSendCnt$8+0,32
	.field  	0,32		; _nTimeSendCnt$8 @ 0

	.sect	".text"
	.sect	 ".text"

	.global	_user_WithCncsRs232Loop
	.sym	_user_WithCncsRs232Loop,_user_WithCncsRs232Loop,32,2,0
	.func	341
;******************************************************************************
;* FUNCTION NAME: _user_WithCncsRs232Loop                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,r4,r5,ar0,ar1,fp,ir0,ir1,sp,st          *
;*   Regs Saved         : r4,r5                                               *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 999 Auto + 2 SOE = 1003 words     *
;******************************************************************************
_user_WithCncsRs232Loop:
	.bss	_nRxPos$4,1
	.sym	_nRxPos,_nRxPos$4,4,3,32
	.bss	_nOldUart2RxOneByteGapDelayTime$5,1
	.sym	_nOldUart2RxOneByteGapDelayTime,_nOldUart2RxOneByteGapDelayTime$5,12,3,32
	.bss	_btRx2chBuf$6,512
	.sym	_btRx2chBuf,_btRx2chBuf$6,60,3,16384,,512
	.bss	_btTx2chBuf$7,512
	.sym	_btTx2chBuf,_btTx2chBuf$7,60,3,16384,,512
	.bss	_nTimeSendCnt$8,1
	.sym	_nTimeSendCnt,_nTimeSendCnt$8,4,3,32
	.sym	_i,1,4,1,32
	.sym	_nRxLen,2,4,1,32
	.sym	_RxBuf,3,60,1,320,,10
	.sym	_btTmp,13,12,1,32
	.sym	_btBuf,14,60,1,8192,,256
	.sym	_sTimeBuf,270,60,1,320,,10
	.sym	_sPotoLen,280,4,1,32
	.sym	_sBcc,281,12,1,32
	.sym	_LL,282,12,1,32
	.sym	_LH,283,12,1,32
	.sym	_HL,284,12,1,32
	.sym	_HH,285,12,1,32
	.sym	_nBlkSize,286,4,1,32
	.sym	_nTempBlkEnd,287,4,1,32
	.sym	_sTxDataSize,288,4,1,32
	.sym	_btTxBuf,289,60,1,4096,,128
	.sym	_szBuf,417,50,1,16384,,512
	.sym	_szBuf2,929,50,1,2048,,64
	.sym	_pNvsram,993,28,1,32
	.sym	_pLicVerDp,994,24,1,32,.fake44
	.sym	_pLic_Cncs,995,24,1,32,.fake42
	.sym	_pCncsLicSd,996,24,1,32,.fake45
	.sym	_pCnsc_Lic_T_F,997,24,1,32,.fake46
	.sym	_pCncs_Lic_T_F_C,998,24,1,32,.fake47
	.sym	_pInfo,999,24,1,32,.fake68
	.line	1
;----------------------------------------------------------------------
; 341 | void user_WithCncsRs232Loop()                                          
; 343 | int i;                                                                 
; 344 | int nRxLen;                                                            
; 345 | UCHAR RxBuf[10];                                                       
; 346 | UCHAR btTmp;                                                           
; 347 | UCHAR btBuf[256]; //¼ö½Å ·¹Áö½ºÆ®¿¡¼­ ÀÐ¾î ¿À´Â º¯¼ö                   
; 348 | UCHAR sTimeBuf[10];//½Ã°£ Àü¼Û ¹öÆÛ.                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      999,sp
        push      r4
        push      r5
	.line	9
;----------------------------------------------------------------------
; 349 | int sPotoLen = 0; //ºí·® ÆÐÅ¶ Index.                                   
;----------------------------------------------------------------------
        ldiu      280,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 350 | UCHAR sBcc = 0;                                                        
; 351 | static int nRxPos = 0; //¼ö½Å Ä«¿îÅÍ.                                  
; 352 | static UCHAR nOldUart2RxOneByteGapDelayTime = 0; //10ms ÀÌ»ó ¼ö½ÅÀÌ ¾Êµ
;     | Ç¸é ¼ö½Å Ã³¸® ÇÑ´Ù.                                                    
; 353 | static UCHAR btRx2chBuf[512]; //¼ö½Å ¹öÆÛ                              
; 354 | static UCHAR btTx2chBuf[512]; //Àü¼Û ¹öÆÛ.                             
; 355 | static int nTimeSendCnt = 0;                                           
; 356 | UCHAR LL,LH,HL,HH;                                                     
;----------------------------------------------------------------------
        ldiu      281,ir0
        sti       r0,*+fp(ir0)
	.line	18
;----------------------------------------------------------------------
; 358 | int nBlkSize = 0;                                                      
;----------------------------------------------------------------------
        ldiu      286,ir0
        sti       r0,*+fp(ir0)
	.line	19
;----------------------------------------------------------------------
; 359 | int nTempBlkEnd = 0;                                                   
;----------------------------------------------------------------------
        ldiu      287,ir0
        sti       r0,*+fp(ir0)
	.line	20
;----------------------------------------------------------------------
; 360 | int sTxDataSize = 0; //¼ö½Å¾Æ µ¥ÀÌÅ¸ size¸¦ ºñ·á ÇÏ¿© 128ÀÌ¸í Áß°£ ÀÛÀ¸
;     | ¸é ¸¶Áö¸· ÇÁ·¹ÀÓ ÀÌ´Ù.                                                 
; 362 | UCHAR btTxBuf[128];                                                    
; 363 | char szBuf[512];                                                       
; 364 | char szBuf2[64];                                                       
;----------------------------------------------------------------------
        ldiu      288,ir0
        sti       r0,*+fp(ir0)
	.line	27
;----------------------------------------------------------------------
; 367 | UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;                                 
;----------------------------------------------------------------------
        ldiu      993,ir0
        ldiu      @CL67,r0
        sti       r0,*+fp(ir0)
	.line	29
;----------------------------------------------------------------------
; 369 | PLIC_DPRAM_Ver pLicVerDp = (LIC_DPRAM_Ver *)NVSRAM_VER; //¹öÀü Á¤º¸ Ã³¸
;     | ®¸¦ À§ÇØ ÀÓÀÇ·Î ¸¸µé¾ú´Ù.                                              
; 370 | PLIC_CNCS_HD pLic_Cncs;                                                
; 371 | PCNCS_LIC_SD pCncsLicSd;                                               
; 373 | PCNCS_LIC_T_F pCnsc_Lic_T_F;                                           
;----------------------------------------------------------------------
        ldiu      994,ir0
        ldiu      @CL2,r0
        sti       r0,*+fp(ir0)
	.line	34
;----------------------------------------------------------------------
; 374 | PCNCS_LIC_T_F_C pCncs_Lic_T_F_C = (CNCS_LIC_T_F_C *) btRx2chBuf;
;     |                          // °íÀå ÆÐÅ¶ Àü¼Û ¿Ï·á È®ÀÎ ÇÁ·ÎÅäÄÝ Ãß°¡(Y.J 
;     | 2011-05-10)                                                            
; 376 | // Fault Block Information;                                            
;----------------------------------------------------------------------
        ldiu      998,ir0
        ldiu      @CL68,r0
        sti       r0,*+fp(ir0)
	.line	37
;----------------------------------------------------------------------
; 377 | PFAULT_INFO pInfo = NULL;                                              
; 379 | // ¼ö½Å                                                                
;----------------------------------------------------------------------
        ldiu      999,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	40
;----------------------------------------------------------------------
; 380 | nRxLen = user_CncsRx(btBuf,128);                                       
;----------------------------------------------------------------------
        ldiu      128,r1
        ldiu      fp,r0
        push      r1
        addi      14,r0
        push      r0
        call      _user_CncsRx
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(2)
	.line	41
;----------------------------------------------------------------------
; 381 | if(nRxLen)                                                             
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L115
;*      Branch Occurs to L115 
	.line	43
;----------------------------------------------------------------------
; 383 | if(!m_Variable.m_nUart2RxOneByteGapDelayTime) nRxPos = 0;              
;----------------------------------------------------------------------
        ldi       @_m_Variable+226,r0
        bne       L113
;*      Branch Occurs to L113 
        ldiu      0,r0
        sti       r0,@_nRxPos$4+0
L113:        
	.line	44
;----------------------------------------------------------------------
; 384 | m_Variable.m_nUart2RxOneByteGapDelayTime = 10;                         
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_m_Variable+226
	.line	46
;----------------------------------------------------------------------
; 386 | if(nRxPos + nRxLen < 511)                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        addi      @_nRxPos$4+0,r0
        cmpi      511,r0
        bged      L115
        ldilt     @CL68,r0
        ldilt     fp,r1
        ldilt     *+fp(2),r2
;*      Branch Occurs to L115 
	.line	48
;----------------------------------------------------------------------
; 388 | memcpy(&btRx2chBuf[nRxPos],btBuf,nRxLen);                              
;----------------------------------------------------------------------
        addi      @_nRxPos$4+0,r0       ; Unsigned
        addi      14,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	49
;----------------------------------------------------------------------
; 389 | nRxPos += nRxLen;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        addi      @_nRxPos$4+0,r0
        sti       r0,@_nRxPos$4+0
L115:        
	.line	53
;----------------------------------------------------------------------
; 393 | if(nOldUart2RxOneByteGapDelayTime && !m_Variable.m_nUart2RxOneByteGapDe
;     | layTime)                                                               
;----------------------------------------------------------------------
        ldi       @_nOldUart2RxOneByteGapDelayTime$5+0,r0
        beq       L161
;*      Branch Occurs to L161 
        ldi       @_m_Variable+226,r0
        bne       L161
;*      Branch Occurs to L161 
	.line	55
;----------------------------------------------------------------------
; 395 | pCncsLicSd = (CNCS_LIC_SD *)btRx2chBuf;                                
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      @CL68,r0
        sti       r0,*+fp(ir0)
	.line	57
;----------------------------------------------------------------------
; 397 | pCnsc_Lic_T_F = (CNCS_LIC_T_F *) btRx2chBuf;                           
;----------------------------------------------------------------------
        ldiu      997,ir0
        sti       r0,*+fp(ir0)
	.line	59
;----------------------------------------------------------------------
; 399 | if(pCncsLicSd->phHdBuf.btSoh == SOH &&                                 
; 400 |    pCncsLicSd->btEot == EOT &&                                         
; 401 |    sizeof(CNCS_LIC_SD) == nRxPos &&                                    
; 402 |    //(TWOBYTE_ASC2HEX(pCncsLicSd->phHdBuf.chDestDev) == m_Variable.m_ch
;     | CarKindNum) &&                                                         
; 403 |    (TWOBYTE_ASC2HEX(pCncsLicSd->sCommand) == 0x09) &&  //CNCS°¡ ½Ã°£ ÀÀ
;     | ´ä                                                                     
; 406 |    ConvAsc2Hex(pCncsLicSd->nCRC[0]) == BYTE_H(WORD_H(crc16_ccitt(&pCncs
;     | LicSd->phHdBuf.chSrcDev[0],nRxPos-6)))&&                               
; 407 |    ConvAsc2Hex(pCncsLicSd->nCRC[1]) == BYTE_L(WORD_H(crc16_ccitt(&pCncs
;     | LicSd->phHdBuf.chSrcDev[0],nRxPos-6)))&&                               
; 408 |    ConvAsc2Hex(pCncsLicSd->nCRC[2]) == BYTE_H(WORD_L(crc16_ccitt(&pCncs
;     | LicSd->phHdBuf.chSrcDev[0],nRxPos-6)))&&                               
; 409 |    ConvAsc2Hex(pCncsLicSd->nCRC[3]) == BYTE_L(WORD_L(crc16_ccitt(&pCncs
;     | LicSd->phHdBuf.chSrcDev[0],nRxPos-6))))                                
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *ar0,r0
        cmpi      1,r0
        bne       L139
;*      Branch Occurs to L139 
        ldiu      *+fp(ir0),ir0
        ldiu      299,ar0
        ldiu      *+ar0(ir0),r0
        cmpi      4,r0
        bne       L139
;*      Branch Occurs to L139 
        ldiu      300,r0
        cmpi      @_nRxPos$4+0,r0
        bne       L139
;*      Branch Occurs to L139 
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(15),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
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
        bne       L139
;*      Branch Occurs to L139 
        ldiu      1,r1
        ldiu      996,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$4+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      295,ar0
        ldiu      996,ir0
        ldiu      r0,r4
        subi      2,sp
        lsh       -8,r4
        ldiu      *+fp(ir0),ir0
        and       255,r4
        ldiu      *+ar0(ir0),r0
        lsh       -4,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L139
;*      Branch Occurs to L139 
        ldiu      1,r1
        ldiu      996,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$4+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      296,ar0
        subi      2,sp
        ldiu      996,ir0
        ldiu      r0,r4
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r0
        lsh       -8,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L139
;*      Branch Occurs to L139 
        ldiu      1,r1
        ldiu      996,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$4+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      996,ir0
        subi      2,sp
        ldiu      297,ar0
        ldiu      r0,r4
        ldiu      *+fp(ir0),ir0
        and       255,r4
        ldiu      *+ar0(ir0),r0
        lsh       -4,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L139
;*      Branch Occurs to L139 
        ldiu      1,r1
        ldiu      996,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$4+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      996,ir0
        subi      2,sp
        ldiu      298,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      r0,r4
        ldiu      *+ar0(ir0),r0
        and       15,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L139
;*      Branch Occurs to L139 
	.line	73
;----------------------------------------------------------------------
; 413 | m_Variable.m_tmUtcTime.second = TWOBYTE_ASC2HEX(pCncsLicSd->sSecond);  
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(27),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(28),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        sti       r0,@_m_Variable+237
        subi      1,sp
	.line	74
;----------------------------------------------------------------------
; 414 | m_Variable.m_tmUtcTime.minute = TWOBYTE_ASC2HEX(pCncsLicSd->sMinute);  
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(25),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(26),r1
        ldiu      r0,r4
        push      r1
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        subi      1,sp
        and       255,r0
        sti       r0,@_m_Variable+238
	.line	75
;----------------------------------------------------------------------
; 415 | m_Variable.m_tmUtcTime.hour   = TWOBYTE_ASC2HEX(pCncsLicSd->sHour);    
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(23),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      996,ir0
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(24),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        subi      1,sp
        sti       r0,@_m_Variable+239
	.line	76
;----------------------------------------------------------------------
; 416 | m_Variable.m_tmUtcTime.day    = TWOBYTE_ASC2HEX(pCncsLicSd->sDay);     
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(21),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(22),r1
        ldiu      r0,r4
        ash       4,r4
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        subi      1,sp
        and       255,r0
        sti       r0,@_m_Variable+240
	.line	77
;----------------------------------------------------------------------
; 417 | m_Variable.m_tmUtcTime.month  = TWOBYTE_ASC2HEX(pCncsLicSd->sMonth);   
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(19),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(20),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        sti       r0,@_m_Variable+241
        subi      1,sp
	.line	78
;----------------------------------------------------------------------
; 418 | m_Variable.m_tmUtcTime.year   = TWOBYTE_ASC2HEX(pCncsLicSd->sYear);    
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(17),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
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
        and       255,r0
        sti       r0,@_m_Variable+242
        subi      1,sp
	.line	81
;----------------------------------------------------------------------
; 421 | m_Variable.m_LIC_CNCS_TimSetFlag = TRUE;                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_Variable+355
	.line	82
;----------------------------------------------------------------------
; 422 | m_Variable.m_nCncsRxCheck1msTimer = 100000;                            
;----------------------------------------------------------------------
        ldiu      @CL69,r0
        sti       r0,@_m_Variable+357
	.line	85
;----------------------------------------------------------------------
; 425 | FunConvAscHex((char *)&pCncsLicSd->sRailNumVer[0],RxBuf,4);            
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      291,r2
        ldiu      4,r1
        addi3     r2,*+fp(ir0),r2       ; Unsigned
        ldiu      fp,r0
        addi      3,r0
        push      r1
        push      r0
        push      r2
        call      _FunConvAscHex
                                        ; Call Occurs
        subi      3,sp
	.line	87
;----------------------------------------------------------------------
; 427 | m_Variable.m_nCarNo_CncsRx = MAKE_WORD(RxBuf[0],RxBuf[1]);             
; 429 | //---------------------------------------------                        
; 430 | // ¿­Â÷ ¹øÈ£´Â 4000 ~ 5000 ¹ø °ª¸¸ À¯È¿                                
; 431 | //---------------------------------------------                        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      fp,ar0
        ldiu      8,r1
        ldiu      fp,ar1
        addi      3,ar0
        addi      4,ar1
        ash3      r1,*ar0,r1
        and3      r0,*ar1,r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,@_m_Variable+282
	.line	92
;----------------------------------------------------------------------
; 432 | if(m_Variable.m_nCarNo_CncsRx >= 0x4000 && m_Variable.m_nCarNo_CncsRx <
;     | = 0x5000)                                                              
;----------------------------------------------------------------------
        cmpi      16384,r0
        blo       L130
;*      Branch Occurs to L130 
        cmpi      20480,r0
        bhi       L130
;*      Branch Occurs to L130 
	.line	95
;----------------------------------------------------------------------
; 435 | if(m_Variable.m_nCarNo != m_Variable.m_nCarNo_CncsRx)                  
;----------------------------------------------------------------------
        ldiu      @_m_Variable+281,r0
        cmpi      @_m_Variable+282,r0
        beq       L130
;*      Branch Occurs to L130 
	.line	98
;----------------------------------------------------------------------
; 438 | m_Variable.m_nCarNo = m_Variable.m_nCarNo_CncsRx;                      
; 440 | //¿­Â÷ ¹øÈ£¸¦ NVSRAM¿¡ ÀúÀåÇÑ´Ù.                                       
;----------------------------------------------------------------------
        ldiu      @_m_Variable+282,r0
        sti       r0,@_m_Variable+281
	.line	101
;----------------------------------------------------------------------
; 441 | pLicVerDp->CarNum[0] = WORD_H(m_Variable.m_nCarNo);                    
;----------------------------------------------------------------------
        ldiu      994,ir0
        lsh       -8,r0
        ldiu      *+fp(ir0),ar0
        and       255,r0
        sti       r0,*+ar0(251)
	.line	102
;----------------------------------------------------------------------
; 442 | pLicVerDp->CarNum[1] = WORD_L(m_Variable.m_nCarNo);                    
; 448 | //MyPrintf("RailNumber :Cncs Rx[%04X] -- Nvr[%04X] \r\n",m_Variable.m_n
;     | CarNo,MAKE_WORD(pLicVerDp->CarNum[0],pLicVerDp->CarNum[1]));           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(ir0),ar0
        and       @_m_Variable+281,r0
        sti       r0,*+ar0(252)
L130:        
	.line	111
;----------------------------------------------------------------------
; 451 | for(i=0;i<VER_BDD_MAX_CNT;i++)                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      25,r0
        bge       L135
;*      Branch Occurs to L135 
L131:        
	.line	113
;----------------------------------------------------------------------
; 453 | if(!MAKE_DWORD(0x00,m_Variable.m_tmUtcTime.year,m_Variable.m_tmUtcTime.
;     | month,m_Variable.m_tmUtcTime.day))                                     
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        ldiu      255,r2
        and       @_m_Variable+242,r1
        and       @_m_Variable+241,r0
        and       @_m_Variable+240,r2
        ash       16,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        bne       L134
;*      Branch Occurs to L134 
	.line	115
;----------------------------------------------------------------------
; 455 | pLicVerDp->VerCnt = FALSE;                                             
;----------------------------------------------------------------------
        ldiu      994,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	116
;----------------------------------------------------------------------
; 456 | memset(pLicVerDp->cvbBuf[i].chVer,'0',4);                              
;----------------------------------------------------------------------
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
	.line	117
;----------------------------------------------------------------------
; 457 | memset(pLicVerDp->cvbBuf[i].chBuildDate,'0',6);                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      994,ir0
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
	.line	118
;----------------------------------------------------------------------
; 458 | break;                                                                 
; 460 | else                                                                   
;----------------------------------------------------------------------
        bu        L135
;*      Branch Occurs to L135 
L134:        
	.line	122
;----------------------------------------------------------------------
; 462 | pLicVerDp->VerCnt = TRUE;                                              
; 464 | // ¹öÀü ÀÔ·Â                                                           
;----------------------------------------------------------------------
        ldiu      994,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	125
;----------------------------------------------------------------------
; 465 | pLicVerDp->cvbBuf[i].chVer[0] = pCncsLicSd->cvbBuf[i].chVer[0];        
;----------------------------------------------------------------------
        ldiu      994,ir1
        ldiu      *+fp(1),r1
        ldiu      996,ir0
        ldiu      r1,r0
        mpyi      10,r0
        mpyi      10,r1
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi3     r1,*+fp(ir1),ar1      ; Unsigned
        ldiu      *+ar0(41),r0
        sti       r0,*+ar1(1)
	.line	126
;----------------------------------------------------------------------
; 466 | pLicVerDp->cvbBuf[i].chVer[1] = pCncsLicSd->cvbBuf[i].chVer[1];        
;----------------------------------------------------------------------
        ldiu      996,ir1
        ldiu      994,ir0
        ldiu      *+fp(1),r0
        ldiu      r0,r1
        mpyi      10,r0
        mpyi      10,r1
        addi3     r1,*+fp(ir1),ar0      ; Unsigned
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        ldiu      *+ar0(42),r0
        sti       r0,*+ar1(2)
	.line	127
;----------------------------------------------------------------------
; 467 | pLicVerDp->cvbBuf[i].chVer[2] = pCncsLicSd->cvbBuf[i].chVer[2];        
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        mpyi      10,r1
        mpyi      10,r0
        addi3     r0,*+fp(ir1),ar0      ; Unsigned
        addi3     r1,*+fp(ir0),ar1      ; Unsigned
        ldiu      *+ar0(43),r0
        sti       r0,*+ar1(3)
	.line	128
;----------------------------------------------------------------------
; 468 | pLicVerDp->cvbBuf[i].chVer[3] = pCncsLicSd->cvbBuf[i].chVer[3];        
; 471 | // ¸¸µé¾îÁø ³¯Â¥ ÀÔ·Â                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      r0,r1
        ldiu      996,ir0
        mpyi      10,r1
        mpyi      10,r0
        ldiu      994,ir1
        addi3     r1,*+fp(ir0),ar0      ; Unsigned
        addi3     r0,*+fp(ir1),ar1      ; Unsigned
        ldiu      *+ar0(44),r0
        sti       r0,*+ar1(4)
	.line	132
;----------------------------------------------------------------------
; 472 | pLicVerDp->cvbBuf[i].chBuildDate[0] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [0];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        ldiu      996,ir1
        mpyi      10,r0
        mpyi      10,r1
        ldiu      994,ir0
        addi3     r0,*+fp(ir1),ar0      ; Unsigned
        addi3     r1,*+fp(ir0),ar1      ; Unsigned
        ldiu      *+ar0(45),r0
        sti       r0,*+ar1(5)
	.line	133
;----------------------------------------------------------------------
; 473 | pLicVerDp->cvbBuf[i].chBuildDate[1] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [1];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      r0,r1
        mpyi      10,r1
        addi3     r1,*+fp(ir1),ar0      ; Unsigned
        mpyi      10,r0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        ldiu      *+ar0(46),r0
        sti       r0,*+ar1(6)
	.line	134
;----------------------------------------------------------------------
; 474 | pLicVerDp->cvbBuf[i].chBuildDate[2] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [2];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      r0,r1
        mpyi      10,r1
        mpyi      10,r0
        addi3     r1,*+fp(ir1),ar0      ; Unsigned
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        ldiu      *+ar0(47),r0
        sti       r0,*+ar1(7)
	.line	135
;----------------------------------------------------------------------
; 475 | pLicVerDp->cvbBuf[i].chBuildDate[3] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [3];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        mpyi      10,r0
        mpyi      10,r1
        addi3     r0,*+fp(ir1),ar0      ; Unsigned
        addi3     r1,*+fp(ir0),ar1      ; Unsigned
        ldiu      *+ar0(48),r0
        sti       r0,*+ar1(8)
	.line	136
;----------------------------------------------------------------------
; 476 | pLicVerDp->cvbBuf[i].chBuildDate[4] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [4];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        mpyi      10,r1
        ldiu      *+fp(1),r0
        ldiu      996,ir0
        mpyi      10,r0
        ldiu      994,ir1
        addi3     r1,*+fp(ir0),ar0      ; Unsigned
        addi3     r0,*+fp(ir1),ar1      ; Unsigned
        ldiu      *+ar0(49),r0
        sti       r0,*+ar1(9)
	.line	137
;----------------------------------------------------------------------
; 477 | pLicVerDp->cvbBuf[i].chBuildDate[5] = pCncsLicSd->cvbBuf[i].chBuildDate
;     | [5];                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        mpyi      10,r0
        mpyi      10,r1
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi3     r1,*+fp(ir1),ar1      ; Unsigned
        ldiu      *+ar0(50),r0
        sti       r0,*+ar1(10)
	.line	111
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      25,r0
        blt       L131
;*      Branch Occurs to L131 
L135:        
	.line	143
;----------------------------------------------------------------------
; 483 | if(TWOBYTE_ASC2HEX(pCncsLicSd->sWaySide) == 0x01 && !m_Variable.m_LIC_C
;     | NCS_Tx_Flag) // wayside on ¾Ë¸²                                        
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(29),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
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
        bne       L178
;*      Branch Occurs to L178 
        ldi       @_m_Variable+268,r0
        bne       L178
;*      Branch Occurs to L178 
	.line	145
;----------------------------------------------------------------------
; 485 | m_Variable.m_nCDT_FaultDataStFlag = 1;                                 
; 487 | //2011_03_03 ¼öÁ¤                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_Variable+273
	.line	148
;----------------------------------------------------------------------
; 488 | m_Variable.m_nFaultCnt = 0;
;     |  // °íÀå °¹¼ö¸¦ 0À¸·Î ÃÊ±âÈ­.(Y.J Ãß°¡);                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+271
	.line	149
;----------------------------------------------------------------------
; 489 | memset((UCHAR *)NVSRAM_BASE,0x00,1024); // °íÀå ºí·°À» "0" À¸·Î ÃÊ½ÃÈ­
;     | ÇÑ´Ù. ÃÊ±â À§Ä¡ 0ºÎÅÍ 1024±îÁö¸¸ ÃÊ±âÈ­ ÇÑ´Ù.                          
;----------------------------------------------------------------------
        ldiu      1024,r2
        ldiu      @CL70,r1
        push      r2
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	150
;----------------------------------------------------------------------
; 490 | ClearFltBlkInfo();                                              // °íÀå
;     |  Á¤º¸¸¦ ClearÇÏ´Â ºÎºÐ.                                                
; 492 | //memset(aaa_FaultBlkList, 0xFF, 1024);                                
;----------------------------------------------------------------------
        call      _ClearFltBlkInfo
                                        ; Call Occurs
	.line	154
;----------------------------------------------------------------------
; 494 | m_Variable.m_nNvsramPos = 0;    //ÀüÃ¼ ±â·Ï ±¸Á¶ À§Ä¡¸¦ Ã³À½À¸·Î       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+290
	.line	155
;----------------------------------------------------------------------
; 495 | m_Variable.m_Recving_Posi = 0;  //ÇöÀç ±îÁö Àü¼ÛÇÑ À§Ä¡¸¦ Ã³À½À¸·Î     
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+272
	.line	156
;----------------------------------------------------------------------
; 496 | m_Variable.m_nLnWkTxFlag = 0;   //°íÀå ÄÚµå ±¸ºÐÀ» 0À¸·Î ÃÊ±âÈ­        
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+270
	.line	158
;----------------------------------------------------------------------
; 498 | m_Variable.m_nLnWkTxFlag = TWOBYTE_ASC2HEX(pCncsLicSd->sDaType);       
; 500 | // °íÀå ½Ã°£ ¿äÃ» WORD -> DWORD·Î º¯°æ.(2011.05.08)                    
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(31),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
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
        sti       r0,@_m_Variable+270
	.line	161
;----------------------------------------------------------------------
; 501 | m_Variable.m_nDateTime2SecondCnt = MAKE_DWORD( MAKE_BYTE(ConvAsc2Hex(pC
;     | ncsLicSd->sFaultTime[0]),ConvAsc2Hex(pCncsLicSd->sFaultTime[1])),      
; 502 | 
;     |  MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[2]),ConvAsc2Hex(pCncsLicS
;     | d->sFaultTime[3])),                                                    
; 503 | 
;     |  MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[4]),ConvAsc2Hex(pCncsLicS
;     | d->sFaultTime[5])),                                                    
; 504 | 
;     |  MAKE_BYTE(ConvAsc2Hex(pCncsLicSd->sFaultTime[6]),ConvAsc2Hex(pCncsLicS
;     | d->sFaultTime[7])));                                                   
; 508 | //MyPrintf("CNCS--> LIC");                                             
; 509 | //MyPrintf_TxAuto(btRx2chBuf,sizeof(CNCS_LIC_SD));                     
;----------------------------------------------------------------------
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(33),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(34),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
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
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(36),r0
        push      r0
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(37),r1
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        ash       16,r0
        or3       r5,r0,r4
        push      r1
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r5
        ldiu      *+ar0(38),r0
        ash       4,r5
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        and       15,r0
        or3       r5,r0,r1
        and       255,r1
        ldiu      *+ar0(39),r0
        push      r0
        ash       8,r1
        or3       r4,r1,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      996,ir0
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
        sti       r0,@_m_Variable+292
        subi      1,sp
        bu        L178
;*      Branch Occurs to L178 
L139:        
	.line	172
;----------------------------------------------------------------------
; 512 | else if(pCncs_Lic_T_F_C->phHdBuf.btSoh == SOH &&
;     |                                                                        
;     |                                           		// °íÀå ½Ã°£ ¿äÃ» WORD -> D
;     | WORD·Î º¯°æ.(2011.05.11)                                               
; 513 |         pCncs_Lic_T_F_C->btEot == EOT &&                               
; 514 |         sizeof(CNCS_LIC_T_F_C) == nRxPos &&                            
; 515 |    //(TWOBYTE_ASC2HEX(pCncs_Lic_T_F_C->phHdBuf.chDestDev) == 0x11) &&  
; 516 |    (TWOBYTE_ASC2HEX(pCncsLicSd->sCommand) == 0x07) &&  //°íÀå Àü¼Û È®ÀÎ
;     |  ÀÀ´ä(CNCS-> LIC)                                                      
; 518 |    ConvAsc2Hex(pCncs_Lic_T_F_C->nCRC[0]) == BYTE_H(WORD_H(crc16_ccitt(&
;     | pCncs_Lic_T_F_C->phHdBuf.chSrcDev[0],nRxPos-6)))&&                     
; 519 |    ConvAsc2Hex(pCncs_Lic_T_F_C->nCRC[1]) == BYTE_L(WORD_H(crc16_ccitt(&
;     | pCncs_Lic_T_F_C->phHdBuf.chSrcDev[0],nRxPos-6)))&&                     
; 520 |    ConvAsc2Hex(pCncs_Lic_T_F_C->nCRC[2]) == BYTE_H(WORD_L(crc16_ccitt(&
;     | pCncs_Lic_T_F_C->phHdBuf.chSrcDev[0],nRxPos-6)))&&                     
; 521 |    ConvAsc2Hex(pCncs_Lic_T_F_C->nCRC[3]) == BYTE_L(WORD_L(crc16_ccitt(&
;     | pCncs_Lic_T_F_C->phHdBuf.chSrcDev[0],nRxPos-6))))                      
; 523 |    //!((Make1ByteBcc(&pCncs_Lic_T_F_C->phHdBuf.chSrcDev[0],nRxPos-4)^(T
;     | WOBYTE_ASC2HEX(pCncs_Lic_T_F_C->chChkSum)))))                          
; 527 |         // Y.J 2011-05-10 ¿äÃ»ÇÑ °íÀå Index¸¦ »ç¿ëÇÏ¿©, Àü¼ÛÇÏµµ·Ï ¼öÁ¤
;     | .                                                                      
;----------------------------------------------------------------------
        ldiu      998,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *ar0,r0
        cmpi      1,r0
        bne       L178
;*      Branch Occurs to L178 
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(25),r0
        cmpi      4,r0
        bne       L178
;*      Branch Occurs to L178 
        ldiu      26,r0
        cmpi      @_nRxPos$4+0,r0
        bne       L178
;*      Branch Occurs to L178 
        ldiu      996,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(15),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      996,ir0
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
        bne       L178
;*      Branch Occurs to L178 
        ldiu      1,r1
        ldiu      998,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$4+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      998,ir0
        ldiu      r0,r4
        subi      2,sp
        lsh       -8,r4
        ldiu      *+fp(ir0),ar0
        and       255,r4
        ldiu      *+ar0(21),r0
        lsh       -4,r4
        and       15,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L178
;*      Branch Occurs to L178 
        ldiu      1,r1
        ldiu      998,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$4+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        subi      2,sp
        ldiu      998,ir0
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(22),r0
        lsh       -8,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L178
;*      Branch Occurs to L178 
        ldiu      1,r1
        ldiu      998,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$4+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      998,ir0
        subi      2,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        and       255,r4
        ldiu      *+ar0(23),r0
        lsh       -4,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L178
;*      Branch Occurs to L178 
        ldiu      1,r1
        ldiu      998,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$4+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      998,ir0
        subi      2,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(24),r0
        and       15,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L178
;*      Branch Occurs to L178 
	.line	188
;----------------------------------------------------------------------
; 528 | sPotoLen = MAKE_WORD(MAKE_BYTE(ConvAsc2Hex(pCnsc_Lic_T_F->sTEXT[0]),Con
;     | vAsc2Hex(pCnsc_Lic_T_F->sTEXT[1])),                                    
; 529 |                      MAKE_BYTE(ConvAsc2Hex(pCnsc_Lic_T_F->sTEXT[2]),Con
;     | vAsc2Hex(pCnsc_Lic_T_F->sTEXT[3])));                                   
;----------------------------------------------------------------------
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(17),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(18),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      997,ir0
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
        ldiu      997,ir0
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(20),r0
        push      r0
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      280,ir0
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        or3       r5,r0,r0
        subi      1,sp
        and       65535,r0
        sti       r0,*+fp(ir0)
	.line	190
;----------------------------------------------------------------------
; 530 | if(sPotoLen)                                                           
; 532 |         // ÀçÀü¼ÛÇÒ °íÀå ºí·Ï Á¤º¸¸¦ ¾òÀ½.                             
;----------------------------------------------------------------------
        ldi       *+fp(ir0),r0
        beq       L160
;*      Branch Occurs to L160 
	.line	193
;----------------------------------------------------------------------
; 533 | pInfo = GetFltBlkInfo(m_Variable.m_chCarKind);                         
;----------------------------------------------------------------------
        ldiu      @_m_Variable+283,r0
        push      r0
        call      _GetFltBlkInfo
                                        ; Call Occurs
        subi      1,sp
        ldiu      999,ir0
        sti       r0,*+fp(ir0)
	.line	195
;----------------------------------------------------------------------
; 535 | if(pInfo != NULL)                                                      
; 537 |         // Àü¼ÛÇÒ ºí·Ï À§Ä¡·Î ÀÌµ¿.                                    
;----------------------------------------------------------------------
        ldi       *+fp(ir0),r0
        beq       L159
;*      Branch Occurs to L159 
	.line	198
;----------------------------------------------------------------------
; 538 | m_Variable.m_Recving_Posi = pInfo->nStPosi + ((sPotoLen-1) * 128);     
; 540 | // Àü¼ÛÇÒ ºí·Ï Å©±â¸¦ ±¸ÇÏ´Â ºÎºÐ.                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      280,ir0
        ldiu      999,ir1
        subi3     r0,*+fp(ir0),r0
        ldiu      *+fp(ir1),ar0
        mpyi      128,r0
        addi      *+ar0(1),r0
        sti       r0,@_m_Variable+272
	.line	201
;----------------------------------------------------------------------
; 541 | if(sPotoLen < pInfo->nTCnt) //  (sPotoLen*128) <= nTempBlkEnd)         
;----------------------------------------------------------------------
        ldiu      *+fp(ir1),ar0
        cmpi3     *ar0,*+fp(ir0)
        bged      L152
	nop
        ldige     999,ir1
        ldige     280,ir0
;*      Branch Occurs to L152 
	.line	203
;----------------------------------------------------------------------
; 543 | nBlkSize = 128;                                                        
;----------------------------------------------------------------------
        ldiu      286,ir0
        ldiu      128,r0
        sti       r0,*+fp(ir0)
        bu        L156
;*      Branch Occurs to L156 
	.line	205
;----------------------------------------------------------------------
; 545 | else if(sPotoLen == pInfo->nTCnt)                                      
;----------------------------------------------------------------------
L152:        
        ldiu      *+fp(ir1),ar0
        cmpi3     *ar0,*+fp(ir0)
        bned      L155
	nop
        ldine     286,ir0
        ldine     0,r0
;*      Branch Occurs to L155 
	.line	207
;----------------------------------------------------------------------
; 547 | nBlkSize = (pInfo->nEdPosi - pInfo->nStPosi) % 128; // - ((sPotoLen - 1
;     | ) * 128);                                                              
; 549 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir1),ar1
        ldiu      999,ir0
        ldiu      2,ar0
        ldiu      *+fp(ir0),ir1
        subi3     *+ar1,*+ar0(ir1),r1
        ldiu      r1,r0
        ldiu      286,ir0
        ash       -6,r0
        lsh       @CL71,r0
        addi3     r0,r1,r0
        andn      127,r0
        subri     r1,r0
        sti       r0,*+fp(ir0)
        bu        L156
;*      Branch Occurs to L156 
	.line	211
;----------------------------------------------------------------------
; 551 | nBlkSize = 0;                                                          
;----------------------------------------------------------------------
L155:        
        sti       r0,*+fp(ir0)
L156:        
	.line	214
;----------------------------------------------------------------------
; 554 | if(nBlkSize < 0) nBlkSize = 0;                                         
; 556 | // ºí·ÏÀÇ ¸¶Áö¸· À§Ä¡¸¦ ÁöÁ¤.                                          
;----------------------------------------------------------------------
        ldiu      286,ir0
        ldi       *+fp(ir0),r0
        bge       L158
;*      Branch Occurs to L158 
        ldiu      0,r0
        sti       r0,*+fp(ir0)
L158:        
	.line	217
;----------------------------------------------------------------------
; 557 | nTempBlkEnd = pInfo->nEdPosi;                                          
;----------------------------------------------------------------------
        ldiu      999,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      287,ir0
        ldiu      *+ar0(2),r0
        sti       r0,*+fp(ir0)
L159:        
	.line	220
;----------------------------------------------------------------------
; 560 | sTxDataSize = nBlkSize + 2;                                            
; 562 | // °íÀå µ¥ÀÌÅÍ¸¦ Àü¼ÛÇÏ´Â ºÎºÐ.                                        
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      286,ir1
        ldiu      288,ir0
        addi3     r0,*+fp(ir1),r0
        sti       r0,*+fp(ir0)
	.line	223
;----------------------------------------------------------------------
; 563 | user_FaultDataTx(btTx2chBuf,sTxDataSize,TRUE,sPotoLen);                
;----------------------------------------------------------------------
        ldiu      280,ir1
        ldiu      1,r2
        ldiu      @CL72,r3

        ldiu      *+fp(ir0),r0
||      ldiu      *+fp(ir1),r1

        push      r1
        push      r2
        push      r0
        push      r3
        call      _user_FaultDataTx
                                        ; Call Occurs
        subi      4,sp
	.line	224
;----------------------------------------------------------------------
; 564 | user_CncsTx(btTx2chBuf,(sTxDataSize*2)+20);                            
; 566 | // Àü¼Û ÈÄ, ºí·Ï À§Ä¡¸¦ ¸¶Áö¸· À§Ä¡·Î º¹¿ø.                            
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      2,r1
        mpyi3     r1,*+fp(ir0),r1
        addi      20,r1
        push      r1
        ldiu      @CL72,r0
        push      r0
        call      _user_CncsTx
                                        ; Call Occurs
        subi      2,sp
	.line	227
;----------------------------------------------------------------------
; 567 | m_Variable.m_Recving_Posi = nTempBlkEnd;                               
; 569 | else                                                                   
; 570 | //¹Ù·Î Á¾·á ÄÚµå°¡ ¼ö½Å µÉ¼ö ÀÖ´Ù.                                     
;----------------------------------------------------------------------
        ldiu      287,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_m_Variable+272
        bu        L178
;*      Branch Occurs to L178 
L160:        
	.line	232
;----------------------------------------------------------------------
; 572 | user_FtpEnd_CarNumFun();                                               
; 576 | else // µ¥ÀÌÅ¸ Àü¼Û                                                    
;----------------------------------------------------------------------
        call      _user_FtpEnd_CarNumFun
                                        ; Call Occurs
        bu        L178
;*      Branch Occurs to L178 
L161:        
	.line	238
;----------------------------------------------------------------------
; 578 | if(m_Variable.m_nTxDbg1msTimer > 150) //150ms ¸¶´Ù ÇÑ¹ø¾¿ ½ÇÇà ÇÑ´Ù.   
; 580 |         //---------------------------------                            
; 581 |         //°íÀå Á¤º¸ Àü¼Û.                                              
; 582 |         //---------------------------------                            
;----------------------------------------------------------------------
        ldiu      @_m_Variable+293,r0
        cmpi      150,r0
        bls       L178
;*      Branch Occurs to L178 
	.line	243
;----------------------------------------------------------------------
; 583 | if(m_Variable.m_LIC_CNCS_Tx_Flag)                                      
;----------------------------------------------------------------------
        ldi       @_m_Variable+268,r0
        beq       L174
;*      Branch Occurs to L174 
	.line	245
;----------------------------------------------------------------------
; 585 | m_Variable.m_nTxDbg1msTimer = 0;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+293
	.line	247
;----------------------------------------------------------------------
; 587 | m_Variable.m_LIC_CNCS_TX_DelyTime++;                                   
; 589 | // 150*50  = 7500  = 7.5ÃÊ µ¿¾È °íÀå ºí·° »çÀÌ°¡ ÀÀ´äÀÌ ¾øÀ¸¸é, Á¾·á ÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_Variable+269,r0
        sti       r0,@_m_Variable+269
	.line	250
;----------------------------------------------------------------------
; 590 | if(m_Variable.m_LIC_CNCS_TX_DelyTime > 50){m_Variable.m_bLnWkFtpEndFlag
;     |  = TRUE;}                                                              
;----------------------------------------------------------------------
        cmpi      50,r0
        ble       L165
;*      Branch Occurs to L165 
        ldiu      1,r0
        sti       r0,@_m_Variable+291
L165:        
	.line	252
;----------------------------------------------------------------------
; 592 | if((m_Variable.m_nNvsramPos !=  (m_Variable.m_Recving_Posi)) && (m_Vari
;     | able.m_nNvsramPos >= (m_Variable.m_Recving_Posi+128)))                 
;----------------------------------------------------------------------
        ldiu      @_m_Variable+290,r0
        cmpi      @_m_Variable+272,r0
        beqd      L170
	nop
        ldine     128,r0
        ldine     @_m_Variable+290,r1
;*      Branch Occurs to L170 
        addi      @_m_Variable+272,r0   ; Unsigned
        cmpi3     r0,r1
        blo       L170
;*      Branch Occurs to L170 
	.line	254
;----------------------------------------------------------------------
; 594 | m_Variable.m_nFaultCnt++;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_Variable+271,r0
        sti       r0,@_m_Variable+271
	.line	255
;----------------------------------------------------------------------
; 595 | if(m_Variable.m_nFaultCnt == 1)                                        
;----------------------------------------------------------------------
        cmpi      1,r0
        bne       L169
;*      Branch Occurs to L169 
	.line	256
;----------------------------------------------------------------------
; 596 | SetFltBlkStPos(m_Variable.m_chCarKind, m_Variable.m_Recving_Posi);
;     |                                                                  // Ã¹¹
;     | øÂ° ºí·ÏÀÏ °æ¿ì, °íÀå Á¤º¸ÀÇ ½ÃÀÛ À§Ä¡¸¦ ±â·Ï.                         
;----------------------------------------------------------------------
        ldiu      @_m_Variable+272,r0
        push      r0
        ldiu      @_m_Variable+283,r0
        push      r0
        call      _SetFltBlkStPos
                                        ; Call Occurs
        subi      2,sp
L169:        
	.line	258
;----------------------------------------------------------------------
; 598 | sTxDataSize = 128 + 2;                                                 
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      130,r0
        sti       r0,*+fp(ir0)
	.line	260
;----------------------------------------------------------------------
; 600 | user_FaultDataTx(btTx2chBuf,sTxDataSize,FALSE,0);                      
;----------------------------------------------------------------------
        ldiu      0,r2
        ldiu      @CL72,r1
        ldiu      *+fp(ir0),r3
        ldiu      0,r0
        push      r0
        push      r2
        push      r3
        push      r1
        call      _user_FaultDataTx
                                        ; Call Occurs
        subi      4,sp
	.line	262
;----------------------------------------------------------------------
; 602 | m_Variable.m_Recving_Posi += 128;                                      
;----------------------------------------------------------------------
        ldiu      128,r0
        addi      @_m_Variable+272,r0
        sti       r0,@_m_Variable+272
	.line	264
;----------------------------------------------------------------------
; 604 | user_CncsTx(btTx2chBuf,(sTxDataSize*2)+20);                            
; 606 | else                                                                   
; 607 | //¹Ù·Î Á¾·á ÄÚµå°¡ ¼ö½Å µÉ¼ö ÀÖ´Ù.                                     
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      2,r0
        mpyi3     r0,*+fp(ir0),r0
        ldiu      @CL72,r1
        addi      20,r0
        push      r0
        push      r1
        call      _user_CncsTx
                                        ; Call Occurs
        subi      2,sp
        bu        L178
;*      Branch Occurs to L178 
L170:        
	.line	268
;----------------------------------------------------------------------
; 608 | if(m_Variable.m_bLnWkFtpEndFlag)                                       
;----------------------------------------------------------------------
        ldi       @_m_Variable+291,r0
        beq       L178
;*      Branch Occurs to L178 
	.line	270
;----------------------------------------------------------------------
; 610 | m_Variable.m_nFaultCnt++;                                              
; 611 | //aaa_CarAFautlCnt = m_nFaultCnt;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_Variable+271,r0
        sti       r0,@_m_Variable+271
	.line	273
;----------------------------------------------------------------------
; 613 | if(m_Variable.m_nFaultCnt == 1)                                        
;----------------------------------------------------------------------
        cmpi      1,r0
        bne       L173
;*      Branch Occurs to L173 
	.line	274
;----------------------------------------------------------------------
; 614 | SetFltBlkStPos(m_Variable.m_chCarKind, m_Variable.m_Recving_Posi);
;     |                                                                  // Ã¹¹
;     | øÂ° ºí·ÏÀÏ °æ¿ì, °íÀå Á¤º¸ÀÇ ½ÃÀÛ À§Ä¡¸¦ ±â·Ï.                         
; 616 | // °íÀå Á¤º¸¸¦ ÀúÀåÇÏ´Â ºÎºÐ.                                          
;----------------------------------------------------------------------
        ldiu      @_m_Variable+272,r0
        push      r0
        ldiu      @_m_Variable+283,r0
        push      r0
        call      _SetFltBlkStPos
                                        ; Call Occurs
        subi      2,sp
L173:        
	.line	277
;----------------------------------------------------------------------
; 617 | SetFltBlkEdInfo(m_Variable.m_chCarKind, m_Variable.m_nNvsramPos, m_Vari
;     | able.m_nFaultCnt);                                                     
;----------------------------------------------------------------------
        ldiu      @_m_Variable+271,r1
        ldiu      @_m_Variable+290,r0
        push      r1
        push      r0
        ldiu      @_m_Variable+283,r0
        push      r0
        call      _SetFltBlkEdInfo
                                        ; Call Occurs
        subi      3,sp
	.line	279
;----------------------------------------------------------------------
; 619 | sTxDataSize = (m_Variable.m_nNvsramPos - m_Variable.m_Recving_Posi) + 2
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      @_m_Variable+272,r0
        subri     @_m_Variable+290,r0   ; Unsigned
        addi      2,r0                  ; Unsigned
        sti       r0,*+fp(ir0)
	.line	280
;----------------------------------------------------------------------
; 620 | user_FaultDataTx(btTx2chBuf,sTxDataSize,TRUE,0);                       
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      0,r2
        ldiu      *+fp(ir0),r3
        ldiu      @CL72,r1
        push      r2
        push      r0
        push      r3
        push      r1
        call      _user_FaultDataTx
                                        ; Call Occurs
        subi      4,sp
	.line	281
;----------------------------------------------------------------------
; 621 | m_Variable.m_Recving_Posi += (sTxDataSize-2);                          
; 623 | // user_FtpEnd_CarNumFun();                                            
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      *+fp(ir0),r0
        addi      @_m_Variable+272,r0
        subi      2,r0
        sti       r0,@_m_Variable+272
	.line	285
;----------------------------------------------------------------------
; 625 | user_CncsTx(btTx2chBuf,(sTxDataSize*2)+20);                            
;----------------------------------------------------------------------
        ldiu      2,r1
        mpyi3     r1,*+fp(ir0),r1
        addi      20,r1
        push      r1
        ldiu      @CL72,r0
        push      r0
        call      _user_CncsTx
                                        ; Call Occurs
        subi      2,sp
	.line	287
;----------------------------------------------------------------------
; 627 | m_Variable.m_LIC_CNCS_Tx_Flag = FALSE;                                 
; 630 | else                                                                   
; 631 | //---------------------------------------------------------------------
;     | ---------------                                                        
; 632 | //½Ã°£ Á¤º¸ ¿äÃ». LIC -> CNCS ·Î ½Ã°£ Á¤º¸¸¦ ¿äÃ» ÇÑ´Ù.(LIC´Â ¿­Â÷ ¹øÈ£
;     | ¸¦ Æ÷ÇÔÇÏ¿© Àü¼Û ÇÑ´Ù.)                                                
; 633 | //---------------------------------------------------------------------
;     | -----------------                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+268
        bu        L178
;*      Branch Occurs to L178 
L174:        
	.line	294
;----------------------------------------------------------------------
; 634 | if(m_Variable.m_nTxDbg1msTimer > 1000)                                 
;----------------------------------------------------------------------
        ldiu      @_m_Variable+293,r0
        cmpi      1000,r0
        bls       L178
;*      Branch Occurs to L178 
	.line	296
;----------------------------------------------------------------------
; 636 | m_Variable.m_nTxDbg1msTimer = 0;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+293
	.line	298
;----------------------------------------------------------------------
; 638 | nTimeSendCnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeSendCnt$8+0,r0
        sti       r0,@_nTimeSendCnt$8+0
	.line	299
;----------------------------------------------------------------------
; 639 | nTimeSendCnt = nTimeSendCnt%255;                                       
;----------------------------------------------------------------------
        ldiu      255,r1
        call      MOD_I30
                                        ; Call Occurs
        sti       r0,@_nTimeSendCnt$8+0
	.line	301
;----------------------------------------------------------------------
; 641 | pCnsc_Lic_T_F = (CNCS_LIC_T_F *) btTx2chBuf;                           
;----------------------------------------------------------------------
        ldiu      997,ir0
        ldiu      @CL72,r0
        sti       r0,*+fp(ir0)
	.line	303
;----------------------------------------------------------------------
; 643 | sTxDataSize = 4;                                                       
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      4,r0
        sti       r0,*+fp(ir0)
	.line	305
;----------------------------------------------------------------------
; 645 | pCnsc_Lic_T_F->phHdBuf.btSoh =  0x01;                                  
;----------------------------------------------------------------------
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	307
;----------------------------------------------------------------------
; 647 | pCnsc_Lic_T_F->phHdBuf.chSrcDev[0] =  ConvHex2Asc(BYTE_H(m_Variable.m_c
;     | hCarKindNum));                                                         
;----------------------------------------------------------------------
        ldiu      @_m_Variable+285,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(1)
	.line	308
;----------------------------------------------------------------------
; 648 | pCnsc_Lic_T_F->phHdBuf.chSrcDev[1] =  ConvHex2Asc(BYTE_L(m_Variable.m_c
;     | hCarKindNum));                                                         
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_Variable+285,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(2)
	.line	310
;----------------------------------------------------------------------
; 650 | pCnsc_Lic_T_F->phHdBuf.chDestDev[0] =  ConvHex2Asc(BYTE_H(m_Variable.m_
;     | chCncsKindNum));                                                       
;----------------------------------------------------------------------
        ldiu      @_m_Variable+286,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(3)
	.line	311
;----------------------------------------------------------------------
; 651 | pCnsc_Lic_T_F->phHdBuf.chDestDev[1] =  ConvHex2Asc(BYTE_L(m_Variable.m_
;     | chCncsKindNum));                                                       
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_Variable+286,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(4)
	.line	313
;----------------------------------------------------------------------
; 653 | pCnsc_Lic_T_F->phHdBuf.chMsgCnt[0] = ConvHex2Asc(BYTE_H(WORD_H(nTimeSen
;     | dCnt)));                                                               
;----------------------------------------------------------------------
        ldiu      @_nTimeSendCnt$8+0,r0
        ash       -8,r0
        and       255,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(5)
	.line	314
;----------------------------------------------------------------------
; 654 | pCnsc_Lic_T_F->phHdBuf.chMsgCnt[1] = ConvHex2Asc(BYTE_L(WORD_H(nTimeSen
;     | dCnt)));                                                               
;----------------------------------------------------------------------
        ldiu      @_nTimeSendCnt$8+0,r0
        ash       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(6)
	.line	315
;----------------------------------------------------------------------
; 655 | pCnsc_Lic_T_F->phHdBuf.chMsgCnt[2] = ConvHex2Asc(BYTE_H(WORD_L(nTimeSen
;     | dCnt)));                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTimeSendCnt$8+0,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(7)
	.line	316
;----------------------------------------------------------------------
; 656 | pCnsc_Lic_T_F->phHdBuf.chMsgCnt[3] = ConvHex2Asc(BYTE_L(WORD_L(nTimeSen
;     | dCnt)));                                                               
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_nTimeSendCnt$8+0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(8)
	.line	318
;----------------------------------------------------------------------
; 658 | pCnsc_Lic_T_F->phHdBuf.chCmdCode[0] = ConvHex2Asc(BYTE_H(0x10));       
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(9)
	.line	319
;----------------------------------------------------------------------
; 659 | pCnsc_Lic_T_F->phHdBuf.chCmdCode[1] = ConvHex2Asc(BYTE_L(0x10));       
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(10)
	.line	321
;----------------------------------------------------------------------
; 661 | pCnsc_Lic_T_F->phHdBuf.chDataLen[0] = ConvHex2Asc(BYTE_H(WORD_H(sTxData
;     | Size))); // ±æÀÌ                                                       
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      -8,r0
        ash3      r0,*+fp(ir0),r0
        and       255,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(11)
	.line	322
;----------------------------------------------------------------------
; 662 | pCnsc_Lic_T_F->phHdBuf.chDataLen[1] = ConvHex2Asc(BYTE_L(WORD_H(sTxData
;     | Size))); // ±æÀÌ                                                       
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      -8,r0
        ash3      r0,*+fp(ir0),r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(12)
	.line	323
;----------------------------------------------------------------------
; 663 | pCnsc_Lic_T_F->phHdBuf.chDataLen[2] = ConvHex2Asc(BYTE_H(WORD_L(sTxData
;     | Size))); // ±æÀÌ                                                       
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      255,r0
        and3      r0,*+fp(ir0),r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(13)
	.line	324
;----------------------------------------------------------------------
; 664 | pCnsc_Lic_T_F->phHdBuf.chDataLen[3] = ConvHex2Asc(BYTE_L(WORD_L(sTxData
;     | Size))); // ±æÀÌ                                                       
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      15,r0
        and3      r0,*+fp(ir0),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(14)
	.line	326
;----------------------------------------------------------------------
; 666 | pCnsc_Lic_T_F->sCommand[0] = ConvHex2Asc(BYTE_H(0x08));                
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(15)
	.line	327
;----------------------------------------------------------------------
; 667 | pCnsc_Lic_T_F->sCommand[1] = ConvHex2Asc(BYTE_L(0x08));                
;----------------------------------------------------------------------
        ldiu      8,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(16)
	.line	329
;----------------------------------------------------------------------
; 669 | pCnsc_Lic_T_F->sTEXT[0] = ConvHex2Asc(BYTE_H(WORD_H(m_Variable.m_nCarNo
;     | )));  //¿­Â÷ ¹øÈ£ Àü¼Û                                                 
;----------------------------------------------------------------------
        ldiu      @_m_Variable+281,r0
        lsh       -8,r0
        and       255,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(17)
	.line	330
;----------------------------------------------------------------------
; 670 | pCnsc_Lic_T_F->sTEXT[1] = ConvHex2Asc(BYTE_L(WORD_H(m_Variable.m_nCarNo
;     | )));  //¿­Â÷ ¹øÈ£ Àü¼Û                                                 
;----------------------------------------------------------------------
        ldiu      @_m_Variable+281,r0
        lsh       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(18)
	.line	331
;----------------------------------------------------------------------
; 671 | pCnsc_Lic_T_F->sTEXT[2] = ConvHex2Asc(BYTE_H(WORD_L(m_Variable.m_nCarNo
;     | )));  //¿­Â÷ ¹øÈ£ Àü¼Û                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_m_Variable+281,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(19)
	.line	332
;----------------------------------------------------------------------
; 672 | pCnsc_Lic_T_F->sTEXT[3] = ConvHex2Asc(BYTE_L(WORD_L(m_Variable.m_nCarNo
;     | )));  //¿­Â÷ ¹øÈ£ Àü¼Û                                                 
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_Variable+281,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(20)
	.line	334
;----------------------------------------------------------------------
; 674 | pCnsc_Lic_T_F->chContactSignalBuf[0] = ConvHex2Asc(BYTE_H(m_Variable.m_
;     | btCttSignalA.BYTE));                                                   
;----------------------------------------------------------------------
        ldiu      @_m_Variable+353,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(21)
	.line	335
;----------------------------------------------------------------------
; 675 | pCnsc_Lic_T_F->chContactSignalBuf[1] = ConvHex2Asc(BYTE_L(m_Variable.m_
;     | btCttSignalA.BYTE));                                                   
; 677 | //sBcc = Make1ByteBcc(&pCnsc_Lic_T_F->phHdBuf.chSrcDev[0],(sTxDataSize*
;     | 2)+14);                                                                
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_Variable+353,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(22)
	.line	339
;----------------------------------------------------------------------
; 679 | d_MDS_info = m_Variable.m_btCttSignalA.BYTE;                           
;----------------------------------------------------------------------
        ldiu      @_m_Variable+353,r0
        sti       r0,@_d_MDS_info+0
	.line	342
;----------------------------------------------------------------------
; 682 | btTmp = crc16_ccitt(&pCnsc_Lic_T_F->phHdBuf.chSrcDev[0],sizeof(CNCS_LIC
;     | _T_F)-6);                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        ldiu      22,r1
        push      r1
        push      r0
        call      _crc16_ccitt
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(13)
	.line	344
;----------------------------------------------------------------------
; 684 | pCnsc_Lic_T_F->nCRC[0] = ConvHex2Asc(BYTE_H(WORD_H(btTmp)));           
;----------------------------------------------------------------------
        lsh       -8,r0
        and       255,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      997,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(23)
	.line	345
;----------------------------------------------------------------------
; 685 | pCnsc_Lic_T_F->nCRC[1] = ConvHex2Asc(BYTE_L(WORD_H(btTmp)));           
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0
        lsh       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(24)
	.line	346
;----------------------------------------------------------------------
; 686 | pCnsc_Lic_T_F->nCRC[2] = ConvHex2Asc(BYTE_H(WORD_L(btTmp)));           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+fp(13),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(25)
	.line	347
;----------------------------------------------------------------------
; 687 | pCnsc_Lic_T_F->nCRC[3] = ConvHex2Asc(BYTE_L(WORD_L(btTmp)));           
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *+fp(13),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      997,ir0
        ldiu      *+fp(ir0),ar0
        sti       r0,*+ar0(26)
	.line	349
;----------------------------------------------------------------------
; 689 | pCnsc_Lic_T_F->btEot = 0x04;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      4,r0
        sti       r0,*+ar0(27)
	.line	351
;----------------------------------------------------------------------
; 691 | user_CncsTx(&pCnsc_Lic_T_F->phHdBuf.btSoh,(sTxDataSize*2)+20);         
;----------------------------------------------------------------------
        ldiu      288,ir0
        ldiu      2,r0
        mpyi3     r0,*+fp(ir0),r0
        addi      20,r0
        ldiu      997,ir1
        push      r0
        ldiu      *+fp(ir1),r0
        push      r0
        call      _user_CncsTx
                                        ; Call Occurs
        subi      2,sp
L178:        
	.line	356
;----------------------------------------------------------------------
; 696 | nOldUart2RxOneByteGapDelayTime = m_Variable.m_nUart2RxOneByteGapDelayTi
;     | me;                                                                    
;----------------------------------------------------------------------
        ldiu      @_m_Variable+226,r0
        sti       r0,@_nOldUart2RxOneByteGapDelayTime$5+0
	.line	357
        pop       r5
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      1001,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	697,000000030h,999


	.sect	 ".text"

	.global	_ClearFltBlkInfo
	.sym	_ClearFltBlkInfo,_ClearFltBlkInfo,32,2,0
	.func	700
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
; 700 | void ClearFltBlkInfo()                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 702 | memset(&m_Variable.m_tFaultInfo, 0x00, sizeof(m_Variable.m_tFaultInfo))
;     | ;                        // °íÀå Á¤º¸ »èÁ¦.                            
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
	.endfunc	703,000000000h,0


	.sect	 ".text"

	.global	_SetFltBlkStPos
	.sym	_SetFltBlkStPos,_SetFltBlkStPos,32,2,0
	.func	706
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
	.sym	_pInfo,1,24,1,32,.fake68
	.line	1
;----------------------------------------------------------------------
; 706 | void SetFltBlkStPos(char chCarKind, int nStPosi)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 708 | PFAULT_INFO pInfo = GetFltBlkInfo(chCarKind);                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _GetFltBlkInfo
                                        ; Call Occurs
        subi      1,sp
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 710 | if(pInfo != NULL)                                                      
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L186
;*      Branch Occurs to L186 
	.line	6
;----------------------------------------------------------------------
; 711 | pInfo->nStPosi = nStPosi;
;     |                  // °íÀå ½ÃÀÛ À§Ä¡¸¦ ÀúÀå.                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *-fp(3),r0
        sti       r0,*+ar0(1)
L186:        
	.line	7
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	712,000000000h,1


	.sect	 ".text"

	.global	_SetFltBlkEdInfo
	.sym	_SetFltBlkEdInfo,_SetFltBlkEdInfo,32,2,0
	.func	715
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
	.sym	_pInfo,1,24,1,32,.fake68
	.line	1
;----------------------------------------------------------------------
; 715 | void SetFltBlkEdInfo(char chCarKind, int nEndPosi, int nFltTCnt)       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 717 | PFAULT_INFO pInfo = GetFltBlkInfo(chCarKind);                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _GetFltBlkInfo
                                        ; Call Occurs
        subi      1,sp
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 719 | if(pInfo != NULL)                                                      
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L190
;*      Branch Occurs to L190 
	.line	7
;----------------------------------------------------------------------
; 721 | pInfo->nTCnt = nFltTCnt;
;     |                          // °íÀå ÀüÃ¼ °¹¼ö¸¦ ±â·Ï.                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *-fp(4),r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 722 | pInfo->nEdPosi = nEndPosi;
;     |                          // °íÀå ¸¶Áö¸· À§Ä¡¸¦ ÀúÀå.                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(3),r0
        sti       r0,*+ar0(2)
L190:        
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	724,000000000h,1


	.sect	 ".text"

	.global	_GetFltBlkInfo
	.sym	_GetFltBlkInfo,_GetFltBlkInfo,104,2,0,.fake68
	.func	727
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
;----------------------------------------------------------------------
; 727 | PFAULT_INFO GetFltBlkInfo(char chCarKind)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 729 | int nIdx = chCarKind - 'A';                                            
;----------------------------------------------------------------------
        ldiu      65,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 731 | if(nIdx < eCDT_MAXIMUM)                                                
;----------------------------------------------------------------------
        cmpi      2,r0
        bge       L194
;*      Branch Occurs to L194 
	.line	6
;----------------------------------------------------------------------
; 732 | return &m_Variable.m_tFaultInfo[nIdx];                                 
;----------------------------------------------------------------------
        bud       L195
	nop
        mpyi      3,r0
        addi      @CL73,r0              ; Unsigned
;*      Branch Occurs to L195 
L194:        
	.line	8
;----------------------------------------------------------------------
; 734 | return NULL;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0
L195:        
	.line	9
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	735,000000000h,1


	.sect	 ".text"

	.global	_GetFltBlkStPos
	.sym	_GetFltBlkStPos,_GetFltBlkStPos,36,2,0
	.func	738
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
	.sym	_pInfo,2,24,1,32,.fake68
	.line	1
;----------------------------------------------------------------------
; 738 | int GetFltBlkStPos(char chCarKind)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 740 | int nStPos = -1;                                                       
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 741 | PFAULT_INFO pInfo = GetFltBlkInfo(chCarKind);                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _GetFltBlkInfo
                                        ; Call Occurs
        subi      1,sp
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 743 | if(pInfo != NULL)                                                      
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L199
;*      Branch Occurs to L199 
	.line	7
;----------------------------------------------------------------------
; 744 | nStPos = pInfo->nStPosi;                                               
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+ar0(1),r0
        sti       r0,*+fp(1)
L199:        
	.line	9
;----------------------------------------------------------------------
; 746 | return nStPos;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	747,000000000h,2


	.sect	 ".text"

	.global	_user_FaultDataTx
	.sym	_user_FaultDataTx,_user_FaultDataTx,32,2,0
	.func	749
;******************************************************************************
;* FUNCTION NAME: _user_FaultDataTx                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,sp,st                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 4 Auto + 0 SOE = 10 words         *
;******************************************************************************
_user_FaultDataTx:
	.sym	_pTxBuf,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_nEndFlag,-4,12,9,32
	.sym	_nFltIdx,-5,4,9,32
	.sym	_btTmp,1,12,1,32
	.sym	_sTempData,2,12,1,32
	.sym	_pLic_Cncs,3,24,1,32,.fake42
	.sym	_pNvsram,4,28,1,32
	.line	1
;----------------------------------------------------------------------
; 749 | void user_FaultDataTx(UCHAR *pTxBuf,UCHAR nLen,UCHAR nEndFlag,int nFltI
;     | dx)                                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 751 | UCHAR btTmp;                                                           
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 752 | UCHAR sTempData = 0;                                                   
; 753 | PLIC_CNCS_HD pLic_Cncs;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 754 | UCHAR *pNvsram = (UCHAR *)NVSRAM_BASE;                                 
;----------------------------------------------------------------------
        ldiu      @CL67,r0
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 756 | pLic_Cncs =(LIC_CNCS_HD *) pTxBuf;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(3)
	.line	10
;----------------------------------------------------------------------
; 758 | pLic_Cncs->phHdBuf.btSoh = 0x01;                                       
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 760 | pLic_Cncs->phHdBuf.chSrcDev[0] =  ConvHex2Asc(BYTE_H(m_Variable.m_chCar
;     | KindNum));                                                             
;----------------------------------------------------------------------
        ldiu      @_m_Variable+285,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(1)
	.line	13
;----------------------------------------------------------------------
; 761 | pLic_Cncs->phHdBuf.chSrcDev[1] =  ConvHex2Asc(BYTE_L(m_Variable.m_chCar
;     | KindNum));                                                             
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_Variable+285,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(2)
	.line	14
;----------------------------------------------------------------------
; 762 | pLic_Cncs->phHdBuf.chDestDev[0] =  ConvHex2Asc(BYTE_H(m_Variable.m_chCn
;     | csKindNum));                                                           
;----------------------------------------------------------------------
        ldiu      @_m_Variable+286,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(3)
	.line	15
;----------------------------------------------------------------------
; 763 | pLic_Cncs->phHdBuf.chDestDev[1] =  ConvHex2Asc(BYTE_L(m_Variable.m_chCn
;     | csKindNum));                                                           
; 765 | // °íÀå ÀÎµ¦½º¸¦ ½Å±Ô·Î »ý¼º(Y.J ¼öÁ¤)                                 
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_Variable+286,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(4)
	.line	18
;----------------------------------------------------------------------
; 766 | if(!nFltIdx) nFltIdx = m_Variable.m_nFaultCnt;                         
;----------------------------------------------------------------------
        ldi       *-fp(5),r0
        bne       L204
;*      Branch Occurs to L204 
        ldiu      @_m_Variable+271,r0
        sti       r0,*-fp(5)
L204:        
	.line	20
;----------------------------------------------------------------------
; 768 | pLic_Cncs->phHdBuf.chMsgCnt[0] = ConvHex2Asc(BYTE_H(WORD_H(nFltIdx))); 
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
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(5)
	.line	21
;----------------------------------------------------------------------
; 769 | pLic_Cncs->phHdBuf.chMsgCnt[1] = ConvHex2Asc(BYTE_L(WORD_H(nFltIdx))); 
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        ash       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(6)
	.line	22
;----------------------------------------------------------------------
; 770 | pLic_Cncs->phHdBuf.chMsgCnt[2] = ConvHex2Asc(BYTE_H(WORD_L(nFltIdx))); 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(5),r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(7)
	.line	23
;----------------------------------------------------------------------
; 771 | pLic_Cncs->phHdBuf.chMsgCnt[3] = ConvHex2Asc(BYTE_L(WORD_L(nFltIdx))); 
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *-fp(5),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(8)
	.line	25
;----------------------------------------------------------------------
; 773 | pLic_Cncs->phHdBuf.chCmdCode[0] = ConvHex2Asc(BYTE_H(0x10));           
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(9)
	.line	26
;----------------------------------------------------------------------
; 774 | pLic_Cncs->phHdBuf.chCmdCode[1] = ConvHex2Asc(BYTE_L(0x10));           
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(10)
	.line	28
;----------------------------------------------------------------------
; 776 | pLic_Cncs->phHdBuf.chDataLen[0] = ConvHex2Asc(BYTE_H(WORD_H(nLen)));   
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
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(11)
	.line	29
;----------------------------------------------------------------------
; 777 | pLic_Cncs->phHdBuf.chDataLen[1] = ConvHex2Asc(BYTE_L(WORD_H(nLen)));   
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(12)
	.line	30
;----------------------------------------------------------------------
; 778 | pLic_Cncs->phHdBuf.chDataLen[2] = ConvHex2Asc(BYTE_H(WORD_L(nLen)));   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(13)
	.line	31
;----------------------------------------------------------------------
; 779 | pLic_Cncs->phHdBuf.chDataLen[3] = ConvHex2Asc(BYTE_L(WORD_L(nLen)));   
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *-fp(3),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(14)
	.line	33
;----------------------------------------------------------------------
; 781 | if(nEndFlag)                                                           
;----------------------------------------------------------------------
        ldi       *-fp(4),r0
        beq       L206
;*      Branch Occurs to L206 
	.line	35
;----------------------------------------------------------------------
; 783 | pLic_Cncs->sCommand[0] = ConvHex2Asc(BYTE_H(0x06));//°íÀå Á¤º¸ ¼ö½Å ³¡.
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(15)
	.line	36
;----------------------------------------------------------------------
; 784 | pLic_Cncs->sCommand[1] = ConvHex2Asc(BYTE_L(0x06));//°íÀå Á¤º¸ ¼ö½Å ³¡.
; 786 | else                                                                   
;----------------------------------------------------------------------
        ldiu      6,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(16)
        bu        L207
;*      Branch Occurs to L207 
L206:        
	.line	40
;----------------------------------------------------------------------
; 788 | pLic_Cncs->sCommand[0] = ConvHex2Asc(BYTE_H(0x04));//°íÀå Á¤º¸ ¼ö½Å Áß.
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(15)
	.line	41
;----------------------------------------------------------------------
; 789 | pLic_Cncs->sCommand[1] = ConvHex2Asc(BYTE_L(0x04));//°íÀå Á¤º¸ ¼ö½Å Áß.
;----------------------------------------------------------------------
        ldiu      4,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(16)
L207:        
	.line	44
;----------------------------------------------------------------------
; 792 | pLic_Cncs->sCarKind[0] = ConvHex2Asc(BYTE_H(m_Variable.m_chCarKind));  
;----------------------------------------------------------------------
        ldiu      @_m_Variable+283,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(17)
	.line	45
;----------------------------------------------------------------------
; 793 | pLic_Cncs->sCarKind[1] = ConvHex2Asc(BYTE_L(m_Variable.m_chCarKind));  
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_Variable+283,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),ar0
        sti       r0,*+ar0(18)
	.line	47
;----------------------------------------------------------------------
; 795 | FunConvHexAsc(&pNvsram[m_Variable.m_Recving_Posi],(char *)pLic_Cncs->sT
;     | extDataAsc,(nLen-2));                                                  
;----------------------------------------------------------------------
        ldiu      19,r1
        ldiu      2,r2
        ldiu      @_m_Variable+272,r0
        addi      *+fp(4),r0            ; Unsigned
        addi      *+fp(3),r1            ; Unsigned
        subri     *-fp(3),r2            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _FunConvHexAsc
                                        ; Call Occurs
        subi      3,sp
	.line	51
;----------------------------------------------------------------------
; 799 | btTmp = crc16_ccitt(&pLic_Cncs->phHdBuf.chSrcDev[0],(nLen*2)+14);      
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        mpyi      2,r0
        ldiu      1,r1
        addi      *+fp(3),r1            ; Unsigned
        addi      14,r0                 ; Unsigned
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	52
;----------------------------------------------------------------------
; 800 | pLic_Cncs->sTextDataAsc[((nLen-2)*2)] =   ConvHex2Asc(BYTE_H(WORD_H(btT
;     | mp)));                                                                 
;----------------------------------------------------------------------
        lsh       -8,r0
        and       255,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      2,ar0
        subri     *-fp(3),ar0           ; Unsigned
        mpyi      2,ar0
        addi      *+fp(3),ar0           ; Unsigned
        sti       r0,*+ar0(19)
	.line	53
;----------------------------------------------------------------------
; 801 | pLic_Cncs->sTextDataAsc[((nLen-2)*2)+1] = ConvHex2Asc(BYTE_L(WORD_H(btT
;     | mp)));                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        lsh       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      2,ar0
        subri     *-fp(3),ar0           ; Unsigned
        mpyi      2,ar0
        addi      *+fp(3),ar0           ; Unsigned
        sti       r0,*+ar0(20)
	.line	54
;----------------------------------------------------------------------
; 802 | pLic_Cncs->sTextDataAsc[((nLen-2)*2)+2] = ConvHex2Asc(BYTE_H(WORD_L(btT
;     | mp)));                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+fp(1),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      2,ar0
        subri     *-fp(3),ar0           ; Unsigned
        mpyi      2,ar0
        addi      *+fp(3),ar0           ; Unsigned
        sti       r0,*+ar0(21)
	.line	55
;----------------------------------------------------------------------
; 803 | pLic_Cncs->sTextDataAsc[((nLen-2)*2)+3] = ConvHex2Asc(BYTE_L(WORD_L(btT
;     | mp)));                                                                 
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
        addi      *+fp(3),ar0           ; Unsigned
        sti       r0,*+ar0(22)
	.line	57
;----------------------------------------------------------------------
; 805 | pLic_Cncs->sTextDataAsc[((nLen-2)*2)+4] = 0x04;                        
;----------------------------------------------------------------------
        ldiu      2,ar0
        subri     *-fp(3),ar0           ; Unsigned
        mpyi      2,ar0
        addi      *+fp(3),ar0           ; Unsigned
        ldiu      4,r0
        sti       r0,*+ar0(23)
	.line	59
;----------------------------------------------------------------------
; 807 | m_Variable.m_LIC_CNCS_TX_DelyTime = 0;                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+269
	.line	60
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      6,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	808,000000000h,4


	.sect	 ".text"

	.global	_user_FtpEnd_CarNumFun
	.sym	_user_FtpEnd_CarNumFun,_user_FtpEnd_CarNumFun,32,2,0
	.func	813
;******************************************************************************
;* FUNCTION NAME: _user_FtpEnd_CarNumFun                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_user_FtpEnd_CarNumFun:
	.line	1
;----------------------------------------------------------------------
; 813 | void user_FtpEnd_CarNumFun()                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 815 | m_Variable.m_bLnWkFtpEndFlag = FALSE;                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+291
	.line	5
;----------------------------------------------------------------------
; 817 | m_Variable.m_LIC_CNCS_Tx_Flag = FALSE; //°íÀå Á¤º¸ ¸¶Áö¸· ºí·° ÀÌ¹Ç·Î À
;     | ü¼Û ³¡.                                                                
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+268
	.line	6
;----------------------------------------------------------------------
; 818 | m_Variable.m_nNvsramPos = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+290
	.line	7
;----------------------------------------------------------------------
; 819 | m_Variable.m_Recving_Posi = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+272
	.line	8
;----------------------------------------------------------------------
; 820 | m_Variable.m_nLnWkWaySideOnRxOk = 0;                                   
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+288
	.line	9
;----------------------------------------------------------------------
; 821 | m_Variable.m_nFaultCnt = 0;                                            
; 822 | //m_chCarKind = 'A';                                                   
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+271
	.line	11
;----------------------------------------------------------------------
; 823 | m_Variable.m_nLnWkTxFlag = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_m_Variable+270
	.line	13
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	825,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_CI_Fault+0,32
	.field  	0,32		; _d_CI_Fault @ 0

	.sect	".text"

	.global	_d_CI_Fault
	.bss	_d_CI_Fault,1
	.sym	_d_CI_Fault,_d_CI_Fault,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CI_Index+0,32
	.field  	0,32		; _d_CI_Index @ 0

	.sect	".text"

	.global	_d_CI_Index
	.bss	_d_CI_Index,1
	.sym	_d_CI_Index,_d_CI_Index,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarNum+0,32
	.field  	0,32		; _d_CarNum @ 0

	.sect	".text"

	.global	_d_CarNum
	.bss	_d_CarNum,1
	.sym	_d_CarNum,_d_CarNum,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarConfig+0,32
	.field  	0,32		; _d_CarConfig @ 0

	.sect	".text"

	.global	_d_CarConfig
	.bss	_d_CarConfig,1
	.sym	_d_CarConfig,_d_CarConfig,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarConfig_St+0,32
	.field  	0,32		; _d_CarConfig_St @ 0

	.sect	".text"

	.global	_d_CarConfig_St
	.bss	_d_CarConfig_St,1
	.sym	_d_CarConfig_St,_d_CarConfig_St,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_ddddd+0,32
	.field  	0,32		; _ddddd @ 0

	.sect	".text"

	.global	_ddddd
	.bss	_ddddd,1
	.sym	_ddddd,_ddddd,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Linc_to_PAC+0,32
	.field  	0,32		; _d_Linc_to_PAC @ 0

	.sect	".text"

	.global	_d_Linc_to_PAC
	.bss	_d_Linc_to_PAC,1
	.sym	_d_Linc_to_PAC,_d_Linc_to_PAC,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nRxPos$9+0,32
	.field  	0,32		; _nRxPos$9 @ 0

	.sect	".text"

	.sect	".cinit"
	.field  	1,32
	.field  	_nOldUart3RxOneByteGapDelayTime$10+0,32
	.field  	0,32		; _nOldUart3RxOneByteGapDelayTime$10 @ 0

	.sect	".text"
	.sect	 ".text"

	.global	_user_WithPacRs485Loop
	.sym	_user_WithPacRs485Loop,_user_WithPacRs485Loop,32,2,0
	.func	839
;******************************************************************************
;* FUNCTION NAME: _user_WithPacRs485Loop                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r4,ar0,fp,ir0,ir1,sp,st                    *
;*   Regs Saved         : r4                                                  *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 432 Auto + 1 SOE = 435 words      *
;******************************************************************************
_user_WithPacRs485Loop:
	.bss	_nRxPos$9,1
	.sym	_nRxPos,_nRxPos$9,4,3,32
	.bss	_nOldUart3RxOneByteGapDelayTime$10,1
	.sym	_nOldUart3RxOneByteGapDelayTime,_nOldUart3RxOneByteGapDelayTime$10,12,3,32
	.bss	_btRx3chBuf$11,500
	.sym	_btRx3chBuf,_btRx3chBuf$11,60,3,16000,,500
	.sym	_i,1,4,1,32
	.sym	_nRxLen,2,4,1,32
	.sym	_sCarPosionIndex,3,4,1,32
	.sym	_sCabKeyCheck,4,4,1,32
	.sym	_sCabKeyCheck1,5,4,1,32
	.sym	_sIndexValue_A,6,12,1,32
	.sym	_sIndexValue_B,7,12,1,32
	.sym	_btTmp,8,12,1,32
	.sym	_btTmpBuf,9,60,1,3200,,100
	.sym	_btBuf,109,60,1,9600,,300
	.sym	_pPaSdrBuf,409,24,1,32,.fake13
	.sym	_lsLicSdBuf,410,8,1,704,.fake36
	.sym	_pPa_PaBuf,432,24,1,32,.fake34
	.line	1
;----------------------------------------------------------------------
; 839 | void user_WithPacRs485Loop()                                           
; 841 | int i;                                                                 
; 842 | int nRxLen;                                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      432,sp
        push      r4
	.line	6
;----------------------------------------------------------------------
; 844 | int sCarPosionIndex = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 845 | int sCabKeyCheck = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 846 | int sCabKeyCheck1 = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 848 | UCHAR sIndexValue_A = 0; // CI Index °ªÀ» È®ÀÎ ÇÏ´Â º¯¼ö.              
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	11
;----------------------------------------------------------------------
; 849 | UCHAR sIndexValue_B = 0;                                               
; 851 | UCHAR btTmp;                                                           
; 852 | UCHAR btTmpBuf[100];                                                   
; 853 | UCHAR btBuf[300];                                                      
; 855 | static int nRxPos = 0;                                                 
; 856 | static UCHAR nOldUart3RxOneByteGapDelayTime = 0;                       
; 857 | static UCHAR btRx3chBuf[500];                                          
; 860 | PPACSDR pPaSdrBuf;                                                     
; 861 | LICSD lsLicSdBuf;                                                      
; 864 | PPAC_PAC pPa_PaBuf;                                                    
; 867 | //½ÃÀÛ                                                                 
; 868 | // ¼ö½Å                                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	31
;----------------------------------------------------------------------
; 869 | nRxLen = user_PacRx(btBuf,128);                                        
;----------------------------------------------------------------------
        ldiu      128,r1
        ldiu      fp,r0
        push      r1
        addi      109,r0
        push      r0
        call      _user_PacRx
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(2)
	.line	32
;----------------------------------------------------------------------
; 870 | if(nRxLen)                                                             
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L218
;*      Branch Occurs to L218 
	.line	34
;----------------------------------------------------------------------
; 872 | if(!m_Variable.m_nUart3RxOneByteGapDelayTime) nRxPos = 0;              
;----------------------------------------------------------------------
        ldi       @_m_Variable+227,r0
        bne       L216
;*      Branch Occurs to L216 
        ldiu      0,r0
        sti       r0,@_nRxPos$9+0
L216:        
	.line	35
;----------------------------------------------------------------------
; 873 | m_Variable.m_nUart3RxOneByteGapDelayTime = 3;                          
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_m_Variable+227
	.line	37
;----------------------------------------------------------------------
; 875 | if(nRxPos + nRxLen < 500)                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        addi      @_nRxPos$9+0,r0
        cmpi      500,r0
        bged      L218
        ldilt     @CL74,r0
        ldilt     fp,r1
        ldilt     *+fp(2),r2
;*      Branch Occurs to L218 
	.line	39
;----------------------------------------------------------------------
; 877 | memcpy(&btRx3chBuf[nRxPos],btBuf,nRxLen);                              
;----------------------------------------------------------------------
        addi      @_nRxPos$9+0,r0       ; Unsigned
        addi      109,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	40
;----------------------------------------------------------------------
; 878 | nRxPos += nRxLen;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        addi      @_nRxPos$9+0,r0
        sti       r0,@_nRxPos$9+0
L218:        
	.line	45
;----------------------------------------------------------------------
; 883 | if(nOldUart3RxOneByteGapDelayTime && !m_Variable.m_nUart3RxOneByteGapDe
;     | layTime)                                                               
;----------------------------------------------------------------------
        ldi       @_nOldUart3RxOneByteGapDelayTime$10+0,r0
        beq       L281
;*      Branch Occurs to L281 
        ldi       @_m_Variable+227,r0
        bne       L281
;*      Branch Occurs to L281 
	.line	48
;----------------------------------------------------------------------
; 886 | if(nRxPos >= 10)                                                       
;----------------------------------------------------------------------
        ldiu      @_nRxPos$9+0,r0
        cmpi      10,r0
        blt       L281
;*      Branch Occurs to L281 
	.line	50
;----------------------------------------------------------------------
; 888 | pPaSdrBuf = (PACSDR *)btRx3chBuf;                                      
;----------------------------------------------------------------------
        ldiu      409,ir0
        ldiu      @CL74,r0
        sti       r0,*+fp(ir0)
	.line	52
;----------------------------------------------------------------------
; 890 | pPa_PaBuf = (PAC_PAC *)btRx3chBuf;                                     
; 893 | //PAC -> LIC ºÎºÐ ÇÁ·ÎÅäÄÝÀ» ºÐ¸® ÇÑ´Ù.                                
;----------------------------------------------------------------------
        ldiu      432,ir0
        sti       r0,*+fp(ir0)
	.line	56
;----------------------------------------------------------------------
; 894 | if(WORD_L(pPaSdrBuf->phHdBuf.btSoh) == SOH &&                          
; 895 |         WORD_L(pPaSdrBuf->btEot) == EOT &&                             
; 896 |         sizeof(PACSDR) == nRxPos &&                                    
; 897 |         (TWOBYTE_ASC2HEX(pPaSdrBuf->phHdBuf.chDestDev) == m_Variable.m_
;     | chCarKindNum)&&                                                        
; 899 |         ConvAsc2Hex(pPaSdrBuf->nCRC[0]) == BYTE_H(WORD_H(crc16_ccitt(&p
;     | PaSdrBuf->phHdBuf.chSrcDev[0],nRxPos-6)))&&                            
; 900 |         ConvAsc2Hex(pPaSdrBuf->nCRC[1]) == BYTE_L(WORD_H(crc16_ccitt(&p
;     | PaSdrBuf->phHdBuf.chSrcDev[0],nRxPos-6)))&&                            
; 901 |         ConvAsc2Hex(pPaSdrBuf->nCRC[2]) == BYTE_H(WORD_L(crc16_ccitt(&p
;     | PaSdrBuf->phHdBuf.chSrcDev[0],nRxPos-6)))&&                            
; 902 |         ConvAsc2Hex(pPaSdrBuf->nCRC[3]) == BYTE_L(WORD_L(crc16_ccitt(&p
;     | PaSdrBuf->phHdBuf.chSrcDev[0],nRxPos-6))))                             
; 906 |         switch(TWOBYTE_ASC2HEX(pPaSdrBuf->phHdBuf.chCmdCode))          
; 908 |         case REQ_CMD: //LIC -> PAC                                     
;----------------------------------------------------------------------
        ldiu      409,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      1,r0
        bne       L237
;*      Branch Occurs to L237 
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(25),r0
        cmpi      4,r0
        bne       L237
;*      Branch Occurs to L237 
        ldiu      26,r0
        cmpi      @_nRxPos$9+0,r0
        bne       L237
;*      Branch Occurs to L237 
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(3),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      409,ir0
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
        cmpi      @_m_Variable+285,r0
        subi      1,sp
        bne       L237
;*      Branch Occurs to L237 
        ldiu      1,r1
        ldiu      409,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$9+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      409,ir0
        ldiu      r0,r4
        subi      2,sp
        lsh       -8,r4
        ldiu      *+fp(ir0),ar0
        and       255,r4
        ldiu      *+ar0(21),r0
        lsh       -4,r4
        and       15,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L237
;*      Branch Occurs to L237 
        ldiu      1,r1
        ldiu      409,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$9+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        subi      2,sp
        ldiu      409,ir0
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(22),r0
        lsh       -8,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L237
;*      Branch Occurs to L237 
        ldiu      1,r1
        ldiu      409,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$9+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      409,ir0
        subi      2,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        and       255,r4
        ldiu      *+ar0(23),r0
        lsh       -4,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L237
;*      Branch Occurs to L237 
        ldiu      1,r1
        ldiu      409,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$9+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      409,ir0
        subi      2,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(24),r0
        and       15,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L237
;*      Branch Occurs to L237 
        bud       L234
        ldiu      409,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(7),r0
;*      Branch Occurs to L234 
	.line	72
;----------------------------------------------------------------------
; 910 | lsLicSdBuf.phHdBuf.btSoh = SOH;                                        
;----------------------------------------------------------------------
L231:        
        sti       r0,*+fp(ir0)
	.line	73
;----------------------------------------------------------------------
; 911 | lsLicSdBuf.phHdBuf.chSrcDev[0] = ConvHex2Asc(BYTE_H(m_Variable.m_chCarK
;     | indNum));                                                              
;----------------------------------------------------------------------
        ldiu      @_m_Variable+285,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      411,ir0
        sti       r0,*+fp(ir0)
	.line	74
;----------------------------------------------------------------------
; 912 | lsLicSdBuf.phHdBuf.chSrcDev[1] = ConvHex2Asc(BYTE_L(m_Variable.m_chCarK
;     | indNum));                                                              
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_Variable+285,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      412,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	75
;----------------------------------------------------------------------
; 913 | lsLicSdBuf.phHdBuf.chDestDev[0] = pPaSdrBuf->phHdBuf.chSrcDev[0];      
;----------------------------------------------------------------------
        ldiu      409,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      413,ir0
        ldiu      *+ar0(1),r0
        sti       r0,*+fp(ir0)
	.line	76
;----------------------------------------------------------------------
; 914 | lsLicSdBuf.phHdBuf.chDestDev[1] = pPaSdrBuf->phHdBuf.chSrcDev[1];      
;----------------------------------------------------------------------
        ldiu      409,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      414,ir0
        ldiu      *+ar0(2),r0
        sti       r0,*+fp(ir0)
	.line	77
;----------------------------------------------------------------------
; 915 | lsLicSdBuf.phHdBuf.chMsgCnt[0] = pPaSdrBuf->phHdBuf.chMsgCnt[0];       
;----------------------------------------------------------------------
        ldiu      409,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      415,ir0
        ldiu      *+ar0(5),r0
        sti       r0,*+fp(ir0)
	.line	78
;----------------------------------------------------------------------
; 916 | lsLicSdBuf.phHdBuf.chMsgCnt[1] = pPaSdrBuf->phHdBuf.chMsgCnt[1];       
;----------------------------------------------------------------------
        ldiu      409,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      416,ir0
        ldiu      *+ar0(6),r0
        sti       r0,*+fp(ir0)
	.line	79
;----------------------------------------------------------------------
; 917 | lsLicSdBuf.phHdBuf.chCmdCode[0] = ConvHex2Asc(BYTE_H(RPY_CMD));        
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      417,ir0
        sti       r0,*+fp(ir0)
	.line	80
;----------------------------------------------------------------------
; 918 | lsLicSdBuf.phHdBuf.chCmdCode[1] = ConvHex2Asc(BYTE_L(RPY_CMD));        
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      418,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	82
;----------------------------------------------------------------------
; 920 | lsLicSdBuf.phHdBuf.chDataLen[0] = ConvHex2Asc(BYTE_H((WORD_H(sizeof(LIC
;     | SD)-18)/2)));                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      419,ir0
        sti       r0,*+fp(ir0)
	.line	83
;----------------------------------------------------------------------
; 921 | lsLicSdBuf.phHdBuf.chDataLen[1] = ConvHex2Asc(BYTE_L((WORD_H(sizeof(LIC
;     | SD)-18)/2)));                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      420,ir0
        sti       r0,*+fp(ir0)
	.line	85
;----------------------------------------------------------------------
; 923 | lsLicSdBuf.phHdBuf.chDataLen[2] = ConvHex2Asc(BYTE_H((WORD_L(sizeof(LIC
;     | SD)-18)/2)));                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      421,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	86
;----------------------------------------------------------------------
; 924 | lsLicSdBuf.phHdBuf.chDataLen[3] = ConvHex2Asc(BYTE_L((WORD_L(sizeof(LIC
;     | SD)-18)/2)));                                                          
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      422,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	89
;----------------------------------------------------------------------
; 927 | lsLicSdBuf.DATA1.BIT.All_Doors_Closed = m_Variable.m_btCttSignalA.BIT.A
;     | ll_Doors_Closed;                                                       
;----------------------------------------------------------------------
        ldiu      8,r0
        and       @_m_Variable+353,r0
        ldiu      424,ir0
        lsh       -3,r0
        ldiu      *+fp(ir0),r1
        and       1,r0
        andn      1,r1
        ldiu      424,ir1
        or3       r1,r0,r0
        sti       r0,*+fp(ir1)
	.line	90
;----------------------------------------------------------------------
; 928 | lsLicSdBuf.DATA1.BIT.EP_Mode = m_Variable.m_btCttSignalA.BIT.EP_Mode;  
;----------------------------------------------------------------------
        ldiu      4,r0
        and       @_m_Variable+353,r0
        lsh       -2,r0
        and       1,r0
        ash       1,r0
        ldiu      *+fp(ir0),r1
        andn      2,r1
        or3       r1,r0,r0
        sti       r0,*+fp(ir1)
	.line	91
;----------------------------------------------------------------------
; 929 | lsLicSdBuf.DATA1.BIT.Traction = m_Variable.m_btCttSignalA.BIT.Traction;
;----------------------------------------------------------------------
        ldiu      2,r0
        and       @_m_Variable+353,r0
        lsh       -1,r0
        and       1,r0
        ldiu      *+fp(ir0),r1
        ash       2,r0
        andn      4,r1
        or3       r1,r0,r0
        sti       r0,*+fp(ir1)
	.line	92
;----------------------------------------------------------------------
; 930 | lsLicSdBuf.DATA1.BIT.Atcive_Cab = m_Variable.m_btCttSignalA.BIT.Atcive_
;     | Cab;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(ir0),r1
        and       @_m_Variable+353,r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*+fp(ir1)
	.line	94
;----------------------------------------------------------------------
; 932 | lsLicSdBuf.DATA2.BIT.CI_Fault = m_Variable.m_bCiFaultFlag;             
;----------------------------------------------------------------------
        ldiu      423,ir1
        ldiu      1,r0
        and       @_m_Variable+360,r0
        ldiu      423,ir0
        ash       2,r0
        ldiu      *+fp(ir0),r1
        andn      4,r1
        or3       r1,r0,r0
        sti       r0,*+fp(ir1)
	.line	95
;----------------------------------------------------------------------
; 933 | lsLicSdBuf.DATA2.BIT.DST = 0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(ir1),r0
        andn      8,r0
        sti       r0,*+fp(ir0)
	.line	98
;----------------------------------------------------------------------
; 936 | lsLicSdBuf.DATA1.BYTE = ConvHex2Asc(BYTE_L(lsLicSdBuf.DATA1.BYTE));    
;----------------------------------------------------------------------
        ldiu      424,ir0
        ldiu      15,r0
        and3      r0,*+fp(ir0),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      424,ir0
        sti       r0,*+fp(ir0)
	.line	99
;----------------------------------------------------------------------
; 937 | lsLicSdBuf.DATA2.BYTE = ConvHex2Asc(BYTE_L(lsLicSdBuf.DATA2.BYTE));    
;----------------------------------------------------------------------
        ldiu      423,ir0
        ldiu      15,r0
        and3      r0,*+fp(ir0),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      423,ir0
        sti       r0,*+fp(ir0)
	.line	103
;----------------------------------------------------------------------
; 941 | lsLicSdBuf.CI_Index_Num[0] = ConvHex2Asc(BYTE_H(m_Variable.m_nCarPos));
;----------------------------------------------------------------------
        ldiu      @_m_Variable+278,r0
        ash       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      425,ir0
        sti       r0,*+fp(ir0)
	.line	104
;----------------------------------------------------------------------
; 942 | lsLicSdBuf.CI_Index_Num[1] = ConvHex2Asc(BYTE_L(m_Variable.m_nCarPos));
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_m_Variable+278,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      426,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	106
;----------------------------------------------------------------------
; 944 | btTmp = crc16_ccitt(&lsLicSdBuf.phHdBuf.chSrcDev[0],sizeof(LICSD)-6);  
;----------------------------------------------------------------------
        ldiu      16,r1
        ldiu      411,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _crc16_ccitt
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(8)
	.line	107
;----------------------------------------------------------------------
; 945 | lsLicSdBuf.nCRC[0] = ConvHex2Asc(BYTE_H(WORD_H(btTmp)));               
;----------------------------------------------------------------------
        lsh       -8,r0
        and       255,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      427,ir0
        sti       r0,*+fp(ir0)
	.line	108
;----------------------------------------------------------------------
; 946 | lsLicSdBuf.nCRC[1] = ConvHex2Asc(BYTE_L(WORD_H(btTmp)));               
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
        lsh       -8,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      428,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	109
;----------------------------------------------------------------------
; 947 | lsLicSdBuf.nCRC[2] = ConvHex2Asc(BYTE_H(WORD_L(btTmp)));               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+fp(8),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      429,ir0
        sti       r0,*+fp(ir0)
	.line	110
;----------------------------------------------------------------------
; 948 | lsLicSdBuf.nCRC[3] = ConvHex2Asc(BYTE_L(WORD_L(btTmp)));               
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *+fp(8),r0
        push      r0
        call      _ConvHex2Asc
                                        ; Call Occurs
        ldiu      430,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	111
;----------------------------------------------------------------------
; 949 | lsLicSdBuf.btEot = EOT;                                                
;----------------------------------------------------------------------
        ldiu      431,ir0
        ldiu      4,r0
        sti       r0,*+fp(ir0)
	.line	113
;----------------------------------------------------------------------
; 951 | user_PacTx((UCHAR *)&lsLicSdBuf,sizeof(LICSD));                        
; 953 | //MyPrintf("LIC--> PAC");                                              
;----------------------------------------------------------------------
        ldiu      410,r0
        addi      fp,r0
        ldiu      22,r1
        push      r1
        push      r0
        call      _user_PacTx
                                        ; Call Occurs
        subi      2,sp
	.line	117
;----------------------------------------------------------------------
; 955 | d_Linc_to_PAC++;                                                       
; 956 | //MyPrintf_TxAuto((UCHAR *)&lsLicSdBuf,sizeof(LICSD));                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Linc_to_PAC+0,r0
        sti       r0,@_d_Linc_to_PAC+0
	.line	120
;----------------------------------------------------------------------
; 958 | break;                                                                 
; 959 | default:                                                               
;----------------------------------------------------------------------
        bu        L281
;*      Branch Occurs to L281 
	.line	122
;----------------------------------------------------------------------
; 960 | break;                                                                 
; 964 | else                                                                   
;----------------------------------------------------------------------
	.line	68
L234:        
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      409,ir0
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
        beqd      L231
        subi      1,sp
        ldieq     410,ir0
        ldieq     1,r0
;*      Branch Occurs to L231 
        bu        L281
;*      Branch Occurs to L281 
L237:        
	.line	127
;----------------------------------------------------------------------
; 965 | if(WORD_L(pPa_PaBuf->phHdBuf.btSoh) == SOH &&  // PAC <-> PAC ¿¡¼­ »óÅÂ
;     |  Á¤º¸¸¦ ÃßÃâÇÑ´Ù.                                                      
; 966 |             WORD_L(pPa_PaBuf->btEot) == EOT &&                         
; 967 |             sizeof(PAC_PAC) == nRxPos &&                               
; 968 |                 //(TWOBYTE_ASC2HEX(pPa_PaBuf->phHdBuf.chSrcDev) == PAC_
;     | DEV_NO) &&                                                             
; 969 |             //(TWOBYTE_ASC2HEX(pPa_PaBuf->phHdBuf.chDestDev) == PAC_DEV
;     | _NO) &&                                                                
; 971 |             ConvAsc2Hex(pPa_PaBuf->nCRC[0]) == BYTE_H(WORD_H(crc16_ccit
;     | t(&pPa_PaBuf->phHdBuf.chSrcDev[0],nRxPos-6)))&&                        
; 972 |                 ConvAsc2Hex(pPa_PaBuf->nCRC[1]) == BYTE_L(WORD_H(crc16_
;     | ccitt(&pPa_PaBuf->phHdBuf.chSrcDev[0],nRxPos-6)))&&                    
; 973 |                 ConvAsc2Hex(pPa_PaBuf->nCRC[2]) == BYTE_H(WORD_L(crc16_
;     | ccitt(&pPa_PaBuf->phHdBuf.chSrcDev[0],nRxPos-6)))&&                    
; 974 |                 ConvAsc2Hex(pPa_PaBuf->nCRC[3]) == BYTE_L(WORD_L(crc16_
;     | ccitt(&pPa_PaBuf->phHdBuf.chSrcDev[0],nRxPos-6)))                      
; 975 |             )                                                          
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      1,r0
        bne       L281
;*      Branch Occurs to L281 
        ldiu      *+fp(ir0),ir0
        ldiu      267,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      4,r0
        bne       L281
;*      Branch Occurs to L281 
        ldiu      268,r0
        cmpi      @_nRxPos$9+0,r0
        bne       L281
;*      Branch Occurs to L281 
        ldiu      1,r1
        ldiu      432,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$9+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      263,ar0
        ldiu      432,ir0
        ldiu      r0,r4
        subi      2,sp
        lsh       -8,r4
        ldiu      *+fp(ir0),ir0
        and       255,r4
        ldiu      *+ar0(ir0),r0
        lsh       -4,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L281
;*      Branch Occurs to L281 
        ldiu      1,r1
        ldiu      432,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$9+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      264,ar0
        ldiu      432,ir0
        subi      2,sp
        ldiu      *+fp(ir0),ir0
        ldiu      r0,r4
        ldiu      *+ar0(ir0),r0
        lsh       -8,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L281
;*      Branch Occurs to L281 
        ldiu      1,r1
        ldiu      432,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$9+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      432,ir0
        subi      2,sp
        ldiu      265,ar0
        ldiu      r0,r4
        ldiu      *+fp(ir0),ir0
        and       255,r4
        ldiu      *+ar0(ir0),r0
        lsh       -4,r4
        push      r0
        and       15,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L281
;*      Branch Occurs to L281 
        ldiu      1,r1
        ldiu      432,ir0
        ldiu      6,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        subri     @_nRxPos$9+0,r0
        push      r0
        push      r1
        call      _crc16_ccitt
                                        ; Call Occurs
        ldiu      432,ir0
        subi      2,sp
        ldiu      266,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      r0,r4
        ldiu      *+ar0(ir0),r0
        and       15,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        cmpi3     r4,r0
        subi      1,sp
        bne       L281
;*      Branch Occurs to L281 
	.line	141
;----------------------------------------------------------------------
; 979 | m_Variable.m_TrainCofVal_Chick = TWOBYTE_ASC2HEX(pPa_PaBuf->sCCI); ////
;     |  Â÷·® Áß·Ã »óÅÂ Á¤º¸¸¦ Àü´Þ.                                           
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(153),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      432,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(154),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        sti       r0,@_m_Variable+276
        subi      1,sp
	.line	144
;----------------------------------------------------------------------
; 982 | if(m_Variable.m_TrainCofVal_Chick == 0x10) //|| m_Variable.m_TrainCofVa
;     | l_Chick == 0x20)                                                       
;----------------------------------------------------------------------
        cmpi      16,r0
        bne       L246
;*      Branch Occurs to L246 
	.line	146
;----------------------------------------------------------------------
; 984 | m_Variable.m_TrainCofVal_ing = FALSE;                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+277
        bu        L248
;*      Branch Occurs to L248 
L246:        
	.line	148
;----------------------------------------------------------------------
; 986 | else if(m_Variable.m_TrainCofVal_Chick) // Á¤»óÀûÀÎ °ªÀÌ µé¾î ¿À¸é, Áß·
;     | Ã ÁßÀ» ÇØÁ¦ ÇÑ´Ù.                                                      
;----------------------------------------------------------------------
        ldi       @_m_Variable+276,r0
        beq       L248
;*      Branch Occurs to L248 
	.line	150
;----------------------------------------------------------------------
; 988 | m_Variable.m_TrainCofVal_ing = TRUE;                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_Variable+277
L248:        
	.line	154
;----------------------------------------------------------------------
; 992 | d_CarConfig_St = m_Variable.m_TrainCofVal_Chick;                       
;----------------------------------------------------------------------
        ldiu      @_m_Variable+276,r0
        sti       r0,@_d_CarConfig_St+0
	.line	156
;----------------------------------------------------------------------
; 994 | m_Variable.m_btCiFaultVal = TWOBYTE_ASC2HEX(pPa_PaBuf->sCI_Fault); //CI
;     |  °íÀå Á¤º¸.                                                            
; 997 | //### ÀÚ½ÅÀÇ À§Ä¡¸¦ Ã£¾Æ¼­ ÇØ´çÇÏ´Â ÀåÄ¡ »óÅÂ µ¥ÀÌÅ¸¸¦ ÃßÃâÇÑ´Ù.###    
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(151),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      432,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(152),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        subi      1,sp
        sti       r0,@_m_Variable+280
	.line	160
;----------------------------------------------------------------------
; 998 | sCarPosionIndex = TWOBYTE_ASC2HEX(pPa_PaBuf->sCPI)-1;                  
; 1000 | //ÀÚ½ÅÀÇ À§Ä¡¸¦ È®ÀÎ ÇÏ°í »óÅÂ °ªÀ» ÀÐ¾î ¿Â´Ù.                         
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(155),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      432,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(156),r1
        push      r1
        ldiu      r0,r4
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        subi      1,sp
        subi      1,r0                  ; Unsigned
        sti       r0,*+fp(3)
	.line	163
;----------------------------------------------------------------------
; 1001 | FunConvAscHex((char *)&pPa_PaBuf->phCRA_Sta[sCarPosionIndex][0][0],&btT
;     | mpBuf[0],22);                                                          
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      22,r2
        mpyi      22,r0
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        push      r2
        addi      157,r0                ; Unsigned
        ldiu      fp,r1
        addi      9,r1
        push      r1
        push      r0
        call      _FunConvAscHex
                                        ; Call Occurs
        subi      3,sp
	.line	165
;----------------------------------------------------------------------
; 1003 | USer_UnitState((CRA_STATION *) &btTmpBuf[0]);                          
; 1004 | //-----------------------------------------------------------------    
; 1005 | //CI Index Á¤º¸´Â CAB ½ÅÈ£°¡ ÀÖ°í, Index °ªÀÌ 0ÀÌ ¾Æ´Ï¸é ±× °ªÀ» »ç¿ëÇÑ
;     | ´Ù.                                                                    
; 1006 | //-----------------------------------------------------------------    
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      9,r0
        push      r0
        call      _USer_UnitState
                                        ; Call Occurs
        subi      1,sp
	.line	169
;----------------------------------------------------------------------
; 1007 | sCabKeyCheck |= MAKE_BYTE(ConvAsc2Hex(pPa_PaBuf->phCRA_Sta[0][0][0]),Co
;     | nvAsc2Hex(pPa_PaBuf->phCRA_Sta[0][0][1]));                             
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(157),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      432,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(158),r0
        push      r0
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        subi      1,sp
        or3       r4,r0,r0
        and       255,r0
        or        *+fp(4),r0
        sti       r0,*+fp(4)
	.line	170
;----------------------------------------------------------------------
; 1008 | sCabKeyCheck |= MAKE_BYTE(ConvAsc2Hex(pPa_PaBuf->phCRA_Sta[1][0][0]),Co
;     | nvAsc2Hex(pPa_PaBuf->phCRA_Sta[1][0][1]));                             
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(179),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      432,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(180),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        or        *+fp(4),r0
        sti       r0,*+fp(4)
	.line	171
;----------------------------------------------------------------------
; 1009 | sCabKeyCheck |= MAKE_BYTE(ConvAsc2Hex(pPa_PaBuf->phCRA_Sta[2][0][0]),Co
;     | nvAsc2Hex(pPa_PaBuf->phCRA_Sta[2][0][1]));                             
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(201),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      432,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(202),r0
        ash       4,r4
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        subi      1,sp
        or3       r4,r0,r0
        and       255,r0
        or        *+fp(4),r0
        sti       r0,*+fp(4)
	.line	172
;----------------------------------------------------------------------
; 1010 | sCabKeyCheck |= MAKE_BYTE(ConvAsc2Hex(pPa_PaBuf->phCRA_Sta[3][0][0]),Co
;     | nvAsc2Hex(pPa_PaBuf->phCRA_Sta[3][0][1]));                             
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(223),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      432,ir0
        subi      1,sp
        ldiu      *+fp(ir0),ar0
        ldiu      r0,r4
        ldiu      *+ar0(224),r0
        push      r0
        ash       4,r4
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        or        *+fp(4),r0
        sti       r0,*+fp(4)
	.line	175
;----------------------------------------------------------------------
; 1013 | sCabKeyCheck1 = MAKE_BYTE(ConvAsc2Hex(pPa_PaBuf->phCRA_Sta[sCarPosionIn
;     | dex][0][0]),ConvAsc2Hex(pPa_PaBuf->phCRA_Sta[sCarPosionIndex][0][1])); 
;----------------------------------------------------------------------
        ldiu      432,ir0
        ldiu      *+fp(3),r0
        mpyi      22,r0
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        ldiu      *+ar0(157),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        ldiu      432,ir0
        subi      1,sp
        ldiu      r0,r4
        ldiu      *+fp(3),r1
        ash       4,r4
        mpyi      22,r1
        addi3     r1,*+fp(ir0),ar0      ; Unsigned
        ldiu      *+ar0(158),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        and       15,r0
        or3       r4,r0,r0
        and       255,r0
        sti       r0,*+fp(5)
	.line	178
;----------------------------------------------------------------------
; 1016 | sIndexValue_A = MAKE_BYTE(ConvAsc2Hex(pPa_PaBuf->sCI_Index[(sCarPosionI
;     | ndex*2)][0]),ConvAsc2Hex(pPa_PaBuf->sCI_Index[(sCarPosionIndex*2)][1]))
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0
        mpyi      2,r0
        ldiu      432,ir0
        ash       1,r0
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        ldiu      *+ar0(135),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      432,ir0
        ldiu      r0,r4
        ldiu      *+fp(3),r1
        mpyi      2,r1
        ash       4,r4
        ash       1,r1
        addi3     r1,*+fp(ir0),ar0      ; Unsigned
        ldiu      *+ar0(136),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        subi      1,sp
        or3       r4,r0,r0
        and       255,r0
        sti       r0,*+fp(6)
	.line	180
;----------------------------------------------------------------------
; 1018 | sIndexValue_B = MAKE_BYTE(ConvAsc2Hex(pPa_PaBuf->sCI_Index[(sCarPosionI
;     | ndex*2)+1][0]),ConvAsc2Hex(pPa_PaBuf->sCI_Index[(sCarPosionIndex*2)+1][
;     | 1]));                                                                  
; 1021 | //CAB Key °¡ ON µÇ¾î ÀÖ´ÂÁö È®ÀÎ ÇÑ´Ù.                                 
; 1022 | //Áß·ÃÁß(0x10) ¶Ç´Â Áß·Ã ½ÇÆÐ(0x20) °¡ ³ª¿À¸é Áß·Ã À§Ä¡ Á¤º¸¸¦ È®ÀÎ ÇÏÁ
;     | ö ¾Ê´Â´Ù.                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0
        mpyi      2,r0
        addi      1,r0
        ldiu      432,ir0
        ash       1,r0
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        ldiu      *+ar0(135),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(3),r1
        mpyi      2,r1
        addi      1,r1
        ldiu      r0,r4
        ldiu      432,ir0
        ash       4,r4
        ash       1,r1
        addi3     r1,*+fp(ir0),ar0      ; Unsigned
        ldiu      *+ar0(136),r0
        push      r0
        call      _ConvAsc2Hex
                                        ; Call Occurs
        and       15,r0
        or3       r4,r0,r0
        subi      1,sp
        and       255,r0
        sti       r0,*+fp(7)
	.line	185
;----------------------------------------------------------------------
; 1023 | if(((sCabKeyCheck&0x01) ||(sCabKeyCheck&0x10))&& m_Variable.m_TrainCofV
;     | al_ing)                                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      *+fp(4),r0
        bne       L251
;*      Branch Occurs to L251 
        ldiu      16,r0
        tstb      *+fp(4),r0
        beq       L274
;*      Branch Occurs to L274 
L251:        
        ldi       @_m_Variable+277,r0
        beq       L274
;*      Branch Occurs to L274 
	.line	187
;----------------------------------------------------------------------
; 1025 | ddddd++;                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_ddddd+0,r0
        sti       r0,@_ddddd+0
	.line	189
;----------------------------------------------------------------------
; 1027 | m_Variable.m_TrainCofVal_Time_Flag = 0;                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+275
	.line	191
;----------------------------------------------------------------------
; 1029 | if(m_Variable.m_chCarKind =='A')                                       
;----------------------------------------------------------------------
        ldiu      @_m_Variable+283,r0
        cmpi      65,r0
        bne       L259
;*      Branch Occurs to L259 
	.line	194
;----------------------------------------------------------------------
; 1032 | if(sCabKeyCheck1&0x08)//A CAR °¡ Head Car ÀÏ°æ¿ì.                      
;----------------------------------------------------------------------
        ldiu      8,r0
        tstb      *+fp(5),r0
        beq       L256
;*      Branch Occurs to L256 
	.line	196
;----------------------------------------------------------------------
; 1034 | if(sIndexValue_A) // Index °ªÀÌ 0 ÀÌ»ó ÀÌ¸é »ç¿ë ÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldi       *+fp(6),r0
        beq       L266
;*      Branch Occurs to L266 
	.line	198
;----------------------------------------------------------------------
; 1036 | m_Variable.m_nCarPos = sIndexValue_A;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0
        sti       r0,@_m_Variable+278
        bu        L266
;*      Branch Occurs to L266 
L256:        
	.line	201
;----------------------------------------------------------------------
; 1039 | else if(sCabKeyCheck1&0x80)// B CAR °¡ Head Car ÀÏ°æ¿ì.                
;----------------------------------------------------------------------
        ldiu      128,r0
        tstb      *+fp(5),r0
        beq       L266
;*      Branch Occurs to L266 
	.line	203
;----------------------------------------------------------------------
; 1041 | if(sIndexValue_B) // Index °ªÀÌ 0 ÀÌ»ó ÀÌ¸é »ç¿ë ÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldi       *+fp(7),r0
        beq       L266
;*      Branch Occurs to L266 
	.line	205
;----------------------------------------------------------------------
; 1043 | m_Variable.m_nCarPos = sIndexValue_B;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        sti       r0,@_m_Variable+278
        bu        L266
;*      Branch Occurs to L266 
L259:        
	.line	210
;----------------------------------------------------------------------
; 1048 | else if((m_Variable.m_chCarKind =='B'))                                
;----------------------------------------------------------------------
        ldiu      @_m_Variable+283,r0
        cmpi      66,r0
        bne       L266
;*      Branch Occurs to L266 
	.line	213
;----------------------------------------------------------------------
; 1051 | if(sCabKeyCheck1&0x08)                                                 
;----------------------------------------------------------------------
        ldiu      8,r0
        tstb      *+fp(5),r0
        beq       L263
;*      Branch Occurs to L263 
	.line	215
;----------------------------------------------------------------------
; 1053 | if(sIndexValue_B) // Index °ªÀÌ 0 ÀÌ»ó ÀÌ¸é »ç¿ë ÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldi       *+fp(7),r0
        beq       L266
;*      Branch Occurs to L266 
	.line	217
;----------------------------------------------------------------------
; 1055 | m_Variable.m_nCarPos = sIndexValue_B;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        sti       r0,@_m_Variable+278
        bu        L266
;*      Branch Occurs to L266 
L263:        
	.line	220
;----------------------------------------------------------------------
; 1058 | else if(sCabKeyCheck1&0x80)                                            
;----------------------------------------------------------------------
        ldiu      128,r0
        tstb      *+fp(5),r0
        beq       L266
;*      Branch Occurs to L266 
	.line	222
;----------------------------------------------------------------------
; 1060 | if(sIndexValue_A) // Index °ªÀÌ 0 ÀÌ»ó ÀÌ¸é »ç¿ë ÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldi       *+fp(6),r0
        beq       L266
;*      Branch Occurs to L266 
	.line	224
;----------------------------------------------------------------------
; 1062 | m_Variable.m_nCarPos = sIndexValue_A;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0
        sti       r0,@_m_Variable+278
L266:        
	.line	230
;----------------------------------------------------------------------
; 1068 | if(m_Variable.m_TrainCofVal_Chick == 0x20)                             
;----------------------------------------------------------------------
        ldiu      @_m_Variable+276,r0
        cmpi      32,r0
        bne       L268
;*      Branch Occurs to L268 
	.line	231
;----------------------------------------------------------------------
; 1069 | {m_Variable.m_TrainCofVal = 1;}                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_Variable+274
        bu        L269
;*      Branch Occurs to L269 
L268:        
	.line	232
;----------------------------------------------------------------------
; 1070 | else{m_Variable.m_TrainCofVal = m_Variable.m_TrainCofVal_Chick;} // Â÷·
;     | ® Á¶¼º Á¤º¸¸¦ Àü´ÞÇÑ´Ù.}                                               
; 1072 | // cab Á¤º¸¸¦ È®ÀÎÇÏ°í, Â÷·® Á¤º¸¸¦ °»½ÅÇÑ´Ù.                          
;----------------------------------------------------------------------
        ldiu      @_m_Variable+276,r0
        sti       r0,@_m_Variable+274
L269:        
	.line	235
;----------------------------------------------------------------------
; 1073 | if(m_Variable.m_TrainCofVal)                                           
;----------------------------------------------------------------------
        ldi       @_m_Variable+274,r0
        beq       L280
;*      Branch Occurs to L280 
	.line	237
;----------------------------------------------------------------------
; 1075 | m_Variable.m_TrainCofVal =m_Variable.m_TrainCofVal - 1; // ¿ìÁø ÇÁ·ÎÅäÄ
;     | Ý °ªÀÌ 1 ´õ Å©´Ù.                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_m_Variable+274,r0
        sti       r0,@_m_Variable+274
	.line	239
;----------------------------------------------------------------------
; 1077 | m_Variable.m_TrainCofVal = MIN(3,m_Variable.m_TrainCofVal);            
; 1081 | else                                                                   
; 1083 | // Áß·ÃÁß(0x10) ¶Ç´Â Áß·Ã ½ÇÆÐ(0x20) ÀÌ¸é, ´ÜÂ÷ ±âÁØÀ¸·Î Àû¿ëÇÑ´Ù.     
; 1084 | // CAB Key Á¤º¸°¡ ¾øÀ¸¸é 'A' Car ´Â  '1' / 'B' Car ´Â '2' ·Î Àü¼Û ÇÑ´Ù.
;----------------------------------------------------------------------
        ldiu      3,r0
        cmpi      @_m_Variable+274,r0
        bge       L272
;*      Branch Occurs to L272 
        bu        L273
;*      Branch Occurs to L273 
L272:        
        ldiu      @_m_Variable+274,r0
L273:        
        sti       r0,@_m_Variable+274
        bu        L280
;*      Branch Occurs to L280 
L274:        
	.line	247
;----------------------------------------------------------------------
; 1085 | m_Variable.m_TrainCofVal_Time_Flag++;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_Variable+275,r0
        sti       r0,@_m_Variable+275
	.line	249
;----------------------------------------------------------------------
; 1087 | if(m_Variable.m_TrainCofVal_Time_Flag > 15) // cab Å°°¡ 15ÃÊ µ¿¾È ºüÁö¸
;     | é ÃÊ±âÈ­ ÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        cmpi      15,r0
        ble       L280
;*      Branch Occurs to L280 
	.line	252
;----------------------------------------------------------------------
; 1090 | if(m_Variable.m_chCarKind =='A')                                       
;----------------------------------------------------------------------
        ldiu      @_m_Variable+283,r0
        cmpi      65,r0
        bne       L277
;*      Branch Occurs to L277 
	.line	254
;----------------------------------------------------------------------
; 1092 | m_Variable.m_nCarPos = 1;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_Variable+278
        bu        L279
;*      Branch Occurs to L279 
L277:        
	.line	256
;----------------------------------------------------------------------
; 1094 | else if((m_Variable.m_chCarKind =='B'))                                
;----------------------------------------------------------------------
        ldiu      @_m_Variable+283,r0
        cmpi      66,r0
        bne       L279
;*      Branch Occurs to L279 
	.line	258
;----------------------------------------------------------------------
; 1096 | m_Variable.m_nCarPos = 2;                                              
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_m_Variable+278
L279:        
	.line	261
;----------------------------------------------------------------------
; 1099 | m_Variable.m_TrainCofVal = 0; // Â÷·® Á¶¼º Á¤º¸¸¦ 1Æí¼ºÀ¸·Î Àü´ÞÇÑ´Ù.  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+274
L280:        
	.line	265
;----------------------------------------------------------------------
; 1103 | d_CI_Index = m_Variable.m_nCarPos;                                     
;----------------------------------------------------------------------
        ldiu      @_m_Variable+278,r0
        sti       r0,@_d_CI_Index+0
	.line	266
;----------------------------------------------------------------------
; 1104 | d_CarNum = m_Variable.m_nCarNo;                                        
;----------------------------------------------------------------------
        ldiu      @_m_Variable+281,r0
        sti       r0,@_d_CarNum+0
	.line	267
;----------------------------------------------------------------------
; 1105 | d_CI_Fault = m_Variable.m_btCiFaultVal;                                
;----------------------------------------------------------------------
        ldiu      @_m_Variable+280,r0
        sti       r0,@_d_CI_Fault+0
	.line	278
;----------------------------------------------------------------------
; 1116 | d_CarConfig = m_Variable.m_TrainCofVal;                                
;----------------------------------------------------------------------
        ldiu      @_m_Variable+274,r0
        sti       r0,@_d_CarConfig+0
	.line	280
;----------------------------------------------------------------------
; 1118 | MyPrintf("PAC - PAC / TrainCofVal : %02X -- CiFault : %02d -- CarPos :
;     | %02X -- CarPosIndex : %02X -- CabKey : %02X-- CabKey1 : %02X--Index-A :
;     |  %02X--Index-B : %02X  \r\n ",                                         
; 1119 |         m_Variable.m_TrainCofVal,m_Variable.m_btCiFaultVal,m_Variable.m
;     | _nCarPos,sCarPosionIndex,(sCabKeyCheck),(sCabKeyCheck1),sIndexValue_A,s
;     | IndexValue_B);                                                         
; 1122 | //MyPrintf("PAC--> PAC");                                              
; 1123 | //MyPrintf_TxAuto((UCHAR *)pPa_PaBuf,sizeof(PAC_PAC));                 
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        push      r0
        ldiu      *+fp(6),r0
        push      r0
        ldiu      *+fp(5),r0
        push      r0
        ldiu      *+fp(4),r0
        push      r0
        ldiu      *+fp(3),r0
        push      r0
        ldiu      @_m_Variable+278,r1
        push      r1
        ldiu      @_m_Variable+280,r1
        push      r1
        ldiu      @_m_Variable+274,r1
        push      r1
        ldiu      @CL75,r0
        push      r0
        call      _MyPrintf
                                        ; Call Occurs
        subi      9,sp
L281:        
	.line	292
;----------------------------------------------------------------------
; 1130 | nOldUart3RxOneByteGapDelayTime = m_Variable.m_nUart3RxOneByteGapDelayTi
;     | me;                                                                    
;----------------------------------------------------------------------
        ldiu      @_m_Variable+227,r0
        sti       r0,@_nOldUart3RxOneByteGapDelayTime$10+0
	.line	293
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      434,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1131,000000010h,432



	.sect	".cinit"
	.field  	1,32
	.field  	_d_MDS_TX_Cnt_A+0,32
	.field  	0,32		; _d_MDS_TX_Cnt_A @ 0

	.sect	".text"

	.global	_d_MDS_TX_Cnt_A
	.bss	_d_MDS_TX_Cnt_A,1
	.sym	_d_MDS_TX_Cnt_A,_d_MDS_TX_Cnt_A,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_MDS_TX_Cnt_B+0,32
	.field  	0,32		; _d_MDS_TX_Cnt_B @ 0

	.sect	".text"

	.global	_d_MDS_TX_Cnt_B
	.bss	_d_MDS_TX_Cnt_B,1
	.sym	_d_MDS_TX_Cnt_B,_d_MDS_TX_Cnt_B,4,2,32
	.sect	 ".text"

	.global	_USer_UnitState
	.sym	_USer_UnitState,_USer_UnitState,32,2,0
	.func	1138
;******************************************************************************
;* FUNCTION NAME: _USer_UnitState                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_USer_UnitState:
	.sym	_pCarState,-2,24,9,32,.fake14
	.sym	_pCommStatus_Lic,1,24,1,32,.fake57
	.line	1
;----------------------------------------------------------------------
; 1138 | void USer_UnitState(PCRA_STATION pCarState)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1140 | PCOMMSTATUS_LIC pCommStatus_Lic;                                       
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 1142 | memset(m_Variable.m_btCommSt,0x00,sizeof(m_Variable.m_btCommSt));      
;----------------------------------------------------------------------
        ldiu      8,r2
        ldiu      0,r1
        ldiu      @CL3,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	7
;----------------------------------------------------------------------
; 1144 | pCommStatus_Lic = (COMMSTATUS_LIC *)m_Variable.m_btCommSt;             
;----------------------------------------------------------------------
        ldiu      @CL3,r0
        sti       r0,*+fp(1)
	.line	10
;----------------------------------------------------------------------
; 1147 | if(m_Variable.m_chCarKind == 'A')                                      
;----------------------------------------------------------------------
        ldiu      @_m_Variable+283,r0
        cmpi      65,r0
        bne       L286
;*      Branch Occurs to L286 
	.line	13
;----------------------------------------------------------------------
; 1150 | d_MDS_TX_Cnt_A++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_MDS_TX_Cnt_A+0,r0
        sti       r0,@_d_MDS_TX_Cnt_A+0
	.line	15
;----------------------------------------------------------------------
; 1152 | pCommStatus_Lic->BYTE_1.BIT.nCcp = pCarState->CRA_2.BIT.sACCP1;        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(2),ar1
        ldiu      8,r0
        ldiu      *ar0,r1
        and       *+ar1(1),r0
        andn      1,r1
        lsh       -3,r0
        and       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	16
;----------------------------------------------------------------------
; 1153 | pCommStatus_Lic->BYTE_3.BIT.nCncs = pCarState->CRA_3.BIT.sACNCS;       
; 1154 | //pCommStatus_Lic->BYTE_1.BIT.nGps = pCarState->CRA_2.BIT.sAGPS;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      *+fp(1),ar0
        ldiu      1,r0
        ldiu      *+ar0(2),r1
        and       *+ar1(2),r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	18
;----------------------------------------------------------------------
; 1155 | pCommStatus_Lic->BYTE_1.BIT.nLic = pCarState->CRA_3.BIT.sALIC;         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      4,r0
        and       *+ar1(2),r0
        lsh       -2,r0
        and       1,r0
        ldiu      *+fp(1),ar0
        ash       5,r0
        ldiu      *ar0,r1
        andn      32,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	19
;----------------------------------------------------------------------
; 1156 | pCommStatus_Lic->BYTE_1.BIT.nPac = pCarState->CRA_3.BIT.sAPAC;         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(2),ar1
        ldiu      8,r0
        and       *+ar1(2),r0
        ldiu      *ar0,r1
        lsh       -3,r0
        andn      16,r1
        and       1,r0
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	20
;----------------------------------------------------------------------
; 1157 | pCommStatus_Lic->BYTE_1.BIT.nVoip = pCarState->CRA_2.BIT.sAVOIP;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      4,r0
        and       *+ar0(1),r0
        ldiu      *+fp(1),ar0
        ldiu      *ar0,r1
        andn      8,r1
        lsh       -2,r0
        and       1,r0
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	21
;----------------------------------------------------------------------
; 1158 | pCommStatus_Lic->BYTE_1.BIT.nVtx = pCarState->CRA_3.BIT.sAVTX;         
; 1159 | //pCommStatus_Lic->BYTE_1.BIT.nWlr = pCarState->CRA_2.BIT.sAWLR;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      2,r0
        and       *+ar1(2),r0
        lsh       -1,r0
        ldiu      *+fp(1),ar0
        and       1,r0
        ldiu      *ar0,r1
        ash       2,r0
        andn      4,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	25
;----------------------------------------------------------------------
; 1162 | pCommStatus_Lic->BYTE_1.BIT.nFdi = pCarState->CRA_4.BIT.sAFDI;         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      4,r0
        and       *+ar0(3),r0
        lsh       -2,r0
        and       1,r0
        ldiu      *+fp(1),ar0
        ash       6,r0
        ldiu      *ar0,r1
        andn      64,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	26
;----------------------------------------------------------------------
; 1163 | pCommStatus_Lic->BYTE_2.BIT.nPii1 = pCarState->CRA_4.BIT.sAPII1;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      *+fp(1),ar0
        ldiu      2,r0
        ldiu      *+ar0(1),r1
        and       *+ar1(3),r0
        andn      8,r1
        lsh       -1,r0
        and       1,r0
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	27
;----------------------------------------------------------------------
; 1164 | pCommStatus_Lic->BYTE_2.BIT.nPii2 = pCarState->CRA_4.BIT.sAPII2;       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(1),r1
        andn      16,r1
        ldiu      *-fp(2),ar1
        ldiu      1,r0
        and       *+ar1(3),r0
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	28
;----------------------------------------------------------------------
; 1165 | pCommStatus_Lic->BYTE_1.BIT.nSdi1 = pCarState->CRA_5.BIT.sASDI1;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      8,r0
        and       *+ar1(4),r0
        ldiu      *+fp(1),ar0
        lsh       -3,r0
        ldiu      *ar0,r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	29
;----------------------------------------------------------------------
; 1166 | pCommStatus_Lic->BYTE_2.BIT.nSdi2 = pCarState->CRA_5.BIT.sASDI2;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      4,r0
        and       *+ar1(4),r0
        ldiu      *+fp(1),ar0
        lsh       -2,r0
        ldiu      *+ar0(1),r1
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	30
;----------------------------------------------------------------------
; 1167 | pCommStatus_Lic->BYTE_2.BIT.nSdi3 = pCarState->CRA_5.BIT.sASDI3;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      2,r0
        and       *+ar0(4),r0
        lsh       -1,r0
        ldiu      *+fp(1),ar0
        and       1,r0
        ldiu      *+ar0(1),r1
        ash       1,r0
        andn      2,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	31
;----------------------------------------------------------------------
; 1168 | pCommStatus_Lic->BYTE_2.BIT.nSdi4 = pCarState->CRA_5.BIT.sASDI4;       
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),ar1
        ldiu      *+fp(1),ar0
        and       *+ar1(4),r1
        ash       2,r1
        ldiu      *+ar0(1),r0
        andn      4,r0
        or3       r0,r1,r0
        sti       r0,*+ar0(1)
	.line	33
;----------------------------------------------------------------------
; 1170 | pCommStatus_Lic->BYTE_2.BIT.nPid1_1 = pCarState->CRA_6.BIT.sAPID1_1;   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(2),ar1
        ldiu      8,r0
        and       *+ar1(5),r0
        ldiu      *+ar0(1),r1
        lsh       -3,r0
        and       1,r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	34
;----------------------------------------------------------------------
; 1171 | pCommStatus_Lic->BYTE_2.BIT.nPid1_2 = pCarState->CRA_6.BIT.sAPID1_2;   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      4,r0
        and       *+ar0(5),r0
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(1),r1
        lsh       -2,r0
        andn      64,r1
        and       1,r0
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	35
;----------------------------------------------------------------------
; 1172 | pCommStatus_Lic->BYTE_2.BIT.nPid1_3 = pCarState->CRA_6.BIT.sAPID1_3;   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      2,r0
        and       *+ar0(5),r0
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(1),r1
        andn      128,r1
        lsh       -1,r0
        and       1,r0
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	36
;----------------------------------------------------------------------
; 1173 | pCommStatus_Lic->BYTE_3.BIT.nPid1_4 = pCarState->CRA_6.BIT.sAPID1_4;   
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *-fp(2),ar1
        ldiu      *+fp(1),ar0
        and       *+ar1(5),r0
        ldiu      *+ar0(2),r1
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	37
;----------------------------------------------------------------------
; 1174 | pCommStatus_Lic->BYTE_3.BIT.nPid2_1 = pCarState->CRA_7.BIT.sAPID2_1;   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      8,r0
        and       *+ar0(6),r0
        lsh       -3,r0
        ldiu      *+fp(1),ar0
        and       1,r0
        ash       1,r0
        ldiu      *+ar0(2),r1
        andn      2,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
        bu        L288
;*      Branch Occurs to L288 
L286:        
	.line	42
;----------------------------------------------------------------------
; 1179 | else if(m_Variable.m_chCarKind == 'B') //ÇÁ·ÎÅäÄÝ¿¡´Â MA ¿­Â÷ ¹øÈ£¸¸ ÀÖ
;     | À¸¹Ç·Î MB´Â ½º½º·Î ÀÎ½Ä ÇØ¾ß ÇÑ´Ù.                                     
;----------------------------------------------------------------------
        ldiu      @_m_Variable+283,r0
        cmpi      66,r0
        bne       L288
;*      Branch Occurs to L288 
	.line	45
;----------------------------------------------------------------------
; 1182 | d_MDS_TX_Cnt_B++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_MDS_TX_Cnt_B+0,r0
        sti       r0,@_d_MDS_TX_Cnt_B+0
	.line	47
;----------------------------------------------------------------------
; 1184 | pCommStatus_Lic->BYTE_1.BIT.nCcp = pCarState->CRA_2.BIT.sBCCP1;        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(2),ar1
        ldiu      128,r0
        ldiu      *ar0,r1
        and       *+ar1(1),r0
        andn      1,r1
        lsh       -7,r0
        and       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	48
;----------------------------------------------------------------------
; 1185 | pCommStatus_Lic->BYTE_3.BIT.nCncs = pCarState->CRA_3.BIT.sBCNCS;       
; 1186 | //pCommStatus_Lic->BYTE_1.BIT.nGps = pCarState->CRA_2.BIT.sBGPS;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      *+fp(1),ar0
        ldiu      16,r0
        ldiu      *+ar0(2),r1
        and       *+ar1(2),r0
        lsh       -4,r0
        andn      4,r1
        and       1,r0
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	50
;----------------------------------------------------------------------
; 1187 | pCommStatus_Lic->BYTE_1.BIT.nLic = pCarState->CRA_3.BIT.sBLIC;         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      64,r0
        and       *+ar1(2),r0
        lsh       -6,r0
        and       1,r0
        ldiu      *+fp(1),ar0
        ash       5,r0
        ldiu      *ar0,r1
        andn      32,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	51
;----------------------------------------------------------------------
; 1188 | pCommStatus_Lic->BYTE_1.BIT.nPac = pCarState->CRA_3.BIT.sBPAC;         
;----------------------------------------------------------------------
        ldiu      128,r0
        ldiu      *+fp(1),ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r1
        and       *+ar1(2),r0
        andn      16,r1
        lsh       -7,r0
        and       1,r0
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	52
;----------------------------------------------------------------------
; 1189 | pCommStatus_Lic->BYTE_1.BIT.nVoip = pCarState->CRA_2.BIT.sBVOIP;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      64,r0
        and       *+ar0(1),r0
        ldiu      *+fp(1),ar0
        ldiu      *ar0,r1
        lsh       -6,r0
        and       1,r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	53
;----------------------------------------------------------------------
; 1190 | pCommStatus_Lic->BYTE_1.BIT.nVtx = pCarState->CRA_3.BIT.sBVTX;         
; 1191 | //pCommStatus_Lic->BYTE_1.BIT.nWlr = pCarState->CRA_2.BIT.sBWLR;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      32,r0
        and       *+ar1(2),r0
        lsh       -5,r0
        and       1,r0
        ldiu      *+fp(1),ar0
        ash       2,r0
        ldiu      *ar0,r1
        andn      4,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	57
;----------------------------------------------------------------------
; 1194 | pCommStatus_Lic->BYTE_1.BIT.nFdi = pCarState->CRA_4.BIT.sBFDI;         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      64,r0
        and       *+ar0(3),r0
        ldiu      *+fp(1),ar0
        lsh       -6,r0
        ldiu      *ar0,r1
        and       1,r0
        andn      64,r1
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	58
;----------------------------------------------------------------------
; 1195 | pCommStatus_Lic->BYTE_2.BIT.nPii1 = pCarState->CRA_4.BIT.sBPII1;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      32,r0
        and       *+ar0(3),r0
        lsh       -5,r0
        ldiu      *+fp(1),ar0
        and       1,r0
        ldiu      *+ar0(1),r1
        ash       3,r0
        andn      8,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	59
;----------------------------------------------------------------------
; 1196 | pCommStatus_Lic->BYTE_2.BIT.nPii2 = pCarState->CRA_4.BIT.sBPII2;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      16,r0
        ldiu      *+fp(1),ar0
        and       *+ar1(3),r0
        lsh       -4,r0
        ldiu      *+ar0(1),r1
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	60
;----------------------------------------------------------------------
; 1197 | pCommStatus_Lic->BYTE_1.BIT.nSdi1 = pCarState->CRA_5.BIT.sBSDI1;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      128,r0
        and       *+ar1(4),r0
        lsh       -7,r0
        and       1,r0
        ldiu      *+fp(1),ar0
        ash       7,r0
        ldiu      *ar0,r1
        andn      128,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	61
;----------------------------------------------------------------------
; 1198 | pCommStatus_Lic->BYTE_2.BIT.nSdi2 = pCarState->CRA_5.BIT.sBSDI2;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      64,r0
        and       *+ar1(4),r0
        lsh       -6,r0
        ldiu      *+fp(1),ar0
        and       1,r0
        ldiu      *+ar0(1),r1
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	62
;----------------------------------------------------------------------
; 1199 | pCommStatus_Lic->BYTE_2.BIT.nSdi3 = pCarState->CRA_5.BIT.sBSDI3;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      32,r0
        and       *+ar0(4),r0
        ldiu      *+fp(1),ar0
        lsh       -5,r0
        ldiu      *+ar0(1),r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	63
;----------------------------------------------------------------------
; 1200 | pCommStatus_Lic->BYTE_2.BIT.nSdi4 = pCarState->CRA_5.BIT.sBSDI4;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      16,r0
        and       *+ar0(4),r0
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(1),r1
        andn      4,r1
        lsh       -4,r0
        and       1,r0
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	65
;----------------------------------------------------------------------
; 1202 | pCommStatus_Lic->BYTE_2.BIT.nPid1_1 = pCarState->CRA_6.BIT.sBPID1_1;   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      128,r0
        and       *+ar1(5),r0
        lsh       -7,r0
        ldiu      *+fp(1),ar0
        and       1,r0
        ldiu      *+ar0(1),r1
        ash       5,r0
        andn      32,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	66
;----------------------------------------------------------------------
; 1203 | pCommStatus_Lic->BYTE_2.BIT.nPid1_2 = pCarState->CRA_6.BIT.sBPID1_2;   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      64,r0
        and       *+ar1(5),r0
        lsh       -6,r0
        ldiu      *+fp(1),ar0
        and       1,r0
        ldiu      *+ar0(1),r1
        ash       6,r0
        andn      64,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	67
;----------------------------------------------------------------------
; 1204 | pCommStatus_Lic->BYTE_2.BIT.nPid1_3 = pCarState->CRA_6.BIT.sBPID1_3;   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      32,r0
        and       *+ar1(5),r0
        lsh       -5,r0
        ldiu      *+fp(1),ar0
        and       1,r0
        ldiu      *+ar0(1),r1
        ash       7,r0
        andn      128,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(1)
	.line	68
;----------------------------------------------------------------------
; 1205 | pCommStatus_Lic->BYTE_3.BIT.nPid1_4 = pCarState->CRA_6.BIT.sBPID1_4;   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(2),r1
        andn      1,r1
        ldiu      *-fp(2),ar1
        ldiu      16,r0
        and       *+ar1(5),r0
        lsh       -4,r0
        and       1,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
	.line	69
;----------------------------------------------------------------------
; 1206 | pCommStatus_Lic->BYTE_3.BIT.nPid2_1 = pCarState->CRA_7.BIT.sBPID2_1;   
; 1212 | //MyPrintf("LIC -> MDS (Unit State) : %02X ,%02X,%02X\r\n ",pCommStatus
;     | _Lic->BYTE_1.BYTE,pCommStatus_Lic->BYTE_2.BYTE,pCommStatus_Lic->BYTE_3.
;     | BYTE);                                                                 
;----------------------------------------------------------------------
        ldiu      128,r0
        ldiu      *-fp(2),ar1
        ldiu      *+fp(1),ar0
        and       *+ar1(6),r0
        ldiu      *+ar0(2),r1
        lsh       -7,r0
        and       1,r0
        ash       1,r0
        andn      2,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(2)
L288:        
	.line	78
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1215,000000000h,1


	.sect	 ".text"

	.global	_GetLocalTimeToUTC
	.sym	_GetLocalTimeToUTC,_GetLocalTimeToUTC,36,2,0
	.func	1221
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
	.sym	_pLocal,-2,24,9,32,.fake7
	.sym	_nHour,-3,4,9,32
	.sym	_pUTC,-4,24,9,32,.fake7
	.sym	_nHourT,1,4,1,32
	.sym	_nDayT,2,4,1,32
	.sym	_nLastDays,3,4,1,32
	.sym	_nMonthT,4,4,1,32
	.sym	_nYearT,5,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1221 | BOOL GetLocalTimeToUTC( DATE_TIME_PTR pLocal, int nHour, DATE_TIME_PTR
;     | pUTC )                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
        push      r4
	.line	2
;----------------------------------------------------------------------
; 1223 | // ½Ã°£À» °è»êÇÏ´Â ºÎºÐ.                                               
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1224 | int nHourT = pLocal->hour - nHour;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *-fp(3),r0
        subri     *+ar0(2),r0           ; Unsigned
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1225 | int nDayT = pLocal->day;                                               
;----------------------------------------------------------------------
        ldiu      *+ar0(3),r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 1226 | int nLastDays = GetDaysOfMonth( pLocal->month, pLocal->year );
;     |                                                                        
;     |                                                                        
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
; 1227 | int nMonthT = pLocal->month;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(4),r0
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 1228 | int nYearT = 2000 + pLocal->year;                                      
; 1230 | // ½Ã°£ Á¤º¸¸¦ ±¸ÇÏ´Â ºÎºÐ.                                            
;----------------------------------------------------------------------
        ldiu      2000,r0
        addi      *+ar0(5),r0           ; Unsigned
        sti       r0,*+fp(5)
	.line	11
;----------------------------------------------------------------------
; 1231 | if(nHourT < 0 ) {                                                      
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        bge       L292
;*      Branch Occurs to L292 
	.line	12
;----------------------------------------------------------------------
; 1232 | nHourT += 24;                                                          
;----------------------------------------------------------------------
        ldiu      24,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	13
;----------------------------------------------------------------------
; 1233 | nDayT += -1;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *+fp(2),r0
        sti       r0,*+fp(2)
        bu        L294
;*      Branch Occurs to L294 
L292:        
	.line	15
;----------------------------------------------------------------------
; 1235 | else if( 24 <= nHourT ) {                                              
;----------------------------------------------------------------------
        ldiu      24,r0
        cmpi      *+fp(1),r0
        bgt       L294
;*      Branch Occurs to L294 
	.line	16
;----------------------------------------------------------------------
; 1236 | nHourT -= 24;                                                          
;----------------------------------------------------------------------
        subri     *+fp(1),r0
        sti       r0,*+fp(1)
	.line	17
;----------------------------------------------------------------------
; 1237 | nDayT += 1;                                                            
; 1240 | // ÀÏÀÚ¸¦ ±¸ÇÏ´Â ºÎºÐ.                                                 
; 1241 | // ½Ã°£À» °è»êÇÏ¿© ÀÏÀÚ¸¦ º¯°æÇØ¾ßÇÏ´Â °æ¿ì.                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
L294:        
	.line	22
;----------------------------------------------------------------------
; 1242 | if(nDayT < 1)
;     |                                                                        
;     |                                                                        
;     |                                                                        
;----------------------------------------------------------------------
        ldi       *+fp(2),r0
        bgt       L297
;*      Branch Occurs to L297 
	.line	24
;----------------------------------------------------------------------
; 1244 | nDayT = GetDaysOfMonth( nMonthT, nYearT );                             
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
; 1246 | if(--nMonthT < 1)                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *+fp(4),r0
        bgtd      L300
        sti       r0,*+fp(4)
	nop
        ldile     1,r0
;*      Branch Occurs to L300 
	.line	28
;----------------------------------------------------------------------
; 1248 | nYearT--;                                                              
;----------------------------------------------------------------------
        subri     *+fp(5),r0
        sti       r0,*+fp(5)
	.line	29
;----------------------------------------------------------------------
; 1249 | nMonthT = 12;                                                          
;----------------------------------------------------------------------
        ldiu      12,r0
        sti       r0,*+fp(4)
        bu        L300
;*      Branch Occurs to L300 
L297:        
	.line	32
;----------------------------------------------------------------------
; 1252 | else if(nLastDays < nDayT)                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0
        cmpi      *+fp(2),r0
        bge       L300
;*      Branch Occurs to L300 
	.line	34
;----------------------------------------------------------------------
; 1254 | nDayT = 1;                                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(2)
	.line	36
;----------------------------------------------------------------------
; 1256 | if(12 < ++nMonthT)                                                     
;----------------------------------------------------------------------
        ldiu      12,r1
        addi      *+fp(4),r0
        cmpi3     r0,r1
        bged      L300
        sti       r0,*+fp(4)
	nop
        ldilt     1,r0
;*      Branch Occurs to L300 
	.line	38
;----------------------------------------------------------------------
; 1258 | nYearT++;                                                              
;----------------------------------------------------------------------
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
	.line	39
;----------------------------------------------------------------------
; 1259 | nMonthT = 1;                                                           
; 1263 | // °è»êµÈ ½ÃºÐÃÊ Á¤º¸¸¦ UTC ½Ã°£À¸·Î ÀÌµ¿½ÃÅ°´Â ºÎºÐ.                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
L300:        
	.line	44
;----------------------------------------------------------------------
; 1264 | pUTC->second = pLocal->second;                                         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *-fp(4),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
	.line	45
;----------------------------------------------------------------------
; 1265 | pUTC->minute = pLocal->minute;                                         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      *-fp(4),ar0
        ldiu      *+ar1(1),r0
        sti       r0,*+ar0(1)
	.line	46
;----------------------------------------------------------------------
; 1266 | pUTC->hour = nHourT;                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        ldiu      *+fp(1),r0
        sti       r0,*+ar0(2)
	.line	47
;----------------------------------------------------------------------
; 1267 | pUTC->day = nDayT;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        ldiu      *+fp(2),r0
        sti       r0,*+ar0(3)
	.line	48
;----------------------------------------------------------------------
; 1268 | pUTC->month = nMonthT;                                                 
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        ldiu      *+fp(4),r0
        sti       r0,*+ar0(4)
	.line	49
;----------------------------------------------------------------------
; 1269 | pUTC->year = nYearT - 2000;                                            
; 1271 | return      (( 10 <= pUTC->year ) &&
;     |                                                                        
;     |                                   // 10³â ÀÌ»ó                         
; 1272 |                         (( 1 <= pUTC->month ) && ( pUTC->month <= 12 ))
;     |  &&                                                                    
;     |                   // ¿ù                                                
; 1273 |                         (( 1 <= pUTC->day )   && ( pUTC->day <= GetDays
;     | OfMonth(nMonthT, nYearT) )) &&                           // ÀÏ         
; 1274 |                         (( 0 <= pUTC->hour )  && ( pUTC->hour < 24 ))
;     |  &&                                                                    
;     |                   // ½Ã                                                
; 1275 |                         (( 0 <= pUTC->minute) && ( pUTC->minute < 60 ))
;     |  &&                                                                    
;     |                   // ºÐ                                                
;----------------------------------------------------------------------
        ldiu      2000,r0
        ldiu      *-fp(4),ar0
        subri     *+fp(5),r0            ; Unsigned
        sti       r0,*+ar0(5)
	.line	56
;----------------------------------------------------------------------
; 1276 | (( 0 <= pUTC->second) && ( pUTC->second < 60 )));
;     |                                                                  // ÃÊ 
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        ldiu      10,r0
        cmpi      *+ar0(5),r0
        ldiu      0,r4
        bhi       L311
;*      Branch Occurs to L311 
        ldiu      1,r0
        cmpi      *+ar0(4),r0
        bhi       L311
;*      Branch Occurs to L311 
        ldiu      *+ar0(4),r0
        cmpi      12,r0
        bhi       L311
;*      Branch Occurs to L311 
        ldiu      1,r0
        cmpi      *+ar0(3),r0
        bhi       L311
;*      Branch Occurs to L311 
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
        bhi       L311
;*      Branch Occurs to L311 
        ldiu      0,r0
        cmpi      *+ar0(2),r0
        bhi       L311
;*      Branch Occurs to L311 
        ldiu      *+ar0(2),r0
        cmpi      24,r0
        bhs       L311
;*      Branch Occurs to L311 
        ldiu      0,r0
        cmpi3     *+ar0,r0
        bhi       L311
;*      Branch Occurs to L311 
        ldiu      *+ar0(1),r0
        cmpi      60,r0
        bhs       L311
;*      Branch Occurs to L311 
        ldiu      0,r0
        cmpi3     *ar0,r0
        bhi       L311
;*      Branch Occurs to L311 
        ldiu      *ar0,r0
        cmpi      60,r0
        ldilo     1,r4
L311:        
	.line	57
        ldiu      r4,r0
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      7,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1277,000000010h,5


	.sect	 ".text"

	.global	_IsLeapYear
	.sym	_IsLeapYear,_IsLeapYear,36,2,0
	.func	1282
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
; 1282 | int IsLeapYear( int nYear )
;     |                  // À±³â Á¤º¸¸¦ ±¸ÇÏ´Â ºÎºÐ.                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1284 | if( nYear % 400 == 0 )                                                 
;----------------------------------------------------------------------
        ldiu      400,r1
        ldiu      *-fp(2),r0
        call      MOD_I30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L316
;*      Branch Occurs to L316 
	.line	4
;----------------------------------------------------------------------
; 1285 | return 1;                                                              
;----------------------------------------------------------------------
        bud       L321
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L321 
L316:        
	.line	6
;----------------------------------------------------------------------
; 1287 | if( nYear % 100 == 0 )                                                 
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        ldiu      100,r1
        call      MOD_I30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L318
;*      Branch Occurs to L318 
	.line	7
;----------------------------------------------------------------------
; 1288 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L321
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L321 
L318:        
	.line	9
;----------------------------------------------------------------------
; 1290 | if( nYear % 4 == 0 )                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r1
        ldiu      r1,r0
        ash       -1,r0
        lsh       @CL76,r0
        addi3     r0,r1,r0
        andn      3,r0
        subri     r1,r0
        bne       L320
;*      Branch Occurs to L320 
	.line	10
;----------------------------------------------------------------------
; 1291 | return 1;                                                              
;----------------------------------------------------------------------
        bud       L321
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L321 
L320:        
	.line	12
;----------------------------------------------------------------------
; 1293 | return 0;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
L321:        
	.line	13
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	1294,000000000h,0


	.sect	 ".text"

	.global	_GetDaysOfMonth
	.sym	_GetDaysOfMonth,_GetDaysOfMonth,36,2,0
	.func	1296
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
;----------------------------------------------------------------------
; 1296 | int GetDaysOfMonth( int nMonth, int nYear )
;     |  // ´ÞÀÇ ¸¶Áö¸· ÀÏÀÚ¸¦ ±¸ÇÏ´Â ºÎºÐ.                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1299 | int nDays = 0;                                                         
; 1301 | switch( nMonth )                                                       
; 1303 | case 1 :
;     |                                  // 31À» ¸¶Áö¸· ³¯´Þ                   
; 1304 | case 3 :                                                               
; 1305 | case 5 :                                                               
; 1306 | case 7 :                                                               
; 1307 | case 8 :                                                               
; 1308 | case 10 :                                                              
; 1309 | case 12 :                                                              
;----------------------------------------------------------------------
        bud       L329
        addi      1,sp
        ldiu      0,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L329 
L324:        
	.line	15
;----------------------------------------------------------------------
; 1310 | nDays = 31;                                                            
;----------------------------------------------------------------------
        ldiu      31,r0
        sti       r0,*+fp(1)
	.line	16
;----------------------------------------------------------------------
; 1311 | break;                                                                 
; 1312 | case 2 :                                                               
;----------------------------------------------------------------------
        bu        L331
;*      Branch Occurs to L331 
L325:        
	.line	18
;----------------------------------------------------------------------
; 1313 | nDays = 28;                                                            
;----------------------------------------------------------------------
        ldiu      28,r0
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
; 1314 | if( IsLeapYear( nYear ) )
;     |          // À±³âÀ» °è»êÇÏ¿©, À±´ÞÀÏ °æ¿ì, +1                           
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        call      _IsLeapYear
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L331
;*      Branch Occurs to L331 
	.line	20
;----------------------------------------------------------------------
; 1315 | nDays += 1;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	21
;----------------------------------------------------------------------
; 1316 | break;                                                                 
; 1317 | case 4 :
;     |                                  // 30À» ¸¶Áö¸· ³¯´Þ                   
; 1318 | case 6 :                                                               
; 1319 | case 9 :                                                               
; 1320 | case 11 :                                                              
;----------------------------------------------------------------------
        bu        L331
;*      Branch Occurs to L331 
L327:        
	.line	26
;----------------------------------------------------------------------
; 1321 | nDays = 30;                                                            
;----------------------------------------------------------------------
        ldiu      30,r0
        sti       r0,*+fp(1)
	.line	27
;----------------------------------------------------------------------
; 1322 | break;                                                                 
;----------------------------------------------------------------------
        bu        L331
;*      Branch Occurs to L331 
L329:        
	.line	6
        ldiu      1,r0
        ldiu      *-fp(2),ir0
        subri     ir0,r0
        cmpi      11,r0
        bhi       L331
;*      Branch Occurs to L331 
        subi      1,ir0
        ldiu      @CL77,ar0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW0:	.word	L324	; 1
	.word	L325	; 2
	.word	L324	; 3
	.word	L327	; 4
	.word	L324	; 5
	.word	L327	; 6
	.word	L324	; 7
	.word	L324	; 8
	.word	L327	; 9
	.word	L324	; 10
	.word	L327	; 11
	.word	L324	; 12
	.sect	".text"
;*      Branch Occurs to r0 
L331:        
	.line	30
;----------------------------------------------------------------------
; 1325 | return nDays;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	31
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1326,000000000h,1


	.sect	 ".text"

	.global	_user_CarNoForCarKindToLon
	.sym	_user_CarNoForCarKindToLon,_user_CarNoForCarKindToLon,32,2,0
	.func	1332
;******************************************************************************
;* FUNCTION NAME: _user_CarNoForCarKindToLon                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_user_CarNoForCarKindToLon:
	.line	1
;----------------------------------------------------------------------
; 1332 | void user_CarNoForCarKindToLon()                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 1334 | m_Variable.m_nCarKindToLonCnt = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_Variable+284
	.line	4
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1335,000000000h,0


	.sect	 ".text"

	.global	_user_1msLoop
	.sym	_user_1msLoop,_user_1msLoop,32,2,0
	.func	1341
;******************************************************************************
;* FUNCTION NAME: _user_1msLoop                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_user_1msLoop:
	.line	1
;----------------------------------------------------------------------
; 1341 | void user_1msLoop()                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 1343 | m_Variable.m_nTxDbg1msTimer++;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_Variable+293,r0   ; Unsigned
        sti       r0,@_m_Variable+293
	.line	4
;----------------------------------------------------------------------
; 1344 | m_Variable.m_nUserDebug1msTimer++;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_Variable+228,r0   ; Unsigned
        sti       r0,@_m_Variable+228
	.line	6
;----------------------------------------------------------------------
; 1346 | m_Variable.m_nTest1msTimer++;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_Variable+229,r0   ; Unsigned
        sti       r0,@_m_Variable+229
	.line	9
;----------------------------------------------------------------------
; 1349 | if(m_Variable.m_nUart2RxOneByteGapDelayTime) m_Variable.m_nUart2RxOneBy
;     | teGapDelayTime--;                                                      
;----------------------------------------------------------------------
        ldi       @_m_Variable+226,r0
        beq       L339
;*      Branch Occurs to L339 
        ldiu      1,r0
        subri     @_m_Variable+226,r0   ; Unsigned
        sti       r0,@_m_Variable+226
L339:        
	.line	10
;----------------------------------------------------------------------
; 1350 | if(m_Variable.m_nUart3RxOneByteGapDelayTime) m_Variable.m_nUart3RxOneBy
;     | teGapDelayTime--;                                                      
;----------------------------------------------------------------------
        ldi       @_m_Variable+227,r0
        beq       L341
;*      Branch Occurs to L341 
        ldiu      1,r0
        subri     @_m_Variable+227,r0   ; Unsigned
        sti       r0,@_m_Variable+227
L341:        
	.line	12
;----------------------------------------------------------------------
; 1352 | if(m_Variable.m_nGiaRxCheck1msTimer) m_Variable.m_nGiaRxCheck1msTimer--
;     | ;                                                                      
;----------------------------------------------------------------------
        ldi       @_m_Variable+358,r0
        beq       L343
;*      Branch Occurs to L343 
        ldiu      1,r0
        subri     @_m_Variable+358,r0   ; Unsigned
        sti       r0,@_m_Variable+358
L343:        
	.line	14
;----------------------------------------------------------------------
; 1354 | if(m_Variable.m_nCncsRxCheck1msTimer) m_Variable.m_nCncsRxCheck1msTimer
;     | --;                                                                    
;----------------------------------------------------------------------
        ldi       @_m_Variable+357,r0
        beq       L345
;*      Branch Occurs to L345 
        ldiu      1,r0
        subri     @_m_Variable+357,r0   ; Unsigned
        sti       r0,@_m_Variable+357
L345:        
	.line	18
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1358,000000000h,0



	.global	_d_MDSFaulgTestBuf
	.bss	_d_MDSFaulgTestBuf,20
	.sym	_d_MDSFaulgTestBuf,_d_MDSFaulgTestBuf,52,2,640,,20

	.global	_m_Variable
	.bss	_m_Variable,367
	.sym	_m_Variable,_m_Variable,8,2,11744,.fake69
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"Lonwork Monitor Program, Version:%d.%d%d%d",13,10,0
SL2:	.byte	"CCP",0
SL3:	.byte	"CRA-LICL",0
SL4:	.byte	"CRA-VTX",0
SL5:	.byte	"CRA-VOIP",0
SL6:	.byte	"CRA-PAC",0
SL7:	.byte	"CRA-LICM",0
SL8:	.byte	"FDI1",0
SL9:	.byte	"SDI1",0
SL10:	.byte	"SDI2",0
SL11:	.byte	"SDI3",0
SL12:	.byte	"SDI4",0
SL13:	.byte	"PII1",0
SL14:	.byte	"PII2",0
SL15:	.byte	"VRX1",0
SL16:	.byte	"VRX2",0
SL17:	.byte	"VRX3",0
SL18:	.byte	"VRX4",0
SL19:	.byte	"VRX5",0
SL20:	.byte	"CRA-MAIN",0
SL21:	.byte	"CRA-LAUN",0
SL22:	.byte	"CRA-UP",0
SL23:	.byte	"CRA-PP",0
SL24:	.byte	"CRA-SP",0
SL25:	.byte	"CRA-FTP",0
SL26:	.byte	"CRA-CDT",0
SL27:	.byte	"PAC - PAC / TrainCofVal : %02X -- CiFault : %02d -- CarPos "
	.byte	": %02X -- CarPosIndex : %02X -- CabKey : %02X-- CabKey1 : %"
	.byte	"02X--Index-A : %02X--Index-B : %02X  ",13,10," ",0
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

	.sect	".cinit"
	.field  	77,32
	.field  	CL1+0,32
	.field  	11534336,32
	.field  	16776716,32
	.field  	_m_Variable+244,32
	.field  	_m_Variable+252,32
	.field  	_m_Variable+260,32
	.field  	_m_Variable+295,32
	.field  	_m_Variable+324,32
	.field  	100000,32
	.field  	536870912,32
	.field  	SL1,32
	.field  	2097153,32
	.field  	_m_Variable,32
	.field  	32768,32
	.field  	32768,32
	.field  	-1,32
	.field  	32768,32
	.field  	SL2,32
	.field  	_m_Variable+9,32
	.field  	SL3,32
	.field  	_m_Variable+18,32
	.field  	SL4,32
	.field  	_m_Variable+27,32
	.field  	SL5,32
	.field  	_m_Variable+36,32
	.field  	SL6,32
	.field  	_m_Variable+45,32
	.field  	SL7,32
	.field  	_m_Variable+54,32
	.field  	SL8,32
	.field  	_m_Variable+63,32
	.field  	SL9,32
	.field  	_m_Variable+72,32
	.field  	SL10,32
	.field  	_m_Variable+81,32
	.field  	SL11,32
	.field  	_m_Variable+90,32
	.field  	SL12,32
	.field  	_m_Variable+99,32
	.field  	SL13,32
	.field  	_m_Variable+108,32
	.field  	SL14,32
	.field  	_m_Variable+117,32
	.field  	SL15,32
	.field  	_m_Variable+126,32
	.field  	SL16,32
	.field  	_m_Variable+135,32
	.field  	SL17,32
	.field  	_m_Variable+144,32
	.field  	SL18,32
	.field  	_m_Variable+153,32
	.field  	SL19,32
	.field  	_m_Variable+162,32
	.field  	SL20,32
	.field  	_m_Variable+171,32
	.field  	SL21,32
	.field  	_m_Variable+180,32
	.field  	SL22,32
	.field  	_m_Variable+189,32
	.field  	SL23,32
	.field  	_m_Variable+198,32
	.field  	SL24,32
	.field  	_m_Variable+207,32
	.field  	SL25,32
	.field  	_m_Variable+216,32
	.field  	SL26,32
	.field  	_btRx3chBuf_Test$3,32
	.field  	12582912,32
	.field  	_btRx2chBuf$6,32
	.field  	100000,32
	.field  	12582912,32
	.field  	-25,32
	.field  	_btTx2chBuf$7,32
	.field  	_m_Variable+361,32
	.field  	_btRx3chBuf$11,32
	.field  	SL27,32
	.field  	-30,32
	.field  	SW0,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_sprintf

	.global	_memset

	.global	_strcpy

	.global	_strlen

	.global	_IsNumAsc

	.global	_ConvHex2Asc

	.global	_ConvAsc2Hex

	.global	_GetFirmwareVersion

	.global	_MyPrintf

	.global	_FunConvAscHex

	.global	_FunConvHexAsc

	.global	_crc16_ccitt

	.global	_DebugLoop

	.global	_xr16l784_RtsDelayStartSend

	.global	_xr16l784_Send

	.global	_xr16l784_GetRxBuffer2Ch

	.global	_xr16l784_GetRxBuffer1Ch

	.global	_xr16l784_GetRxBuffer3Ch

	.global	_LonWorkLoop
	.global	MOD_I30
	.global	DIV_I30
	.global	_memcpy
