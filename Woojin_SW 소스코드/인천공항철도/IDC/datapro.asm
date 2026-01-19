;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Fri Feb 22 15:59:12 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe datapro.c C:\Users\JDS\AppData\Local\Temp\datapro.if 
	.file	"datapro.c"
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
	.file	"Main.h"
	.file	"All_def.h"
	.sym	_DWORD,0,15,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_WORD,0,14,13,32
	.file	"z85c30.h"
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
	.member	_UCHAR,0,14,11,32
	.member	_BIT,0,8,11,32,.fake4
	.eos
	.stag	.fake2,32
	.member	_DR,0,9,8,32,.fake3
	.eos
	.sym	_SD,0,8,13,32,.fake2
	.stag	.fake5,224
	.member	_nAA,0,12,8,32
	.member	_nBB,32,12,8,32
	.member	_nCC,64,12,8,32
	.member	_nLen_H,96,12,8,32
	.member	_nLen_L,128,12,8,32
	.member	_nLenCom_H,160,12,8,32
	.member	_nLenCom_L,192,12,8,32
	.eos
	.sym	_SCC_HEAD,0,8,13,224,.fake5
	.stag	.fake6,320
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
	.sym	_SCC_TEST,0,8,13,320,.fake6
	.stag	.fake7,640
	.member	_nHead,0,8,8,224,.fake5
	.member	_nTest,224,8,8,320,.fake6
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_TX_DATA,0,8,13,640,.fake7
	.sym	_PSCC_TX_DATA,0,24,13,32,.fake7
	.stag	.fake8,320
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
	.sym	_SCC_TEST_RND,0,8,13,320,.fake8
	.stag	.fake9,640
	.member	_nHead,0,8,8,224,.fake5
	.member	_nTest,224,8,8,320,.fake8
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_RNDTX_DATA,0,8,13,640,.fake9
	.sym	_PSCC_RNDTX_DATA,0,24,13,32,.fake9
	.stag	.fake10,17696
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nTEXT,96,60,8,17600,,550
	.eos
	.sym	_SCC_TEXT,0,8,13,17696,.fake10
	.stag	.fake11,17920
	.member	_nHead,0,8,8,224,.fake5
	.member	_nText,224,8,8,17696,.fake10
	.eos
	.sym	_SCC_PIB_TEXT,0,8,13,17920,.fake11
	.sym	_PSCC_PIB_TEXT,0,24,13,32,.fake11
	.stag	.fake12,192
	.member	_nYY,0,12,8,32
	.member	_nMM,32,12,8,32
	.member	_nDD,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_TIME,0,8,13,192,.fake12
	.stag	.fake14,32
	.member	_nDoor1,0,14,18,1
	.member	_nDoor2,1,14,18,1
	.member	_nDcw,2,14,18,1
	.member	_nNextSt,3,14,18,1
	.member	_nExpress,4,14,18,1
	.member	_nNorMal,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake13,608
	.member	_nLAddres,0,12,8,32
	.member	_nHAddres,32,12,8,32
	.member	_nContro,64,12,8,32
	.member	_nDataDefin,96,12,8,32
	.member	_nStCode,128,12,8,32
	.member	_nNowCode,160,12,8,32
	.member	_nNextCode,192,12,8,32
	.member	_nDestCode,224,12,8,32
	.member	_BIT,256,8,8,32,.fake14
	.member	_nCarTrainNum,288,60,8,64,,2
	.member	_nSp,352,12,8,32
	.member	_nTime,384,8,8,192,.fake12
	.member	_nSp_2,576,12,8,32
	.eos
	.sym	_TMS_RX_DATA,0,8,13,608,.fake13
	.sym	_PTMS_RX_DATA,0,24,13,32,.fake13
	.stag	.fake15,416
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
	.sym	_SCC_INIT_SHAPE,0,8,13,416,.fake15
	.file	"Disk.h"
	.stag	.fake16,416
	.member	_FileName,0,60,8,256,,8
	.member	_ExtName,256,60,8,96,,3
	.member	_StartCluster,352,14,8,32
	.member	_FileSize,384,14,8,32
	.eos
	.sym	_OPEN_FILE,0,8,13,416,.fake16
	.stag	.fake17,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME,0,8,13,1472,.fake17
	.stag	.fake18,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME_ALL,0,8,13,1472,.fake18
	.stag	.fake19,96
	.member	_nDis_Point,0,15,8,32
	.member	_Type,32,12,8,32
	.member	_Number,64,12,8,32
	.eos
	.sym	_DISPLAY_INDEX,0,8,13,96,.fake19
	.stag	.fake20,9664
	.member	_nCnt,0,12,8,32
	.member	_nDoor,32,12,8,32
	.member	_nDisplay_str,64,56,8,9600,.fake19,100
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,9664,.fake20
	.stag	.fake21,512
	.member	_nStationCode,0,12,8,32
	.member	_nStationName,32,60,8,480,,15
	.eos
	.sym	_DEST_SET_SCREEN,0,8,13,512,.fake21
	.stag	.fake22,16032
	.member	_nScreenNum,0,12,8,32
	.member	_nDestSetNum,32,12,8,32
	.member	_nDestSetNumRe,64,12,8,32
	.member	_nStop_Patten_Num,96,12,8,32
	.member	_nTrainClass_Num,128,12,8,32
	.member	_nMatchCode,160,60,8,8192,,256
	.member	_nDestCodeList,8352,60,8,2560,,80
	.member	_nDestScreen,10912,56,8,5120,.fake21,10
	.eos
	.sym	_NVSRAM_VARIABLE,0,8,13,16032,.fake22
	.stag	.fake23,64
	.member	_nData_Type,0,12,8,32
	.eos
	.sym	_DATA_TYPE,0,8,13,64,.fake23
	.sym	_PDATA_TYPE,0,24,13,32,.fake23
	.stag	.fake24,192
	.member	_nYy,0,12,8,32
	.member	_nMm,32,12,8,32
	.member	_nDd,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_DATE,0,8,13,192,.fake24
	.stag	.fake25,1536
	.member	_nDataHead_b,0,60,8,832,,26
	.member	_nSp1,832,12,8,32
	.member	_nEEE_b,864,60,8,128,,4
	.member	_nSp2_b,992,60,8,96,,3
	.member	_nDD_b,1088,60,8,64,,2
	.member	_nSp3_b,1152,60,8,96,,3
	.member	_nDate,1248,8,8,192,.fake24
	.member	_nSp4_b,1440,60,8,96,,3
	.eos
	.sym	_PISC_HEAD,0,8,13,1536,.fake25
	.sym	_pPISC_HEAD,0,24,13,32,.fake25
	.stag	.fake26,2816
	.member	_nHead_h,0,8,8,1536,.fake25
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
	.sym	_PISC_DATA_ADD,0,8,13,2816,.fake26
	.sym	_pPISC_DATA_ADD,0,24,13,32,.fake26
	.stag	.fake27,64
	.member	_nNum_b,0,60,8,64,,2
	.eos
	.sym	_HEADER,0,8,13,64,.fake27
	.sym	_pHEADER,0,24,13,32,.fake27
	.stag	.fake28,1504
	.member	_nCode_b,0,60,8,64,,2
	.member	_nKorName_b,64,60,8,480,,15
	.member	_nEngName_b,544,60,8,960,,30
	.eos
	.sym	_ST_NAME_B,0,8,13,1504,.fake28
	.sym	_pST_NAME_B,0,24,13,32,.fake28
	.stag	.fake29,64
	.member	_nCnt,0,8,8,64,.fake27
	.eos
	.sym	_ST_NAME,0,8,13,64,.fake29
	.sym	_pST_NAME,0,24,13,32,.fake29
	.stag	.fake30,608
	.member	_nCode_b,0,60,8,64,,2
	.member	_nName_Index_b,64,60,8,64,,2
	.member	_nST_Name_b,128,60,8,480,,15
	.eos
	.sym	_DEST_INFO_B,0,8,13,608,.fake30
	.sym	_pDEST_INFO_B,0,24,13,32,.fake30
	.stag	.fake31,64
	.member	_nCnt,0,8,8,64,.fake27
	.eos
	.sym	_DEST_INFO,0,8,13,64,.fake31
	.sym	_pDEST_INFO,0,24,13,32,.fake31
	.stag	.fake32,224
	.member	_nCode_b,0,60,8,64,,2
	.member	_nType,64,12,8,32
	.member	_nAddress_b,96,60,8,128,,4
	.eos
	.sym	_DIA_GROUP_B,0,8,13,224,.fake32
	.sym	_pDIA_GROUP_B,0,24,13,32,.fake32
	.stag	.fake33,64
	.member	_nCnt,0,8,8,64,.fake27
	.eos
	.sym	_DIA_GROUP,0,8,13,64,.fake33
	.sym	_pDIA_GROUP,0,24,13,32,.fake33
	.stag	.fake34,480
	.member	_nCode_b,0,60,8,64,,2
	.member	_nSt_Time_b,64,60,8,96,,3
	.member	_nStopPtG_Addres_b,160,60,8,128,,4
	.member	_nDispG_Addres_b,288,60,8,128,,4
	.member	_nDest_Index_b,416,60,8,64,,2
	.eos
	.sym	_DIA_G_ITEM_B,0,8,13,480,.fake34
	.sym	_pDIA_G_ITEM_B,0,24,13,32,.fake34
	.stag	.fake35,64
	.member	_nCnt,0,8,8,64,.fake27
	.eos
	.sym	_DIA_G_ITEM,0,8,13,64,.fake35
	.sym	_pDIA_G_ITEM,0,24,13,32,.fake35
	.stag	.fake36,192
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_b,128,60,8,64,,2
	.eos
	.sym	_DISPLAY_G_B,0,8,13,192,.fake36
	.sym	_pDISPLAY_G_B,0,24,13,32,.fake36
	.stag	.fake37,64
	.member	_nCnt,0,8,8,64,.fake27
	.eos
	.sym	_DISPLAY_GROUP,0,8,13,64,.fake37
	.sym	_pDISPLAY_GROUP,0,24,13,32,.fake37
	.stag	.fake38,128
	.member	_nText_Kind_b,0,60,8,64,,2
	.member	_nText_Index,64,60,8,64,,2
	.eos
	.sym	_DISPLAY_ITEM_B,0,8,13,128,.fake38
	.sym	_pDISPLAY_ITEM_B,0,24,13,32,.fake38
	.stag	.fake39,64
	.member	_nCnt,0,8,8,64,.fake27
	.eos
	.sym	_DISPLAY_ITEM,0,8,13,64,.fake39
	.sym	_pDISPLAY_ITEM,0,24,13,32,.fake39
	.stag	.fake40,256
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_Flag,128,8,8,128,.fake38
	.eos
	.sym	_DISPLAY_G_I_B,0,8,13,256,.fake40
	.sym	_pDISPLAY_G_I_B,0,24,13,32,.fake40
	.stag	.fake41,51264
	.member	_nCnt,0,8,8,64,.fake27
	.member	_pBody,64,56,8,51200,.fake40,200
	.eos
	.sym	_DISPLAY_G_I_H,0,8,13,51264,.fake41
	.sym	_pDISPLAY_G_I_H,0,24,13,32,.fake41
	.stag	.fake42,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nEn_Index_b,64,60,8,64,,2
	.member	_nSt_P_G_Cnt_b,128,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_H,0,8,13,192,.fake42
	.sym	_pSTOP_PT_G_B_H,0,24,13,32,.fake42
	.stag	.fake43,64
	.member	_nSt_P_Item_Index_b,0,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_B,0,8,13,64,.fake43
	.sym	_pSTOP_PT_G_B_B,0,24,13,32,.fake43
	.stag	.fake44,192
	.member	_nHeader,0,8,8,192,.fake42
	.eos
	.sym	_STOP_PT_G_B,0,8,13,192,.fake44
	.sym	_pSTOP_PT_G_B,0,24,13,32,.fake44
	.stag	.fake45,288
	.member	_nSt_Info_b,0,60,8,64,,2
	.member	_nDoor_Info,64,12,8,32
	.member	_nSt_Time_b,96,60,8,96,,3
	.member	_nStop_Time_b,192,60,8,96,,3
	.eos
	.sym	_STOP_PT_ITEM_B,0,8,13,288,.fake45
	.sym	_pSTOP_PT_ITEM_B,0,24,13,32,.fake45
	.stag	.fake46,64
	.member	_nCnt,0,8,8,64,.fake27
	.eos
	.sym	_STOP_PT_ITEM,0,8,13,64,.fake46
	.sym	_pSTOP_PT_ITEM,0,24,13,32,.fake46
	.stag	.fake47,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nArr_Index_b,64,60,8,64,,2
	.member	_nSt_Dist_b,128,60,8,64,,2
	.eos
	.sym	_ST_INFO_B,0,8,13,192,.fake47
	.sym	_pST_INFO_B,0,24,13,32,.fake47
	.stag	.fake48,64
	.member	_nCnt,0,8,8,64,.fake27
	.eos
	.sym	_ST_INFO,0,8,13,64,.fake48
	.sym	_pST_INFO,0,24,13,32,.fake48
	.stag	.fake49,416
	.member	_nSt_Info_flag,0,8,8,192,.fake47
	.member	_nDoor_Info,192,12,8,32
	.member	_nSt_Time_b,224,60,8,96,,3
	.member	_nStop_Time_b,320,60,8,96,,3
	.eos
	.sym	_STOP_PT_INFO_ITEM_B,0,8,13,416,.fake49
	.sym	_pSTOP_PT_INFO_ITEM_B,0,24,13,32,.fake49
	.stag	.fake50,41664
	.member	_nCnt,0,8,8,64,.fake27
	.member	_pBody,64,56,8,41600,.fake49,100
	.eos
	.sym	_STOP_PT_INFO_ITEM,0,8,13,41664,.fake50
	.sym	_pSTOP_PT_INFO_ITEM,0,24,13,32,.fake50
	.stag	.fake51,41792
	.member	_nHeader,0,8,8,192,.fake42
	.member	_nSt_Pt_G_I_Flage,192,56,8,41600,.fake49,100
	.eos
	.sym	_STOP_PT_G_I_HAP,0,8,13,41792,.fake51
	.sym	_pSTOP_PT_G_I_HAP,0,24,13,32,.fake51
	.stag	.fake52,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake52
	.sym	_PIMTEXTBODY,0,24,13,32,.fake52
	.stag	.fake53,960000
	.member	_nBody,0,56,8,960000,.fake52,100
	.eos
	.sym	_IMTEXT,0,8,13,960000,.fake53
	.sym	_PIMTEXT,0,24,13,32,.fake53
	.stag	.fake54,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake54
	.sym	_PPRTEXTBODY,0,24,13,32,.fake54
	.stag	.fake55,960000
	.member	_nBody,0,56,8,960000,.fake54,60
	.eos
	.sym	_PRTEXT,0,8,13,960000,.fake55
	.sym	_PPRTEXT,0,24,13,32,.fake55
	.stag	.fake56,1920128
	.member	_nBlockSize_b,0,60,8,128,,4
	.member	_nImBlock,128,8,8,960000,.fake53
	.member	_nPrBlock,960128,8,8,960000,.fake55
	.eos
	.sym	_TEXT_BLOCK,0,8,13,1920128,.fake56
	.sym	_pTEXT_BLOCK,0,24,13,32,.fake56
	.stag	.fake57,64
	.member	_nSt_Pt_G_Address,0,15,8,32
	.member	_nDisp_G_Address,32,15,8,32
	.eos
	.sym	_START_NV_ADDRESS,0,8,13,64,.fake57
	.file	"LED_DOWNLOAD.h"
	.stag	.fake58,160
	.member	_nST_1,0,12,8,32
	.member	_nST_2,32,12,8,32
	.member	_nTXCnt,64,12,8,32
	.member	_nRepCnt,96,12,8,32
	.member	_nErassOk,128,12,8,32
	.eos
	.sym	_DOWN_STEP,0,8,13,160,.fake58
	.stag	.fake59,736
	.member	_nRNDSelt,0,12,8,32
	.member	_nFDDSelt,32,12,8,32
	.member	_nIDDSelt,64,12,8,32
	.member	_nTNDSelt,96,12,8,32
	.member	_nFDD_DATA_Selt,128,12,8,32
	.member	_nSFKindCode,160,12,8,32
	.member	_nWaitSDR,192,12,8,32
	.member	_nSelfTestFlag,224,12,8,32
	.member	_nSDR_RxCnt,256,12,8,32
	.member	_nErassFlag,288,8,8,160,.fake58
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
	.sym	_LED_DATA_DOWNLOAD,0,8,13,736,.fake59
	.file	"GpProface.h"
	.stag	.fake60,160
	.member	_nFlag,0,12,8,32
	.member	_nNum,32,14,8,32
	.member	_nRemNum,64,14,8,32
	.member	_nNowSt_Re,96,12,8,32
	.member	_nNextSt_Re,128,12,8,32
	.eos
	.sym	_TRANNUM_INPUT,0,8,13,160,.fake60
	.stag	.fake61,288
	.member	_nGPTranNumInput,0,8,8,160,.fake60
	.member	_nScreenSetNum,160,12,8,32
	.member	_nScreenRxTime,192,12,8,32
	.member	_nScreenSafe,224,12,8,32
	.member	_nScreen_Send_Delay_Time,256,12,8,32
	.eos
	.sym	_SELETC_BUTTON,0,8,13,288,.fake61
	.file	"NorFlash.h"
	.file	"DataPro.h"
	.stag	.fake62,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake62
	.stag	.fake63,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake63
	.stag	.fake64,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake64
	.stag	.fake65,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake65
	.stag	.fake66,5984
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
	.sym	_SELF_TEST,0,8,13,5984,.fake66
	.stag	.fake67,12096
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
	.member	_nStart,2464,8,8,1472,.fake63
	.member	_nPre,3936,8,8,1472,.fake63
	.member	_nNow,5408,8,8,1472,.fake63
	.member	_nNext,6880,8,8,1472,.fake63
	.member	_nDest,8352,8,8,1472,.fake63
	.member	_nGpStName,9824,8,8,1920,.fake64
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
	.sym	_TRAN_STATION_INFO,0,8,13,12096,.fake67
	.stag	.fake68,160
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.member	_nRemem,128,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,160,.fake68
	.stag	.fake69,800
	.member	_nHcr,0,8,8,160,.fake68
	.member	_nIcr,160,8,8,160,.fake68
	.member	_nTcr,320,8,8,160,.fake68
	.member	_nDoor,480,8,8,160,.fake68
	.member	_nDist,640,8,8,160,.fake68
	.eos
	.sym	_DI_CHECK,0,8,13,800,.fake69
	.stag	.fake70,18496
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
	.sym	_INDEX_FLAG,0,8,13,18496,.fake70
	.stag	.fake71,224
	.member	_nDataDefin,0,12,8,32
	.member	_nCarNum,32,12,8,32
	.member	_nDist,64,12,8,32
	.member	_nNow,96,12,8,32
	.member	_nNext,128,12,8,32
	.member	_nDest,160,12,8,32
	.member	_nDoOpenIf,192,12,8,32
	.eos
	.sym	_TMS_RX_DATA_PR,0,8,13,224,.fake71
	.stag	.fake72,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake72
	.stag	.fake73,384
	.member	_nDeSTCodeSet,0,12,8,32
	.member	_nTranNum,32,12,8,32
	.member	_nClean,64,12,8,32
	.member	_nPIBPaten,96,12,8,32
	.member	_nS_FDIPaten,128,12,8,32
	.member	_nCarNum,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake72
	.member	_nPR_Text,256,8,8,64,.fake72
	.member	_nRNDTXFlag,320,12,8,32
	.member	_nManualSet,352,12,8,32
	.eos
	.sym	_SCC_SEND_FLAG,0,8,13,384,.fake73
	.stag	.fake76,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake75,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake76
	.eos
	.stag	.fake74,32
	.member	_DR,0,9,8,32,.fake75
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake74
	.stag	.fake77,192
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nDataNvsrLoad,64,12,8,32
	.member	_nDataNvsrWait,96,12,8,32
	.member	_nRomWriteCnt,128,12,8,32
	.member	_nKO_Flag,160,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,192,.fake77
	.stag	.fake78,288
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.member	_nEndHour,160,60,8,64,,2
	.member	_nEndMin,224,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,288,.fake78
	.sym	_PTRANNUMTIME,0,24,13,32,.fake78
	.stag	.fake79,9792
	.member	_nTIMEBUF,0,56,8,9792,.fake78,34
	.eos
	.sym	_TIMEBUF,0,8,13,9792,.fake79
	.sym	_PTIMEBUF,0,24,13,32,.fake79
	.file	"datapro.c"

	.sect	".cinit"
	.field  	IR_1,32
	.field  	_DISPLAY_UNIT_ADD+0,32
	.field  	17,32		; _DISPLAY_UNIT_ADD[0] @ 0
	.field  	33,32		; _DISPLAY_UNIT_ADD[1] @ 32
	.field  	49,32		; _DISPLAY_UNIT_ADD[2] @ 64
	.field  	65,32		; _DISPLAY_UNIT_ADD[3] @ 96
	.field  	113,32		; _DISPLAY_UNIT_ADD[4] @ 128
	.field  	1,32		; _DISPLAY_UNIT_ADD[5] @ 160
	.field  	18,32		; _DISPLAY_UNIT_ADD[6] @ 192
	.field  	34,32		; _DISPLAY_UNIT_ADD[7] @ 224
	.field  	50,32		; _DISPLAY_UNIT_ADD[8] @ 256
	.field  	66,32		; _DISPLAY_UNIT_ADD[9] @ 288
	.field  	114,32		; _DISPLAY_UNIT_ADD[10] @ 320
	.field  	2,32		; _DISPLAY_UNIT_ADD[11] @ 352
	.field  	28,32		; _DISPLAY_UNIT_ADD[12] @ 384
	.field  	44,32		; _DISPLAY_UNIT_ADD[13] @ 416
	.field  	60,32		; _DISPLAY_UNIT_ADD[14] @ 448
	.field  	76,32		; _DISPLAY_UNIT_ADD[15] @ 480
	.field  	92,32		; _DISPLAY_UNIT_ADD[16] @ 512
	.field  	108,32		; _DISPLAY_UNIT_ADD[17] @ 544
	.field  	30,32		; _DISPLAY_UNIT_ADD[18] @ 576
	.field  	46,32		; _DISPLAY_UNIT_ADD[19] @ 608
	.field  	62,32		; _DISPLAY_UNIT_ADD[20] @ 640
	.field  	78,32		; _DISPLAY_UNIT_ADD[21] @ 672
	.field  	94,32		; _DISPLAY_UNIT_ADD[22] @ 704
	.field  	110,32		; _DISPLAY_UNIT_ADD[23] @ 736
	.field  	31,32		; _DISPLAY_UNIT_ADD[24] @ 768
	.field  	15,32		; _DISPLAY_UNIT_ADD[25] @ 800
	.field  	29,32		; _DISPLAY_UNIT_ADD[26] @ 832
	.field  	13,32		; _DISPLAY_UNIT_ADD[27] @ 864
IR_1:	.set	28

	.sect	".text"

	.global	_DISPLAY_UNIT_ADD
	.bss	_DISPLAY_UNIT_ADD,30
	.sym	_DISPLAY_UNIT_ADD,_DISPLAY_UNIT_ADD,60,2,960,,30

	.sect	".cinit"
	.field  	IR_2,32
	.field  	_DISPLAY_UNIT_ADD_NOR_PIB+0,32
	.field  	17,32		; _DISPLAY_UNIT_ADD_NOR_PIB[0] @ 0
	.field  	33,32		; _DISPLAY_UNIT_ADD_NOR_PIB[1] @ 32
	.field  	49,32		; _DISPLAY_UNIT_ADD_NOR_PIB[2] @ 64
	.field  	65,32		; _DISPLAY_UNIT_ADD_NOR_PIB[3] @ 96
	.field  	113,32		; _DISPLAY_UNIT_ADD_NOR_PIB[4] @ 128
	.field  	1,32		; _DISPLAY_UNIT_ADD_NOR_PIB[5] @ 160
	.field  	18,32		; _DISPLAY_UNIT_ADD_NOR_PIB[6] @ 192
	.field  	34,32		; _DISPLAY_UNIT_ADD_NOR_PIB[7] @ 224
	.field  	50,32		; _DISPLAY_UNIT_ADD_NOR_PIB[8] @ 256
	.field  	66,32		; _DISPLAY_UNIT_ADD_NOR_PIB[9] @ 288
	.field  	114,32		; _DISPLAY_UNIT_ADD_NOR_PIB[10] @ 320
	.field  	2,32		; _DISPLAY_UNIT_ADD_NOR_PIB[11] @ 352
	.field  	19,32		; _DISPLAY_UNIT_ADD_NOR_PIB[12] @ 384
	.field  	35,32		; _DISPLAY_UNIT_ADD_NOR_PIB[13] @ 416
	.field  	51,32		; _DISPLAY_UNIT_ADD_NOR_PIB[14] @ 448
	.field  	67,32		; _DISPLAY_UNIT_ADD_NOR_PIB[15] @ 480
	.field  	115,32		; _DISPLAY_UNIT_ADD_NOR_PIB[16] @ 512
	.field  	3,32		; _DISPLAY_UNIT_ADD_NOR_PIB[17] @ 544
	.field  	20,32		; _DISPLAY_UNIT_ADD_NOR_PIB[18] @ 576
	.field  	36,32		; _DISPLAY_UNIT_ADD_NOR_PIB[19] @ 608
	.field  	52,32		; _DISPLAY_UNIT_ADD_NOR_PIB[20] @ 640
	.field  	68,32		; _DISPLAY_UNIT_ADD_NOR_PIB[21] @ 672
	.field  	116,32		; _DISPLAY_UNIT_ADD_NOR_PIB[22] @ 704
	.field  	4,32		; _DISPLAY_UNIT_ADD_NOR_PIB[23] @ 736
IR_2:	.set	24

	.sect	".text"

	.global	_DISPLAY_UNIT_ADD_NOR_PIB
	.bss	_DISPLAY_UNIT_ADD_NOR_PIB,30
	.sym	_DISPLAY_UNIT_ADD_NOR_PIB,_DISPLAY_UNIT_ADD_NOR_PIB,60,2,960,,30

	.sect	".cinit"
	.field  	IR_3,32
	.field  	_DISPLAY_UNIT_ADD_NOR_RND+0,32
	.field  	21,32		; _DISPLAY_UNIT_ADD_NOR_RND[0] @ 0
	.field  	37,32		; _DISPLAY_UNIT_ADD_NOR_RND[1] @ 32
	.field  	53,32		; _DISPLAY_UNIT_ADD_NOR_RND[2] @ 64
	.field  	69,32		; _DISPLAY_UNIT_ADD_NOR_RND[3] @ 96
	.field  	117,32		; _DISPLAY_UNIT_ADD_NOR_RND[4] @ 128
	.field  	5,32		; _DISPLAY_UNIT_ADD_NOR_RND[5] @ 160
	.field  	22,32		; _DISPLAY_UNIT_ADD_NOR_RND[6] @ 192
	.field  	38,32		; _DISPLAY_UNIT_ADD_NOR_RND[7] @ 224
	.field  	54,32		; _DISPLAY_UNIT_ADD_NOR_RND[8] @ 256
	.field  	70,32		; _DISPLAY_UNIT_ADD_NOR_RND[9] @ 288
	.field  	118,32		; _DISPLAY_UNIT_ADD_NOR_RND[10] @ 320
	.field  	6,32		; _DISPLAY_UNIT_ADD_NOR_RND[11] @ 352
	.field  	23,32		; _DISPLAY_UNIT_ADD_NOR_RND[12] @ 384
	.field  	39,32		; _DISPLAY_UNIT_ADD_NOR_RND[13] @ 416
	.field  	55,32		; _DISPLAY_UNIT_ADD_NOR_RND[14] @ 448
	.field  	71,32		; _DISPLAY_UNIT_ADD_NOR_RND[15] @ 480
	.field  	119,32		; _DISPLAY_UNIT_ADD_NOR_RND[16] @ 512
	.field  	7,32		; _DISPLAY_UNIT_ADD_NOR_RND[17] @ 544
	.field  	24,32		; _DISPLAY_UNIT_ADD_NOR_RND[18] @ 576
	.field  	40,32		; _DISPLAY_UNIT_ADD_NOR_RND[19] @ 608
	.field  	56,32		; _DISPLAY_UNIT_ADD_NOR_RND[20] @ 640
	.field  	72,32		; _DISPLAY_UNIT_ADD_NOR_RND[21] @ 672
	.field  	120,32		; _DISPLAY_UNIT_ADD_NOR_RND[22] @ 704
	.field  	8,32		; _DISPLAY_UNIT_ADD_NOR_RND[23] @ 736
	.field  	31,32		; _DISPLAY_UNIT_ADD_NOR_RND[24] @ 768
	.field  	15,32		; _DISPLAY_UNIT_ADD_NOR_RND[25] @ 800
	.field  	29,32		; _DISPLAY_UNIT_ADD_NOR_RND[26] @ 832
	.field  	13,32		; _DISPLAY_UNIT_ADD_NOR_RND[27] @ 864
IR_3:	.set	28

	.sect	".text"

	.global	_DISPLAY_UNIT_ADD_NOR_RND
	.bss	_DISPLAY_UNIT_ADD_NOR_RND,30
	.sym	_DISPLAY_UNIT_ADD_NOR_RND,_DISPLAY_UNIT_ADD_NOR_RND,60,2,960,,30

	.sect	".cinit"
	.field  	IR_4,32
	.field  	_m_JapanStBuf_R+0,32
	.field  	137,32		; _m_JapanStBuf_R[0] @ 0
	.field  	69,32		; _m_JapanStBuf_R[1] @ 32
IR_4:	.set	2

	.sect	".text"

	.global	_m_JapanStBuf_R
	.bss	_m_JapanStBuf_R,10
	.sym	_m_JapanStBuf_R,_m_JapanStBuf_R,60,2,320,,10

	.sect	".cinit"
	.field  	IR_5,32
	.field  	_m_JapanStBuf_L+0,32
	.field  	141,32		; _m_JapanStBuf_L[0] @ 0
	.field  	182,32		; _m_JapanStBuf_L[1] @ 32
IR_5:	.set	2

	.sect	".text"

	.global	_m_JapanStBuf_L
	.bss	_m_JapanStBuf_L,10
	.sym	_m_JapanStBuf_L,_m_JapanStBuf_L,60,2,320,,10

	.sect	".cinit"
	.field  	IR_6,32
	.field  	_m_ChangStBuf_R+0,32
	.field  	211,32		; _m_ChangStBuf_R[0] @ 0
	.field  	210,32		; _m_ChangStBuf_R[1] @ 32
	.field  	195,32		; _m_ChangStBuf_R[2] @ 64
	.field  	197,32		; _m_ChangStBuf_R[3] @ 96
IR_6:	.set	4

	.sect	".text"

	.global	_m_ChangStBuf_R
	.bss	_m_ChangStBuf_R,10
	.sym	_m_ChangStBuf_R,_m_ChangStBuf_R,60,2,320,,10

	.sect	".cinit"
	.field  	IR_7,32
	.field  	_m_ChangStBuf_L+0,32
	.field  	215,32		; _m_ChangStBuf_L[0] @ 0
	.field  	243,32		; _m_ChangStBuf_L[1] @ 32
	.field  	195,32		; _m_ChangStBuf_L[2] @ 64
	.field  	197,32		; _m_ChangStBuf_L[3] @ 96
IR_7:	.set	4

	.sect	".text"

	.global	_m_ChangStBuf_L
	.bss	_m_ChangStBuf_L,10
	.sym	_m_ChangStBuf_L,_m_ChangStBuf_L,60,2,320,,10

	.sect	".cinit"
	.field  	IR_8,32
	.field  	_m_ExperssTimeBuf+0,32
	.field  	4097,32		; _m_ExperssTimeBuf[0] @ 0
	.field  	48,32		; _m_ExperssTimeBuf[1] @ 32
	.field  	54,32		; _m_ExperssTimeBuf[2] @ 64
	.field  	48,32		; _m_ExperssTimeBuf[3] @ 96
	.field  	48,32		; _m_ExperssTimeBuf[4] @ 128
	.field  	48,32		; _m_ExperssTimeBuf[5] @ 160
	.field  	54,32		; _m_ExperssTimeBuf[6] @ 192
	.field  	50,32		; _m_ExperssTimeBuf[7] @ 224
	.field  	56,32		; _m_ExperssTimeBuf[8] @ 256
	.field  	4098,32		; _m_ExperssTimeBuf[9] @ 288
	.field  	48,32		; _m_ExperssTimeBuf[10] @ 320
	.field  	53,32		; _m_ExperssTimeBuf[11] @ 352
	.field  	50,32		; _m_ExperssTimeBuf[12] @ 384
	.field  	55,32		; _m_ExperssTimeBuf[13] @ 416
	.field  	48,32		; _m_ExperssTimeBuf[14] @ 448
	.field  	53,32		; _m_ExperssTimeBuf[15] @ 480
	.field  	53,32		; _m_ExperssTimeBuf[16] @ 512
	.field  	53,32		; _m_ExperssTimeBuf[17] @ 544
	.field  	4099,32		; _m_ExperssTimeBuf[18] @ 576
	.field  	48,32		; _m_ExperssTimeBuf[19] @ 608
	.field  	55,32		; _m_ExperssTimeBuf[20] @ 640
	.field  	48,32		; _m_ExperssTimeBuf[21] @ 672
	.field  	48,32		; _m_ExperssTimeBuf[22] @ 704
	.field  	48,32		; _m_ExperssTimeBuf[23] @ 736
	.field  	55,32		; _m_ExperssTimeBuf[24] @ 768
	.field  	50,32		; _m_ExperssTimeBuf[25] @ 800
	.field  	56,32		; _m_ExperssTimeBuf[26] @ 832
	.field  	4100,32		; _m_ExperssTimeBuf[27] @ 864
	.field  	48,32		; _m_ExperssTimeBuf[28] @ 896
	.field  	54,32		; _m_ExperssTimeBuf[29] @ 928
	.field  	48,32		; _m_ExperssTimeBuf[30] @ 960
	.field  	48,32		; _m_ExperssTimeBuf[31] @ 992
	.field  	48,32		; _m_ExperssTimeBuf[32] @ 1024
	.field  	54,32		; _m_ExperssTimeBuf[33] @ 1056
	.field  	50,32		; _m_ExperssTimeBuf[34] @ 1088
	.field  	56,32		; _m_ExperssTimeBuf[35] @ 1120
	.field  	4101,32		; _m_ExperssTimeBuf[36] @ 1152
	.field  	48,32		; _m_ExperssTimeBuf[37] @ 1184
	.field  	56,32		; _m_ExperssTimeBuf[38] @ 1216
	.field  	48,32		; _m_ExperssTimeBuf[39] @ 1248
	.field  	48,32		; _m_ExperssTimeBuf[40] @ 1280
	.field  	48,32		; _m_ExperssTimeBuf[41] @ 1312
	.field  	56,32		; _m_ExperssTimeBuf[42] @ 1344
	.field  	50,32		; _m_ExperssTimeBuf[43] @ 1376
	.field  	56,32		; _m_ExperssTimeBuf[44] @ 1408
	.field  	4102,32		; _m_ExperssTimeBuf[45] @ 1440
	.field  	48,32		; _m_ExperssTimeBuf[46] @ 1472
	.field  	55,32		; _m_ExperssTimeBuf[47] @ 1504
	.field  	48,32		; _m_ExperssTimeBuf[48] @ 1536
	.field  	48,32		; _m_ExperssTimeBuf[49] @ 1568
	.field  	48,32		; _m_ExperssTimeBuf[50] @ 1600
	.field  	55,32		; _m_ExperssTimeBuf[51] @ 1632
	.field  	50,32		; _m_ExperssTimeBuf[52] @ 1664
	.field  	56,32		; _m_ExperssTimeBuf[53] @ 1696
	.field  	4103,32		; _m_ExperssTimeBuf[54] @ 1728
	.field  	48,32		; _m_ExperssTimeBuf[55] @ 1760
	.field  	57,32		; _m_ExperssTimeBuf[56] @ 1792
	.field  	48,32		; _m_ExperssTimeBuf[57] @ 1824
	.field  	48,32		; _m_ExperssTimeBuf[58] @ 1856
	.field  	48,32		; _m_ExperssTimeBuf[59] @ 1888
	.field  	57,32		; _m_ExperssTimeBuf[60] @ 1920
	.field  	50,32		; _m_ExperssTimeBuf[61] @ 1952
	.field  	56,32		; _m_ExperssTimeBuf[62] @ 1984
	.field  	4104,32		; _m_ExperssTimeBuf[63] @ 2016
	.field  	48,32		; _m_ExperssTimeBuf[64] @ 2048
	.field  	56,32		; _m_ExperssTimeBuf[65] @ 2080
	.field  	48,32		; _m_ExperssTimeBuf[66] @ 2112
	.field  	48,32		; _m_ExperssTimeBuf[67] @ 2144
	.field  	48,32		; _m_ExperssTimeBuf[68] @ 2176
	.field  	56,32		; _m_ExperssTimeBuf[69] @ 2208
	.field  	50,32		; _m_ExperssTimeBuf[70] @ 2240
	.field  	56,32		; _m_ExperssTimeBuf[71] @ 2272
	.field  	4105,32		; _m_ExperssTimeBuf[72] @ 2304
	.field  	49,32		; _m_ExperssTimeBuf[73] @ 2336
	.field  	48,32		; _m_ExperssTimeBuf[74] @ 2368
	.field  	48,32		; _m_ExperssTimeBuf[75] @ 2400
	.field  	48,32		; _m_ExperssTimeBuf[76] @ 2432
	.field  	49,32		; _m_ExperssTimeBuf[77] @ 2464
	.field  	48,32		; _m_ExperssTimeBuf[78] @ 2496
	.field  	50,32		; _m_ExperssTimeBuf[79] @ 2528
	.field  	56,32		; _m_ExperssTimeBuf[80] @ 2560
	.field  	4112,32		; _m_ExperssTimeBuf[81] @ 2592
	.field  	48,32		; _m_ExperssTimeBuf[82] @ 2624
	.field  	57,32		; _m_ExperssTimeBuf[83] @ 2656
	.field  	48,32		; _m_ExperssTimeBuf[84] @ 2688
	.field  	48,32		; _m_ExperssTimeBuf[85] @ 2720
	.field  	48,32		; _m_ExperssTimeBuf[86] @ 2752
	.field  	57,32		; _m_ExperssTimeBuf[87] @ 2784
	.field  	50,32		; _m_ExperssTimeBuf[88] @ 2816
	.field  	56,32		; _m_ExperssTimeBuf[89] @ 2848
	.field  	4113,32		; _m_ExperssTimeBuf[90] @ 2880
	.field  	49,32		; _m_ExperssTimeBuf[91] @ 2912
	.field  	49,32		; _m_ExperssTimeBuf[92] @ 2944
	.field  	48,32		; _m_ExperssTimeBuf[93] @ 2976
	.field  	48,32		; _m_ExperssTimeBuf[94] @ 3008
	.field  	49,32		; _m_ExperssTimeBuf[95] @ 3040
	.field  	49,32		; _m_ExperssTimeBuf[96] @ 3072
	.field  	50,32		; _m_ExperssTimeBuf[97] @ 3104
	.field  	56,32		; _m_ExperssTimeBuf[98] @ 3136
	.field  	4114,32		; _m_ExperssTimeBuf[99] @ 3168
	.field  	49,32		; _m_ExperssTimeBuf[100] @ 3200
	.field  	48,32		; _m_ExperssTimeBuf[101] @ 3232
	.field  	48,32		; _m_ExperssTimeBuf[102] @ 3264
	.field  	48,32		; _m_ExperssTimeBuf[103] @ 3296
	.field  	49,32		; _m_ExperssTimeBuf[104] @ 3328
	.field  	48,32		; _m_ExperssTimeBuf[105] @ 3360
	.field  	50,32		; _m_ExperssTimeBuf[106] @ 3392
	.field  	56,32		; _m_ExperssTimeBuf[107] @ 3424
	.field  	4115,32		; _m_ExperssTimeBuf[108] @ 3456
	.field  	49,32		; _m_ExperssTimeBuf[109] @ 3488
	.field  	50,32		; _m_ExperssTimeBuf[110] @ 3520
	.field  	48,32		; _m_ExperssTimeBuf[111] @ 3552
	.field  	48,32		; _m_ExperssTimeBuf[112] @ 3584
	.field  	49,32		; _m_ExperssTimeBuf[113] @ 3616
	.field  	50,32		; _m_ExperssTimeBuf[114] @ 3648
	.field  	50,32		; _m_ExperssTimeBuf[115] @ 3680
	.field  	56,32		; _m_ExperssTimeBuf[116] @ 3712
	.field  	4116,32		; _m_ExperssTimeBuf[117] @ 3744
	.field  	49,32		; _m_ExperssTimeBuf[118] @ 3776
	.field  	49,32		; _m_ExperssTimeBuf[119] @ 3808
	.field  	48,32		; _m_ExperssTimeBuf[120] @ 3840
	.field  	48,32		; _m_ExperssTimeBuf[121] @ 3872
	.field  	49,32		; _m_ExperssTimeBuf[122] @ 3904
	.field  	49,32		; _m_ExperssTimeBuf[123] @ 3936
	.field  	50,32		; _m_ExperssTimeBuf[124] @ 3968
	.field  	56,32		; _m_ExperssTimeBuf[125] @ 4000
	.field  	4117,32		; _m_ExperssTimeBuf[126] @ 4032
	.field  	49,32		; _m_ExperssTimeBuf[127] @ 4064
	.field  	51,32		; _m_ExperssTimeBuf[128] @ 4096
	.field  	48,32		; _m_ExperssTimeBuf[129] @ 4128
	.field  	48,32		; _m_ExperssTimeBuf[130] @ 4160
	.field  	49,32		; _m_ExperssTimeBuf[131] @ 4192
	.field  	51,32		; _m_ExperssTimeBuf[132] @ 4224
	.field  	50,32		; _m_ExperssTimeBuf[133] @ 4256
	.field  	56,32		; _m_ExperssTimeBuf[134] @ 4288
	.field  	4118,32		; _m_ExperssTimeBuf[135] @ 4320
	.field  	49,32		; _m_ExperssTimeBuf[136] @ 4352
	.field  	50,32		; _m_ExperssTimeBuf[137] @ 4384
	.field  	48,32		; _m_ExperssTimeBuf[138] @ 4416
	.field  	48,32		; _m_ExperssTimeBuf[139] @ 4448
	.field  	49,32		; _m_ExperssTimeBuf[140] @ 4480
	.field  	50,32		; _m_ExperssTimeBuf[141] @ 4512
	.field  	50,32		; _m_ExperssTimeBuf[142] @ 4544
	.field  	56,32		; _m_ExperssTimeBuf[143] @ 4576
	.field  	4119,32		; _m_ExperssTimeBuf[144] @ 4608
	.field  	49,32		; _m_ExperssTimeBuf[145] @ 4640
	.field  	52,32		; _m_ExperssTimeBuf[146] @ 4672
	.field  	48,32		; _m_ExperssTimeBuf[147] @ 4704
	.field  	48,32		; _m_ExperssTimeBuf[148] @ 4736
	.field  	49,32		; _m_ExperssTimeBuf[149] @ 4768
	.field  	52,32		; _m_ExperssTimeBuf[150] @ 4800
	.field  	50,32		; _m_ExperssTimeBuf[151] @ 4832
	.field  	56,32		; _m_ExperssTimeBuf[152] @ 4864
	.field  	4120,32		; _m_ExperssTimeBuf[153] @ 4896
	.field  	49,32		; _m_ExperssTimeBuf[154] @ 4928
	.field  	51,32		; _m_ExperssTimeBuf[155] @ 4960
	.field  	48,32		; _m_ExperssTimeBuf[156] @ 4992
	.field  	48,32		; _m_ExperssTimeBuf[157] @ 5024
	.field  	49,32		; _m_ExperssTimeBuf[158] @ 5056
	.field  	51,32		; _m_ExperssTimeBuf[159] @ 5088
	.field  	50,32		; _m_ExperssTimeBuf[160] @ 5120
	.field  	56,32		; _m_ExperssTimeBuf[161] @ 5152
	.field  	4121,32		; _m_ExperssTimeBuf[162] @ 5184
	.field  	49,32		; _m_ExperssTimeBuf[163] @ 5216
	.field  	53,32		; _m_ExperssTimeBuf[164] @ 5248
	.field  	48,32		; _m_ExperssTimeBuf[165] @ 5280
	.field  	48,32		; _m_ExperssTimeBuf[166] @ 5312
	.field  	49,32		; _m_ExperssTimeBuf[167] @ 5344
	.field  	53,32		; _m_ExperssTimeBuf[168] @ 5376
	.field  	50,32		; _m_ExperssTimeBuf[169] @ 5408
	.field  	56,32		; _m_ExperssTimeBuf[170] @ 5440
	.field  	4128,32		; _m_ExperssTimeBuf[171] @ 5472
	.field  	49,32		; _m_ExperssTimeBuf[172] @ 5504
	.field  	52,32		; _m_ExperssTimeBuf[173] @ 5536
	.field  	48,32		; _m_ExperssTimeBuf[174] @ 5568
	.field  	48,32		; _m_ExperssTimeBuf[175] @ 5600
	.field  	49,32		; _m_ExperssTimeBuf[176] @ 5632
	.field  	52,32		; _m_ExperssTimeBuf[177] @ 5664
	.field  	50,32		; _m_ExperssTimeBuf[178] @ 5696
	.field  	56,32		; _m_ExperssTimeBuf[179] @ 5728
	.field  	4129,32		; _m_ExperssTimeBuf[180] @ 5760
	.field  	49,32		; _m_ExperssTimeBuf[181] @ 5792
	.field  	54,32		; _m_ExperssTimeBuf[182] @ 5824
	.field  	48,32		; _m_ExperssTimeBuf[183] @ 5856
	.field  	48,32		; _m_ExperssTimeBuf[184] @ 5888
	.field  	49,32		; _m_ExperssTimeBuf[185] @ 5920
	.field  	54,32		; _m_ExperssTimeBuf[186] @ 5952
	.field  	50,32		; _m_ExperssTimeBuf[187] @ 5984
	.field  	56,32		; _m_ExperssTimeBuf[188] @ 6016
	.field  	4130,32		; _m_ExperssTimeBuf[189] @ 6048
	.field  	49,32		; _m_ExperssTimeBuf[190] @ 6080
	.field  	53,32		; _m_ExperssTimeBuf[191] @ 6112
	.field  	48,32		; _m_ExperssTimeBuf[192] @ 6144
	.field  	48,32		; _m_ExperssTimeBuf[193] @ 6176
	.field  	49,32		; _m_ExperssTimeBuf[194] @ 6208
	.field  	53,32		; _m_ExperssTimeBuf[195] @ 6240
	.field  	50,32		; _m_ExperssTimeBuf[196] @ 6272
	.field  	56,32		; _m_ExperssTimeBuf[197] @ 6304
	.field  	4131,32		; _m_ExperssTimeBuf[198] @ 6336
	.field  	49,32		; _m_ExperssTimeBuf[199] @ 6368
	.field  	55,32		; _m_ExperssTimeBuf[200] @ 6400
	.field  	48,32		; _m_ExperssTimeBuf[201] @ 6432
	.field  	48,32		; _m_ExperssTimeBuf[202] @ 6464
	.field  	49,32		; _m_ExperssTimeBuf[203] @ 6496
	.field  	55,32		; _m_ExperssTimeBuf[204] @ 6528
	.field  	50,32		; _m_ExperssTimeBuf[205] @ 6560
	.field  	56,32		; _m_ExperssTimeBuf[206] @ 6592
	.field  	4132,32		; _m_ExperssTimeBuf[207] @ 6624
	.field  	49,32		; _m_ExperssTimeBuf[208] @ 6656
	.field  	54,32		; _m_ExperssTimeBuf[209] @ 6688
	.field  	48,32		; _m_ExperssTimeBuf[210] @ 6720
	.field  	48,32		; _m_ExperssTimeBuf[211] @ 6752
	.field  	49,32		; _m_ExperssTimeBuf[212] @ 6784
	.field  	54,32		; _m_ExperssTimeBuf[213] @ 6816
	.field  	50,32		; _m_ExperssTimeBuf[214] @ 6848
	.field  	56,32		; _m_ExperssTimeBuf[215] @ 6880
	.field  	4133,32		; _m_ExperssTimeBuf[216] @ 6912
	.field  	49,32		; _m_ExperssTimeBuf[217] @ 6944
	.field  	56,32		; _m_ExperssTimeBuf[218] @ 6976
	.field  	48,32		; _m_ExperssTimeBuf[219] @ 7008
	.field  	48,32		; _m_ExperssTimeBuf[220] @ 7040
	.field  	49,32		; _m_ExperssTimeBuf[221] @ 7072
	.field  	56,32		; _m_ExperssTimeBuf[222] @ 7104
	.field  	50,32		; _m_ExperssTimeBuf[223] @ 7136
	.field  	56,32		; _m_ExperssTimeBuf[224] @ 7168
	.field  	4134,32		; _m_ExperssTimeBuf[225] @ 7200
	.field  	49,32		; _m_ExperssTimeBuf[226] @ 7232
	.field  	55,32		; _m_ExperssTimeBuf[227] @ 7264
	.field  	48,32		; _m_ExperssTimeBuf[228] @ 7296
	.field  	48,32		; _m_ExperssTimeBuf[229] @ 7328
	.field  	49,32		; _m_ExperssTimeBuf[230] @ 7360
	.field  	55,32		; _m_ExperssTimeBuf[231] @ 7392
	.field  	50,32		; _m_ExperssTimeBuf[232] @ 7424
	.field  	56,32		; _m_ExperssTimeBuf[233] @ 7456
	.field  	4135,32		; _m_ExperssTimeBuf[234] @ 7488
	.field  	49,32		; _m_ExperssTimeBuf[235] @ 7520
	.field  	57,32		; _m_ExperssTimeBuf[236] @ 7552
	.field  	48,32		; _m_ExperssTimeBuf[237] @ 7584
	.field  	48,32		; _m_ExperssTimeBuf[238] @ 7616
	.field  	49,32		; _m_ExperssTimeBuf[239] @ 7648
	.field  	57,32		; _m_ExperssTimeBuf[240] @ 7680
	.field  	50,32		; _m_ExperssTimeBuf[241] @ 7712
	.field  	56,32		; _m_ExperssTimeBuf[242] @ 7744
	.field  	4136,32		; _m_ExperssTimeBuf[243] @ 7776
	.field  	49,32		; _m_ExperssTimeBuf[244] @ 7808
	.field  	56,32		; _m_ExperssTimeBuf[245] @ 7840
	.field  	48,32		; _m_ExperssTimeBuf[246] @ 7872
	.field  	48,32		; _m_ExperssTimeBuf[247] @ 7904
	.field  	49,32		; _m_ExperssTimeBuf[248] @ 7936
	.field  	56,32		; _m_ExperssTimeBuf[249] @ 7968
	.field  	50,32		; _m_ExperssTimeBuf[250] @ 8000
	.field  	56,32		; _m_ExperssTimeBuf[251] @ 8032
	.field  	4137,32		; _m_ExperssTimeBuf[252] @ 8064
	.field  	50,32		; _m_ExperssTimeBuf[253] @ 8096
	.field  	48,32		; _m_ExperssTimeBuf[254] @ 8128
	.field  	48,32		; _m_ExperssTimeBuf[255] @ 8160
	.field  	48,32		; _m_ExperssTimeBuf[256] @ 8192
	.field  	50,32		; _m_ExperssTimeBuf[257] @ 8224
	.field  	48,32		; _m_ExperssTimeBuf[258] @ 8256
	.field  	50,32		; _m_ExperssTimeBuf[259] @ 8288
	.field  	56,32		; _m_ExperssTimeBuf[260] @ 8320
	.field  	4144,32		; _m_ExperssTimeBuf[261] @ 8352
	.field  	49,32		; _m_ExperssTimeBuf[262] @ 8384
	.field  	57,32		; _m_ExperssTimeBuf[263] @ 8416
	.field  	48,32		; _m_ExperssTimeBuf[264] @ 8448
	.field  	48,32		; _m_ExperssTimeBuf[265] @ 8480
	.field  	49,32		; _m_ExperssTimeBuf[266] @ 8512
	.field  	57,32		; _m_ExperssTimeBuf[267] @ 8544
	.field  	50,32		; _m_ExperssTimeBuf[268] @ 8576
	.field  	56,32		; _m_ExperssTimeBuf[269] @ 8608
	.field  	4145,32		; _m_ExperssTimeBuf[270] @ 8640
	.field  	50,32		; _m_ExperssTimeBuf[271] @ 8672
	.field  	49,32		; _m_ExperssTimeBuf[272] @ 8704
	.field  	48,32		; _m_ExperssTimeBuf[273] @ 8736
	.field  	48,32		; _m_ExperssTimeBuf[274] @ 8768
	.field  	50,32		; _m_ExperssTimeBuf[275] @ 8800
	.field  	49,32		; _m_ExperssTimeBuf[276] @ 8832
	.field  	50,32		; _m_ExperssTimeBuf[277] @ 8864
	.field  	56,32		; _m_ExperssTimeBuf[278] @ 8896
	.field  	4146,32		; _m_ExperssTimeBuf[279] @ 8928
	.field  	50,32		; _m_ExperssTimeBuf[280] @ 8960
	.field  	48,32		; _m_ExperssTimeBuf[281] @ 8992
	.field  	48,32		; _m_ExperssTimeBuf[282] @ 9024
	.field  	48,32		; _m_ExperssTimeBuf[283] @ 9056
	.field  	50,32		; _m_ExperssTimeBuf[284] @ 9088
	.field  	48,32		; _m_ExperssTimeBuf[285] @ 9120
	.field  	50,32		; _m_ExperssTimeBuf[286] @ 9152
	.field  	56,32		; _m_ExperssTimeBuf[287] @ 9184
	.field  	4147,32		; _m_ExperssTimeBuf[288] @ 9216
	.field  	50,32		; _m_ExperssTimeBuf[289] @ 9248
	.field  	50,32		; _m_ExperssTimeBuf[290] @ 9280
	.field  	48,32		; _m_ExperssTimeBuf[291] @ 9312
	.field  	48,32		; _m_ExperssTimeBuf[292] @ 9344
	.field  	50,32		; _m_ExperssTimeBuf[293] @ 9376
	.field  	50,32		; _m_ExperssTimeBuf[294] @ 9408
	.field  	50,32		; _m_ExperssTimeBuf[295] @ 9440
	.field  	56,32		; _m_ExperssTimeBuf[296] @ 9472
	.field  	4148,32		; _m_ExperssTimeBuf[297] @ 9504
	.field  	50,32		; _m_ExperssTimeBuf[298] @ 9536
	.field  	49,32		; _m_ExperssTimeBuf[299] @ 9568
	.field  	48,32		; _m_ExperssTimeBuf[300] @ 9600
	.field  	48,32		; _m_ExperssTimeBuf[301] @ 9632
	.field  	50,32		; _m_ExperssTimeBuf[302] @ 9664
	.field  	49,32		; _m_ExperssTimeBuf[303] @ 9696
	.field  	50,32		; _m_ExperssTimeBuf[304] @ 9728
	.field  	56,32		; _m_ExperssTimeBuf[305] @ 9760
IR_8:	.set	306

	.sect	".text"

	.global	_m_ExperssTimeBuf
	.bss	_m_ExperssTimeBuf,310
	.sym	_m_ExperssTimeBuf,_m_ExperssTimeBuf,62,2,9920,,310

	.sect	".cinit"
	.field  	1,32
	.field  	_nSandiskInputCheck+0,32
	.field  	0,32		; _nSandiskInputCheck @ 0

	.sect	".text"

	.global	_nSandiskInputCheck
	.bss	_nSandiskInputCheck,1
	.sym	_nSandiskInputCheck,_nSandiskInputCheck,12,2,32
	.sect	 ".text"

	.global	_DP_DataPro_Init
	.sym	_DP_DataPro_Init,_DP_DataPro_Init,32,2,0
	.func	137
;******************************************************************************
;* FUNCTION NAME: _DP_DataPro_Init                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_DataPro_Init:
	.line	1
;----------------------------------------------------------------------
; 137 | void DP_DataPro_Init()                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 140 | SanDisk_Vari.nDiskInputCheckFlag = 0;                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SanDisk_Vari+2
	.line	5
;----------------------------------------------------------------------
; 141 | SanDisk_Vari.nCheakSt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+1
	.line	6
;----------------------------------------------------------------------
; 142 | SanDisk_Vari.nTotalDestCnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+0
	.line	7
;----------------------------------------------------------------------
; 143 | SanDisk_Vari.nDiskUpChekFlag = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+3
	.line	9
;----------------------------------------------------------------------
; 145 | nNvsram_Variable.nStop_Patten_Num = 0;                                 
;----------------------------------------------------------------------
        sti       r0,@_nNvsram_Variable+3
	.line	10
;----------------------------------------------------------------------
; 146 | nNvsram_Variable.nTrainClass_Num = 0;                                  
;----------------------------------------------------------------------
        sti       r0,@_nNvsram_Variable+4
	.line	11
;----------------------------------------------------------------------
; 147 | nNvsram_Variable.nScreenNum = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nNvsram_Variable+0
	.line	13
;----------------------------------------------------------------------
; 149 | memset(nNvsram_Variable.nDestScreen,0x20,160);                         
;----------------------------------------------------------------------
        ldiu      160,r1
        ldiu      32,r2
        push      r1
        ldiu      @CL1,r0
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 150 | memset(nNvsram_Variable.nDestCodeList,0xFF,80);                        
;----------------------------------------------------------------------
        ldiu      80,r1
        ldiu      255,r2
        ldiu      @CL2,r0
        push      r1
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 151 | memset(nNvsram_Variable.nMatchCode,0xFF,256);                          
;----------------------------------------------------------------------
        ldiu      255,r2
        ldiu      256,r1
        push      r1
        push      r2
        ldiu      @CL3,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 153 | nDi_Check.nHcr.nTime = 100;                                            
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nDi_Check+1
	.line	18
;----------------------------------------------------------------------
; 154 | nDi_Check.nIcr.nTime = 100;                                            
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+6
	.line	19
;----------------------------------------------------------------------
; 155 | nDi_Check.nTcr.nTime = 100;                                            
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+11
	.line	20
;----------------------------------------------------------------------
; 156 | nDi_Check.nDist.nTime = 100;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+21
	.line	21
;----------------------------------------------------------------------
; 157 | nDi_Check.nDoor.nTime = 100;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+16
	.line	23
;----------------------------------------------------------------------
; 159 | nDi_Check.nHcr.nTimeCnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nDi_Check+2
	.line	24
;----------------------------------------------------------------------
; 160 | nDi_Check.nIcr.nTimeCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+7
	.line	25
;----------------------------------------------------------------------
; 161 | nDi_Check.nTcr.nTimeCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+12
	.line	26
;----------------------------------------------------------------------
; 162 | nDi_Check.nDist.nTimeCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+22
	.line	27
;----------------------------------------------------------------------
; 163 | nDi_Check.nDoor.nTimeCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+17
	.line	29
;----------------------------------------------------------------------
; 165 | nDi_Check.nHcr.nFlag = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+0
	.line	30
;----------------------------------------------------------------------
; 166 | nDi_Check.nIcr.nFlag = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+5
	.line	31
;----------------------------------------------------------------------
; 167 | nDi_Check.nTcr.nFlag = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+10
	.line	32
;----------------------------------------------------------------------
; 168 | nDi_Check.nDist.nFlag = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+20
	.line	33
;----------------------------------------------------------------------
; 169 | nDi_Check.nDoor.nFlag = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+15
	.line	35
;----------------------------------------------------------------------
; 171 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+18
	.line	36
;----------------------------------------------------------------------
; 172 | nDi_Check.nDist.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+23
	.line	37
;----------------------------------------------------------------------
; 173 | nDi_Check.nDist.nRemem = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+24
	.line	41
;----------------------------------------------------------------------
; 177 | nTr_St_Info.nTcmsRxNGCnt = 10;                                         
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_nTr_St_Info+76
	.line	42
;----------------------------------------------------------------------
; 178 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+71
	.line	43
;----------------------------------------------------------------------
; 179 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	45
;----------------------------------------------------------------------
; 181 | nTr_St_Info.nStart.nCode = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+77
	.line	46
;----------------------------------------------------------------------
; 182 | nTr_St_Info.nNow.nCode = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+169
	.line	47
;----------------------------------------------------------------------
; 183 | nTr_St_Info.nNext.nCode = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+215
	.line	48
;----------------------------------------------------------------------
; 184 | nTr_St_Info.nDest.nCode = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+261
	.line	50
;----------------------------------------------------------------------
; 186 | nTr_St_Info.nAutoManuFlag = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+374
	.line	52
;----------------------------------------------------------------------
; 188 | memset(nTr_St_Info.nStart.nEnNameBuf,0x20,15);                         
;----------------------------------------------------------------------
        ldiu      32,r1
        ldiu      15,r0
        push      r0
        push      r1
        ldiu      @CL4,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	53
;----------------------------------------------------------------------
; 189 | memset(nTr_St_Info.nStart.nIRNameBuf,0x20,30);                         
;----------------------------------------------------------------------
        ldiu      30,r0
        push      r0
        ldiu      32,r1
        push      r1
        ldiu      @CL5,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	55
;----------------------------------------------------------------------
; 191 | memset(nTr_St_Info.nNow.nEnNameBuf,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      @CL6,r2
        ldiu      15,r0
        ldiu      32,r1
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	56
;----------------------------------------------------------------------
; 192 | memset(nTr_St_Info.nNow.nIRNameBuf,0x20,30);                           
;----------------------------------------------------------------------
        ldiu      30,r0
        ldiu      @CL7,r2
        ldiu      32,r1
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	57
;----------------------------------------------------------------------
; 193 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
        ldiu      15,r0
        ldiu      32,r1
        push      r0
        push      r1
        ldiu      @CL8,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	59
;----------------------------------------------------------------------
; 195 | memset(nTr_St_Info.nNext.nEnNameBuf,0x20,15);                          
;----------------------------------------------------------------------
        ldiu      15,r2
        push      r2
        ldiu      32,r1
        ldiu      @CL9,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	60
;----------------------------------------------------------------------
; 196 | memset(nTr_St_Info.nNext.nIRNameBuf,0x20,30);                          
;----------------------------------------------------------------------
        ldiu      32,r1
        ldiu      @CL10,r0
        ldiu      30,r2
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	61
;----------------------------------------------------------------------
; 197 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r2
        push      r2
        ldiu      32,r1
        ldiu      @CL11,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	63
;----------------------------------------------------------------------
; 199 | memset(nTr_St_Info.nDest.nEnNameBuf,0x20,15);                          
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      32,r1
        ldiu      @CL12,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	64
;----------------------------------------------------------------------
; 200 | memset(nTr_St_Info.nDest.nIRNameBuf,0x20,30);                          
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        ldiu      @CL13,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	65
;----------------------------------------------------------------------
; 201 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      32,r1
        push      r2
        ldiu      @CL14,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	67
;----------------------------------------------------------------------
; 203 | nTr_St_Info.nSelf_Test_Flag = FALSE;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+368
	.line	69
;----------------------------------------------------------------------
; 205 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
	.line	70
;----------------------------------------------------------------------
; 206 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	71
;----------------------------------------------------------------------
; 207 | nTr_St_Info.nStation_PointCntRe = 0;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+4
	.line	73
;----------------------------------------------------------------------
; 209 | nTr_St_Info.nTcmsAutoDriverFlag = 0;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+370
	.line	75
;----------------------------------------------------------------------
; 211 | nTr_St_Info.nSimulationCnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+68
	.line	77
;----------------------------------------------------------------------
; 213 | nTr_St_Info.nStopPatNum = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+0
	.line	78
;----------------------------------------------------------------------
; 214 | nTr_St_Info.nOnlyDestSendFlag = 0; //2011_11_16 nOnlyDestSendFlag      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+367
	.line	80
;----------------------------------------------------------------------
; 216 | nTr_St_Info.nDoOp_StChFlag = 0; //120820                               
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+377
	.line	82
;----------------------------------------------------------------------
; 218 | memset(&nTr_St_Info,0x00,sizeof(nTr_St_Info));                         
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      378,r2
        push      r2
        push      r1
        ldiu      @CL15,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	84
;----------------------------------------------------------------------
; 220 | memset(&nSelf_Test,0x00,sizeof(nSelf_Test));                           
; 223 | //nTr_St_Info.nSendIddTxFlag = TRUE;                                   
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      187,r2
        push      r2
        push      r1
        ldiu      @CL16,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	102
;----------------------------------------------------------------------
; 238 | nTimeFlag.nFlag_DI_INPUT = FALSE;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+0
	.line	103
;----------------------------------------------------------------------
; 239 | nTimeFlag.nFlag_SelfTest = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTimeFlag+2
	.line	104
;----------------------------------------------------------------------
; 240 | nTimeFlag.nFlag_Simu = FALSE;                                          
;----------------------------------------------------------------------
        sti       r0,@_nTimeFlag+1
	.line	106
;----------------------------------------------------------------------
; 242 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	107
;----------------------------------------------------------------------
; 243 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
	.line	108
;----------------------------------------------------------------------
; 244 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	109
;----------------------------------------------------------------------
; 245 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+573
	.line	110
;----------------------------------------------------------------------
; 246 | nIndex_Flag.nBetweenFlag = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+576
	.line	112
;----------------------------------------------------------------------
; 248 | memset(&nIndex_Flag,0x00,sizeof(nIndex_Flag));                         
; 251 | //TMS ¼ö½Å Á¤º¸ Ã³¸® º¯¼ö                                              
;----------------------------------------------------------------------
        ldiu      578,r2
        push      r2
        ldiu      0,r1
        push      r1
        ldiu      @CL17,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	116
;----------------------------------------------------------------------
; 252 | nTmsRxData.nDataDefin = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTmsRxData+0
	.line	117
;----------------------------------------------------------------------
; 253 | nTmsRxData.nCarNum = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+1
	.line	118
;----------------------------------------------------------------------
; 254 | nTmsRxData.nDist = 0;                                                  
; 256 | //SEND ¸í·É¾î ³»¸®´Â ÇÃ·¹±×                                            
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+2
	.line	121
;----------------------------------------------------------------------
; 257 | nSccSendFlag.nManualSet = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+11
	.line	122
;----------------------------------------------------------------------
; 258 | nSccSendFlag.nDeSTCodeSet = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+0
	.line	123
;----------------------------------------------------------------------
; 259 | nSccSendFlag.nClean = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+2
	.line	124
;----------------------------------------------------------------------
; 260 | nSccSendFlag.nIM_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+7
	.line	125
;----------------------------------------------------------------------
; 261 | nSccSendFlag.nIM_Text.nTxNum = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+6
	.line	126
;----------------------------------------------------------------------
; 262 | nSccSendFlag.nPIBPaten = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+3
	.line	127
;----------------------------------------------------------------------
; 263 | nSccSendFlag.nPR_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+9
	.line	128
;----------------------------------------------------------------------
; 264 | nSccSendFlag.nPR_Text.nTxNum = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+8
	.line	129
;----------------------------------------------------------------------
; 265 | nSccSendFlag.nS_FDIPaten = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+4
	.line	130
;----------------------------------------------------------------------
; 266 | nSccSendFlag.nRNDTXFlag = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+10
	.line	132
;----------------------------------------------------------------------
; 268 | memset(&nSccSendFlag,0x00,sizeof(nSccSendFlag));                       
;----------------------------------------------------------------------
        ldiu      12,r2
        ldiu      @CL18,r1
        push      r2
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	134
;----------------------------------------------------------------------
; 270 | nSelect_Button.nGPTranNumInput.nNum =0;                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+1
	.line	135
;----------------------------------------------------------------------
; 271 | nSelect_Button.nGPTranNumInput.nRemNum = 0;                            
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+2
	.line	136
;----------------------------------------------------------------------
; 272 | nSelect_Button.nGPTranNumInput.nNextSt_Re = 0;                         
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+4
	.line	137
;----------------------------------------------------------------------
; 273 | nSelect_Button.nGPTranNumInput.nNowSt_Re = 0;                          
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+3
	.line	139
;----------------------------------------------------------------------
; 275 | Idc_Load.nDataNvsrLoad = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+2
	.line	140
;----------------------------------------------------------------------
; 276 | Idc_Load.nDataNvsrWait = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+3
	.line	141
;----------------------------------------------------------------------
; 277 | Idc_Load.nErCnt = 0;                                                   
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+1
	.line	142
;----------------------------------------------------------------------
; 278 | Idc_Load.nIDC_ROM_Flag = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+0
	.line	143
;----------------------------------------------------------------------
; 279 | Idc_Load.nKO_Flag = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+5
	.line	144
;----------------------------------------------------------------------
; 280 | Idc_Load.nRomWriteCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+4
	.line	146
;----------------------------------------------------------------------
; 282 | m_SCCPISTXBuff_Ach[14] = ROM_VER;                                      
;----------------------------------------------------------------------
        ldiu      45,r0
        sti       r0,@_m_SCCPISTXBuff_Ach+14
	.line	148
;----------------------------------------------------------------------
; 284 | memset(mSelfTest_NG_CntBuf,0x00,sizeof(mSelfTest_NG_CntBuf));//2011_02_
;     | 17 3.2¹öÀü                                                             
;----------------------------------------------------------------------
        ldiu      @CL19,r2
        ldiu      60,r0
        ldiu      0,r1
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	150
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	286,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Auto_Cnt+0,32
	.field  	0,32		; _d_Auto_Cnt @ 0

	.sect	".text"

	.global	_d_Auto_Cnt
	.bss	_d_Auto_Cnt,1
	.sym	_d_Auto_Cnt,_d_Auto_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Auto_TxCnt+0,32
	.field  	0,32		; _d_Auto_TxCnt @ 0

	.sect	".text"

	.global	_d_Auto_TxCnt
	.bss	_d_Auto_TxCnt,1
	.sym	_d_Auto_TxCnt,_d_Auto_TxCnt,12,2,32
	.sect	 ".text"

	.global	_DP_DataPro_Main
	.sym	_DP_DataPro_Main,_DP_DataPro_Main,32,2,0
	.func	294
;******************************************************************************
;* FUNCTION NAME: _DP_DataPro_Main                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_DataPro_Main:
	.sym	_sCh,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 294 | void DP_DataPro_Main()                                                 
; 296 | UCHAR sCh;                                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	4
;----------------------------------------------------------------------
; 297 | if(WORD_L(SanDisk_Vari.nCheakSt))                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SanDisk_Vari+1,r0
        beq       L7
;*      Branch Occurs to L7 
	.line	6
;----------------------------------------------------------------------
; 299 | SanDisk_Vari.nCheakSt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SanDisk_Vari+1
	.line	7
;----------------------------------------------------------------------
; 300 | DP_SanDisk_Check();                                                    
;----------------------------------------------------------------------
        call      _DP_SanDisk_Check
                                        ; Call Occurs
L7:        
	.line	10
;----------------------------------------------------------------------
; 303 | if(nSelect_Button.nGPTranNumInput.nFlag) //¿­¹ø¿¡ µû¸¥ ¿îÇà DIA °Ë»ö   
;----------------------------------------------------------------------
        ldi       @_nSelect_Button+0,r0
        beq       L9
;*      Branch Occurs to L9 
	.line	12
;----------------------------------------------------------------------
; 305 | nSelect_Button.nGPTranNumInput.nFlag = 0;                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+0
	.line	13
;----------------------------------------------------------------------
; 306 | DP_TranNum_Chech();                                                    
;----------------------------------------------------------------------
        call      _DP_TranNum_Chech
                                        ; Call Occurs
L9:        
	.line	16
;----------------------------------------------------------------------
; 309 | if(nTimeFlag.nFlag_DI_INPUT) //DI ÀÔ·Â Ã¼ÅÍ¸µ ½Ã°£ °¨Áö.               
;----------------------------------------------------------------------
        ldi       @_nTimeFlag+0,r0
        beq       L11
;*      Branch Occurs to L11 
	.line	18
;----------------------------------------------------------------------
; 311 | nTimeFlag.nFlag_DI_INPUT = FALSE;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+0
	.line	19
;----------------------------------------------------------------------
; 312 | DP_SanDisk_InputTimeCheck();                                           
;----------------------------------------------------------------------
        call      _DP_SanDisk_InputTimeCheck
                                        ; Call Occurs
L11:        
	.line	22
;----------------------------------------------------------------------
; 315 | if(nTimeFlag.nFlag_Simu) //&& nDi_Check.nHcr.nFlag ) //2ÃÊ¸¶´Ù ½ÇÇà    
; 316 | { //½Ã¹Ä·¹ÀÌ¼ÇÀÏ¶§ º¯°æµÇ´Â Á¶°ÇÀ» º¯°æ ½ÃÄÑ ÁØ´Ù.                     
;----------------------------------------------------------------------
        ldi       @_nTimeFlag+1,r0
        beq       L13
;*      Branch Occurs to L13 
	.line	24
;----------------------------------------------------------------------
; 317 | nTimeFlag.nFlag_Simu = FALSE;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+1
	.line	25
;----------------------------------------------------------------------
; 318 | DP_SIMULATION();                                                       
;----------------------------------------------------------------------
        call      _DP_SIMULATION
                                        ; Call Occurs
L13:        
	.line	28
;----------------------------------------------------------------------
; 321 | if(WORD_L(nTimeFlag.nAutoPlay_Flag))    //200ms ¸¶´Ù µ¿ÀÛ ÇÑ´Ù. ÀÚµ¿ ¿î
;     | Àü ¸ðµå.                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTimeFlag+3,r0
        beq       L44
;*      Branch Occurs to L44 
	.line	30
;----------------------------------------------------------------------
; 323 | nTimeFlag.nAutoPlay_Flag = FALSE;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+3
	.line	32
;----------------------------------------------------------------------
; 325 | if(WORD_L(Idc_Load.nIDC_ROM_Flag)){DP_IDC_SW_UPLOAD_Pro();} //¼³Á¤±â ´Ù
;     | ¿î·Îµå ±â´É ÁßÀÏ¶§´Â ´Ù¸¥ ±â´ÉÀº Á¤Áö.                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+0,r0
        beq       L16
;*      Branch Occurs to L16 
        call      _DP_IDC_SW_UPLOAD_Pro
                                        ; Call Occurs
        bu        L44
;*      Branch Occurs to L44 
L16:        
	.line	33
;----------------------------------------------------------------------
; 326 | else if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.
;     | nIDDSelt || nLedDataLoad.nTNDSelt) {}//Ç¥½Ã±â ´Ù¿î·Îµå ±â´É ÀÏ¶§´Â ´Ù¸¥
;     |  ±â´ÉÀº Á¤Áö.                                                          
; 327 | else                                                                   
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L44
;*      Branch Occurs to L44 
        ldi       @_nLedDataLoad+1,r0
        bne       L44
;*      Branch Occurs to L44 
        ldi       @_nLedDataLoad+2,r0
        bne       L44
;*      Branch Occurs to L44 
        ldi       @_nLedDataLoad+3,r0
        beq       L22
;*      Branch Occurs to L22 
        bu        L44
;*      Branch Occurs to L44 
L22:        
	.line	37
;----------------------------------------------------------------------
; 330 | if((WORD_L(nTmsRxData.nDataDefin) == 0x31) || (WORD_L(nTmsRxData.nDataD
;     | efin) == 0x33)) // ¸¶¼­Æ® ÀÎ °÷¿¡¼­¸¸ Àü¼Û ÇÑ´Ù.                       
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      49,r0
        beq       L24
;*      Branch Occurs to L24 
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      51,r0
        bne       L26
;*      Branch Occurs to L26 
L24:        
	.line	39
;----------------------------------------------------------------------
; 332 | if(WORD_L(SCC2_INIT_A.TxOK) && WORD_L(SCC2_INIT_B.TxOK)) //Åë½Å Àü¼ÛÀÌ
;     | ³¡³ª¸é ´Ù½Ã Àü¼ÛÀ» ÇÑ´Ù.                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SCC2_INIT_A+2,r0
        beq       L26
;*      Branch Occurs to L26 
        tstb      @_SCC2_INIT_B+2,r0
	.line	41
;----------------------------------------------------------------------
; 334 | DP_SEND_PRO();       //Åë½Å TX ºÎºÐÀ» ÀÌ°÷¿¡¼­ Ã³¸® ÇÑ´Ù.              
;----------------------------------------------------------------------
        callne    _DP_SEND_PRO
                                        ; Call Occurs
L26:        
	.line	46
;----------------------------------------------------------------------
; 339 | if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) || WORD_L(nTr_St_Info.nSimul
;     | ationFlag) || WORD_L(nTr_St_Info.nStopPatNum) ||                       
; 340 |   (WORD_L(nTr_St_Info.nTcmsRxNGCnt) > 5)   || WORD_L(nTr_St_Info.nSelf_
;     | Test_Flag) ) //ÀÚµ¿ ¿îÇà¿¡ µû¸¥ Ç¥Ãâ ¹®Àå °Ë»ö.                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        bne       L31
;*      Branch Occurs to L31 
        tstb      @_nTr_St_Info+67,r0
        bne       L31
;*      Branch Occurs to L31 
        tstb      @_nTr_St_Info+0,r0
        bne       L31
;*      Branch Occurs to L31 
        and       @_nTr_St_Info+76,r0
        cmpi      5,r0
        bhi       L31
;*      Branch Occurs to L31 
        ldiu      255,r0
        tstb      @_nTr_St_Info+368,r0
        beq       L44
;*      Branch Occurs to L44 
L31:        
	.line	50
;----------------------------------------------------------------------
; 343 | if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) || WORD_L(nTr_St_Info.nAutoM
;     | anuFlag)) //&& WORD_L(nTr_St_Info.nRxCode_NoNe_Flag)){ //ÀÚµ¿ ¿îÇà ÀÏ¶§
;     | ¹® ÃâÀÔ¹® Á¤º¸¸¦ ÂüÁ¶ ÇÑ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        bne       L33
;*      Branch Occurs to L33 
        tstb      @_nTr_St_Info+374,r0
        beq       L34
;*      Branch Occurs to L34 
L33:        
	.line	52
;----------------------------------------------------------------------
; 345 | d_Auto_Cnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Auto_Cnt+0,r0     ; Unsigned
        sti       r0,@_d_Auto_Cnt+0
	.line	54
;----------------------------------------------------------------------
; 347 | DP_Door_Sequence();                                                    
;----------------------------------------------------------------------
        call      _DP_Door_Sequence
                                        ; Call Occurs
L34:        
	.line	57
;----------------------------------------------------------------------
; 350 | if(WORD_L(SCC2_INIT_A.TxOK) && WORD_L(SCC2_INIT_B.TxOK)) //Åë½Å Àü¼ÛÀÌ
;     | ³¡³ª¸é ´Ù½Ã Àü¼ÛÀ» ÇÑ´Ù.                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SCC2_INIT_A+2,r0
        beq       L44
;*      Branch Occurs to L44 
        tstb      @_SCC2_INIT_B+2,r0
        beq       L44
;*      Branch Occurs to L44 
	.line	59
;----------------------------------------------------------------------
; 352 | if(nTr_St_Info.nTcmsAutoDriverFlag || (nTr_St_Info.nSimulationFlag && n
;     | Tr_St_Info.nSpeed) || WORD_L(nTr_St_Info.nAutoManuFlag)){              
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+370,r0
        bne       L40
;*      Branch Occurs to L40 
        ldi       @_nTr_St_Info+67,r0
        beq       L39
;*      Branch Occurs to L39 
        ldi       @_nTr_St_Info+71,r0
        bne       L40
;*      Branch Occurs to L40 
L39:        
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beq       L44
;*      Branch Occurs to L44 
L40:        
	.line	61
;----------------------------------------------------------------------
; 354 | if(!WORD_L(nTr_St_Info.nSelf_Test_Flag)){                              
; 356 |         //if(WORD_L(nTr_St_Info.nSendIddTxFlag))                       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+368,r0
        bne       L44
;*      Branch Occurs to L44 
	.line	64
;----------------------------------------------------------------------
; 357 | if(!WORD_L(nSccSendFlag.nIM_Text.nTxFlag) && !WORD_L(nSccSendFlag.nPR_T
;     | ext.nTxFlag))                                                          
;----------------------------------------------------------------------
        tstb      @_nSccSendFlag+7,r0
        bne       L44
;*      Branch Occurs to L44 
        tstb      @_nSccSendFlag+9,r0
        bne       L44
;*      Branch Occurs to L44 
	.line	67
;----------------------------------------------------------------------
; 360 | d_Auto_TxCnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Auto_TxCnt+0,r0   ; Unsigned
        sti       r0,@_d_Auto_TxCnt+0
	.line	68
;----------------------------------------------------------------------
; 361 | DP_Send_IDD_Check(); //Â÷³» Àü¼Û ¹®ÀåÀÌ ÀÖ´ÂÁö Ã¼Å©ÇÑ´Ù                
;----------------------------------------------------------------------
        call      _DP_Send_IDD_Check
                                        ; Call Occurs
L44:        
	.line	77
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	370,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_sandisk_Count+0,32
	.field  	0,32		; _d_sandisk_Count @ 0

	.sect	".text"

	.global	_d_sandisk_Count
	.bss	_d_sandisk_Count,1
	.sym	_d_sandisk_Count,_d_sandisk_Count,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Dest_All_Cnt+0,32
	.field  	0,32		; _d_Dest_All_Cnt @ 0

	.sect	".text"

	.global	_d_Dest_All_Cnt
	.bss	_d_Dest_All_Cnt,1
	.sym	_d_Dest_All_Cnt,_d_Dest_All_Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_SanDisk_Check
	.sym	_DP_SanDisk_Check,_DP_SanDisk_Check,32,2,0
	.func	377
;******************************************************************************
;* FUNCTION NAME: _DP_SanDisk_Check                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp,st                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_SanDisk_Check:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 377 | void DP_SanDisk_Check()                                                
; 379 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 381 | if(~FDD_STATUS_RD&0x03)                                         // San
;     | Disk ÀÔ·Â È®ÀÎ                                                         
; 383 |         //SanDisk_Vari.nDiskInputCheckFlag =  ~FDD_STATUS_RD&0x03;     
;----------------------------------------------------------------------
        ldiu      @CL20,ar0
        not       *ar0,r0
        tstb      3,r0
        beqd      L52
	nop
        ldieq     @CL2,r1
        ldieq     80,r0
;*      Branch Occurs to L52 
	.line	9
;----------------------------------------------------------------------
; 385 | if(Sandisk_Init())                                                     
;----------------------------------------------------------------------
        call      _Sandisk_Init
                                        ; Call Occurs
        cmpi      0,r0
        beq       L53
;*      Branch Occurs to L53 
	.line	13
;----------------------------------------------------------------------
; 389 | if(Seek_File() && glTotalClusterCnt)    // Match File È®ÀÎ             
;----------------------------------------------------------------------
        call      _Seek_File
                                        ; Call Occurs
        cmpi      0,r0
        beq       L53
;*      Branch Occurs to L53 
        ldi       @_glTotalClusterCnt+0,r0
        beq       L53
;*      Branch Occurs to L53 
	.line	15
;----------------------------------------------------------------------
; 391 | d_sandisk_Count++;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_sandisk_Count+0,r0 ; Unsigned
        sti       r0,@_d_sandisk_Count+0
	.line	16
;----------------------------------------------------------------------
; 392 | gpCARDOK;                                                              
; 393 | //Nvsram_Load();                                                       
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      52,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 394 | Nvsram_EditerData();                                                   
;----------------------------------------------------------------------
        call      _Nvsram_EditerData
                                        ; Call Occurs
	.line	20
;----------------------------------------------------------------------
; 396 | d_Dest_All_Cnt = SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX
;     | _DEST_CODE,nNvsram_Variable.nDestCodeList);                            
;----------------------------------------------------------------------
        ldiu      @CL2,r1
        ldiu      80,r0
        push      r1
        push      r0
        call      _NVSRAM_Find_RootAllNo
                                        ; Call Occurs
        sti       r0,@_SanDisk_Vari+0
        sti       r0,@_d_Dest_All_Cnt+0
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 398 | NVSRAM_Rd_StationName_Total();                                         
;----------------------------------------------------------------------
        call      _NVSRAM_Rd_StationName_Total
                                        ; Call Occurs
	.line	24
;----------------------------------------------------------------------
; 400 | SanDisk_Vari.nDiskInputCheckFlag =  ~FDD_STATUS_RD&0x03;               
; 405 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL20,ar0
        ldiu      3,r0
        andn3     *ar0,r0,r0
        sti       r0,@_SanDisk_Vari+2
        bu        L53
;*      Branch Occurs to L53 
	.line	31
;----------------------------------------------------------------------
; 407 | SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX_DEST_CODE,nNvsra
;     | m_Variable.nDestCodeList);                                             
;----------------------------------------------------------------------
L52:        
        push      r1
        push      r0
        call      _NVSRAM_Find_RootAllNo
                                        ; Call Occurs
        sti       r0,@_SanDisk_Vari+0
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 408 | NVSRAM_Rd_StationName_Total();                                         
;----------------------------------------------------------------------
        call      _NVSRAM_Rd_StationName_Total
                                        ; Call Occurs
	.line	34
;----------------------------------------------------------------------
; 410 | gpCARDERR;                                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      52,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	36
;----------------------------------------------------------------------
; 412 | glSectorStartOffset = 0;                                               
; 414 | //for(i=0;i<NVSRAM_END_OFFST;i++) NVSRAM(i) = 0x00;// Memory Clear     
; 415 | //d_sandisk_Count = 2;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_glSectorStartOffset+0
L53:        
	.line	42
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	418,000000000h,1


	.sect	 ".text"

	.global	_DP_SanDisk_InputTimeCheck
	.sym	_DP_SanDisk_InputTimeCheck,_DP_SanDisk_InputTimeCheck,32,2,0
	.func	423
;******************************************************************************
;* FUNCTION NAME: _DP_SanDisk_InputTimeCheck                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,st                                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_SanDisk_InputTimeCheck:
	.sym	_sDiskChek,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 423 | void DP_SanDisk_InputTimeCheck()                                       
; 425 | UCHAR sDiskChek;                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	4
;----------------------------------------------------------------------
; 426 | sDiskChek =  ~FDD_STATUS_RD&0x03;                                      
;----------------------------------------------------------------------
        ldiu      @CL20,ar0
        ldiu      3,r0
        andn3     *ar0,r0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 427 | if(WORD_L(SanDisk_Vari.nDiskInputCheckFlag) != WORD_L(sDiskChek))      
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_SanDisk_Vari+2,r1
        ldiu      255,r0
        and       *+fp(1),r0
        cmpi3     r0,r1
        beq       L57
;*      Branch Occurs to L57 
	.line	7
;----------------------------------------------------------------------
; 429 | SanDisk_Vari.nCheakSt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SanDisk_Vari+1
L57:        
	.line	9
;----------------------------------------------------------------------
; 431 | SanDisk_Vari.nDiskInputCheckFlag = sDiskChek;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_SanDisk_Vari+2
	.line	10
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      3,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	432,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_MaxStCnt+0,32
	.field  	0,32		; _d_MaxStCnt @ 0

	.sect	".text"

	.global	_d_MaxStCnt
	.bss	_d_MaxStCnt,1
	.sym	_d_MaxStCnt,_d_MaxStCnt,12,2,32
	.sect	 ".text"

	.global	_DP_TranNum_Chech
	.sym	_DP_TranNum_Chech,_DP_TranNum_Chech,32,2,0
	.func	437
;******************************************************************************
;* FUNCTION NAME: _DP_TranNum_Chech                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_TranNum_Chech:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 437 | void DP_TranNum_Chech()                                                
; 439 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 441 | nTr_St_Info.nStopPatNum = NVSRAM_Comp_TrainNo(nSelect_Button.nGPTranNum
;     | Input.nNum);                                                           
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _NVSRAM_Comp_TrainNo
                                        ; Call Occurs
        sti       r0,@_nTr_St_Info+0
        subi      1,sp
	.line	8
;----------------------------------------------------------------------
; 444 | if(!WORD_L(nTr_St_Info.nStopPatNum))                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        bne       L62
;*      Branch Occurs to L62 
	.line	10
;----------------------------------------------------------------------
; 446 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r0
        ldiu      @CL8,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 447 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r0
        ldiu      @CL11,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	12
;----------------------------------------------------------------------
; 448 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        push      r1
        ldiu      32,r0
        push      r0
        ldiu      @CL14,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 450 | gpSETERR;                                                              
; 452 | else                                                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        ldiu      82,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L64
;*      Branch Occurs to L64 
L62:        
	.line	18
;----------------------------------------------------------------------
; 454 | d_MaxStCnt = nTr_St_Info.nStation_MaxCnt = NVSRAM_Get_StopP(nTr_St_Info
;     | .nStation_List);                                                       
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        push      r0
        call      _NVSRAM_Get_StopP
                                        ; Call Occurs
        sti       r0,@_nTr_St_Info+1
        sti       r0,@_d_MaxStCnt+0
        subi      1,sp
	.line	20
;----------------------------------------------------------------------
; 456 | NVSRAM_Rd_StationName(nTr_St_Info.nStation_MaxCnt,nTr_St_Info.nStation_
;     | List);                                                                 
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        push      r0
        ldiu      @_nTr_St_Info+1,r0
        push      r0
        call      _NVSRAM_Rd_StationName
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 458 | nTr_St_Info.nSimulationRun = FALSE;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+69
	.line	24
;----------------------------------------------------------------------
; 460 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	25
;----------------------------------------------------------------------
; 461 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+70
	.line	28
;----------------------------------------------------------------------
; 464 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+71
	.line	30
;----------------------------------------------------------------------
; 466 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	32
;----------------------------------------------------------------------
; 468 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	36
;----------------------------------------------------------------------
; 472 | nSccSendFlag.nClean = 3; //¿­¹ø º¯°æ½Ã Å¬¸®¾î ´Ù½Ã ½ÃÀÛÇÏ´Â ±âºÐ.      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	37
;----------------------------------------------------------------------
; 473 | nTr_St_Info.nClean_Flag = FALSE; //¹«Ç¥½Ã flage°¡ FALSE·Î µÈ´Ù.        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+369
	.line	39
;----------------------------------------------------------------------
; 475 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
	.line	40
;----------------------------------------------------------------------
; 476 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	42
;----------------------------------------------------------------------
; 478 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+574
	.line	43
;----------------------------------------------------------------------
; 479 | nIndex_Flag.nDistanNew = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+575
	.line	44
;----------------------------------------------------------------------
; 480 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	46
;----------------------------------------------------------------------
; 482 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+573
	.line	47
;----------------------------------------------------------------------
; 483 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	48
;----------------------------------------------------------------------
; 484 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	49
;----------------------------------------------------------------------
; 485 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
	.line	51
;----------------------------------------------------------------------
; 487 | nTr_St_Info.nDoOp_StCh = TRUE;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+371
	.line	53
;----------------------------------------------------------------------
; 489 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	62
;----------------------------------------------------------------------
; 498 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      82,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	64
;----------------------------------------------------------------------
; 500 | nTr_St_Info.nSimulationCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+68
	.line	65
;----------------------------------------------------------------------
; 501 | nDi_Check.nDoor.nFlagCnt = 0;   //¿­Â÷°¡ Door ¸¦ open ÇÑ »óÅÂ¿¡¼­ ¿­Â÷
;     | ¹øÈ£¸¦ ¼³Á¤ÇÏ¸é ´Ù½Ã ÇÑ¹ø ¿îÇà ½ºÄÉÁÙÀ» ÀÎ½ÄÇÑ´Ù.                      
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+18
	.line	66
;----------------------------------------------------------------------
; 502 | nSccSendFlag.nDeSTCodeSet = 2;                                         
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+0
	.line	67
;----------------------------------------------------------------------
; 503 | nSccSendFlag.nTranNum = 2;                                             
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+1
	.line	69
;----------------------------------------------------------------------
; 505 | if(!(nSelf_Test.nSELF_ICR_SELECT)) { nSccSendFlag.nCarNum = 1;}        
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bne       L64
;*      Branch Occurs to L64 
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+5
L64:        
	.line	73
;----------------------------------------------------------------------
; 509 | gp_WritingStr(0x96,6,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
;----------------------------------------------------------------------
        ldiu      @CL14,r2
        ldiu      6,r1
        ldiu      150,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	74
;----------------------------------------------------------------------
; 510 | gp_WritingStr(0x82,6,nTr_St_Info.nGpStName.nNow);       // ÇöÀç¿ª Ç¥Ãâ 
;----------------------------------------------------------------------
        ldiu      @CL8,r2
        ldiu      6,r0
        ldiu      130,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	75
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	511,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Now+0,32
	.field  	0,32		; _d_Now @ 0

	.sect	".text"

	.global	_d_Now
	.bss	_d_Now,1
	.sym	_d_Now,_d_Now,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Next+0,32
	.field  	0,32		; _d_Next @ 0

	.sect	".text"

	.global	_d_Next
	.bss	_d_Next,1
	.sym	_d_Next,_d_Next,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Dest+0,32
	.field  	0,32		; _d_Dest @ 0

	.sect	".text"

	.global	_d_Dest
	.bss	_d_Dest,1
	.sym	_d_Dest,_d_Dest,12,2,32
	.sect	 ".text"

	.global	_DP_STNAME_INFO_UP
	.sym	_DP_STNAME_INFO_UP,_DP_STNAME_INFO_UP,32,2,0
	.func	519
;******************************************************************************
;* FUNCTION NAME: _DP_STNAME_INFO_UP                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st,rs,re,rc                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_STNAME_INFO_UP:
	.line	1
;----------------------------------------------------------------------
; 519 | void DP_STNAME_INFO_UP()                                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 522 | if(!WORD_L(nTr_St_Info.nStation_StartPointCnt))                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+2,r0
        bne       L69
;*      Branch Occurs to L69 
	.line	6
;----------------------------------------------------------------------
; 524 | nTr_St_Info.nStart.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info
;     | .nStation_PointCnt]);                                                  
;----------------------------------------------------------------------
        ldiu      @CL21,ar0
        ldiu      @_nTr_St_Info+3,ir0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+77
	.line	7
;----------------------------------------------------------------------
; 525 | memcpy(nTr_St_Info.nStart.nEnNameBuf, StationName[nTr_St_Info.nStation_
;     | PointCnt].EngName,15);                                                 
;----------------------------------------------------------------------
        ldiu      @CL4,ar1
        ldiu      ir0,ar0
        mpyi      46,ar0
        addi      @CL22,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#3)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	8
;----------------------------------------------------------------------
; 526 | memcpy(nTr_St_Info.nStart.nIRNameBuf, StationName[nTr_St_Info.nStation_
;     | PointCnt].IranName,30);                                                
;----------------------------------------------------------------------
        ldiu      @CL5,ar0
        ldiu      @_nTr_St_Info+3,ar1
        mpyi      46,ar1
        addi      @CL23,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#6)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L69:        
	.line	11
;----------------------------------------------------------------------
; 529 | d_Now = nTr_St_Info.nNow.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_S
;     | t_Info.nStation_PointCnt]);                                            
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,ir0
        ldiu      @CL21,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+169
        sti       r0,@_d_Now+0
	.line	12
;----------------------------------------------------------------------
; 530 | memcpy(nTr_St_Info.nNow.nEnNameBuf, StationName[nTr_St_Info.nStation_Po
;     | intCnt].EngName,15);                                                   
;----------------------------------------------------------------------
        ldiu      @CL6,ar1
        ldiu      ir0,ar0
        mpyi      46,ar0
        addi      @CL22,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#9)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	13
;----------------------------------------------------------------------
; 531 | memcpy(nTr_St_Info.nNow.nIRNameBuf, StationName[nTr_St_Info.nStation_Po
;     | intCnt].IranName,30);                                                  
;----------------------------------------------------------------------
        ldiu      @CL7,ar0
        ldiu      @_nTr_St_Info+3,ar1
        mpyi      46,ar1
        addi      @CL23,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#12)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	15
;----------------------------------------------------------------------
; 533 | if(WORD_L(nTr_St_Info.nStation_PointCnt) != (WORD_L(nTr_St_Info.nStatio
;     | n_MaxCnt)-1)) //¸¶Áö¸· ¿ªÀº ¾Æ´Ï¸é Áõ°¡ ÇÑ´Ù.                          
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        and       @_nTr_St_Info+3,r1
        cmpi3     r0,r1
        beq       L71
;*      Branch Occurs to L71 
	.line	17
;----------------------------------------------------------------------
; 535 | d_Next = nTr_St_Info.nNext.nCode = WORD_L(nTr_St_Info.nStation_List[nTr
;     | _St_Info.nStation_PointCnt+1]);                                        
;----------------------------------------------------------------------
        ldiu      1,ir0
        ldiu      @CL21,ar0
        addi      @_nTr_St_Info+3,ir0   ; Unsigned
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+215
        sti       r0,@_d_Next+0
	.line	18
;----------------------------------------------------------------------
; 536 | memcpy(nTr_St_Info.nNext.nEnNameBuf,StationName[nTr_St_Info.nStation_Po
;     | intCnt+1].EngName,15);                                                 
;----------------------------------------------------------------------
        ldiu      @CL9,ar1
        ldiu      1,ar0
        addi      @_nTr_St_Info+3,ar0   ; Unsigned
        mpyi      46,ar0
        addi      @CL22,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#15)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	19
;----------------------------------------------------------------------
; 537 | memcpy(nTr_St_Info.nNext.nIRNameBuf,StationName[nTr_St_Info.nStation_Po
;     | intCnt+1].IranName,30);                                                
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      1,ar1
        addi      @_nTr_St_Info+3,ar1   ; Unsigned
        mpyi      46,ar1
        addi      @CL23,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#18)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L71:        
	.line	22
;----------------------------------------------------------------------
; 540 | d_Dest = nTr_St_Info.nDest.nCode = WORD_L(nTr_St_Info.nStation_List[nTr
;     | _St_Info.nStation_MaxCnt-1]);                                          
;----------------------------------------------------------------------
        ldiu      1,ir0
        ldiu      @CL21,ar0
        subri     @_nTr_St_Info+1,ir0   ; Unsigned
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+261
        sti       r0,@_d_Dest+0
	.line	23
;----------------------------------------------------------------------
; 541 | nTr_St_Info.nOnlyDestSendFlag = nTr_St_Info.nDest.nCode;//2011_11_16 nO
;     | nlyDestSendFlag                                                        
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+367
	.line	24
;----------------------------------------------------------------------
; 542 | memcpy(nTr_St_Info.nDest.nEnNameBuf,StationName[nTr_St_Info.nStation_Ma
;     | xCnt-1].EngName,15);                                                   
;----------------------------------------------------------------------
        ldiu      @CL12,ar1
        ldiu      1,ar0
        subri     @_nTr_St_Info+1,ar0   ; Unsigned
        mpyi      46,ar0
        addi      @CL22,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#21)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	25
;----------------------------------------------------------------------
; 543 | memcpy(nTr_St_Info.nDest.nIRNameBuf,StationName[nTr_St_Info.nStation_Ma
;     | xCnt-1].IranName,30);                                                  
;----------------------------------------------------------------------
        ldiu      1,ar0
        subri     @_nTr_St_Info+1,ar0   ; Unsigned
        mpyi      46,ar0
        addi      @CL23,ar0             ; Unsigned
        ldiu      @CL13,ar1
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#24)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	27
;----------------------------------------------------------------------
; 545 | DP_GpDataChange(nTr_St_Info.nGpStName.nNow,nTr_St_Info.nNow.nEnNameBuf)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @CL8,r1
        ldiu      @CL6,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	28
;----------------------------------------------------------------------
; 546 | DP_GpDataChange(nTr_St_Info.nGpStName.nNext,nTr_St_Info.nNext.nEnNameBu
;     | f);                                                                    
;----------------------------------------------------------------------
        ldiu      @CL9,r0
        push      r0
        ldiu      @CL11,r1
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	29
;----------------------------------------------------------------------
; 547 | DP_GpDataChange(nTr_St_Info.nGpStName.nDest,nTr_St_Info.nDest.nEnNameBu
;     | f);                                                                    
;----------------------------------------------------------------------
        ldiu      @CL12,r0
        push      r0
        ldiu      @CL14,r1
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	31
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	549,000000000h,0


	.sect	 ".text"

	.global	_DP_GpDataChange
	.sym	_DP_GpDataChange,_DP_GpDataChange,32,2,0
	.func	554
;******************************************************************************
;* FUNCTION NAME: _DP_GpDataChange                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_DP_GpDataChange:
	.sym	_pDData,-2,28,9,32
	.sym	_pSData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 554 | void DP_GpDataChange(UCHAR *pDData,UCHAR *pSData)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 556 | int i,j=0;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	4
;----------------------------------------------------------------------
; 557 | for(i=0;i<15;i++)                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      15,r0
        bge       L78
;*      Branch Occurs to L78 
L75:        
	.line	6
;----------------------------------------------------------------------
; 559 | if(WORD_L(pSData[i])!=0x20){ pDData[j++]=pSData[i];     }              
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L77
;*      Branch Occurs to L77 
        ldiu      ir0,ir1
        ldiu      1,r0
        ldiu      *+fp(2),ar0
        ldiu      *+fp(1),ar1
        ldiu      *-fp(2),ir0
        addi      ar0,r0
        ldiu      *+ar1(ir1),r1
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir0)
L77:        
	.line	4
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        blt       L75
;*      Branch Occurs to L75 
L78:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      4,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	561,000000000h,2


	.sect	 ".text"

	.global	_DP_ONTD
	.sym	_DP_ONTD,_DP_ONTD,32,2,0
	.func	566
;******************************************************************************
;* FUNCTION NAME: _DP_ONTD                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 1 Auto + 0 SOE = 7 words          *
;******************************************************************************
_DP_ONTD:
	.sym	_IN,-2,12,9,32
	.sym	_OUT,-3,28,9,32
	.sym	_MS,-4,12,9,32
	.sym	_CLK,-5,28,9,32
	.sym	_CE,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 566 | void DP_ONTD(UCHAR IN,UCHAR *OUT,UCHAR MS,UCHAR *CLK )                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 568 | UCHAR CE;                                                              
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 570 | if(!IN){*CLK = 0; *OUT = 0;}                                           
;----------------------------------------------------------------------
        ldi       *-fp(2),r0
        bne       L82
;*      Branch Occurs to L82 
        ldiu      *-fp(5),ar0
        ldiu      0,r0
        sti       r0,*ar0
        ldiu      *-fp(3),ar0
        sti       r0,*ar0
L82:        
	.line	6
;----------------------------------------------------------------------
; 571 | CE = NOT(*OUT) && IN;                                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        not       *ar0,r1
        tstb      1,r1
        ldiu      0,r0
        beq       L84
;*      Branch Occurs to L84 
        ldi       *-fp(2),r1
        ldine     1,r0
L84:        
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 572 | if(CE)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L88
;*      Branch Occurs to L88 
	.line	9
;----------------------------------------------------------------------
; 574 | if(MS == *CLK) {*OUT = 1;}                                             
;----------------------------------------------------------------------
        ldiu      *-fp(5),ar0
        ldiu      *-fp(4),r0
        cmpi3     *ar0,r0
        bne       L87
;*      Branch Occurs to L87 
        ldiu      *-fp(3),ar0
        ldiu      1,r0
        sti       r0,*ar0
        bu        L88
;*      Branch Occurs to L88 
L87:        
	.line	10
;----------------------------------------------------------------------
; 575 | else *CLK = *CLK+1;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(5),ar1
        ldiu      1,r0
        ldiu      ar1,ar0
        addi3     r0,*ar1,r0            ; Unsigned
        sti       r0,*ar0
L88:        
	.line	12
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      3,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	577,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimuTime+0,32
	.field  	0,32		; _d_SimuTime @ 0

	.sect	".text"

	.global	_d_SimuTime
	.bss	_d_SimuTime,1
	.sym	_d_SimuTime,_d_SimuTime,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimuSpeed+0,32
	.field  	0,32		; _d_SimuSpeed @ 0

	.sect	".text"

	.global	_d_SimuSpeed
	.bss	_d_SimuSpeed,1
	.sym	_d_SimuSpeed,_d_SimuSpeed,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimuDist+0,32
	.field  	0,32		; _d_SimuDist @ 0

	.sect	".text"

	.global	_d_SimuDist
	.bss	_d_SimuDist,1
	.sym	_d_SimuDist,_d_SimuDist,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimuDistRe+0,32
	.field  	0,32		; _d_SimuDistRe @ 0

	.sect	".text"

	.global	_d_SimuDistRe
	.bss	_d_SimuDistRe,1
	.sym	_d_SimuDistRe,_d_SimuDistRe,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_jangaaa+0,32
	.field  	0,32		; _d_jangaaa @ 0

	.sect	".text"

	.global	_d_jangaaa
	.bss	_d_jangaaa,1
	.sym	_d_jangaaa,_d_jangaaa,12,2,32
	.sect	 ".text"

	.global	_DP_SIMULATION
	.sym	_DP_SIMULATION,_DP_SIMULATION,32,2,0
	.func	589
;******************************************************************************
;* FUNCTION NAME: _DP_SIMULATION                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,fp,sp,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 30 Auto + 0 SOE = 32 words        *
;******************************************************************************
_DP_SIMULATION:
	.sym	_sIm_Pr_GpSendData,1,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 589 | void DP_SIMULATION()                                                   
; 591 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	5
;----------------------------------------------------------------------
; 593 | memset(sIm_Pr_GpSendData,0x20,30);                                     
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	7
;----------------------------------------------------------------------
; 595 | if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag && nTr_St_I
;     | nfo.nStopPatNum && nTr_St_Info.nSpeed )                                
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L103
;*      Branch Occurs to L103 
        ldi       @_nTr_St_Info+67,r0
        beq       L103
;*      Branch Occurs to L103 
        ldi       @_nTr_St_Info+0,r0
        beq       L103
;*      Branch Occurs to L103 
        ldi       @_nTr_St_Info+71,r0
        beq       L103
;*      Branch Occurs to L103 
	.line	9
;----------------------------------------------------------------------
; 597 | nTr_St_Info.nSimulationRun = TRUE;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+69
	.line	11
;----------------------------------------------------------------------
; 599 | nTr_St_Info.nDoorOPenCnt++;                                            
;----------------------------------------------------------------------
        addi      @_nTr_St_Info+73,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+73
	.line	12
;----------------------------------------------------------------------
; 600 | if(nTr_St_Info.nDoor && (nTr_St_Info.nDoorOPenCnt == 1)) //¹®ÀÌ ¿­¸®°í
;     | ¿ì¼±                                                                   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        beq       L97
;*      Branch Occurs to L97 
        ldiu      @_nTr_St_Info+73,r0
        cmpi      1,r0
        bned      L97
        ldieq     fp,r0
        ldieq     15,r2
        ldieq     300,r1
;*      Branch Occurs to L97 
	.line	14
;----------------------------------------------------------------------
; 602 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
;----------------------------------------------------------------------
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 604 | nTr_St_Info.nSimulationCnt++;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+68,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+68
	.line	18
;----------------------------------------------------------------------
; 606 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+74
	.line	20
;----------------------------------------------------------------------
; 608 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+574
	.line	21
;----------------------------------------------------------------------
; 609 | nIndex_Flag.nDistanNew = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+575
	.line	22
;----------------------------------------------------------------------
; 610 | nIndex_Flag.nBetweenFlag = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+576
	.line	24
;----------------------------------------------------------------------
; 612 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+573
	.line	25
;----------------------------------------------------------------------
; 613 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	26
;----------------------------------------------------------------------
; 614 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	27
;----------------------------------------------------------------------
; 615 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
	.line	30
;----------------------------------------------------------------------
; 618 | DP_Door_OPEN();                                                        
;----------------------------------------------------------------------
        call      _DP_Door_OPEN
                                        ; Call Occurs
	.line	32
;----------------------------------------------------------------------
; 620 | d_jangaaa++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_jangaaa+0,r0      ; Unsigned
        sti       r0,@_d_jangaaa+0
	.line	34
;----------------------------------------------------------------------
; 622 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	35
;----------------------------------------------------------------------
; 623 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
        bu        L104
;*      Branch Occurs to L104 
L97:        
	.line	38
;----------------------------------------------------------------------
; 626 | else if(nTr_St_Info.nDoor && !(nTr_St_Info.nDoorOPenCnt%3)) // ¿ÀÇÂ(10Ã
;     | Ê µ¿¾È ¿ÀÇÂ)                                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        beqd      L100
	nop
        ldine     @_nTr_St_Info+73,r0
        ldine     3,r1
;*      Branch Occurs to L100 
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L100
;*      Branch Occurs to L100 
	.line	40
;----------------------------------------------------------------------
; 628 | nTr_St_Info.nDoor=0;                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+72
	.line	43
;----------------------------------------------------------------------
; 631 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	44
;----------------------------------------------------------------------
; 632 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
        bu        L104
;*      Branch Occurs to L104 
L100:        
	.line	47
;----------------------------------------------------------------------
; 635 | else if(!nTr_St_Info.nDoor) //close                                    
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        bne       L104
;*      Branch Occurs to L104 
	.line	49
;----------------------------------------------------------------------
; 637 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	50
;----------------------------------------------------------------------
; 638 | nTr_St_Info.nDistance +=((nTr_St_Info.nSpeed)*(0.5));   //°Å¸® °ªÀ» ¿¬»
;     | ê ÇÑ´Ù.                                                                
;----------------------------------------------------------------------
        float     @_nTr_St_Info+74,f2
        ldflt     @CL24,f0
        ldfge     0.0000000000e+00,f0
        addf3     f2,f0,f2
        float     @_nTr_St_Info+71,f0
        ldflt     @CL24,f1
        ldfge     0.0000000000e+00,f1
        addf3     f0,f1,f0
        mpyf      @CL25,f0
        addf3     f2,f0,f1
        cmpf      @CL26,f1
        ldflt     0.0000000000e+00,f0
        ldfge     @CL24,f0
        subrf     f1,f0
        fix       f0,r0
        sti       r0,@_nTr_St_Info+74
	.line	52
;----------------------------------------------------------------------
; 640 | d_SimuDistRe = nIndex_Flag.nDistanRe;                                  
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+574,r0
        sti       r0,@_d_SimuDistRe+0
	.line	53
;----------------------------------------------------------------------
; 641 | d_SimuDist = nIndex_Flag.nDistanNew = nTr_St_Info.nDistance;    //¿¬»êµ
;     | È °Å¸® °ªÀ» Àû¿ëÇÑ´Ù.                                                  
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        sti       r0,@_nIndex_Flag+575
        sti       r0,@_d_SimuDist+0
	.line	54
;----------------------------------------------------------------------
; 642 | gpDISTANCE(nTr_St_Info.nDistance);                                     
;----------------------------------------------------------------------
        ldiu      103,r1
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	57
;----------------------------------------------------------------------
; 645 | DP_Door_CLOSE();                                                       
;----------------------------------------------------------------------
        call      _DP_Door_CLOSE
                                        ; Call Occurs
	.line	59
;----------------------------------------------------------------------
; 647 | if(nIndex_Flag.nBetweenFlag)    //bwteen ÀÌ¸é ÃâÀÔ¹®À» ¿ÀÇÂÇÑ´Ù.       
;----------------------------------------------------------------------
        ldi       @_nIndex_Flag+576,r0
        beq       L104
;*      Branch Occurs to L104 
	.line	61
;----------------------------------------------------------------------
; 649 | nTr_St_Info.nDoor = 1;                                                 
; 651 | //nTr_St_Info.nDistance += 2000;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	65
;----------------------------------------------------------------------
; 653 | gpDISTANCE(0);                                                         
; 658 | else                                                                   
;----------------------------------------------------------------------
        ldiu      103,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
        bu        L104
;*      Branch Occurs to L104 
L103:        
	.line	72
;----------------------------------------------------------------------
; 660 | nTr_St_Info.nSimulationRun = FALSE;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+69
	.line	74
;----------------------------------------------------------------------
; 662 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+71
	.line	75
;----------------------------------------------------------------------
; 663 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	77
;----------------------------------------------------------------------
; 665 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	79
;----------------------------------------------------------------------
; 667 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	81
;----------------------------------------------------------------------
; 669 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	82
;----------------------------------------------------------------------
; 670 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
L104:        
	.line	84
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	672,000000000h,30



	.sect	".cinit"
	.field  	1,32
	.field  	_d_SelfCnt+0,32
	.field  	0,32		; _d_SelfCnt @ 0

	.sect	".text"

	.global	_d_SelfCnt
	.bss	_d_SelfCnt,1
	.sym	_d_SelfCnt,_d_SelfCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_ICRCnt+0,32
	.field  	0,32		; _d_ICRCnt @ 0

	.sect	".text"

	.global	_d_ICRCnt
	.bss	_d_ICRCnt,1
	.sym	_d_ICRCnt,_d_ICRCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_ICR_Select+0,32
	.field  	0,32		; _d_ICR_Select @ 0

	.sect	".text"

	.global	_d_ICR_Select
	.bss	_d_ICR_Select,1
	.sym	_d_ICR_Select,_d_ICR_Select,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SelfTestCnt+0,32
	.field  	0,32		; _d_SelfTestCnt @ 0

	.sect	".text"

	.global	_d_SelfTestCnt
	.bss	_d_SelfTestCnt,1
	.sym	_d_SelfTestCnt,_d_SelfTestCnt,12,2,32
	.sect	 ".text"

	.global	_DP_SelfTest
	.sym	_DP_SelfTest,_DP_SelfTest,32,2,0
	.func	683
;******************************************************************************
;* FUNCTION NAME: _DP_SelfTest                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,ir0,sp,st,rs,re                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 91 Auto + 0 SOE = 96 words        *
;******************************************************************************
_DP_SelfTest:
	.sym	_pDataBuf,-2,28,9,32
	.sym	_pRxDataBuf,-3,28,9,32
	.sym	_sUnitCnt,-4,12,9,32
	.sym	_i,1,4,1,32
	.sym	_sSelf_Tx_Buf,2,60,1,960,,30
	.sym	_sSelf_RxData_Buf,32,60,1,1920,,60
	.line	1
;----------------------------------------------------------------------
; 683 | void DP_SelfTest(UCHAR *pDataBuf,UCHAR *pRxDataBuf,UCHAR sUnitCnt)     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      91,sp
	.line	2
;----------------------------------------------------------------------
; 685 | int i;                                                                 
; 686 | UCHAR sSelf_Tx_Buf[30];                                                
; 687 | UCHAR sSelf_RxData_Buf[60];                                            
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 689 | d_SelfTestCnt = sUnitCnt;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_d_SelfTestCnt+0
	.line	9
;----------------------------------------------------------------------
; 691 | memcpy(sSelf_RxData_Buf,pRxDataBuf,sUnitCnt);                          
;----------------------------------------------------------------------
        ldiu      r0,r1
        ldiu      fp,r0
        push      r1
        addi      32,r0
        ldiu      *-fp(3),r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 693 | for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<WORD_L(sUnitCnt);i++)        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+181,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        and       *-fp(4),r0
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bhs       L113
;*      Branch Occurs to L113 
L107:        
	.line	13
;----------------------------------------------------------------------
; 695 | if(!nSelf_Test.nSELF_All_Cnt)                                          
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+183,r0
        bne       L109
;*      Branch Occurs to L109 
	.line	15
;----------------------------------------------------------------------
; 697 | sSelf_RxData_Buf[i] = 1;                                               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      32,ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
L109:        
	.line	19
;----------------------------------------------------------------------
; 701 | if(WORD_L(sSelf_RxData_Buf[i]))                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      32,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        beq       L112
;*      Branch Occurs to L112 
	.line	21
;----------------------------------------------------------------------
; 703 | nSelf_Test.nSELF_TX_Cnt = i;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_nSelf_Test+181
	.line	22
;----------------------------------------------------------------------
; 704 | break;                                                                 
; 706 | else {                                                                 
;----------------------------------------------------------------------
        bu        L113
;*      Branch Occurs to L113 
L112:        
	.line	26
;----------------------------------------------------------------------
; 708 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(4),r0
        cmpi3     r0,r1
        blo       L107
;*      Branch Occurs to L107 
L113:        
	.line	30
;----------------------------------------------------------------------
; 712 | if(WORD_L(nSelf_Test.nSELF_TX_Cnt) >= WORD_L(sUnitCnt)) //1Æí¼º´ç ÀÚ±âÁ
;     | ø´ÜÀ» ½ÇÇàÇÏ´Â È½¼ö Ä«¿îÅÍ.                                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       *-fp(4),r0
        and       @_nSelf_Test+181,r1
        cmpi3     r0,r1
        blo       L116
;*      Branch Occurs to L116 
	.line	32
;----------------------------------------------------------------------
; 714 | nSelf_Test.nSELF_All_Cnt++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+183,r0   ; Unsigned
        sti       r0,@_nSelf_Test+183
	.line	33
;----------------------------------------------------------------------
; 715 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+181
	.line	34
;----------------------------------------------------------------------
; 716 | if(WORD_L(nSelf_Test.nSELF_All_Cnt) >= SELF_TEST_ALLCNT)               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+183,r0
        cmpi      10,r0
        blo       L123
;*      Branch Occurs to L123 
	.line	36
;----------------------------------------------------------------------
; 718 | nLedDataLoad.nSelfTestFlag = FALSE;                                    
; 721 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+7
        bu        L123
;*      Branch Occurs to L123 
L116:        
	.line	41
;----------------------------------------------------------------------
; 723 | d_SelfCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_SelfCnt+0,r0      ; Unsigned
        sti       r0,@_d_SelfCnt+0
	.line	42
;----------------------------------------------------------------------
; 724 | nSelf_Test.nSELF_RXDATA_Buf[nSelf_Test.nSELF_TX_Cnt] = 1; //ÀÚ±â Áø´Ü À
;     | åÄ¡ ¼ö½Å ¹öÆÛ¸¦ ºÒ·®À¸·Î ÃÊ±âÈ­ ÇÑ´Ù.(Áß°£¿¡ ¸ØÃçµµ ÀÌÀü »óÅÂ °ª ±â¾ï) 
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+181,ir0
        ldiu      @CL27,ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
	.line	43
;----------------------------------------------------------------------
; 725 | mSelfTest_NG_CntBuf[nSelf_Test.nSELF_TX_Cnt] +=1;//2011_02_17 3.2¹öÀü  
;----------------------------------------------------------------------
        ldiu      @CL19,ir0
        ldiu      @_nSelf_Test+181,ar0
        addi3     r0,*+ar0(ir0),r0      ; Unsigned
        sti       r0,*+ar0(ir0)
	.line	45
;----------------------------------------------------------------------
; 727 | SCC_TX_PROTOCOL_SELFTEST(sSelf_Tx_Buf,pDataBuf[nSelf_Test.nSELF_TX_Cnt]
;     | ,0x31,0x07,0,10);                                                      
;----------------------------------------------------------------------
        ldiu      10,r2
        ldiu      0,r3
        ldiu      7,r1
        ldiu      *-fp(2),ir0
        ldiu      @_nSelf_Test+181,ar0
        ldiu      49,rs
        ldiu      *+ar0(ir0),re
        push      r2
        push      r3
        push      r1
        ldiu      fp,r0
        push      rs
        push      re
        addi      2,r0
        push      r0
        call      _SCC_TX_PROTOCOL_SELFTEST
                                        ; Call Occurs
        subi      6,sp
	.line	48
;----------------------------------------------------------------------
; 730 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDS
;     | elt ) //´Ù¿î·Îµå ±â´ÉÁß Â÷³» »©°í´Â "B"Ã¤³Î·Î º¸³½´Ù.                  
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L119
;*      Branch Occurs to L119 
        ldi       @_nLedDataLoad+1,r0
        bne       L119
;*      Branch Occurs to L119 
        ldi       @_nLedDataLoad+3,r0
        beqd      L121
        ldieq     5,r3
        ldieq     fp,r0
        ldieq     0,r2
;*      Branch Occurs to L121 
L119:        
	.line	50
;----------------------------------------------------------------------
; 732 | Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 734 | else {                                                                 
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      fp,r0
        ldiu      1,r2
        ldiu      20,r3
        push      r1
        addi      2,r0
        push      r2
        push      r3
        push      r0
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L122
;*      Branch Occurs to L122 
	.line	53
;----------------------------------------------------------------------
; 735 | Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_A_CHANNEL,5);                    
;----------------------------------------------------------------------
L121:        
        ldiu      20,r1
        push      r3
        addi      2,r0
        push      r2
        push      r1
        push      r0
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
L122:        
	.line	57
;----------------------------------------------------------------------
; 739 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
L123:        
	.line	59
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      93,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	741,000000000h,91


	.sect	 ".text"

	.global	_DP_SelfTest_B
	.sym	_DP_SelfTest_B,_DP_SelfTest_B,32,2,0
	.func	744
;******************************************************************************
;* FUNCTION NAME: _DP_SelfTest_B                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,ir0,sp,st,rs,re                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 92 Auto + 0 SOE = 97 words        *
;******************************************************************************
_DP_SelfTest_B:
	.sym	_pDataBuf,-2,28,9,32
	.sym	_pRxDataBuf,-3,28,9,32
	.sym	_sUnitCnt,-4,12,9,32
	.sym	_i,1,4,1,32
	.sym	_sSelf_Tx_Buf,2,60,1,960,,30
	.sym	_sSelf_RxData_Buf,32,60,1,1920,,60
	.sym	_sCnt,92,12,1,32
	.line	1
;----------------------------------------------------------------------
; 744 | void DP_SelfTest_B(UCHAR *pDataBuf,UCHAR *pRxDataBuf,UCHAR sUnitCnt)   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      92,sp
	.line	2
;----------------------------------------------------------------------
; 746 | int i;                                                                 
; 747 | UCHAR sSelf_Tx_Buf[30];                                                
; 748 | UCHAR sSelf_RxData_Buf[60];                                            
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 749 | UCHAR sCnt = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(92)
	.line	7
;----------------------------------------------------------------------
; 750 | d_SelfTestCnt = sUnitCnt;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_d_SelfTestCnt+0
	.line	9
;----------------------------------------------------------------------
; 752 | memcpy(sSelf_RxData_Buf,pRxDataBuf,sUnitCnt);                          
;----------------------------------------------------------------------
        ldiu      r0,r1
        push      r1
        ldiu      fp,r0
        ldiu      *-fp(3),r1
        addi      32,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 754 | for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt_B);i<WORD_L(sUnitCnt);i++)      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+182,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        and       *-fp(4),r0
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bhs       L132
;*      Branch Occurs to L132 
L126:        
	.line	14
;----------------------------------------------------------------------
; 757 | if(!nSelf_Test.nSELF_All_Cnt_B)                                        
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+184,r0
        bne       L128
;*      Branch Occurs to L128 
	.line	16
;----------------------------------------------------------------------
; 759 | sSelf_RxData_Buf[i] = 1;                                               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      32,ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
L128:        
	.line	19
;----------------------------------------------------------------------
; 762 | if(WORD_L(sSelf_RxData_Buf[i]))                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      32,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        beq       L131
;*      Branch Occurs to L131 
	.line	21
;----------------------------------------------------------------------
; 764 | nSelf_Test.nSELF_TX_Cnt_B = i;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_nSelf_Test+182
	.line	22
;----------------------------------------------------------------------
; 765 | break;                                                                 
; 767 | else {                                                                 
;----------------------------------------------------------------------
        bu        L132
;*      Branch Occurs to L132 
L131:        
	.line	25
;----------------------------------------------------------------------
; 768 | nSelf_Test.nSELF_TX_Cnt_B++;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+182,r0   ; Unsigned
        sti       r0,@_nSelf_Test+182
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(4),r0
        cmpi3     r0,r1
        blo       L126
;*      Branch Occurs to L126 
L132:        
	.line	29
;----------------------------------------------------------------------
; 772 | if(WORD_L(nSelf_Test.nSELF_TX_Cnt_B) >= WORD_L(sUnitCnt))       //1Æí¼º
;     | ´ç ÀÚ±âÁø´ÜÀ» ½ÇÇàÇÏ´Â È½¼ö Ä«¿îÅÍ.                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       *-fp(4),r0
        and       @_nSelf_Test+182,r1
        cmpi3     r0,r1
        blo       L134
;*      Branch Occurs to L134 
	.line	31
;----------------------------------------------------------------------
; 774 | nSelf_Test.nSELF_All_Cnt_B++;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+184,r0   ; Unsigned
        sti       r0,@_nSelf_Test+184
	.line	32
;----------------------------------------------------------------------
; 775 | nSelf_Test.nSELF_TX_Cnt_B = 0;                                         
; 780 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+182
        bu        L138
;*      Branch Occurs to L138 
L134:        
	.line	39
;----------------------------------------------------------------------
; 782 | d_SelfCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_SelfCnt+0,r0      ; Unsigned
        sti       r0,@_d_SelfCnt+0
	.line	40
;----------------------------------------------------------------------
; 783 | if(nSelf_Test.nSELF_ICR_SELECT){                                       
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L136
;*      Branch Occurs to L136 
	.line	41
;----------------------------------------------------------------------
; 784 | sCnt = nSelf_Test.nSELF_TX_Cnt_B+DISPLAY_STANDARD_UNIT_A;              
;----------------------------------------------------------------------
        ldiu      24,r0
        addi      @_nSelf_Test+182,r0   ; Unsigned
        sti       r0,*+fp(92)
	.line	42
;----------------------------------------------------------------------
; 785 | nSelf_Test.nSELF_RXDATA_Buf[(sCnt)] = 1; //ÀÚ±â Áø´Ü ÀåÄ¡ ¼ö½Å ¹öÆÛ¸¦ º
;     | Ò·®À¸·Î ÃÊ±âÈ­ ÇÑ´Ù.(Áß°£¿¡ ¸ØÃçµµ ÀÌÀü »óÅÂ °ª ±â¾ï)                  
;----------------------------------------------------------------------
        ldiu      @CL27,ar0
        ldiu      *+fp(92),ir0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
	.line	43
;----------------------------------------------------------------------
; 786 | mSelfTest_NG_CntBuf[(sCnt)] +=1;//2011_02_17 3.2¹öÀü                   
; 788 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      @CL19,ir0
        ldiu      *+fp(92),ar0
        addi3     r0,*+ar0(ir0),r0      ; Unsigned
        sti       r0,*+ar0(ir0)
        bu        L137
;*      Branch Occurs to L137 
L136:        
	.line	46
;----------------------------------------------------------------------
; 789 | sCnt = nSelf_Test.nSELF_TX_Cnt_B+DISPLAY_UNIT_A;                       
;----------------------------------------------------------------------
        ldiu      12,r0
        addi      @_nSelf_Test+182,r0   ; Unsigned
        sti       r0,*+fp(92)
	.line	47
;----------------------------------------------------------------------
; 790 | nSelf_Test.nSELF_RXDATA_Buf[(sCnt)] = 1; //ÀÚ±â Áø´Ü ÀåÄ¡ ¼ö½Å ¹öÆÛ¸¦ º
;     | Ò·®À¸·Î ÃÊ±âÈ­ ÇÑ´Ù.(Áß°£¿¡ ¸ØÃçµµ ÀÌÀü »óÅÂ °ª ±â¾ï)                  
;----------------------------------------------------------------------
        ldiu      @CL27,ar0
        ldiu      *+fp(92),ir0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
	.line	48
;----------------------------------------------------------------------
; 791 | mSelfTest_NG_CntBuf[(sCnt)] +=1;//2011_02_17 3.2¹öÀü                   
;----------------------------------------------------------------------
        ldiu      @CL19,ir0
        ldiu      *+fp(92),ar0
        addi3     r0,*+ar0(ir0),r0      ; Unsigned
        sti       r0,*+ar0(ir0)
L137:        
	.line	51
;----------------------------------------------------------------------
; 794 | SCC_TX_PROTOCOL_SELFTEST(sSelf_Tx_Buf,pDataBuf[nSelf_Test.nSELF_TX_Cnt_
;     | B],0x31,0x07,0,10);                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      @_nSelf_Test+182,ar0
        ldiu      10,r3
        ldiu      fp,r0
        ldiu      0,r2
        ldiu      7,r1
        ldiu      49,rs
        ldiu      *+ar0(ir0),re
        push      r3
        addi      2,r0
        push      r2
        push      r1
        push      rs
        push      re
        push      r0
        call      _SCC_TX_PROTOCOL_SELFTEST
                                        ; Call Occurs
        subi      6,sp
	.line	52
;----------------------------------------------------------------------
; 795 | Delay_SCC2_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,50);                   
;----------------------------------------------------------------------
        ldiu      50,r2
        push      r2
        ldiu      1,r3
        ldiu      20,r1
        push      r3
        ldiu      fp,r0
        push      r1
        addi      2,r0
        push      r0
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	54
;----------------------------------------------------------------------
; 797 | nSelf_Test.nSELF_TX_Cnt_B++;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+182,r0   ; Unsigned
        sti       r0,@_nSelf_Test+182
L138:        
	.line	57
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      94,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	800,000000000h,92



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Scc2_A_Rx_Pacc_Cnt+0,32
	.field  	0,32		; _d_Scc2_A_Rx_Pacc_Cnt @ 0

	.sect	".text"

	.global	_d_Scc2_A_Rx_Pacc_Cnt
	.bss	_d_Scc2_A_Rx_Pacc_Cnt,1
	.sym	_d_Scc2_A_Rx_Pacc_Cnt,_d_Scc2_A_Rx_Pacc_Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_SCC2_A_RX_PRO
	.sym	_DP_SCC2_A_RX_PRO,_DP_SCC2_A_RX_PRO,32,2,0
	.func	806
;******************************************************************************
;* FUNCTION NAME: _DP_SCC2_A_RX_PRO                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 70 Auto + 0 SOE = 73 words        *
;******************************************************************************
_DP_SCC2_A_RX_PRO:
	.sym	_pRxData,-2,28,9,32
	.sym	_sCRC,1,14,1,32
	.sym	_sH_Crc,2,12,1,32
	.sym	_sL_Crc,3,12,1,32
	.sym	_sPassCnt,4,12,1,32
	.sym	_sDisplay_Unit,5,12,1,32
	.sym	_sDisplay_UnitBuf,6,60,1,1920,,60
	.sym	_sDisplay_RxBuf,66,28,1,32
	.sym	_sErBlkPoint,67,12,1,32
	.sym	_i,68,12,1,32
	.sym	_pTx_Pro,69,24,1,32,.fake11
	.sym	_pRx_Data,70,24,1,32,.fake7
	.line	1
;----------------------------------------------------------------------
; 806 | void DP_SCC2_A_RX_PRO(UCHAR *pRxData)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      70,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 808 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 809 | UCHAR sH_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 810 | UCHAR sL_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 811 | UCHAR sPassCnt = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 812 | UCHAR sDisplay_Unit = 0;                                               
; 813 | UCHAR sDisplay_UnitBuf[60];                                            
; 814 | UCHAR *sDisplay_RxBuf;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 815 | UCHAR sErBlkPoint = 30720; //»èÁ¦ ÇÑ ºí·° °¹¼ö.                        
; 816 | UCHAR i;                                                               
;----------------------------------------------------------------------
        ldiu      30720,r0
        sti       r0,*+fp(67)
	.line	13
;----------------------------------------------------------------------
; 818 | PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pRxData;                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(69)
	.line	15
;----------------------------------------------------------------------
; 820 | PSCC_TX_DATA pRx_Data = (SCC_TX_DATA *) pRxData;                       
;----------------------------------------------------------------------
        sti       r0,*+fp(70)
	.line	17
;----------------------------------------------------------------------
; 822 | sCRC = cal_CRC16((SCC2_INIT_A.RxLen-5),&pRxData[3]);                   
;----------------------------------------------------------------------
        ldiu      5,r1
        subri     @_SCC2_INIT_A+9,r1    ; Unsigned
        ldiu      3,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
; 824 | sH_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_A.RxLen-12];                   
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(2),r0
        sti       r0,*+fp(2)
	.line	20
;----------------------------------------------------------------------
; 825 | sL_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_A.RxLen-11];                   
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(1),r0
        sti       r0,*+fp(3)
	.line	22
;----------------------------------------------------------------------
; 827 | memset(sDisplay_UnitBuf,0x00,60);                                      
;----------------------------------------------------------------------
        ldiu      60,r1
        push      r1
        ldiu      0,r2
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 831 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L144
;*      Branch Occurs to L144 
        ldi       @_nLedDataLoad+1,r0
        bne       L144
;*      Branch Occurs to L144 
        ldi       @_nLedDataLoad+2,r0
        bne       L144
;*      Branch Occurs to L144 
        ldi       @_nLedDataLoad+3,r0
        beq       L145
;*      Branch Occurs to L145 
L144:        
	.line	28
;----------------------------------------------------------------------
; 833 | sDisplay_Unit = nSelf_Test.nSELF_DownLoad_UnitCnt;                     
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+180,r0
        sti       r0,*+fp(5)
	.line	29
;----------------------------------------------------------------------
; 834 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSE
;     | LF_DownLoad_UnitCnt);                                                  
;----------------------------------------------------------------------
        ldiu      r0,r2
        ldiu      @CL28,r1
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 835 | sDisplay_RxBuf = nSelf_Test.nSELF_DownLoad_RxBuf;                      
; 837 | else // SCC_A Ã¤³ÎÀº Á÷Åë ÀÏ¹Ý ±¸ºÐÇÏ¿© ¼ö½Å                           
;----------------------------------------------------------------------
        ldiu      @CL29,r0
        sti       r0,*+fp(66)
        bu        L150
;*      Branch Occurs to L150 
L145:        
	.line	34
;----------------------------------------------------------------------
; 839 | if(!nSelf_Test.nSELF_ICR_SELECT)        //Á÷Åë ÀÚ±â Áø´Ü.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bne       L147
;*      Branch Occurs to L147 
	.line	36
;----------------------------------------------------------------------
; 841 | sDisplay_Unit = DISPLAY_UNIT;                                          
;----------------------------------------------------------------------
        ldiu      28,r0
        sti       r0,*+fp(5)
	.line	37
;----------------------------------------------------------------------
; 842 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT);    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      26                    ; Fast MEMCPY(#27)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        bu        L149
;*      Branch Occurs to L149 
L147:        
	.line	39
;----------------------------------------------------------------------
; 844 | else if(nSelf_Test.nSELF_ICR_SELECT)    //ÀÏ¹Ý ÀÚ±â Áø´Ù.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L149
;*      Branch Occurs to L149 
	.line	41
;----------------------------------------------------------------------
; 846 | sDisplay_Unit = DISPLAY_STANDARD_UNIT;                                 
;----------------------------------------------------------------------
        ldiu      52,r0
        sti       r0,*+fp(5)
	.line	42
;----------------------------------------------------------------------
; 847 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_STANDARD_U
;     | NIT);                                                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      50                    ; Fast MEMCPY(#30)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L149:        
	.line	44
;----------------------------------------------------------------------
; 849 | sDisplay_RxBuf = nSelf_Test.nSELF_RXDATA_Buf;                          
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        sti       r0,*+fp(66)
L150:        
	.line	47
;----------------------------------------------------------------------
; 852 | if(WORD_L(sH_Crc) == WORD_H(sCRC) && WORD_L(sL_Crc) == WORD_L(sCRC))   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      255,r1
        lsh       -8,r0
        and       *+fp(2),r1
        and       255,r0
        cmpi3     r0,r1
        bned      L173
	nop
        ldieq     255,r0
        ldieq     255,r1
;*      Branch Occurs to L173 
        and       *+fp(1),r0
        and       *+fp(3),r1
        cmpi3     r0,r1
        bned      L173
	nop
        ldieq     *+fp(69),ar0
        ldieq     255,r0
;*      Branch Occurs to L173 
	.line	49
;----------------------------------------------------------------------
; 854 | if(WORD_L(pTx_Pro->nText.nCode) == 0x08)                               
;----------------------------------------------------------------------
        and       *+ar0(9),r0
        cmpi      8,r0
        bne       L173
;*      Branch Occurs to L173 
	.line	51
;----------------------------------------------------------------------
; 856 | for(i=0;i<sDisplay_Unit;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        bhs       L173
;*      Branch Occurs to L173 
L154:        
	.line	53
;----------------------------------------------------------------------
; 858 | if( WORD_L(pTx_Pro->nText.nFromAdd) == WORD_L(sDisplay_UnitBuf[i]))    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        ldiu      *+fp(69),ar1
        ldiu      255,r1
        ldiu      *+fp(68),ir0
        addi      6,ar0
        and       *+ar1(8),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L172
;*      Branch Occurs to L172 
	.line	55
;----------------------------------------------------------------------
; 860 | sDisplay_RxBuf[i] = 0;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(66),ir0
        ldiu      *+fp(68),ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
	.line	57
;----------------------------------------------------------------------
; 862 | mSelfTest_NG_CntBuf[i] = 0;//2011_02_17 3.2¹öÀü                        
;----------------------------------------------------------------------
        ldiu      @CL19,ar0
        ldiu      *+fp(68),ir0
        sti       r0,*+ar0(ir0)
	.line	59
;----------------------------------------------------------------------
; 864 | d_Scc2_A_Rx_Pacc_Cnt++;                                                
; 866 | //if( nLedDataLoad.nIDDSelt || nLedDataLoad.nFDDSelt)                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc2_A_Rx_Pacc_Cnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc2_A_Rx_Pacc_Cnt+0
	.line	62
;----------------------------------------------------------------------
; 867 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L159
;*      Branch Occurs to L159 
        ldi       @_nLedDataLoad+1,r0
        bne       L159
;*      Branch Occurs to L159 
        ldi       @_nLedDataLoad+2,r0
        bne       L159
;*      Branch Occurs to L159 
        ldi       @_nLedDataLoad+3,r0
        beq       L173
;*      Branch Occurs to L173 
L159:        
	.line	65
;----------------------------------------------------------------------
; 870 | if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2) //´Ù¿î·
;     | Îµå µ¿ÀÛ ÁßÀÌ¸é ¼ö½Å Ä«¿îÅÍ¸¦ ÀÛµ¿ÇÑ´Ù.                                
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+7,r0
        bne       L161
;*      Branch Occurs to L161 
        ldi       @_nLedDataLoad+10,r0
        beq       L162
;*      Branch Occurs to L162 
L161:        
	.line	67
;----------------------------------------------------------------------
; 872 | nLedDataLoad.nSDR_RxCnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+8,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+8
L162:        
	.line	70
;----------------------------------------------------------------------
; 875 | if(nLedDataLoad.nDataSDRFlag)   // LED Ç¥½Ä ´Ù¿î·Îµå ±â´É              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        beqd      L173
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L173 
	.line	72
;----------------------------------------------------------------------
; 877 | if(WORD_L(pRx_Data->nTest.nSp4) == 0x20)        // ´Ù¿î·Îµå OK         
;----------------------------------------------------------------------
        and       *+ar0(11),r0
        cmpi      32,r0
        bned      L166
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L166 
	.line	74
;----------------------------------------------------------------------
; 879 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	75
;----------------------------------------------------------------------
; 880 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+17
        bu        L173
;*      Branch Occurs to L173 
	.line	77
;----------------------------------------------------------------------
; 882 | else if(WORD_L(pRx_Data->nTest.nSp4) == 0x21)   //´Ù¿î·Îµå NG ÀçÀü¼Û ÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
L166:        
        and       *+ar0(11),r0
        cmpi      33,r0
        bne       L173
;*      Branch Occurs to L173 
	.line	80
;----------------------------------------------------------------------
; 885 | if(nLedDataLoad.nFDD_DATA_Selt) {sErBlkPoint = 0;}                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beq       L169
;*      Branch Occurs to L169 
        ldiu      0,r0
        sti       r0,*+fp(67)
L169:        
	.line	82
;----------------------------------------------------------------------
; 887 | if(nLedDataLoad.nIDDSelt) {sErBlkPoint = 32256;}                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+2,r0
        beq       L171
;*      Branch Occurs to L171 
        ldiu      32256,r0
        sti       r0,*+fp(67)
L171:        
	.line	84
;----------------------------------------------------------------------
; 889 | nLedDataLoad.nDataRepetFlag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+15
	.line	85
;----------------------------------------------------------------------
; 890 | nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pRx_Data->nTest.nErBlk),W
;     | ORD_L(pRx_Data->nTest.nDeStCode)) - sErBlkPoint;                       
;----------------------------------------------------------------------
        ldiu      *+fp(70),ar1
        ldiu      255,r1
        ldiu      ar1,ar0
        ldiu      255,r0
        and       *+ar0(13),r1
        and       *+ar1(12),r0
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        subi      *+fp(67),r0           ; Unsigned
        sti       r0,@_nLedDataLoad+16
	.line	91
;----------------------------------------------------------------------
; 896 | break;                                                                 
;----------------------------------------------------------------------
        bu        L173
;*      Branch Occurs to L173 
L172:        
	.line	51
        ldiu      1,r0
        addi      *+fp(68),r0           ; Unsigned
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        blo       L154
;*      Branch Occurs to L154 
L173:        
	.line	96
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      72,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	901,000000000h,70



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Scc2_B_Rx_Pacc_Cnt+0,32
	.field  	0,32		; _d_Scc2_B_Rx_Pacc_Cnt @ 0

	.sect	".text"

	.global	_d_Scc2_B_Rx_Pacc_Cnt
	.bss	_d_Scc2_B_Rx_Pacc_Cnt,1
	.sym	_d_Scc2_B_Rx_Pacc_Cnt,_d_Scc2_B_Rx_Pacc_Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_SCC2_B_RX_PRO
	.sym	_DP_SCC2_B_RX_PRO,_DP_SCC2_B_RX_PRO,32,2,0
	.func	907
;******************************************************************************
;* FUNCTION NAME: _DP_SCC2_B_RX_PRO                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 70 Auto + 0 SOE = 73 words        *
;******************************************************************************
_DP_SCC2_B_RX_PRO:
	.sym	_pRxData,-2,28,9,32
	.sym	_sCRC,1,14,1,32
	.sym	_sH_Crc,2,12,1,32
	.sym	_sL_Crc,3,12,1,32
	.sym	_sPassCnt,4,12,1,32
	.sym	_sDisplay_Unit,5,12,1,32
	.sym	_sDisplay_UnitBuf,6,60,1,1920,,60
	.sym	_sDisplay_RxBuf,66,28,1,32
	.sym	_sErBlkPoint,67,12,1,32
	.sym	_i,68,12,1,32
	.sym	_pTx_Pro,69,24,1,32,.fake11
	.sym	_pRx_Data,70,24,1,32,.fake7
	.line	1
;----------------------------------------------------------------------
; 907 | void DP_SCC2_B_RX_PRO(UCHAR *pRxData)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      70,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 909 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 910 | UCHAR sH_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 911 | UCHAR sL_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 912 | UCHAR sPassCnt = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 913 | UCHAR sDisplay_Unit = 0;                                               
; 914 | UCHAR sDisplay_UnitBuf[60];                                            
; 915 | UCHAR *sDisplay_RxBuf;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 916 | UCHAR sErBlkPoint = 30720; //»èÁ¦ ÇÑ ºí·° °¹¼ö.                        
; 917 | UCHAR i;                                                               
;----------------------------------------------------------------------
        ldiu      30720,r0
        sti       r0,*+fp(67)
	.line	13
;----------------------------------------------------------------------
; 919 | PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pRxData;                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(69)
	.line	14
;----------------------------------------------------------------------
; 920 | PSCC_TX_DATA pRx_Data = (SCC_TX_DATA *) pRxData;                       
;----------------------------------------------------------------------
        sti       r0,*+fp(70)
	.line	16
;----------------------------------------------------------------------
; 922 | sCRC = cal_CRC16((SCC2_INIT_B.RxLen-5),&pRxData[3]);                   
;----------------------------------------------------------------------
        ldiu      5,r1
        subri     @_SCC2_INIT_B+9,r1    ; Unsigned
        ldiu      3,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	18
;----------------------------------------------------------------------
; 924 | sH_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_B.RxLen-12];                   
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(2),r0
        sti       r0,*+fp(2)
	.line	19
;----------------------------------------------------------------------
; 925 | sL_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_B.RxLen-11];                   
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(1),r0
        sti       r0,*+fp(3)
	.line	21
;----------------------------------------------------------------------
; 927 | memset(sDisplay_UnitBuf,0x00,60);                                      
;----------------------------------------------------------------------
        ldiu      60,r1
        push      r1
        ldiu      0,r2
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	23
;----------------------------------------------------------------------
; 929 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L179
;*      Branch Occurs to L179 
        ldi       @_nLedDataLoad+1,r0
        bne       L179
;*      Branch Occurs to L179 
        ldi       @_nLedDataLoad+2,r0
        bne       L179
;*      Branch Occurs to L179 
        ldi       @_nLedDataLoad+3,r0
        beq       L180
;*      Branch Occurs to L180 
L179:        
	.line	25
;----------------------------------------------------------------------
; 931 | sDisplay_Unit = nSelf_Test.nSELF_DownLoad_UnitCnt;                     
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+180,r0
        sti       r0,*+fp(5)
	.line	26
;----------------------------------------------------------------------
; 932 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSE
;     | LF_DownLoad_UnitCnt);                                                  
;----------------------------------------------------------------------
        ldiu      r0,r2
        ldiu      @CL28,r1
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	27
;----------------------------------------------------------------------
; 933 | sDisplay_RxBuf = nSelf_Test.nSELF_DownLoad_RxBuf;                      
; 935 | else // SCC_A Ã¤³ÎÀº Á÷Åë ÀÏ¹Ý ±¸ºÐÇÏ¿© ¼ö½Å                           
;----------------------------------------------------------------------
        ldiu      @CL29,r0
        sti       r0,*+fp(66)
        bu        L185
;*      Branch Occurs to L185 
L180:        
	.line	31
;----------------------------------------------------------------------
; 937 | if(!nSelf_Test.nSELF_ICR_SELECT)        //Á÷Åë ÀÚ±â Áø´Ü.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bne       L182
;*      Branch Occurs to L182 
	.line	33
;----------------------------------------------------------------------
; 939 | sDisplay_Unit = DISPLAY_UNIT;                                          
;----------------------------------------------------------------------
        ldiu      28,r0
        sti       r0,*+fp(5)
	.line	34
;----------------------------------------------------------------------
; 940 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT);    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      26                    ; Fast MEMCPY(#33)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        bu        L184
;*      Branch Occurs to L184 
L182:        
	.line	36
;----------------------------------------------------------------------
; 942 | else if(nSelf_Test.nSELF_ICR_SELECT)    //ÀÏ¹Ý ÀÚ±â Áø´Ù.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L184
;*      Branch Occurs to L184 
	.line	38
;----------------------------------------------------------------------
; 944 | sDisplay_Unit = DISPLAY_STANDARD_UNIT;                                 
;----------------------------------------------------------------------
        ldiu      52,r0
        sti       r0,*+fp(5)
	.line	39
;----------------------------------------------------------------------
; 945 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_STANDARD_U
;     | NIT);                                                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      50                    ; Fast MEMCPY(#36)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L184:        
	.line	43
;----------------------------------------------------------------------
; 949 | sDisplay_RxBuf = nSelf_Test.nSELF_RXDATA_Buf;                          
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        sti       r0,*+fp(66)
L185:        
	.line	47
;----------------------------------------------------------------------
; 953 | if(WORD_L(sH_Crc) == WORD_H(sCRC) && WORD_L(sL_Crc) == WORD_L(sCRC))   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      255,r1
        lsh       -8,r0
        and       *+fp(2),r1
        and       255,r0
        cmpi3     r0,r1
        bned      L208
	nop
        ldieq     255,r0
        ldieq     255,r1
;*      Branch Occurs to L208 
        and       *+fp(1),r0
        and       *+fp(3),r1
        cmpi3     r0,r1
        bned      L208
	nop
        ldieq     *+fp(69),ar0
        ldieq     255,r0
;*      Branch Occurs to L208 
	.line	49
;----------------------------------------------------------------------
; 955 | if(WORD_L(pTx_Pro->nText.nCode) == 0x08)                               
;----------------------------------------------------------------------
        and       *+ar0(9),r0
        cmpi      8,r0
        bne       L208
;*      Branch Occurs to L208 
	.line	52
;----------------------------------------------------------------------
; 958 | for(i=0;i<sDisplay_Unit;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        bhs       L208
;*      Branch Occurs to L208 
L189:        
	.line	54
;----------------------------------------------------------------------
; 960 | if( WORD_L(pTx_Pro->nText.nFromAdd) == WORD_L(sDisplay_UnitBuf[i]))    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        ldiu      *+fp(69),ar1
        ldiu      255,r1
        ldiu      *+fp(68),ir0
        addi      6,ar0
        and       *+ar1(8),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L207
;*      Branch Occurs to L207 
	.line	56
;----------------------------------------------------------------------
; 962 | sDisplay_RxBuf[i] = 0;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(66),ir0
        ldiu      *+fp(68),ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
	.line	58
;----------------------------------------------------------------------
; 964 | mSelfTest_NG_CntBuf[i] = 0;//2011_02_17 3.2¹öÀü                        
;----------------------------------------------------------------------
        ldiu      @CL19,ar0
        ldiu      *+fp(68),ir0
        sti       r0,*+ar0(ir0)
	.line	60
;----------------------------------------------------------------------
; 966 | d_Scc2_B_Rx_Pacc_Cnt++;                                                
; 968 | //if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTN
;     | DSelt )                                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc2_B_Rx_Pacc_Cnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc2_B_Rx_Pacc_Cnt+0
	.line	63
;----------------------------------------------------------------------
; 969 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L194
;*      Branch Occurs to L194 
        ldi       @_nLedDataLoad+1,r0
        bne       L194
;*      Branch Occurs to L194 
        ldi       @_nLedDataLoad+2,r0
        bne       L194
;*      Branch Occurs to L194 
        ldi       @_nLedDataLoad+3,r0
        beq       L208
;*      Branch Occurs to L208 
L194:        
	.line	65
;----------------------------------------------------------------------
; 971 | if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2) //´Ù¿î·
;     | Îµå µ¿ÀÛ ÁßÀÌ¸é ¼ö½Å Ä«¿îÅÍ¸¦ ÀÛµ¿ÇÑ´Ù.                                
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+7,r0
        bne       L196
;*      Branch Occurs to L196 
        ldi       @_nLedDataLoad+10,r0
        beq       L197
;*      Branch Occurs to L197 
L196:        
	.line	67
;----------------------------------------------------------------------
; 973 | nLedDataLoad.nSDR_RxCnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+8,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+8
L197:        
	.line	70
;----------------------------------------------------------------------
; 976 | if(nLedDataLoad.nDataSDRFlag)   // LED Ç¥½Ä ´Ù¿î·Îµå ±â´É              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        beqd      L208
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L208 
	.line	72
;----------------------------------------------------------------------
; 978 | if(WORD_L(pRx_Data->nTest.nSp4) == 0x20)        // ´Ù¿î·Îµå OK         
;----------------------------------------------------------------------
        and       *+ar0(11),r0
        cmpi      32,r0
        bned      L201
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L201 
	.line	74
;----------------------------------------------------------------------
; 980 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	75
;----------------------------------------------------------------------
; 981 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+17
        bu        L208
;*      Branch Occurs to L208 
	.line	77
;----------------------------------------------------------------------
; 983 | else if(WORD_L(pRx_Data->nTest.nSp4) == 0x21)   //´Ù¿î·Îµå NG ÀçÀü¼Û ÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
L201:        
        and       *+ar0(11),r0
        cmpi      33,r0
        bne       L208
;*      Branch Occurs to L208 
	.line	80
;----------------------------------------------------------------------
; 986 | if(nLedDataLoad.nFDD_DATA_Selt) {sErBlkPoint = 0;}                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beq       L204
;*      Branch Occurs to L204 
        ldiu      0,r0
        sti       r0,*+fp(67)
L204:        
	.line	82
;----------------------------------------------------------------------
; 988 | if(nLedDataLoad.nIDDSelt) {sErBlkPoint = 32256;}                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+2,r0
        beq       L206
;*      Branch Occurs to L206 
        ldiu      32256,r0
        sti       r0,*+fp(67)
L206:        
	.line	84
;----------------------------------------------------------------------
; 990 | nLedDataLoad.nDataRepetFlag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+15
	.line	85
;----------------------------------------------------------------------
; 991 | nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pRx_Data->nTest.nErBlk),W
;     | ORD_L(pRx_Data->nTest.nDeStCode)) - sErBlkPoint;                       
;----------------------------------------------------------------------
        ldiu      *+fp(70),ar1
        ldiu      255,r1
        ldiu      ar1,ar0
        ldiu      255,r0
        and       *+ar0(13),r1
        and       *+ar1(12),r0
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        subi      *+fp(67),r0           ; Unsigned
        sti       r0,@_nLedDataLoad+16
	.line	90
;----------------------------------------------------------------------
; 996 | break;                                                                 
;----------------------------------------------------------------------
        bu        L208
;*      Branch Occurs to L208 
L207:        
	.line	52
        ldiu      1,r0
        addi      *+fp(68),r0           ; Unsigned
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        blo       L189
;*      Branch Occurs to L189 
L208:        
	.line	96
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      72,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1002,000000000h,70


	.sect	 ".text"

	.global	_DP_Find_StationInfo
	.sym	_DP_Find_StationInfo,_DP_Find_StationInfo,44,2,0
	.func	1008
;******************************************************************************
;* FUNCTION NAME: _DP_Find_StationInfo                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,st                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 5 Parm + 3 Auto + 0 SOE = 10 words         *
;******************************************************************************
_DP_Find_StationInfo:
	.sym	_sNow,-2,12,9,32
	.sym	_sNext,-3,12,9,32
	.sym	_sDest,-4,12,9,32
	.sym	_sReTrNo,-5,12,9,32
	.sym	_sNewTrNo,-6,12,9,32
	.sym	_Start,1,4,1,32
	.sym	_End,2,4,1,32
	.sym	_glInfo,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1008 | UCHAR DP_Find_StationInfo(UCHAR sNow,UCHAR sNext,UCHAR sDest,UCHAR sReT
;     | rNo,UCHAR sNewTrNo)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1010 | int Start=0,End=0;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        sti       r0,*+fp(2)
	.line	4
;----------------------------------------------------------------------
; 1011 | int glInfo=0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 1013 | if(WORD_L(sNow) != 0xFF && WORD_L(sNext) != 0xFF)//&& glComDest)
;     |          // ¿ªÄÚµå°¡ '0'ÀÌ ¾Æ´Ñ °æ¿ì //Á¾Âø¿ª                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(2),r0
        cmpi      255,r0
        beq       L230
;*      Branch Occurs to L230 
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      255,r0
        beq       L230
;*      Branch Occurs to L230 
	.line	8
;----------------------------------------------------------------------
; 1015 | if(DWORD_L(sReTrNo) == DWORD_L(sNewTrNo)) Start=1; // ½Ã¹ß¿ª ÄÚµå
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *-fp(6),r0
        ldiu      *-fp(5),r1
        and       65535,r0
        and       65535,r1
        cmpi3     r0,r1
        bne       L214
;*      Branch Occurs to L214 
        ldiu      1,r0
        sti       r0,*+fp(1)
        bu        L215
;*      Branch Occurs to L215 
L214:        
	.line	9
;----------------------------------------------------------------------
; 1016 | else Start = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
L215:        
	.line	10
;----------------------------------------------------------------------
; 1017 | if(WORD_L(sNext) == WORD_L(sDest)) End = 1;     // Á¾Âø¿ª ÄÚµå         
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       *-fp(4),r1
        and       *-fp(3),r0
        cmpi3     r1,r0
        bne       L217
;*      Branch Occurs to L217 
        ldiu      1,r0
        sti       r0,*+fp(2)
        bu        L218
;*      Branch Occurs to L218 
L217:        
	.line	11
;----------------------------------------------------------------------
; 1018 | else End =0;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
L218:        
	.line	13
;----------------------------------------------------------------------
; 1020 | if(Start&&End)          glInfo =4;      // ½Ã¹ß-Á¾Âø                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        beq       L221
;*      Branch Occurs to L221 
        ldi       *+fp(2),r0
        beq       L221
;*      Branch Occurs to L221 
        ldiu      4,r0
        sti       r0,*+fp(3)
        bu        L230
;*      Branch Occurs to L230 
L221:        
	.line	14
;----------------------------------------------------------------------
; 1021 | else if(Start && !End)  glInfo =1;      // ½Ã¹ß-Áß°£                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        beq       L224
;*      Branch Occurs to L224 
        ldi       *+fp(2),r0
        bne       L224
;*      Branch Occurs to L224 
        ldiu      1,r0
        sti       r0,*+fp(3)
        bu        L230
;*      Branch Occurs to L230 
L224:        
	.line	15
;----------------------------------------------------------------------
; 1022 | else if(!Start && End)  glInfo =3;      // Áß°£-Á¾Âø                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        bne       L227
;*      Branch Occurs to L227 
        ldi       *+fp(2),r0
        beq       L227
;*      Branch Occurs to L227 
        ldiu      3,r0
        sti       r0,*+fp(3)
        bu        L230
;*      Branch Occurs to L230 
L227:        
	.line	16
;----------------------------------------------------------------------
; 1023 | else if(!Start && !End) glInfo =2;      // Áß°£-Áß°£                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        bne       L230
;*      Branch Occurs to L230 
        ldi       *+fp(2),r0
        bne       L230
;*      Branch Occurs to L230 
        ldiu      2,r0
        sti       r0,*+fp(3)
L230:        
	.line	19
;----------------------------------------------------------------------
; 1026 | return glInfo;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0
	.line	20
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1027,000000000h,3



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Auto_Flag+0,32
	.field  	0,32		; _d_Auto_Flag @ 0

	.sect	".text"

	.global	_d_Auto_Flag
	.bss	_d_Auto_Flag,1
	.sym	_d_Auto_Flag,_d_Auto_Flag,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Auto_Data+0,32
	.field  	0,32		; _d_Auto_Data @ 0

	.sect	".text"

	.global	_d_Auto_Data
	.bss	_d_Auto_Data,1
	.sym	_d_Auto_Data,_d_Auto_Data,12,2,32
	.sect	 ".text"

	.global	_DP_Door_Sequence
	.sym	_DP_Door_Sequence,_DP_Door_Sequence,32,2,0
	.func	1034
;******************************************************************************
;* FUNCTION NAME: _DP_Door_Sequence                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_Door_Sequence:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1034 | void DP_Door_Sequence()                                                
; 1036 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 1038 | if(WORD_L(nTr_St_Info.nAutoManuFlag)){nTr_St_Info.nDoOp_StChFlag = TRUE
;     | ;} //¼öµ¿ ¼³Á¤ ÀÌ¸é nDoOp_StChFlag¸¦ Ç×»ó ÂüÀ¸·Î ÇÑ´Ù. //120820        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beq       L235
;*      Branch Occurs to L235 
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+377
L235:        
	.line	7
;----------------------------------------------------------------------
; 1040 | if(nDi_Check.nDoor.nFlag && nTr_St_Info.nDoOp_StChFlag) //ÃâÀÔ¹®ÀÌ ¿­·È
;     | À» °æ¿ì Ã³¸®. nTr_St_Info.nDoOp_StChFlag ÃâÀÔ¹®ÀÌ ¿­¸®°í Åë½ÅÀÌ ÀÌ·ç¾î 
;     | ÁøÈÄ Ã³¸® ÇÑ´Ù. //120820                                               
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        beq       L244
;*      Branch Occurs to L244 
        ldi       @_nTr_St_Info+377,r0
        beq       L244
;*      Branch Occurs to L244 
	.line	9
;----------------------------------------------------------------------
; 1042 | if(!nTr_St_Info.nSimulationRun){ //½Ã¹Ä·¹ÀÌ¼ÇÀÌ ¾Æ´Ï°í ÃâÀÔ¹®ÀÌ ¿­¸®¸é
;     | ¸¶Áö¸· ¹®Àå Ç¥½Ã¸¦ ÃÊ±âÈ­ ÇÑ´Ù. //120820                               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+69,r0
        bne       L239
;*      Branch Occurs to L239 
	.line	10
;----------------------------------------------------------------------
; 1043 | nIndex_Flag.nBetweenFlag = FALSE; //½Ã¹Ä·¹ÀÌ¼ÇÀÏ¶§´Â "nBetweenFlag"¸¦ µ
;     | û·Î »ç¿ë ÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+576
L239:        
	.line	14
;----------------------------------------------------------------------
; 1047 | if(!WORD_L(nDi_Check.nDoor.nFlagCnt))//DP_Door_OPEN ÇÔ¼ö°¡ ½ÇÇà µÇ¸é Ä«
;     | ¿îÅÍ°¡ Áõ°¡ ÇÑ´Ù.                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nDi_Check+18,r0
        bne       L255
;*      Branch Occurs to L255 
	.line	16
;----------------------------------------------------------------------
; 1049 | nTmsRxData.nDist = 0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTmsRxData+2
	.line	18
;----------------------------------------------------------------------
; 1051 | if(DWORD_L(nTr_St_Info.nStopPatNum) && (WORD_L(nTr_St_Info.nRxCode_NoNe
;     | _Flag) || WORD_L(nTr_St_Info.nAutoManuFlag)))                          
; 1052 | { //Á¤Â÷ ÆÐÅÏÀÌ Á¤»ó / ÇöÀç¿ª ´ÙÀ½¿ª ÄÚµå°¡ Á¤»ó / ¼öµ¿ ¼³Á¤           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+0,r0
        tstb      65535,r0
        beq       L255
;*      Branch Occurs to L255 
        ldiu      255,r0
        tstb      @_nTr_St_Info+373,r0
        bne       L243
;*      Branch Occurs to L243 
        tstb      @_nTr_St_Info+374,r0
        beq       L255
;*      Branch Occurs to L255 
L243:        
	.line	21
;----------------------------------------------------------------------
; 1054 | d_Auto_Flag++;                                                         
; 1056 | //nTmsRxData.nDist = 0;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Auto_Flag+0,r0    ; Unsigned
        sti       r0,@_d_Auto_Flag+0
	.line	25
;----------------------------------------------------------------------
; 1058 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+74
	.line	27
;----------------------------------------------------------------------
; 1060 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+574
	.line	28
;----------------------------------------------------------------------
; 1061 | nIndex_Flag.nDistanNew = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+575
	.line	29
;----------------------------------------------------------------------
; 1062 | nIndex_Flag.nBetweenFlag = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+576
	.line	31
;----------------------------------------------------------------------
; 1064 | nDi_Check.nDist.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+23
	.line	33
;----------------------------------------------------------------------
; 1066 | DP_Door_OPEN();                                                        
;----------------------------------------------------------------------
        call      _DP_Door_OPEN
                                        ; Call Occurs
        bu        L255
;*      Branch Occurs to L255 
L244:        
	.line	37
;----------------------------------------------------------------------
; 1070 | else if(!nDi_Check.nDoor.nFlag)//&& (nIndex_Flag.nDistanRe != nIndex_Fl
;     | ag.nDistanNew))                                                        
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        bne       L255
;*      Branch Occurs to L255 
	.line	39
;----------------------------------------------------------------------
; 1072 | nTr_St_Info.nDoOp_StChFlag = FALSE; //120820                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+377
	.line	41
;----------------------------------------------------------------------
; 1074 | if(WORD_L(nDi_Check.nDoor.nRemem)){ //ÃâÀÔ¹® ´ÝÈú¶§ ¹«Ç¥½Ã Àü¼Û.       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nDi_Check+19,r0
        beq       L250
;*      Branch Occurs to L250 
	.line	43
;----------------------------------------------------------------------
; 1076 | if(WORD_L(nTmsRxData.nDoOpenIf)&0x03){  //TCMS Åë½ÅÀ¸·Î ¼ö½ÅÇÑ ÃâÀÔ¹® Á
;     | ¤º¸°¡ Á¤»óÀÏ °æ¿ì  //120820                                            
;----------------------------------------------------------------------
        ldiu      3,r0
        tstb      @_nTmsRxData+6,r0
        beq       L248
;*      Branch Occurs to L248 
	.line	44
;----------------------------------------------------------------------
; 1077 | nDisplayIndex.nDoor = nTmsRxData.nDoOpenIf; } //ÃâÀÔ¹® Á¤º¸¸¦ TCMS Åë½Å
;     |  ¼ö½Å µ¥ÀÌÅ¸·Î º¯°æ ÇÑ´Ù.                                              
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+6,r0
        sti       r0,@_nDisplayIndex+1
L248:        
	.line	46
;----------------------------------------------------------------------
; 1079 | nSccSendFlag.nClean = 3;                                               
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	47
;----------------------------------------------------------------------
; 1080 | if(nTr_St_Info.nSelf_Test_Flag) //¾ÆÁ÷ ÀÚ±â Áø´Ü ÁßÀÌ¶ó¸é Á¾·á ÇÑ´Ù.   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+368,r0
        beq       L250
;*      Branch Occurs to L250 
	.line	49
;----------------------------------------------------------------------
; 1082 | nSelf_Test.nSELF_All_Cnt = SELF_TEST_ALLCNT;                           
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_nSelf_Test+183
	.line	50
;----------------------------------------------------------------------
; 1083 | nSelf_Test.nSELF_All_Cnt_B = SELF_TEST_ALLCNT;                         
; 1088 | //½Ã¹Ä·¹ÀÌ¼ÇÀÏ¶§´Â ÃâÀÔ¹®°ú ¾Æ¹«·± °ü°è°¡ ¾ø±â ¶§¹®¿¡ ¿©±â¼­ ¸·´Â´Ù.   
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+184
L250:        
	.line	56
;----------------------------------------------------------------------
; 1089 | if(!nTr_St_Info.nSimulationRun){                                       
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+69,r0
        bne       L252
;*      Branch Occurs to L252 
	.line	57
;----------------------------------------------------------------------
; 1090 | nTmsRxData.nDist = nDi_Check.nDist.nFlagCnt *50; //10_08_10 ½Ã¹Ä·¹ÀÌ¼Ç 
;----------------------------------------------------------------------
        ldiu      @_nDi_Check+23,r0
        mpyi      50,r0
        sti       r0,@_nTmsRxData+2
L252:        
	.line	60
;----------------------------------------------------------------------
; 1093 | if(DWORD_MASKING(nTmsRxData.nDist) >= 50 )      //TMS°Å¸® °ªÀÌ ÀÖ¾î¾ß µ
;     | È´Ù.                                                                   
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+2,r0
        cmpi      50,r0
        blo       L255
;*      Branch Occurs to L255 
	.line	63
;----------------------------------------------------------------------
; 1096 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nDi_Check+18
	.line	65
;----------------------------------------------------------------------
; 1098 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+70
	.line	66
;----------------------------------------------------------------------
; 1099 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	69
;----------------------------------------------------------------------
; 1102 | nIndex_Flag.nDistanNew = nTmsRxData.nDist;                             
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+2,r0
        sti       r0,@_nIndex_Flag+575
	.line	70
;----------------------------------------------------------------------
; 1103 | nTr_St_Info.nDistance = nTmsRxData.nDist;                              
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	72
;----------------------------------------------------------------------
; 1105 | if(!WORD_L(nIndex_Flag.nBetweenFlag))                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nIndex_Flag+576,r0
        bne       L255
;*      Branch Occurs to L255 
	.line	74
;----------------------------------------------------------------------
; 1107 | if(WORD_L(nTr_St_Info.nRxCode_NoNe_Flag))                              
;----------------------------------------------------------------------
        tstb      @_nTr_St_Info+373,r0
	.line	76
;----------------------------------------------------------------------
; 1109 | DP_Door_CLOSE();                                                       
;----------------------------------------------------------------------
        callne    _DP_Door_CLOSE
                                        ; Call Occurs
L255:        
	.line	82
;----------------------------------------------------------------------
; 1115 | nDi_Check.nDoor.nRemem = nDi_Check.nDoor.nFlag;                        
;----------------------------------------------------------------------
        ldiu      @_nDi_Check+15,r0
        sti       r0,@_nDi_Check+19
	.line	83
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1116,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_DiDi_Cnt+0,32
	.field  	0,32		; _d_DiDi_Cnt @ 0

	.sect	".text"

	.global	_d_DiDi_Cnt
	.bss	_d_DiDi_Cnt,1
	.sym	_d_DiDi_Cnt,_d_DiDi_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_doorPintCnt+0,32
	.field  	0,32		; _d_doorPintCnt @ 0

	.sect	".text"

	.global	_d_doorPintCnt
	.bss	_d_doorPintCnt,1
	.sym	_d_doorPintCnt,_d_doorPintCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimEndCnt+0,32
	.field  	0,32		; _d_SimEndCnt @ 0

	.sect	".text"

	.global	_d_SimEndCnt
	.bss	_d_SimEndCnt,1
	.sym	_d_SimEndCnt,_d_SimEndCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_TcmsRxNow+0,32
	.field  	0,32		; _d_TcmsRxNow @ 0

	.sect	".text"

	.global	_d_TcmsRxNow
	.bss	_d_TcmsRxNow,1
	.sym	_d_TcmsRxNow,_d_TcmsRxNow,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_TcmsRxNex+0,32
	.field  	0,32		; _d_TcmsRxNex @ 0

	.sect	".text"

	.global	_d_TcmsRxNex
	.bss	_d_TcmsRxNex,1
	.sym	_d_TcmsRxNex,_d_TcmsRxNex,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_StCodeFineAuto+0,32
	.field  	0,32		; _d_StCodeFineAuto @ 0

	.sect	".text"

	.global	_d_StCodeFineAuto
	.bss	_d_StCodeFineAuto,1
	.sym	_d_StCodeFineAuto,_d_StCodeFineAuto,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_StPointVal+0,32
	.field  	0,32		; _d_StPointVal @ 0

	.sect	".text"

	.global	_d_StPointVal
	.bss	_d_StPointVal,1
	.sym	_d_StPointVal,_d_StPointVal,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_a_Dest+0,32
	.field  	0,32		; _d_a_Dest @ 0

	.sect	".text"

	.global	_d_a_Dest
	.bss	_d_a_Dest,1
	.sym	_d_a_Dest,_d_a_Dest,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_a_Next+0,32
	.field  	0,32		; _d_a_Next @ 0

	.sect	".text"

	.global	_d_a_Next
	.bss	_d_a_Next,1
	.sym	_d_a_Next,_d_a_Next,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_a_simCnt+0,32
	.field  	0,32		; _d_a_simCnt @ 0

	.sect	".text"

	.global	_d_a_simCnt
	.bss	_d_a_simCnt,1
	.sym	_d_a_simCnt,_d_a_simCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_a_abab+0,32
	.field  	0,32		; _d_a_abab @ 0

	.sect	".text"

	.global	_d_a_abab
	.bss	_d_a_abab,1
	.sym	_d_a_abab,_d_a_abab,12,2,32
	.sect	 ".text"

	.global	_DP_Door_OPEN
	.sym	_DP_Door_OPEN,_DP_Door_OPEN,32,2,0
	.func	1133
;******************************************************************************
;* FUNCTION NAME: _DP_Door_OPEN                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,ir1,sp,st                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 607 Auto + 0 SOE = 609 words      *
;******************************************************************************
_DP_Door_OPEN:
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,2048,,64
	.sym	_i,577,4,1,32
	.sym	_sIm_Pr_GpSendData,578,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 1133 | void DP_Door_OPEN()                                                    
; 1135 | char szBuf[512];                                                       
; 1136 | char szBuf2[64];                                                       
; 1137 | int i;                                                                 
; 1138 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      607,sp
	.line	8
;----------------------------------------------------------------------
; 1140 | memset(sIm_Pr_GpSendData,0x20,30);                                     
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      578,r0
        ldiu      32,r1
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	9
;----------------------------------------------------------------------
; 1141 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 1143 | d_SimEndCnt = nTr_St_Info.nStation_PointCnt;                           
; 1145 | //¿ªÁ¤º¸¸¦ Áõ°¡ ÇÑ´Ù. - ÆÐÅÏ ÀüÃ¼ ¿ª ÄÚµåÀÌ»óÀº Áõ°¡ ÇÑÁö ¾Ê´Â´Ù.df    
; 1146 | //if(WORD_L(nTr_St_Info.nStation_PointCnt) < WORD_L(nTr_St_Info.nStatio
;     | n_MaxCnt)-1) //10_08_10                                                
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        sti       r0,@_d_SimEndCnt+0
	.line	15
;----------------------------------------------------------------------
; 1147 | if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) &&(WORD_L(nTr_St_Info.nDoOp_
;     | StCh) || WORD_L(nTr_St_Info.nAutoManuFlag)))                           
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        beq       L276
;*      Branch Occurs to L276 
        tstb      @_nTr_St_Info+371,r0
        bne       L261
;*      Branch Occurs to L261 
        tstb      @_nTr_St_Info+374,r0
        beq       L276
;*      Branch Occurs to L276 
L261:        
	.line	18
;----------------------------------------------------------------------
; 1150 | d_a_abab++;                                                            
; 1152 | //Ç¥Ãâ °ü·Ã º¯¼ö¸¦ Å¬¸®¾î ÇÑ´Ù.                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_a_abab+0,r0       ; Unsigned
        sti       r0,@_d_a_abab+0
	.line	21
;----------------------------------------------------------------------
; 1153 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	22
;----------------------------------------------------------------------
; 1154 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	23
;----------------------------------------------------------------------
; 1155 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	24
;----------------------------------------------------------------------
; 1156 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
	.line	26
;----------------------------------------------------------------------
; 1158 | nTr_St_Info.nDoOp_StCh = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+371
	.line	28
;----------------------------------------------------------------------
; 1160 | if((WORD_L(nTr_St_Info.nNext.nCode) != WORD_L(nTr_St_Info.nDest.nCode))
;     | ) //|| nTr_St_Info.nAutoManuFlag)                                      
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nTr_St_Info+215,r1
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        cmpi3     r0,r1
        beq       L265
;*      Branch Occurs to L265 
	.line	30
;----------------------------------------------------------------------
; 1162 | if(!WORD_L(nTr_St_Info.nStation_StartPointCnt))//Ã³À½ ¿ªÀÏ °æ¿ì¿¡´Â ÀÌ¹
;     | Ì ¿ªÄÚµå°¡ Ã³À½ÀÌ·Î µÇ¾î ÀÖ±â ¶§¹®¿¡ ¿ª Æ÷ÀÎÅÍ¸¦ Áõ°¡ÇÒ ÇÊ¿ä°¡ ¾ø´Ù.   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+2,r0
        bne       L264
;*      Branch Occurs to L264 
	.line	32
;----------------------------------------------------------------------
; 1164 | nTr_St_Info.nStation_StartPointCnt++;                                  
; 1166 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
        bu        L265
;*      Branch Occurs to L265 
L264:        
	.line	37
;----------------------------------------------------------------------
; 1169 | nTr_St_Info.nStation_PointCnt++;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+3,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+3
	.line	38
;----------------------------------------------------------------------
; 1170 | nTr_St_Info.nStation_StartPointCnt++;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
L265:        
	.line	42
;----------------------------------------------------------------------
; 1174 | d_StPointVal = nTr_St_Info.nStation_StartPointCnt;                     
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+2,r0
        sti       r0,@_d_StPointVal+0
	.line	44
;----------------------------------------------------------------------
; 1176 | d_doorPintCnt++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_doorPintCnt+0,r0  ; Unsigned
        sti       r0,@_d_doorPintCnt+0
	.line	46
;----------------------------------------------------------------------
; 1178 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
;----------------------------------------------------------------------
        ldiu      578,r2
        ldiu      15,r1
        addi      fp,r2
        push      r2
        ldiu      300,r0
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	48
;----------------------------------------------------------------------
; 1180 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	50
;----------------------------------------------------------------------
; 1182 | if(WORD_L(nTr_St_Info.nAutoManuFlag))//¼öµ¿ ¼³Á¤ ¿îÀü ÀÏ´ë »ç¿ë ÇÑ´Ù.  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beq       L267
;*      Branch Occurs to L267 
	.line	53
;----------------------------------------------------------------------
; 1185 | nDi_Check.nDoor.nFlagCnt++;     //¿ª¿¡ Á¤Â÷ÇØ¼­ ¹®ÀÌ ¿©·¯¹ø ¿­·Áµµ ¿ªÀÌ
;     |  ÇÑ¹ø¸¸ Áõ°¡ ÇÑ´Ù.                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nDi_Check+18,r0     ; Unsigned
        sti       r0,@_nDi_Check+18
	.line	54
;----------------------------------------------------------------------
; 1186 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	55
;----------------------------------------------------------------------
; 1187 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	57
;----------------------------------------------------------------------
; 1189 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
	.line	59
;----------------------------------------------------------------------
; 1191 | nSelf_Test.nSELF_TX_Cnt = 0;//2011_02_17 3.2¹öÀü                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+181
	.line	60
;----------------------------------------------------------------------
; 1192 | nSelf_Test.nSELF_TX_Cnt_B = 0;//2011_02_17 3.2¹öÀü                     
; 1195 | else                                                                   
; 1198 | //TCMS ¼ö½Å ÄÚµå¿Í ÇöÀç °Ë»öÇÑ ÄÚµå¸¦ ºñ±³ ÇÑ´Ù.                       
; 1199 | //ÀÏÄ¡ ÇÒ °æ¿ì Á¤»ó Ã³¸®ÇÏ°í.                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+182
        bu        L275
;*      Branch Occurs to L275 
L267:        
	.line	69
;----------------------------------------------------------------------
; 1201 | d_TcmsRxNow = WORD_L(nTmsRxData.nNow);                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+3,r0
        sti       r0,@_d_TcmsRxNow+0
	.line	70
;----------------------------------------------------------------------
; 1202 | d_TcmsRxNex = WORD_L(nTmsRxData.nNext);                                
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+4,r0
        sti       r0,@_d_TcmsRxNex+0
	.line	71
;----------------------------------------------------------------------
; 1203 | if((WORD_L(nTmsRxData.nNow) == WORD_L(nTr_St_Info.nNow.nCode)) &&      
; 1204 |         (WORD_L(nTmsRxData.nNext) == WORD_L(nTr_St_Info.nNext.nCode))) 
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nTmsRxData+3,r1
        ldiu      255,r0
        and       @_nTr_St_Info+169,r0
        cmpi3     r0,r1
        bne       L270
;*      Branch Occurs to L270 
        ldiu      255,r1
        ldiu      255,r0
        and       @_nTr_St_Info+215,r1
        and       @_nTmsRxData+4,r0
        cmpi3     r1,r0
        bne       L270
;*      Branch Occurs to L270 
	.line	75
;----------------------------------------------------------------------
; 1207 | nDi_Check.nDoor.nFlagCnt++;     //¿ª¿¡ Á¤Â÷ÇØ¼­ ¹®ÀÌ ¿©·¯¹ø ¿­·Áµµ ¿ªÀÌ
;     |  ÇÑ¹ø¸¸ Áõ°¡ ÇÑ´Ù.                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nDi_Check+18,r0     ; Unsigned
        sti       r0,@_nDi_Check+18
	.line	77
;----------------------------------------------------------------------
; 1209 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	78
;----------------------------------------------------------------------
; 1210 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	80
;----------------------------------------------------------------------
; 1212 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
	.line	82
;----------------------------------------------------------------------
; 1214 | nSelf_Test.nSELF_TX_Cnt = 0;//2011_02_17 3.2¹öÀü                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+181
	.line	83
;----------------------------------------------------------------------
; 1215 | nSelf_Test.nSELF_TX_Cnt_B = 0;//2011_02_17 3.2¹öÀü                     
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+182
	.line	85
;----------------------------------------------------------------------
; 1217 | sprintf(szBuf2,"---Self Test Start...");strcat(szBuf,szBuf2);          
;----------------------------------------------------------------------
        ldiu      @CL30,r1
        ldiu      513,r0
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
        ldiu      513,r1
        ldiu      fp,r0
        addi      fp,r1
        push      r1
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	86
;----------------------------------------------------------------------
; 1218 | sprintf(szBuf2,"---DoorPoen Function-1 ST:[%02X]H-ST[%02X]H code Using
;     | Find",WORD_L(nTmsRxData.nNow),WORD_L(nTmsRxData.nNext)); strcat(szBuf,s
;     | zBuf2);                                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       @_nTmsRxData+4,r1
        and       @_nTmsRxData+3,r0
        ldiu      @CL31,r2
        push      r1
        push      r0
        push      r2
        ldiu      513,r0
        addi      fp,r0
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      4,sp
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	87
;----------------------------------------------------------------------
; 1219 | sprintf(szBuf2,"---all Text :[%d]\r\n",WORD_L(nIndex_Flag.nIndexST_STAl
;     | lCnt)); strcat(szBuf,szBuf2);                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nIndex_Flag+570,r0
        push      r0
        ldiu      513,r0
        ldiu      @CL32,r1
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	89
;----------------------------------------------------------------------
; 1221 | d_DiDi_Cnt++;                                                          
; 1224 | else                                                                   
; 1225 | { //¼ö½Å ÄÚµå¿Í ÇöÀç ÄÚµå°¡ ÀÏÄ¡ ÇÏÁö ¾ÊÀ» °æ¿ì ÄÚµå¸¦ ´Ù½Ã °Ë»ö ÇÑ´Ù. 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_DiDi_Cnt+0,r0     ; Unsigned
        sti       r0,@_d_DiDi_Cnt+0
        bu        L275
;*      Branch Occurs to L275 
L270:        
	.line	94
;----------------------------------------------------------------------
; 1226 | for(i=0;i<WORD_L(nTr_St_Info.nStation_MaxCnt);i++)                     
;----------------------------------------------------------------------
        ldiu      577,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      255,r0
        ldiu      *+fp(ir0),r1
        and       @_nTr_St_Info+1,r0
        cmpi3     r0,r1
        bhs       L275
;*      Branch Occurs to L275 
L271:        
	.line	97
;----------------------------------------------------------------------
; 1229 | if(WORD_L(nTr_St_Info.nStation_List[i] == WORD_L(nTmsRxData.nNow)) &&  
; 1230 | WORD_L(nTr_St_Info.nStation_List[(i+1)] == WORD_L(nTmsRxData.nNext)))  
;----------------------------------------------------------------------
        ldiu      577,ir0
        ldiu      255,r1
        ldiu      @CL21,ar0
        ldiu      *+fp(ir0),ir0
        and       @_nTmsRxData+3,r1
        ldiu      *+ar0(ir0),r2
        cmpi3     r1,r2
        ldiu      0,r0
        ldieq     1,r0
        tstb      255,r0
        beq       L274
;*      Branch Occurs to L274 
        ldiu      1,r1
        ldiu      577,ir0
        ldiu      255,r0
        addi3     r1,*+fp(ir0),ir0
        and       @_nTmsRxData+4,r0
        ldiu      *+ar0(ir0),r2
        cmpi3     r0,r2
        ldiu      0,r1
        ldieq     1,r1
        tstb      255,r1
        beq       L274
;*      Branch Occurs to L274 
	.line	100
;----------------------------------------------------------------------
; 1232 | nDi_Check.nDoor.nFlagCnt++;     //¿ª¿¡ Á¤Â÷ÇØ¼­ ¹®ÀÌ ¿©·¯¹ø ¿­·Áµµ ¿ªÀÌ
;     |  ÇÑ¹ø¸¸ Áõ°¡ ÇÑ´Ù.                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nDi_Check+18,r0     ; Unsigned
        sti       r0,@_nDi_Check+18
	.line	102
;----------------------------------------------------------------------
; 1234 | nTr_St_Info.nStation_PointCnt = i;                                     
;----------------------------------------------------------------------
        ldiu      577,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nTr_St_Info+3
	.line	103
;----------------------------------------------------------------------
; 1235 | nTr_St_Info.nStation_StartPointCnt = i+1;                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        sti       r0,@_nTr_St_Info+2
	.line	106
;----------------------------------------------------------------------
; 1238 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	107
;----------------------------------------------------------------------
; 1239 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	109
;----------------------------------------------------------------------
; 1241 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
	.line	111
;----------------------------------------------------------------------
; 1243 | nSelf_Test.nSELF_TX_Cnt = 0;//2011_02_17 3.2¹öÀü                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+181
	.line	112
;----------------------------------------------------------------------
; 1244 | nSelf_Test.nSELF_TX_Cnt_B = 0;//2011_02_17 3.2¹öÀü                     
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+182
	.line	114
;----------------------------------------------------------------------
; 1246 | sprintf(szBuf2,"---Self Test Start...");strcat(szBuf,szBuf2);          
;----------------------------------------------------------------------
        ldiu      @CL30,r1
        ldiu      513,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	115
;----------------------------------------------------------------------
; 1247 | sprintf(szBuf2,"---DoorPoen Function-2 ST:[%02X]H-ST[%02X]H code Using
;     | Find",WORD_L(nTmsRxData.nNow),WORD_L(nTmsRxData.nNext)); strcat(szBuf,s
;     | zBuf2);                                                                
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        and       @_nTmsRxData+4,r2
        and       @_nTmsRxData+3,r1
        push      r2
        push      r1
        ldiu      @CL33,r0
        push      r0
        ldiu      513,r0
        addi      fp,r0
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      4,sp
        ldiu      513,r1
        addi      fp,r1
        push      r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	116
;----------------------------------------------------------------------
; 1248 | sprintf(szBuf2,"---all Text :[%d]\r\n",WORD_L(nIndex_Flag.nIndexST_STAl
;     | lCnt)); strcat(szBuf,szBuf2);                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      513,r1
        and       @_nIndex_Flag+570,r0
        addi      fp,r1
        push      r0
        ldiu      @CL32,r2
        push      r2
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      513,r0
        addi      fp,r0
        push      r0
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	119
;----------------------------------------------------------------------
; 1251 | d_StCodeFineAuto++;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_StCodeFineAuto+0,r0 ; Unsigned
        sti       r0,@_d_StCodeFineAuto+0
	.line	121
;----------------------------------------------------------------------
; 1253 | break;                                                                 
;----------------------------------------------------------------------
        bu        L275
;*      Branch Occurs to L275 
L274:        
	.line	94
        ldiu      1,r0
        ldiu      577,ir0
        ldiu      577,ir1
        addi3     r0,*+fp(ir0),r0
        sti       r0,*+fp(ir1)
        ldiu      255,r0
        ldiu      *+fp(ir0),r1
        and       @_nTr_St_Info+1,r0
        cmpi3     r0,r1
        blo       L271
;*      Branch Occurs to L271 
L275:        
	.line	128
;----------------------------------------------------------------------
; 1260 | user_DebugPrint(szBuf);                                                
; 1264 | } //½Ã¹Ä·¹ÀÌ¼ÇÀÏ¶§ µ¿ÀÛ                                                
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L285
;*      Branch Occurs to L285 
L276:        
	.line	133
;----------------------------------------------------------------------
; 1265 | else if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag)      
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L285
;*      Branch Occurs to L285 
        ldi       @_nTr_St_Info+67,r0
        beq       L285
;*      Branch Occurs to L285 
	.line	136
;----------------------------------------------------------------------
; 1268 | d_a_Dest = WORD_L(nTr_St_Info.nDest.nCode);                            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        sti       r0,@_d_a_Dest+0
	.line	137
;----------------------------------------------------------------------
; 1269 | d_a_Next = WORD_L(nTr_St_Info.nNext.nCode);                            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+215,r0
        sti       r0,@_d_a_Next+0
	.line	139
;----------------------------------------------------------------------
; 1271 | d_a_simCnt++;                                                          
; 1273 | //if(WORD_L(nTr_St_Info.nNext.nCode) != WORD_L(nTr_St_Info.nDest.nCode)
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_a_simCnt+0,r0     ; Unsigned
        sti       r0,@_d_a_simCnt+0
	.line	142
;----------------------------------------------------------------------
; 1274 | if((WORD_L(nTr_St_Info.nNext.nCode) != WORD_L(nTr_St_Info.nDest.nCode))
;     |  || (!nTr_St_Info.nStation_StartPointCnt)) //101106                    
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nTr_St_Info+215,r1
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        cmpi3     r0,r1
        bne       L280
;*      Branch Occurs to L280 
        ldi       @_nTr_St_Info+2,r0
        bne       L284
;*      Branch Occurs to L284 
L280:        
	.line	145
;----------------------------------------------------------------------
; 1277 | if(!nTr_St_Info.nStation_StartPointCnt)//Ã³À½ ¿ªÀÏ °æ¿ì¿¡´Â ÀÌ¹Ì ¿ªÄÚµå
;     | °¡ Ã³À½ÀÌ·Î µÇ¾î ÀÖ±â ¶§¹®¿¡ ¿ª Æ÷ÀÎÅÍ¸¦ Áõ°¡ÇÒ ÇÊ¿ä°¡ ¾ø´Ù.           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+2,r0
        bne       L282
;*      Branch Occurs to L282 
	.line	147
;----------------------------------------------------------------------
; 1279 | nTr_St_Info.nStation_StartPointCnt++;                                  
; 1281 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
        bu        L283
;*      Branch Occurs to L283 
L282:        
	.line	151
;----------------------------------------------------------------------
; 1283 | nTr_St_Info.nStation_PointCnt++;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+3,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+3
	.line	152
;----------------------------------------------------------------------
; 1284 | nTr_St_Info.nStation_StartPointCnt++;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
L283:        
	.line	155
;----------------------------------------------------------------------
; 1287 | d_doorPintCnt++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_doorPintCnt+0,r0  ; Unsigned
        sti       r0,@_d_doorPintCnt+0
	.line	157
;----------------------------------------------------------------------
; 1289 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
; 1292 | else                                                                   
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      300,r2
        ldiu      578,r0
        addi      fp,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L285
;*      Branch Occurs to L285 
L284:        
	.line	162
;----------------------------------------------------------------------
; 1294 | nTr_St_Info.nStation_PointCnt = WORD_L(nTr_St_Info.nStation_MaxCnt)-1; 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        sti       r0,@_nTr_St_Info+3
	.line	163
;----------------------------------------------------------------------
; 1295 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+70
	.line	164
;----------------------------------------------------------------------
; 1296 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	166
;----------------------------------------------------------------------
; 1298 | nTr_St_Info.nClean_Flag = FALSE; //½Ã¹Ä·¹ÀÌ¼ÇÀÌ ¿Ï·á µÇ¸é ¹«Ç¥½Ã flage°
;     | ¡ FALSE·Î µÈ´Ù.                                                        
; 1300 | //nTr_St_Info.nStopPatNum = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+369
L285:        
	.line	173
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      609,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1305,000000000h,607



	.sect	".cinit"
	.field  	1,32
	.field  	_d_simaaa+0,32
	.field  	0,32		; _d_simaaa @ 0

	.sect	".text"

	.global	_d_simaaa
	.bss	_d_simaaa,1
	.sym	_d_simaaa,_d_simaaa,12,2,32
	.sect	 ".text"

	.global	_DP_Door_CLOSE
	.sym	_DP_Door_CLOSE,_DP_Door_CLOSE,32,2,0
	.func	1310
;******************************************************************************
;* FUNCTION NAME: _DP_Door_CLOSE                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_Door_CLOSE:
	.line	1
;----------------------------------------------------------------------
; 1310 | void DP_Door_CLOSE()                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 1312 | if((DWORD_L(nIndex_Flag.nDistanRe) != DWORD_L(nIndex_Flag.nDistanNew))
;     | && DWORD_L(nIndex_Flag.nDistanNew ))                                   
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+575,r0
        ldiu      @_nIndex_Flag+574,r1
        and       65535,r0
        and       65535,r1
        cmpi3     r0,r1
        beq       L291
;*      Branch Occurs to L291 
        ldiu      @_nIndex_Flag+575,r0
        tstb      65535,r0
        beq       L291
;*      Branch Occurs to L291 
	.line	5
;----------------------------------------------------------------------
; 1314 | d_simaaa++;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_simaaa+0,r0       ; Unsigned
        sti       r0,@_d_simaaa+0
	.line	6
;----------------------------------------------------------------------
; 1315 | if(WORD_L(nIndex_Flag.nIndexDI_DICnt) == WORD_L(nIndex_Flag.nIndexCnt))
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nIndex_Flag+573,r1
        ldiu      255,r0
        and       @_nIndex_Flag+572,r0
        cmpi3     r1,r0
        bne       L291
;*      Branch Occurs to L291 
	.line	9
;----------------------------------------------------------------------
; 1318 | nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(nIndex_Flag.nInde
;     | xBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanRe,nIndex_Flag.nD
;     | istanNew);                                                             
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+575,r0
        push      r0
        ldiu      @_nIndex_Flag+574,r1
        ldiu      @CL34,r0
        push      r1
        ldiu      @_nIndex_Flag+570,r1
        push      r1
        push      r0
        call      _NVSRAM_Find_Schedule_Cnt
                                        ; Call Occurs
        sti       r0,@_nIndex_Flag+572
        subi      4,sp
	.line	11
;----------------------------------------------------------------------
; 1320 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	12
;----------------------------------------------------------------------
; 1321 | nIndex_Flag.nDistanRe = nIndex_Flag.nDistanNew;                        
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+575,r0
        sti       r0,@_nIndex_Flag+574
L291:        
	.line	15
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1324,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_sInfoNum+0,32
	.field  	2,32		; _sInfoNum @ 0

	.sect	".text"

	.global	_sInfoNum
	.bss	_sInfoNum,1
	.sym	_sInfoNum,_sInfoNum,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_StallCnt_Text+0,32
	.field  	0,32		; _d_StallCnt_Text @ 0

	.sect	".text"

	.global	_d_StallCnt_Text
	.bss	_d_StallCnt_Text,1
	.sym	_d_StallCnt_Text,_d_StallCnt_Text,4,2,32
	.sect	 ".text"

	.global	_DP_ALL_TEXT_CHECK
	.sym	_DP_ALL_TEXT_CHECK,_DP_ALL_TEXT_CHECK,32,2,0
	.func	1332
;******************************************************************************
;* FUNCTION NAME: _DP_ALL_TEXT_CHECK                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_ALL_TEXT_CHECK:
	.line	1
;----------------------------------------------------------------------
; 1332 | void DP_ALL_TEXT_CHECK()                                               
; 1334 | //¿ª Á¤º¸¸¦ È®ÀÎÇÑ´Ù. ex)½Ã¹ß-Áß°£,Áß°£-Áß°£,Áß°£-Á¾Âø                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 1335 | sInfoNum = DP_Find_StationInfo(nTr_St_Info.nNow.nCode,nTr_St_Info.nNext
;     | .nCode,nTr_St_Info.nDest.nCode,nTr_St_Info.nStart.nCode,nTr_St_Info.nNo
;     | w.nCode);                                                              
; 1336 | // ¿ª°ú¿ª »çÀÌ¿¡ ÀüÃ¼ ¹®ÀåÀ» °Ë»öÇÑ´Ù.                                 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+169,r0
        push      r0
        ldiu      @_nTr_St_Info+77,r0
        push      r0
        ldiu      @_nTr_St_Info+261,r0
        push      r0
        ldiu      @_nTr_St_Info+215,r0
        push      r0
        ldiu      @_nTr_St_Info+169,r0
        push      r0
        call      _DP_Find_StationInfo
                                        ; Call Occurs
        subi      5,sp
        sti       r0,@_sInfoNum+0
	.line	6
;----------------------------------------------------------------------
; 1337 | d_StallCnt_Text = nIndex_Flag.nIndexST_STAllCnt = NVSRAM_Display_Schedu
;     | le(nTr_St_Info.nNow.nCode,nTr_St_Info.nNext.nCode,sInfoNum);           
; 1338 | //ÀüÃ¼ ¹®Àå°¡¿îµ¥ ÇöÀç °Å¸® °ª¿¡ ¸Â´Â ¹®Àå °Ë»ö ¹× Ç¥Ãâ.               
;----------------------------------------------------------------------
        ldiu      @_sInfoNum+0,r0
        push      r0
        ldiu      @_nTr_St_Info+215,r0
        push      r0
        ldiu      @_nTr_St_Info+169,r0
        push      r0
        call      _NVSRAM_Display_Schedule
                                        ; Call Occurs
        sti       r0,@_nIndex_Flag+570
        subi      3,sp
        sti       r0,@_d_StallCnt_Text+0
	.line	8
;----------------------------------------------------------------------
; 1339 | nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(nIndex_Flag.nInde
;     | xBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanRe,nIndex_Flag.nD
;     | istanNew);                                                             
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+575,r0
        push      r0
        ldiu      @_nIndex_Flag+574,r0
        push      r0
        ldiu      @_nIndex_Flag+570,r0
        ldiu      @CL34,r1
        push      r0
        push      r1
        call      _NVSRAM_Find_Schedule_Cnt
                                        ; Call Occurs
        sti       r0,@_nIndex_Flag+572
        subi      4,sp
	.line	9
;----------------------------------------------------------------------
; 1340 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	11
;----------------------------------------------------------------------
; 1342 | nIndex_Flag.nDistanRe++;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+574,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+574
	.line	12
;----------------------------------------------------------------------
; 1343 | nIndex_Flag.nDistanNew++;                                              
; 1345 | //nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInp
;     | ut.nNum;                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+575,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+575
	.line	15
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1346,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_BetweenCnt+0,32
	.field  	0,32		; _d_BetweenCnt @ 0

	.sect	".text"

	.global	_d_BetweenCnt
	.bss	_d_BetweenCnt,1
	.sym	_d_BetweenCnt,_d_BetweenCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Text_Send_Cnt+0,32
	.field  	0,32		; _d_Text_Send_Cnt @ 0

	.sect	".text"

	.global	_d_Text_Send_Cnt
	.bss	_d_Text_Send_Cnt,1
	.sym	_d_Text_Send_Cnt,_d_Text_Send_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Text_Send_Num+0,32
	.field  	0,32		; _d_Text_Send_Num @ 0

	.sect	".text"

	.global	_d_Text_Send_Num
	.bss	_d_Text_Send_Num,1
	.sym	_d_Text_Send_Num,_d_Text_Send_Num,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Text_Send_AllNow+0,32
	.field  	0,32		; _d_Text_Send_AllNow @ 0

	.sect	".text"

	.global	_d_Text_Send_AllNow
	.bss	_d_Text_Send_AllNow,1
	.sym	_d_Text_Send_AllNow,_d_Text_Send_AllNow,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Text_Send_NowCnt+0,32
	.field  	0,32		; _d_Text_Send_NowCnt @ 0

	.sect	".text"

	.global	_d_Text_Send_NowCnt
	.bss	_d_Text_Send_NowCnt,1
	.sym	_d_Text_Send_NowCnt,_d_Text_Send_NowCnt,12,2,32

	.sect	".cinit"
	.field  	IR_9,32
	.field  	.init0$1+0,32
	.field  	73,32		; .init0$1[0] @ 0
	.field  	77,32		; .init0$1[1] @ 32
	.field  	32,32		; .init0$1[2] @ 64
	.field  	58,32		; .init0$1[3] @ 96
	.field  	32,32		; .init0$1[4] @ 128
	.field  	0,32		; .init0$1[5] @ 160
IR_9:	.set	6

	.sect	".text"

	.sect	".cinit"
	.field  	IR_10,32
	.field  	.init1$2+0,32
	.field  	80,32		; .init1$2[0] @ 0
	.field  	82,32		; .init1$2[1] @ 32
	.field  	32,32		; .init1$2[2] @ 64
	.field  	58,32		; .init1$2[3] @ 96
	.field  	32,32		; .init1$2[4] @ 128
	.field  	0,32		; .init1$2[5] @ 160
IR_10:	.set	6

	.sect	".text"

	.sect	".cinit"
	.field  	IR_11,32
	.field  	.init2$3+0,32
	.field  	84,32		; .init2$3[0] @ 0
	.field  	69,32		; .init2$3[1] @ 32
	.field  	88,32		; .init2$3[2] @ 64
	.field  	84,32		; .init2$3[3] @ 96
	.field  	32,32		; .init2$3[4] @ 128
	.field  	83,32		; .init2$3[5] @ 160
	.field  	69,32		; .init2$3[6] @ 192
	.field  	78,32		; .init2$3[7] @ 224
	.field  	68,32		; .init2$3[8] @ 256
	.field  	73,32		; .init2$3[9] @ 288
	.field  	78,32		; .init2$3[10] @ 320
	.field  	71,32		; .init2$3[11] @ 352
	.field  	46,32		; .init2$3[12] @ 384
	.field  	46,32		; .init2$3[13] @ 416
	.field  	0,32		; .init2$3[14] @ 448
IR_11:	.set	15

	.sect	".text"

	.sect	".cinit"
	.field  	IR_12,32
	.field  	.init3$4+0,32
	.field  	84,32		; .init3$4[0] @ 0
	.field  	69,32		; .init3$4[1] @ 32
	.field  	88,32		; .init3$4[2] @ 64
	.field  	84,32		; .init3$4[3] @ 96
	.field  	32,32		; .init3$4[4] @ 128
	.field  	70,32		; .init3$4[5] @ 160
	.field  	73,32		; .init3$4[6] @ 192
	.field  	78,32		; .init3$4[7] @ 224
	.field  	73,32		; .init3$4[8] @ 256
	.field  	83,32		; .init3$4[9] @ 288
	.field  	72,32		; .init3$4[10] @ 320
	.field  	33,32		; .init3$4[11] @ 352
	.field  	33,32		; .init3$4[12] @ 384
	.field  	33,32		; .init3$4[13] @ 416
	.field  	0,32		; .init3$4[14] @ 448
IR_12:	.set	15

	.sect	".text"
	.sect	 ".text"

	.global	_DP_Send_IDD_Check
	.sym	_DP_Send_IDD_Check,_DP_Send_IDD_Check,32,2,0
	.func	1358
;******************************************************************************
;* FUNCTION NAME: _DP_Send_IDD_Check                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 599 Auto + 0 SOE = 601 words      *
;******************************************************************************
_DP_Send_IDD_Check:
	.bss	.init0$1,10
	.sym	.init0$1,.init0$1,60,3,320,,10
	.bss	.init1$2,10
	.sym	.init1$2,.init1$2,60,3,320,,10
	.bss	.init2$3,15
	.sym	.init2$3,.init2$3,60,3,480,,15
	.bss	.init3$4,20
	.sym	.init3$4,.init3$4,60,3,640,,20
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_sTemp,513,4,1,32
	.sym	_sTxTextNum,514,12,1,32
	.sym	_sImText,515,60,1,320,,10
	.sym	_sPrText,525,60,1,320,,10
	.sym	_sStText,535,60,1,480,,15
	.sym	_sEndText,550,60,1,640,,20
	.sym	_sIm_Pr_GpSendData,570,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 1358 | void DP_Send_IDD_Check()                                               
; 1360 | char szBuf[512];                                                       
; 1361 | int sTemp;                                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      599,sp
	.line	5
;----------------------------------------------------------------------
; 1362 | UCHAR sTxTextNum = 0;                                                  
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	7
;----------------------------------------------------------------------
; 1364 | UCHAR sImText[10]={"IM : "};                                           
;----------------------------------------------------------------------
        ldiu      515,ar1
        ldiu      @CL35,ar0
        addi      fp,ar1
        ldiu      *ar0++(1),r0
        rpts      8                     ; Fast MEMCPY(#39)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	8
;----------------------------------------------------------------------
; 1365 | UCHAR sPrText[10]={"PR : "};                                           
;----------------------------------------------------------------------
        ldiu      525,ar0
        addi      fp,ar0
        ldiu      @CL36,ar1
        ldiu      *ar1++(1),r0
        rpts      8                     ; Fast MEMCPY(#42)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	9
;----------------------------------------------------------------------
; 1366 | UCHAR sStText[15]={"TEXT SENDING.."};                                  
;----------------------------------------------------------------------
        ldiu      535,ar0
        ldiu      @CL37,ar1
        addi      fp,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#45)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	10
;----------------------------------------------------------------------
; 1367 | UCHAR sEndText[20]={"TEXT FINISH!!!"};                                 
; 1369 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        ldiu      @CL38,ar1
        ldiu      550,ar0
        addi      fp,ar0
        ldiu      *ar1++(1),r0
        rpts      18                    ; Fast MEMCPY(#48)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	14
;----------------------------------------------------------------------
; 1371 | memset(sIm_Pr_GpSendData,0x20,30);                                     
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        push      r2
        push      r1
        ldiu      570,r0
        addi      fp,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 1373 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 1375 | d_Text_Send_Cnt = nIndex_Flag.nAllCnt_Cnt;                             
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+571,r0
        sti       r0,@_d_Text_Send_Cnt+0
	.line	20
;----------------------------------------------------------------------
; 1377 | d_Text_Send_AllNow = nIndex_Flag.nIndexDI_DICnt;                       
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+572,r0
        sti       r0,@_d_Text_Send_AllNow+0
	.line	21
;----------------------------------------------------------------------
; 1378 | d_Text_Send_NowCnt = nIndex_Flag.nIndexCnt;                            
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+573,r0
        sti       r0,@_d_Text_Send_NowCnt+0
	.line	24
;----------------------------------------------------------------------
; 1381 | if(WORD_L(nIndex_Flag.nIndexCnt) < WORD_L(nIndex_Flag.nIndexDI_DICnt))
;     |                          // glIndex´Â Tx Åë½Å ·çÆ¾ÀÌ ½ÃÀÛµÈ °æ¿ì       
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       @_nIndex_Flag+573,r1
        and       @_nIndex_Flag+572,r0
        cmpi3     r0,r1
        bhsd      L325
        ldilo     @_nIndex_Flag+573,ir0
        ldilo     @CL34,ar0
        ldilo     513,ir1
;*      Branch Occurs to L325 
	.line	27
;----------------------------------------------------------------------
; 1384 | sTemp = nIndex_Flag.nIndexBuf[nIndex_Flag.nIndexCnt];                  
; 1386 | //if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type) == 3)//{memset(glGp
;     | Buf1,0x00,32);}}                                                       
;----------------------------------------------------------------------
        ldiu      *+ar0(ir0),r0
        sti       r0,*+fp(ir1)
	.line	31
;----------------------------------------------------------------------
; 1388 | if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type) ==0) //IM            
;----------------------------------------------------------------------
        ldiu      513,ir0
        ldiu      @CL39,ar0
        ldiu      3,r0
        mpyi3     r0,*+fp(ir0),ir0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bned      L309
        ldine     3,r0
        ldine     513,ir0
        ldine     @CL39,ar0
;*      Branch Occurs to L309 
	.line	33
;----------------------------------------------------------------------
; 1390 | sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp].Number)+1;       
;----------------------------------------------------------------------
        ldiu      513,ir0
        ldiu      3,r1
        ldiu      @CL40,ar0
        mpyi3     r1,*+fp(ir0),ir1
        and3      r0,*+ar0(ir1),r0
        ldiu      514,ir0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(ir0)
	.line	35
;----------------------------------------------------------------------
; 1392 | d_Text_Send_Num = d_Text_Send_Num%20;                                  
;----------------------------------------------------------------------
        ldiu      20,r1
        ldiu      @_d_Text_Send_Num+0,r0
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_d_Text_Send_Num+0
	.line	36
;----------------------------------------------------------------------
; 1393 | d_Text_Send_NumBuf[d_Text_Send_Num++] = sTxTextNum;                    
; 1395 | //nTr_St_Info.nSendIddTxFlag = FALSE;                                  
;----------------------------------------------------------------------
        ldiu      514,ir1
        ldiu      r0,ir0
        ldiu      1,r0
        ldiu      @CL41,ar0
        addi      ir0,r0
        sti       r0,@_d_Text_Send_Num+0
        ldiu      *+fp(ir1),r0
        sti       r0,*+ar0(ir0)
	.line	40
;----------------------------------------------------------------------
; 1397 | if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum ==
;     |  5)                                                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+5,r0
        cmpi      1,r0
        beq       L300
;*      Branch Occurs to L300 
        cmpi      5,r0
        bne       L307
;*      Branch Occurs to L307 
L300:        
	.line	42
;----------------------------------------------------------------------
; 1399 | memcpy(sIm_Pr_GpSendData,sImText,5);                                   
;----------------------------------------------------------------------
        ldiu      570,ar0
        ldiu      515,ar1
        addi      fp,ar0
        addi      fp,ar1
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#51)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	43
;----------------------------------------------------------------------
; 1400 | sIm_Pr_GpSendData[5] = (sTxTextNum/100)> 0x0A ? 0x30 : (sTxTextNum/100)
;     | +0x30;                                                                 
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        bls       L302
;*      Branch Occurs to L302 
        bud       L303
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L303 
L302:        
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L303:        
        ldiu      575,ir0
        sti       r0,*+fp(ir0)
	.line	44
;----------------------------------------------------------------------
; 1401 | sIm_Pr_GpSendData[6] = (sTxTextNum/10)> 0x0A ? 0x30 : (sTxTextNum/10)+0
;     | x30;                                                                   
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        bls       L305
;*      Branch Occurs to L305 
        bud       L306
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L306 
L305:        
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L306:        
        ldiu      576,ir0
        sti       r0,*+fp(ir0)
	.line	45
;----------------------------------------------------------------------
; 1402 | sIm_Pr_GpSendData[7] = (sTxTextNum%10)+0x30;                           
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      577,ir0
        addi      48,r0                 ; Unsigned
        sti       r0,*+fp(ir0)
	.line	47
;----------------------------------------------------------------------
; 1404 | memcpy(&sIm_Pr_GpSendData[9],sStText,14);                              
;----------------------------------------------------------------------
        ldiu      579,ar0
        ldiu      535,ar1
        addi      fp,ar0
        addi      fp,ar1
        ldiu      *ar1++(1),r0
        rpts      12                    ; Fast MEMCPY(#54)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	49
;----------------------------------------------------------------------
; 1406 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        // PIB¿¡ ¹®Àå Àü¼Û.    
;----------------------------------------------------------------------
        ldiu      570,r2
        ldiu      15,r1
        addi      fp,r2
        ldiu      300,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L307:        
	.line	52
;----------------------------------------------------------------------
; 1409 | nSccSendFlag.nIM_Text.nTxNum = sTxTextNum;      //¹®Àå Àü¼ÛÇÏ´Â ºÎºÐ.  
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nSccSendFlag+6
	.line	53
;----------------------------------------------------------------------
; 1410 | nSccSendFlag.nIM_Text.nTxFlag = 1;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+7
	.line	55
;----------------------------------------------------------------------
; 1412 | nIndex_Flag.nIndexCnt++;                                               
;----------------------------------------------------------------------
        addi      @_nIndex_Flag+573,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+573
	.line	56
;----------------------------------------------------------------------
; 1413 | nIndex_Flag.nAllCnt_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+571,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+571
	.line	58
;----------------------------------------------------------------------
; 1415 | sprintf(szBuf,"--IM Text[%d]  : Send Cnt[%d] -> Dist[%d]\r\n",WORD_L(sT
;     | xTextNum),WORD_L(nIndex_Flag.nAllCnt_Cnt),nTmsRxData.nDist);           
;----------------------------------------------------------------------
        ldiu      255,r2
        ldiu      255,r1
        ldiu      @_nTmsRxData+2,rs
        ldiu      @CL42,r3
        and       @_nIndex_Flag+571,r1
        and3      r2,*+fp(ir0),r2
        push      rs
        ldiu      fp,r0
        push      r1
        push      r2
        addi      1,r0
        push      r3
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      5,sp
	.line	59
;----------------------------------------------------------------------
; 1416 | user_DebugPrint(szBuf);                                                
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L320
;*      Branch Occurs to L320 
	.line	62
;----------------------------------------------------------------------
; 1419 | else if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type)==1) //PR        
;----------------------------------------------------------------------
L309:        
        mpyi3     r0,*+fp(ir0),ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      1,r0
        bne       L320
;*      Branch Occurs to L320 
	.line	64
;----------------------------------------------------------------------
; 1421 | d_Text_Send_Num = sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp]
;     | .Number)+1;                                                            
; 1422 | //nTr_St_Info.nSendIddTxFlag = FALSE;                                  
;----------------------------------------------------------------------
        ldiu      3,r0
        ldiu      513,ir0
        ldiu      255,r1
        ldiu      @CL40,ar0
        mpyi3     r0,*+fp(ir0),ir0
        ldiu      514,ir1
        and3      r1,*+ar0(ir0),r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(ir1)
        sti       r0,@_d_Text_Send_Num+0
	.line	67
;----------------------------------------------------------------------
; 1424 | if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum ==
;     |  5)                                                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+5,r0
        cmpi      1,r0
        beq       L312
;*      Branch Occurs to L312 
        cmpi      5,r0
        bne       L319
;*      Branch Occurs to L319 
L312:        
	.line	69
;----------------------------------------------------------------------
; 1426 | memcpy(sIm_Pr_GpSendData,sPrText,5);                                   
;----------------------------------------------------------------------
        ldiu      570,ar1
        ldiu      525,ar0
        addi      fp,ar1
        addi      fp,ar0
        ldiu      *ar0++(1),r0
        rpts      3                     ; Fast MEMCPY(#57)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	70
;----------------------------------------------------------------------
; 1427 | sIm_Pr_GpSendData[5] = (sTxTextNum/100)> 0x0A ? 0x30 : (sTxTextNum/100)
;     | +0x30;                                                                 
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        bls       L314
;*      Branch Occurs to L314 
        bud       L315
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L315 
L314:        
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L315:        
        ldiu      575,ir0
        sti       r0,*+fp(ir0)
	.line	71
;----------------------------------------------------------------------
; 1428 | sIm_Pr_GpSendData[6] = (sTxTextNum/10)> 0x0A ? 0x30 : (sTxTextNum/10)+0
;     | x30;                                                                   
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        bls       L317
;*      Branch Occurs to L317 
        bud       L318
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L318 
L317:        
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L318:        
        ldiu      576,ir0
        sti       r0,*+fp(ir0)
	.line	72
;----------------------------------------------------------------------
; 1429 | sIm_Pr_GpSendData[7] = (sTxTextNum%10)+0x30;                           
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      577,ir0
        addi      48,r0                 ; Unsigned
        sti       r0,*+fp(ir0)
	.line	74
;----------------------------------------------------------------------
; 1431 | memcpy(&sIm_Pr_GpSendData[9],sStText,14);                              
;----------------------------------------------------------------------
        ldiu      579,ar1
        ldiu      535,ar0
        addi      fp,ar1
        addi      fp,ar0
        ldiu      *ar0++(1),r0
        rpts      12                    ; Fast MEMCPY(#60)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	76
;----------------------------------------------------------------------
; 1433 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        // PIB¿¡ ¹®Àå Àü¼Û.    
;----------------------------------------------------------------------
        ldiu      570,r2
        ldiu      15,r1
        addi      fp,r2
        ldiu      300,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L319:        
	.line	79
;----------------------------------------------------------------------
; 1436 | nSccSendFlag.nPR_Text.nTxNum = sTxTextNum;      //¹®Àå Àü¼ÛÇÏ´Â ºÎºÐ.  
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nSccSendFlag+8
	.line	80
;----------------------------------------------------------------------
; 1437 | nSccSendFlag.nPR_Text.nTxFlag = 1;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+9
	.line	82
;----------------------------------------------------------------------
; 1439 | nIndex_Flag.nIndexCnt++;                                               
;----------------------------------------------------------------------
        addi      @_nIndex_Flag+573,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+573
	.line	83
;----------------------------------------------------------------------
; 1440 | nIndex_Flag.nAllCnt_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+571,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+571
	.line	85
;----------------------------------------------------------------------
; 1442 | sprintf(szBuf,"--PR Text[%d]  : Send Cnt[%d] -> Dist[%d]\r\n",WORD_L(sT
;     | xTextNum),WORD_L(nIndex_Flag.nAllCnt_Cnt),nTmsRxData.nDist);           
;----------------------------------------------------------------------
        ldiu      255,rs
        ldiu      255,r3
        ldiu      @_nTmsRxData+2,r1
        ldiu      @CL43,r2
        and       @_nIndex_Flag+571,r3
        and3      rs,*+fp(ir0),rs
        push      r1
        push      r3
        push      rs
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      5,sp
	.line	86
;----------------------------------------------------------------------
; 1443 | user_DebugPrint(szBuf);                                                
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
L320:        
	.line	90
;----------------------------------------------------------------------
; 1447 | if(WORD_L(nIndex_Flag.nIndexST_STAllCnt) <= WORD_L(nIndex_Flag.nAllCnt_
;     | Cnt))                                                                  
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       @_nIndex_Flag+571,r1
        and       @_nIndex_Flag+570,r0
        cmpi3     r1,r0
        bhi       L325
;*      Branch Occurs to L325 
	.line	92
;----------------------------------------------------------------------
; 1449 | d_BetweenCnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_BetweenCnt+0,r0   ; Unsigned
        sti       r0,@_d_BetweenCnt+0
	.line	93
;----------------------------------------------------------------------
; 1450 | nIndex_Flag.nBetweenFlag = TRUE;        //¸¶Áö¸· ¹®ÀåÀ¸·Î ÀÎ½ÄÇÑ´Ù.
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nIndex_Flag+576
	.line	94
;----------------------------------------------------------------------
; 1451 | memcpy(sIm_Pr_GpSendData,sEndText,14);                                 
;----------------------------------------------------------------------
        ldiu      570,ar1
        ldiu      550,ar0
        addi      fp,ar1
        addi      fp,ar0
        ldiu      *ar0++(1),r0
        rpts      12                    ; Fast MEMCPY(#63)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	96
;----------------------------------------------------------------------
; 1453 | if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum ==
;     |  5)                                                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+5,r0
        cmpi      1,r0
        beq       L323
;*      Branch Occurs to L323 
        cmpi      5,r0
        bne       L324
;*      Branch Occurs to L324 
L323:        
	.line	98
;----------------------------------------------------------------------
; 1455 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
;----------------------------------------------------------------------
        ldiu      570,r2
        ldiu      15,r1
        ldiu      300,r0
        addi      fp,r2
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L324:        
	.line	101
;----------------------------------------------------------------------
; 1458 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	102
;----------------------------------------------------------------------
; 1459 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
L325:        
	.line	105
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      601,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1462,000000000h,599


	.sect	 ".text"

	.global	_DP_IM_PR_TEXT_READ
	.sym	_DP_IM_PR_TEXT_READ,_DP_IM_PR_TEXT_READ,32,2,0
	.func	1471
;******************************************************************************
;* FUNCTION NAME: _DP_IM_PR_TEXT_READ                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,fp,sp,st,rs                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 1101 Auto + 0 SOE = 1106 words    *
;******************************************************************************
_DP_IM_PR_TEXT_READ:
	.sym	_nTextNum,-2,12,9,32
	.sym	_nIM_PR_Code,-3,12,9,32
	.sym	_nUnitCode,-4,12,9,32
	.sym	_sTextLen,1,4,1,32
	.sym	_sTX_DATABUF,2,60,1,17600,,550
	.sym	_sIM_PRTXDATA,552,60,1,17600,,550
	.line	1
;----------------------------------------------------------------------
; 1471 | void DP_IM_PR_TEXT_READ(UCHAR nTextNum,UCHAR nIM_PR_Code,UCHAR nUnitCod
;     | e)                                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1101,sp
	.line	2
;----------------------------------------------------------------------
; 1473 | int sTextLen;                                                          
; 1475 | UCHAR sTX_DATABUF[550];                                                
; 1476 | UCHAR sIM_PRTXDATA[550];                                               
;----------------------------------------------------------------------
	.line	8
;----------------------------------------------------------------------
; 1478 | memset(sTX_DATABUF,0x00,550);                                          
;----------------------------------------------------------------------
        ldiu      550,r2
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
; 1479 | memset(sIM_PRTXDATA,0x00,550);                                         
;----------------------------------------------------------------------
        ldiu      550,r0
        ldiu      0,r1
        push      r0
        ldiu      552,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 1481 | if(WORD_L(nIM_PR_Code) == 1)                                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      1,r0
        bne       L329
;*      Branch Occurs to L329 
	.line	13
;----------------------------------------------------------------------
; 1483 | NVSRAM_Find_IM(nTextNum,nIndex_Flag.nIM_PR_TEXT);                      
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _NVSRAM_Find_IM
                                        ; Call Occurs
        subi      2,sp
        bu        L331
;*      Branch Occurs to L331 
L329:        
	.line	15
;----------------------------------------------------------------------
; 1485 | else if(WORD_L(nIM_PR_Code) == 4)                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      4,r0
        bne       L331
;*      Branch Occurs to L331 
	.line	17
;----------------------------------------------------------------------
; 1487 | NVSRAM_Find_PR(nTextNum,nIndex_Flag.nIM_PR_TEXT);                      
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _NVSRAM_Find_PR
                                        ; Call Occurs
        subi      2,sp
L331:        
	.line	20
;----------------------------------------------------------------------
; 1490 | sTextLen = DP_Insert_SpecialCodeNew(nIndex_Flag.nIM_PR_TEXT,sIM_PRTXDAT
;     | A)+3;                                                                  
;----------------------------------------------------------------------
        ldiu      552,r1
        ldiu      @CL17,r0
        addi      fp,r1
        push      r1
        push      r0
        call      _DP_Insert_SpecialCodeNew
                                        ; Call Occurs
        subi      2,sp
        addi      3,r0                  ; Unsigned
        sti       r0,*+fp(1)
	.line	22
;----------------------------------------------------------------------
; 1492 | SCC_TX_PIB_TEXT(sTX_DATABUF,nUnitCode,0x31,0x0A,sTextLen,sIM_PRTXDATA);
;----------------------------------------------------------------------
        ldiu      552,r3
        ldiu      10,r1
        ldiu      49,r2
        addi      fp,r3
        ldiu      *+fp(1),rs
        push      r3
        ldiu      fp,r0
        push      rs
        push      r1
        addi      2,r0
        push      r2
        ldiu      *-fp(4),r1
        push      r1
        push      r0
        call      _SCC_TX_PIB_TEXT
                                        ; Call Occurs
        subi      6,sp
	.line	24
;----------------------------------------------------------------------
; 1494 | Delay_SCC2_SendTo(sTX_DATABUF,(sTextLen+10),SCC_A_CHANNEL,5);          
;----------------------------------------------------------------------
        ldiu      10,r1
        addi      *+fp(1),r1            ; Unsigned
        ldiu      5,r0
        push      r0
        ldiu      0,r2
        push      r2
        ldiu      fp,r0
        addi      2,r0
        push      r1
        push      r0
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	26
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      1103,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1496,000000000h,1101


	.sect	 ".text"

	.global	_DP_Scroll_Station_Name
	.sym	_DP_Scroll_Station_Name,_DP_Scroll_Station_Name,44,2,0
	.func	1504
;******************************************************************************
;* FUNCTION NAME: _DP_Scroll_Station_Name                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 4 Auto + 0 SOE = 10 words         *
;******************************************************************************
_DP_Scroll_Station_Name:
	.sym	_pSData,-2,28,9,32
	.sym	_pDData,-3,28,9,32
	.sym	_nBufLen,-4,12,9,32
	.sym	_nKorFlag,-5,12,9,32
	.sym	_i,1,4,1,32
	.sym	_k,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_Space_Flag,4,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1504 | UCHAR DP_Scroll_Station_Name(UCHAR *pSData,UCHAR *pDData,UCHAR nBufLen,
;     | UCHAR nKorFlag)                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1506 | int i=0,k,j=0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        sti       r0,*+fp(3)
	.line	4
;----------------------------------------------------------------------
; 1507 | int Space_Flag =0;                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	6
;----------------------------------------------------------------------
; 1509 | if(WORD_L(pSData[j])==0x20)                                            
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *-fp(2),ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        bne       L338
;*      Branch Occurs to L338 
	.line	8
;----------------------------------------------------------------------
; 1511 | for(j=1;j<20;j++) if(WORD_L(pSData[j])!=0x20) break;                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(3)
        cmpi      20,r0
        bge       L338
;*      Branch Occurs to L338 
L336:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        bne       L338
;*      Branch Occurs to L338 
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      20,r0
        blt       L336
;*      Branch Occurs to L336 
L338:        
	.line	10
;----------------------------------------------------------------------
; 1513 | if(WORD_L(pSData[j])!=0x20)                                            
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L356
;*      Branch Occurs to L356 
	.line	12
;----------------------------------------------------------------------
; 1515 | for(k=j;k<nBufLen;k++)                                                 
;----------------------------------------------------------------------
        ldiu      ar0,r0
        sti       r0,*+fp(2)
        ldiu      *+fp(2),r0
        cmpi      *-fp(4),r0
        bhs       L356
;*      Branch Occurs to L356 
L340:        
	.line	14
;----------------------------------------------------------------------
; 1517 | if(nKorFlag)                                                           
;----------------------------------------------------------------------
        ldi       *-fp(5),r0
        beq       L345
;*      Branch Occurs to L345 
	.line	16
;----------------------------------------------------------------------
; 1519 | if(!WORD_L(pSData[k])){ break;}                                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bned      L344
        ldine     1,r1
        ldine     *+fp(1),ar0
        ldine     255,r0
;*      Branch Occurs to L344 
        bu        L356
;*      Branch Occurs to L356 
	.line	17
;----------------------------------------------------------------------
; 1520 | else {pDData[i++]=WORD_L(pSData[k]);}                                  
; 1522 | else                                                                   
;----------------------------------------------------------------------
L344:        
        ldiu      *-fp(2),ir1
        ldiu      *+fp(2),ar1
        ldiu      *-fp(3),ir0
        addi      ar0,r1
        and3      r0,*+ar1(ir1),r0
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
        bu        L355
;*      Branch Occurs to L355 
L345:        
	.line	21
;----------------------------------------------------------------------
; 1524 | if(!WORD_L(pSData[k])) break;                                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bne       L348
;*      Branch Occurs to L348 
        bu        L356
;*      Branch Occurs to L356 
L348:        
	.line	22
;----------------------------------------------------------------------
; 1525 | else if(Space_Flag)                                                    
;----------------------------------------------------------------------
        ldi       *+fp(4),r0
        beq       L351
;*      Branch Occurs to L351 
	.line	24
;----------------------------------------------------------------------
; 1527 | if(WORD_L(pSData[k])!=0x20) {pDData[i++]=WORD_L(pSData[k]); Space_Flag
;     | =0;}                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L355
;*      Branch Occurs to L355 
        ldiu      255,r0
        ldiu      *+fp(1),ar0
        ldiu      *+fp(2),ar1
        ldiu      1,r1
        ldiu      *-fp(3),ir1
        and3      r0,*+ar1(ir0),r0
        addi      ar0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir1)
        ldiu      0,r0
        sti       r0,*+fp(4)
        bu        L355
;*      Branch Occurs to L355 
L351:        
	.line	26
;----------------------------------------------------------------------
; 1529 | else if(WORD_L(pSData[k])==0x20)                                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        bned      L354
        ldine     1,r0
        ldine     *+fp(1),ar0
        ldine     255,r1
;*      Branch Occurs to L354 
	.line	28
;----------------------------------------------------------------------
; 1531 | pDData[i++]=WORD_L(pSData[k]);                                         
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      *+fp(1),ar0
        ldiu      *+fp(2),ar1
        ldiu      1,r0
        ldiu      *-fp(3),ir1
        and3      r1,*+ar1(ir0),r1
        addi      ar0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir1)
	.line	29
;----------------------------------------------------------------------
; 1532 | Space_Flag =1;                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
        bu        L355
;*      Branch Occurs to L355 
	.line	31
;----------------------------------------------------------------------
; 1534 | else pDData[i++]=WORD_L(pSData[k]);                                    
;----------------------------------------------------------------------
L354:        
        ldiu      *-fp(2),ir1
        ldiu      *+fp(2),ar1
        ldiu      *-fp(3),ir0
        addi      ar0,r0
        and3      r1,*+ar1(ir1),r1
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
L355:        
	.line	12
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        ldiu      *+fp(2),r0
        cmpi      *-fp(4),r0
        blo       L340
;*      Branch Occurs to L340 
L356:        
	.line	35
;----------------------------------------------------------------------
; 1538 | return i;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	36
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      6,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	1539,000000000h,4



	.sect	".cinit"
	.field  	1,32
	.field  	_d_TextPo+0,32
	.field  	0,32		; _d_TextPo @ 0

	.sect	".text"

	.global	_d_TextPo
	.bss	_d_TextPo,1
	.sym	_d_TextPo,_d_TextPo,12,2,32
	.sect	 ".text"

	.global	_DP_Insert_SpecialCodeNew
	.sym	_DP_Insert_SpecialCodeNew,_DP_Insert_SpecialCodeNew,44,2,0
	.func	1550
;******************************************************************************
;* FUNCTION NAME: _DP_Insert_SpecialCodeNew                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 561 Auto + 0 SOE = 565 words      *
;******************************************************************************
_DP_Insert_SpecialCodeNew:
	.sym	_pSData,-2,28,9,32
	.sym	_pDData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_m,3,4,1,32
	.sym	_l,4,4,1,32
	.sym	_t,5,4,1,32
	.sym	_nLen,6,4,1,32
	.sym	_DestOffst,7,4,1,32
	.sym	_nTemp,8,60,1,1600,,50
	.sym	_nTempBuf,58,60,1,16000,,500
	.sym	_Scroll_Left,558,12,1,32
	.sym	_Scroll_Reigt,559,12,1,32
	.sym	_Text_Code,560,12,1,32
	.sym	_nTimeBuf,561,24,1,32,.fake79
	.line	1
;----------------------------------------------------------------------
; 1550 | UCHAR DP_Insert_SpecialCodeNew(UCHAR *pSData,UCHAR *pDData)            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      561,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1552 | int i,j,m=0,l=0,t=0;                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
        sti       r0,*+fp(5)
	.line	4
;----------------------------------------------------------------------
; 1553 | int nLen=0;                                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	5
;----------------------------------------------------------------------
; 1554 | int DestOffst=0;                                                       
; 1556 | UCHAR nTemp[50];                                                       
; 1557 | UCHAR nTempBuf[500];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	9
;----------------------------------------------------------------------
; 1558 | UCHAR Scroll_Left=0;                                                   
;----------------------------------------------------------------------
        ldiu      558,ir0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 1559 | UCHAR Scroll_Reigt = 0;                                                
;----------------------------------------------------------------------
        ldiu      559,ir0
        sti       r0,*+fp(ir0)
	.line	11
;----------------------------------------------------------------------
; 1560 | UCHAR Text_Code = 0;    //ÃÖÃø Ç¥±â¾ð¾îÀÎÁö ¿ìÃøÇ¥±â ¾ð¾îÀÎÁö È®ÀÎÇÑ´Ù.
;----------------------------------------------------------------------
        ldiu      560,ir0
        sti       r0,*+fp(ir0)
	.line	13
;----------------------------------------------------------------------
; 1562 | PTIMEBUF nTimeBuf = (TIMEBUF *)m_ExperssTimeBuf;                       
;----------------------------------------------------------------------
        ldiu      561,ir0
        ldiu      @CL44,r0
        sti       r0,*+fp(ir0)
	.line	15
;----------------------------------------------------------------------
; 1564 | for(i=0;i<500;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        cmpi      500,r1
        ldiu      255,r0
        bge       L361
;*      Branch Occurs to L361 
L360:        
	.line	17
;----------------------------------------------------------------------
; 1566 | nTempBuf[i] = WORD_L(pSData[i]);                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        ldiu      *-fp(2),ir1
        ldiu      ar1,ir0
        addi      58,ar0
        and3      r0,*+ar1(ir1),r1
        sti       r1,*+ar0(ir0)
	.line	15
        ldiu      1,r1
        addi      *+fp(1),r1
        sti       r1,*+fp(1)
        cmpi      500,r1
        blt       L360
;*      Branch Occurs to L360 
L361:        
	.line	20
;----------------------------------------------------------------------
; 1569 | if(WORD_L(nTempBuf[9]==0x01))  //->                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      67,ar0
        ldiu      *ar0,r1
        cmpi      1,r1
        ldiu      0,r0
        ldieq     1,r0
        tstb      255,r0
        beq       L363
;*      Branch Occurs to L363 
	.line	22
;----------------------------------------------------------------------
; 1571 | Scroll_Left=1;                                  // Scroll Left         
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
	.line	23
;----------------------------------------------------------------------
; 1572 | Scroll_Reigt = 0;                                                      
;----------------------------------------------------------------------
        ldiu      559,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
L363:        
	.line	26
;----------------------------------------------------------------------
; 1575 | Text_Code = WORD_L(nTempBuf[12]);       //ÃÖÃø Ç¥±â¾ð¾îÀÎÁö ¿ìÃøÇ¥±â ¾ð
;     | ¾îÀÎÁö È®ÀÎÇÑ´Ù.                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        addi      70,ar0
        ldiu      560,ir0
        and3      r0,*ar0,r0
        sti       r0,*+fp(ir0)
	.line	28
;----------------------------------------------------------------------
; 1577 | for(i=0;i<14;i++) pDData[DestOffst++]= WORD_L(nTempBuf[i]);     // Head
;     | er Update                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r2
        cmpi      14,r0
        bge       L365
;*      Branch Occurs to L365 
L364:        
        ldiu      fp,ar0
        ldiu      1,r0
        ldiu      *+fp(7),ar1
        ldiu      *+fp(1),ir1
        ldiu      *-fp(3),ir0
        addi      58,ar0
        addi      ar1,r0
        and3      r2,*+ar0(ir1),r1
        sti       r0,*+fp(7)
        sti       r1,*+ar1(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      14,r0
        blt       L364
;*      Branch Occurs to L364 
L365:        
	.line	29
;----------------------------------------------------------------------
; 1578 | for(i=14;i<500;i++)                                                    
;----------------------------------------------------------------------
        ldiu      14,r0
        sti       r0,*+fp(1)
        cmpi      500,r0
        bge       L499
;*      Branch Occurs to L499 
L366:        
	.line	31
;----------------------------------------------------------------------
; 1580 | if(WORD_L(nTempBuf[i]) == 0x40)
;     |  //(BYTE *)'@')                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      58,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      64,r0
        bned      L491
	nop
        ldine     fp,ar0
        ldine     *+fp(1),ir0
;*      Branch Occurs to L491 
	.line	33
;----------------------------------------------------------------------
; 1582 | if(!strncmp((char *)&nTempBuf[i+1],(char *)"[NextSta]",9))             
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      fp,r1
        ldiu      9,r3
        ldiu      @CL45,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L376
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L376 
	.line	35
;----------------------------------------------------------------------
; 1584 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L371
        ldieq     1,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L371 
	.line	37
;----------------------------------------------------------------------
; 1586 | j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nEnNameBuf[0],nTemp,15,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r0
        ldiu      15,r2
        ldiu      @CL9,r1
        push      r3
        addi      8,r0
        push      r2
        push      r0
        push      r1
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	38
;----------------------------------------------------------------------
; 1587 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	39
;----------------------------------------------------------------------
; 1588 | i+=9; DestOffst+=j;                                                    
; 1590 | else                                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	44
;----------------------------------------------------------------------
; 1593 | j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nEnNameBuf[0],nTemp,20,TRUE
;     | );                                                                     
;----------------------------------------------------------------------
L371:        
        ldiu      @CL9,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	46
;----------------------------------------------------------------------
; 1595 | j = (j>=12) ? 12 : j;                                                  
;----------------------------------------------------------------------
        cmpi      12,r0
        blt       L373
;*      Branch Occurs to L373 
        bud       L374
	nop
	nop
        ldiu      12,r0
;*      Branch Occurs to L374 
L373:        
        ldiu      *+fp(2),r0
L374:        
        sti       r0,*+fp(2)
	.line	48
;----------------------------------------------------------------------
; 1597 | memset(&pDData[DestOffst],0x20,20);                                    
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	50
;----------------------------------------------------------------------
; 1599 | memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     12,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	52
;----------------------------------------------------------------------
; 1601 | i+=9; DestOffst+=12;                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	58
;----------------------------------------------------------------------
; 1607 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)NextSta]",11))     
;----------------------------------------------------------------------
L376:        
        ldiu      11,r3
        ldiu      @CL46,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L385
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L385 
	.line	60
;----------------------------------------------------------------------
; 1609 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L380
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L380 
	.line	62
;----------------------------------------------------------------------
; 1611 | j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nIRNameBuf[0],nTemp,30,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      30,r2
        ldiu      @CL10,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	64
;----------------------------------------------------------------------
; 1613 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	66
;----------------------------------------------------------------------
; 1615 | i+=11;DestOffst+=j;                                                    
; 1617 | else                                                                   
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	71
;----------------------------------------------------------------------
; 1620 | j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nIRNameBuf[0],nTemp,20,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
L380:        
        ldiu      @CL10,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	72
;----------------------------------------------------------------------
; 1621 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        cmpi      20,r0
        blt       L382
;*      Branch Occurs to L382 
        bud       L383
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L383 
L382:        
        ldiu      *+fp(2),r0
L383:        
        sti       r0,*+fp(2)
	.line	74
;----------------------------------------------------------------------
; 1623 | memset(&pDData[DestOffst],0x20,20);                                    
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	76
;----------------------------------------------------------------------
; 1625 | memcpy(&pDData[DestOffst+((20-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     20,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	78
;----------------------------------------------------------------------
; 1627 | i+=11; DestOffst+=20;                                                  
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      20,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	83
;----------------------------------------------------------------------
; 1632 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[DestSta]",9))        
;----------------------------------------------------------------------
L385:        
        ldiu      9,r3
        ldiu      @CL47,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L394
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L394 
	.line	85
;----------------------------------------------------------------------
; 1634 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L389
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L389 
	.line	87
;----------------------------------------------------------------------
; 1636 | j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nEnNameBuf[0],nTemp,15,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      15,r2
        ldiu      @CL12,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	88
;----------------------------------------------------------------------
; 1637 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	89
;----------------------------------------------------------------------
; 1638 | i+=9;DestOffst+=j;                                                     
; 1640 | else                                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	93
;----------------------------------------------------------------------
; 1642 | j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nEnNameBuf[0],nTemp,20,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
L389:        
        ldiu      @CL12,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	94
;----------------------------------------------------------------------
; 1643 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        cmpi      20,r0
        blt       L391
;*      Branch Occurs to L391 
        bud       L392
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L392 
L391:        
        ldiu      *+fp(2),r0
L392:        
        sti       r0,*+fp(2)
	.line	96
;----------------------------------------------------------------------
; 1645 | memset(&pDData[DestOffst],0x20,20);                                    
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	98
;----------------------------------------------------------------------
; 1647 | memcpy(&pDData[DestOffst+((20-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     20,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	100
;----------------------------------------------------------------------
; 1649 | i+=9; DestOffst+=20;                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      20,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	103
;----------------------------------------------------------------------
; 1652 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)DestSta]",11))     
;----------------------------------------------------------------------
L394:        
        ldiu      11,r3
        ldiu      @CL48,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L403
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L403 
	.line	105
;----------------------------------------------------------------------
; 1654 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L398
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L398 
	.line	107
;----------------------------------------------------------------------
; 1656 | j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nIRNameBuf[0],nTemp,30,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      30,r2
        ldiu      @CL13,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	109
;----------------------------------------------------------------------
; 1658 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	111
;----------------------------------------------------------------------
; 1660 | i+=11;DestOffst+=j;                                                    
; 1662 | else                                                                   
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	115
;----------------------------------------------------------------------
; 1664 | j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nIRNameBuf[0],nTemp,20,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
L398:        
        ldiu      @CL13,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	116
;----------------------------------------------------------------------
; 1665 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        cmpi      20,r0
        blt       L400
;*      Branch Occurs to L400 
        bud       L401
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L401 
L400:        
        ldiu      *+fp(2),r0
L401:        
        sti       r0,*+fp(2)
	.line	118
;----------------------------------------------------------------------
; 1667 | memset(&pDData[DestOffst],0x20,20);                                    
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	120
;----------------------------------------------------------------------
; 1669 | memcpy(&pDData[DestOffst+((20-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     20,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	122
;----------------------------------------------------------------------
; 1671 | i+=11; DestOffst+=20;                                                  
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      20,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	125
;----------------------------------------------------------------------
; 1674 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[StartSta]",10))      
;----------------------------------------------------------------------
L403:        
        ldiu      10,r3
        ldiu      @CL49,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L412
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L412 
	.line	127
;----------------------------------------------------------------------
; 1676 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L407
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L407 
	.line	129
;----------------------------------------------------------------------
; 1678 | j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nEnNameBuf[0],nTemp,15,FAL
;     | SE);                                                                   
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      15,r2
        ldiu      @CL4,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	130
;----------------------------------------------------------------------
; 1679 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	131
;----------------------------------------------------------------------
; 1680 | i+=10; DestOffst+=j;                                                   
; 1682 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	136
;----------------------------------------------------------------------
; 1685 | j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nEnNameBuf[0],nTemp,20,FAL
;     | SE);                                                                   
;----------------------------------------------------------------------
L407:        
        ldiu      @CL4,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	137
;----------------------------------------------------------------------
; 1686 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        cmpi      20,r0
        blt       L409
;*      Branch Occurs to L409 
        bud       L410
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L410 
L409:        
        ldiu      *+fp(2),r0
L410:        
        sti       r0,*+fp(2)
	.line	139
;----------------------------------------------------------------------
; 1688 | memset(&pDData[DestOffst],0x20,20);                                    
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	141
;----------------------------------------------------------------------
; 1690 | memcpy(&pDData[DestOffst+((20-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     20,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	143
;----------------------------------------------------------------------
; 1692 | i+=10; DestOffst+=20;                                                  
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      20,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	147
;----------------------------------------------------------------------
; 1696 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)StartSta]",12))    
;----------------------------------------------------------------------
L412:        
        ldiu      12,r3
        ldiu      @CL50,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L421
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L421 
	.line	149
;----------------------------------------------------------------------
; 1698 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L416
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L416 
	.line	151
;----------------------------------------------------------------------
; 1700 | j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nIRNameBuf[0],nTemp,30,FAL
;     | SE);                                                                   
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      30,r2
        ldiu      @CL5,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	153
;----------------------------------------------------------------------
; 1702 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	155
;----------------------------------------------------------------------
; 1704 | i+=12;DestOffst+=j;                                                    
; 1706 | else                                                                   
;----------------------------------------------------------------------
        ldiu      12,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	159
;----------------------------------------------------------------------
; 1708 | j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nIRNameBuf[0],nTemp,20,FAL
;     | SE);                                                                   
;----------------------------------------------------------------------
L416:        
        ldiu      @CL5,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	160
;----------------------------------------------------------------------
; 1709 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        cmpi      20,r0
        blt       L418
;*      Branch Occurs to L418 
        bud       L419
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L419 
L418:        
        ldiu      *+fp(2),r0
L419:        
        sti       r0,*+fp(2)
	.line	162
;----------------------------------------------------------------------
; 1711 | memset(&pDData[DestOffst],0x20,20);                                    
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	164
;----------------------------------------------------------------------
; 1713 | memcpy(&pDData[DestOffst+((20-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     20,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	166
;----------------------------------------------------------------------
; 1715 | i+=12; DestOffst+=20;                                                  
;----------------------------------------------------------------------
        ldiu      12,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      20,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	169
;----------------------------------------------------------------------
; 1718 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[H)Arrow]",9))        
;----------------------------------------------------------------------
L421:        
        ldiu      9,r3
        ldiu      @CL51,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L432
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L432 
	.line	171
;----------------------------------------------------------------------
; 1720 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beq       L427
;*      Branch Occurs to L427 
	.line	173
;----------------------------------------------------------------------
; 1722 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"¿À¸¥ÂÊ",6);i+=9;DestOffst+=6;}                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L425
;*      Branch Occurs to L425 
        ldiu      *+fp(7),ar0
        ldiu      @CL52,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      4                     ; Fast MEMCPY(#66)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      6,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
L425:        
	.line	174
;----------------------------------------------------------------------
; 1723 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"¿ÞÂÊ",4);i+=9;DestOffst+=4;}                                         
; 1725 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L498
;*      Branch Occurs to L498 
        ldiu      *+fp(7),ar0
        ldiu      @CL53,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
L427:        
	.line	178
;----------------------------------------------------------------------
; 1727 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"  ¿À ¸¥ ÂÊ  ",12);i+=9;DestOffst+=12;}                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L429
;*      Branch Occurs to L429 
        ldiu      *+fp(7),ar0
        ldiu      @CL54,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      10                    ; Fast MEMCPY(#69)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
L429:        
	.line	179
;----------------------------------------------------------------------
; 1728 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"  ¿Þ    ÂÊ  ",12);i+=9;DestOffst+=12;}                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L498
;*      Branch Occurs to L498 
        ldiu      *+fp(7),ar0
        ldiu      @CL55,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      10                    ; Fast MEMCPY(#72)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	182
;----------------------------------------------------------------------
; 1731 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)Arrow]",9))        
;----------------------------------------------------------------------
L432:        
        ldiu      9,r3
        ldiu      @CL56,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L443
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L443 
	.line	184
;----------------------------------------------------------------------
; 1733 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beq       L438
;*      Branch Occurs to L438 
	.line	186
;----------------------------------------------------------------------
; 1735 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"right",5);i+=9;DestOffst+=5;}                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L436
;*      Branch Occurs to L436 
        ldiu      *+fp(7),ar0
        ldiu      @CL57,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#75)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      5,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
L436:        
	.line	187
;----------------------------------------------------------------------
; 1736 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"left",4);i+=9;DestOffst+=4;}                                         
; 1738 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L498
;*      Branch Occurs to L498 
        ldiu      *+fp(7),ar0
        ldiu      @CL58,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
L438:        
	.line	192
;----------------------------------------------------------------------
; 1741 | d_TextPo++;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_TextPo+0,r0       ; Unsigned
        sti       r0,@_d_TextPo+0
	.line	194
;----------------------------------------------------------------------
; 1743 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"RIGHT",5);i+=9;DestOffst+=5;}                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L440
;*      Branch Occurs to L440 
        ldiu      *+fp(7),ar0
        ldiu      @CL59,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#78)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      5,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
L440:        
	.line	195
;----------------------------------------------------------------------
; 1744 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"LEFT",4);i+=9;DestOffst+=4;}                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L498
;*      Branch Occurs to L498 
        ldiu      *+fp(7),ar0
        ldiu      @CL60,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	199
;----------------------------------------------------------------------
; 1748 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[Arrow]",7))          
;----------------------------------------------------------------------
L443:        
        ldiu      7,r3
        ldiu      @CL61,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L449
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L449 
	.line	201
;----------------------------------------------------------------------
; 1750 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"@[R)Arrow]",10);i+=7;DestOffst+=10;}                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L446
;*      Branch Occurs to L446 
        ldiu      *+fp(7),ar0
        ldiu      @CL62,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      8                     ; Fast MEMCPY(#81)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      7,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      10,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
L446:        
	.line	202
;----------------------------------------------------------------------
; 1751 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"@[L)Arrow]",10);i+=7;DestOffst+=10;}                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L498
;*      Branch Occurs to L498 
        ldiu      *+fp(7),ar0
        ldiu      @CL63,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      8                     ; Fast MEMCPY(#84)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      7,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      10,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	204
;----------------------------------------------------------------------
; 1753 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[J)Arrow]",9))        
;----------------------------------------------------------------------
L449:        
        ldiu      9,r3
        ldiu      @CL64,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L455
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L455 
	.line	206
;----------------------------------------------------------------------
; 1755 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],m_JapanStBuf_R,2);i+=9;DestOffst+=2;}                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L452
;*      Branch Occurs to L452 
        ldiu      *+fp(7),ar0
        ldiu      @CL65,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
L452:        
	.line	207
;----------------------------------------------------------------------
; 1756 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,m_JapanStBuf_L,2);i+=9;DestOffst+=2;}                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L498
;*      Branch Occurs to L498 
        ldiu      *+fp(7),ar0
        ldiu      @CL66,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	210
;----------------------------------------------------------------------
; 1759 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[C)Arrow]",9))        
;----------------------------------------------------------------------
L455:        
        ldiu      9,r3
        ldiu      @CL67,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L461
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L461 
	.line	212
;----------------------------------------------------------------------
; 1761 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],m_ChangStBuf_R,4);i+=9;DestOffst+=4;}                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L458
;*      Branch Occurs to L458 
        ldiu      *+fp(7),ar0
        ldiu      @CL68,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
L458:        
	.line	213
;----------------------------------------------------------------------
; 1762 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,m_ChangStBuf_L,4);i+=9;DestOffst+=4;}                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L498
;*      Branch Occurs to L498 
        ldiu      *+fp(7),ar0
        ldiu      @CL69,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L498
;*      Branch Occurs to L498 
	.line	216
;----------------------------------------------------------------------
; 1765 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[STH",4))             
;----------------------------------------------------------------------
L461:        
        ldiu      4,r3
        ldiu      @CL70,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L468
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L468 
	.line	218
;----------------------------------------------------------------------
; 1767 | for(t=0;t<34;t++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        bge       L498
;*      Branch Occurs to L498 
L463:        
	.line	220
;----------------------------------------------------------------------
; 1769 | if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Butto
;     | n.nGPTranNumInput.nNum))                                               
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      561,ir0
        ldiu      *+fp(5),ar0
        mpyi      9,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        and       65535,r1
        cmpi3     r0,r1
        bne       L465
;*      Branch Occurs to L465 
	.line	222
;----------------------------------------------------------------------
; 1771 | memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nStartHour,2);i+=4;Dest
;     | Offst+=2;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        ldiu      561,ir0
        ldiu      *+fp(7),ar1
        mpyi      9,r0
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi      1,ar0                 ; Unsigned
        addi      *-fp(3),ar1           ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      4,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
	.line	223
;----------------------------------------------------------------------
; 1772 | break;                                                                 
;----------------------------------------------------------------------
        bu        L498
;*      Branch Occurs to L498 
L465:        
	.line	218
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        blt       L463
;*      Branch Occurs to L463 
        bu        L498
;*      Branch Occurs to L498 
	.line	227
;----------------------------------------------------------------------
; 1776 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[STM",4))             
;----------------------------------------------------------------------
L468:        
        ldiu      4,r3
        ldiu      @CL71,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L475
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L475 
	.line	229
;----------------------------------------------------------------------
; 1778 | for(t=0;t<34;t++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        bge       L498
;*      Branch Occurs to L498 
L470:        
	.line	231
;----------------------------------------------------------------------
; 1780 | if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Butto
;     | n.nGPTranNumInput.nNum))                                               
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      561,ir0
        ldiu      *+fp(5),ar0
        mpyi      9,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        and       65535,r1
        cmpi3     r0,r1
        bne       L472
;*      Branch Occurs to L472 
	.line	233
;----------------------------------------------------------------------
; 1782 | memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nStartMin,2);i+=4;DestO
;     | ffst+=2;                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        ldiu      561,ir0
        ldiu      *+fp(7),ar1
        mpyi      9,r0
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi      3,ar0                 ; Unsigned
        addi      *-fp(3),ar1           ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      4,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
	.line	234
;----------------------------------------------------------------------
; 1783 | break;                                                                 
;----------------------------------------------------------------------
        bu        L498
;*      Branch Occurs to L498 
L472:        
	.line	229
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        blt       L470
;*      Branch Occurs to L470 
        bu        L498
;*      Branch Occurs to L498 
	.line	239
;----------------------------------------------------------------------
; 1788 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[ETH",4))             
;----------------------------------------------------------------------
L475:        
        ldiu      4,r3
        ldiu      @CL72,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L482
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L482 
	.line	241
;----------------------------------------------------------------------
; 1790 | for(t=0;t<34;t++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        bge       L498
;*      Branch Occurs to L498 
L477:        
	.line	243
;----------------------------------------------------------------------
; 1792 | if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Butto
;     | n.nGPTranNumInput.nNum))                                               
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      561,ir0
        ldiu      *+fp(5),ar0
        mpyi      9,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        and       65535,r1
        cmpi3     r0,r1
        bne       L479
;*      Branch Occurs to L479 
	.line	245
;----------------------------------------------------------------------
; 1794 | memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nEndHour,2);i+=4;DestOf
;     | fst+=2;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        ldiu      561,ir0
        ldiu      *+fp(7),ar1
        mpyi      9,r0
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi      5,ar0                 ; Unsigned
        addi      *-fp(3),ar1           ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      4,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
	.line	246
;----------------------------------------------------------------------
; 1795 | break;                                                                 
;----------------------------------------------------------------------
        bu        L498
;*      Branch Occurs to L498 
L479:        
	.line	241
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        blt       L477
;*      Branch Occurs to L477 
        bu        L498
;*      Branch Occurs to L498 
	.line	251
;----------------------------------------------------------------------
; 1800 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[ETM",4))             
;----------------------------------------------------------------------
L482:        
        ldiu      4,r3
        ldiu      @CL73,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L489
        subi      3,sp
        ldine     fp,ar0
        ldine     1,r1
;*      Branch Occurs to L489 
	.line	253
;----------------------------------------------------------------------
; 1802 | for(t=0;t<34;t++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        bge       L498
;*      Branch Occurs to L498 
L484:        
	.line	255
;----------------------------------------------------------------------
; 1804 | if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Butto
;     | n.nGPTranNumInput.nNum))                                               
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      561,ir0
        ldiu      *+fp(5),ar0
        mpyi      9,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        and       65535,r1
        cmpi3     r0,r1
        bne       L486
;*      Branch Occurs to L486 
	.line	257
;----------------------------------------------------------------------
; 1806 | memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nEndMin,2);i+=4;DestOff
;     | st+=2;                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        ldiu      561,ir0
        ldiu      *+fp(7),ar0
        mpyi      9,r0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        addi      7,ar1                 ; Unsigned
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      4,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
	.line	258
;----------------------------------------------------------------------
; 1807 | break;                                                                 
;----------------------------------------------------------------------
        bu        L498
;*      Branch Occurs to L498 
L486:        
	.line	253
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        blt       L484
;*      Branch Occurs to L484 
        bu        L498
;*      Branch Occurs to L498 
	.line	265
;----------------------------------------------------------------------
; 1814 | else pDData[DestOffst++] = nTempBuf[i];                                
; 1815 | } // if end                                                            
;----------------------------------------------------------------------
L489:        
        ldiu      *+fp(7),ar1
        ldiu      *+fp(1),ir0
        ldiu      *-fp(3),ir1
        addi      58,ar0
        addi      ar1,r1
        ldiu      *+ar0(ir0),r0
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir1)
        bu        L498
;*      Branch Occurs to L498 
	.line	267
;----------------------------------------------------------------------
; 1816 | else if(WORD_L(nTempBuf[i])== 0x1B)
;     |          //(BYTE *)'1B')e                                              
;----------------------------------------------------------------------
L491:        
        addi      58,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      27,r0
        bned      L494
	nop
        ldine     fp,ar0
        ldine     *+fp(1),ir0
;*      Branch Occurs to L494 
	.line	269
;----------------------------------------------------------------------
; 1818 | pDData[DestOffst++]= WORD_L(nTempBuf[i++]);
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,ar0
        ldiu      1,r2
        ldiu      *+fp(7),ar1
        ldiu      255,r0
        ldiu      *-fp(3),ir1
        addi      ir0,r1
        addi      58,ar0
        sti       r1,*+fp(1)
        addi      ar1,r2
        and3      r0,*+ar0(ir0),r0
        sti       r2,*+fp(7)
        sti       r0,*+ar1(ir1)
	.line	270
;----------------------------------------------------------------------
; 1819 | pDData[DestOffst++]= WORD_L(nTempBuf[i++]);                            
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r1
        addi      58,ar0
        ldiu      255,r2
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        ldiu      *+fp(7),ar1
        ldiu      *-fp(3),ir1
        addi      ir0,r0
        addi      ar1,r1
        sti       r0,*+fp(1)
        and3      r2,*+ar0(ir0),r0
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir1)
	.line	271
;----------------------------------------------------------------------
; 1820 | pDData[DestOffst++]= WORD_L(nTempBuf[i]);                              
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      58,ar0
        ldiu      1,r1
        ldiu      *+fp(7),ar1
        ldiu      255,r0
        ldiu      *+fp(1),ir0
        addi      ar1,r1
        and3      r0,*+ar0(ir0),r0
        ldiu      *-fp(3),ir1
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir1)
        bu        L498
;*      Branch Occurs to L498 
	.line	273
;----------------------------------------------------------------------
; 1822 | else if(!WORD_L(nTempBuf[i])){DestOffst++; break;}                     
;----------------------------------------------------------------------
L494:        
        addi      58,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bned      L497
        ldine     fp,ar0
        ldine     1,r1
        ldine     *+fp(7),ar1
;*      Branch Occurs to L497 
        ldiu      1,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L499
;*      Branch Occurs to L499 
	.line	274
;----------------------------------------------------------------------
; 1823 | else pDData[DestOffst++]= WORD_L(nTempBuf[i]);
;     |                                                                        
;----------------------------------------------------------------------
L497:        
        ldiu      255,r0
        ldiu      *+fp(1),ir1
        ldiu      *-fp(3),ir0
        addi      58,ar0
        addi      ar1,r1
        and3      r0,*+ar0(ir1),r0
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir0)
L498:        
	.line	29
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      500,r0
        blt       L366
;*      Branch Occurs to L366 
L499:        
	.line	276
;----------------------------------------------------------------------
; 1825 | return DestOffst;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
	.line	277
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      563,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1826,000000000h,561


	.sect	 ".text"

	.global	_DP_STNAME_CHANGE
	.sym	_DP_STNAME_CHANGE,_DP_STNAME_CHANGE,32,2,0
	.func	1831
;******************************************************************************
;* FUNCTION NAME: _DP_STNAME_CHANGE                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,ir0,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 1 Auto + 0 SOE = 6 words          *
;******************************************************************************
_DP_STNAME_CHANGE:
	.sym	_pSDATA,-2,28,9,32
	.sym	_pChDATA,-3,28,9,32
	.sym	_nLen,-4,12,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1831 | void DP_STNAME_CHANGE(UCHAR *pSDATA,UCHAR *pChDATA, UCHAR nLen)        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1833 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1834 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        bhs       L504
;*      Branch Occurs to L504 
L503:        
	.line	6
;----------------------------------------------------------------------
; 1836 | pChDATA[i]= pSDATA[(nLen-1)-i];                                        
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *-fp(3),ir0
        subi      *+fp(1),ar0           ; Unsigned
        ldiu      *+fp(1),ar1
        ldiu      *-ar0(1),r0
        sti       r0,*+ar1(ir0)
	.line	4
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        blo       L503
;*      Branch Occurs to L503 
L504:        
	.line	8
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	1838,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarNum1+0,32
	.field  	0,32		; _d_CarNum1 @ 0

	.sect	".text"

	.global	_d_CarNum1
	.bss	_d_CarNum1,1
	.sym	_d_CarNum1,_d_CarNum1,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarNumRem1+0,32
	.field  	0,32		; _d_CarNumRem1 @ 0

	.sect	".text"

	.global	_d_CarNumRem1
	.bss	_d_CarNumRem1,1
	.sym	_d_CarNumRem1,_d_CarNumRem1,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarNum+0,32
	.field  	0,32		; _d_CarNum @ 0

	.sect	".text"

	.global	_d_CarNum
	.bss	_d_CarNum,1
	.sym	_d_CarNum,_d_CarNum,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarNumRem+0,32
	.field  	0,32		; _d_CarNumRem @ 0

	.sect	".text"

	.global	_d_CarNumRem
	.bss	_d_CarNumRem,1
	.sym	_d_CarNumRem,_d_CarNumRem,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_stChCnt+0,32
	.field  	0,32		; _d_stChCnt @ 0

	.sect	".text"

	.global	_d_stChCnt
	.bss	_d_stChCnt,1
	.sym	_d_stChCnt,_d_stChCnt,12,2,32
	.sect	 ".text"

	.global	_DP_SCC1_A_RX_PRO
	.sym	_DP_SCC1_A_RX_PRO,_DP_SCC1_A_RX_PRO,32,2,0
	.func	1848
;******************************************************************************
;* FUNCTION NAME: _DP_SCC1_A_RX_PRO                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,ir1,sp,st                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 617 Auto + 0 SOE = 620 words      *
;******************************************************************************
_DP_SCC1_A_RX_PRO:
	.sym	_pRxData,-2,28,9,32
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_sTrNUM,614,15,1,32
	.sym	_i,615,4,1,32
	.sym	_sDoorInfo,616,4,1,32
	.sym	_pTmsRxData,617,24,1,32,.fake13
	.line	1
;----------------------------------------------------------------------
; 1848 | void DP_SCC1_A_RX_PRO(UCHAR *pRxData)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      617,sp
	.line	2
;----------------------------------------------------------------------
; 1851 | char szBuf[512];                                                       
; 1852 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1853 | int sdebugFlag = 0;                                                    
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	7
;----------------------------------------------------------------------
; 1854 | DWORD sTrNUM = 0;                                                      
; 1855 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      614,ir0
        sti       r0,*+fp(ir0)
	.line	9
;----------------------------------------------------------------------
; 1856 | int sDoorInfo = 0;                                                     
;----------------------------------------------------------------------
        ldiu      616,ir0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 1857 | PTMS_RX_DATA pTmsRxData = (TMS_RX_DATA *) pRxData;                     
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      *-fp(2),r0
        sti       r0,*+fp(ir0)
	.line	12
;----------------------------------------------------------------------
; 1859 | sTrNUM = BCD_BIN(MAKE_WORD(pTmsRxData->nCarTrainNum[0],pTmsRxData->nCar
;     | TrainNum[1]));                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      617,ir1
        ldiu      *+ar0(9),r1
        ldiu      255,r0
        ldiu      *+fp(ir1),ar0
        ash       8,r1
        and       *+ar0(10),r0
        or3       r1,r0,r0
        and       65535,r0
        push      r0
        call      _BCD_BIN
                                        ; Call Occurs
        ldiu      614,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	14
;----------------------------------------------------------------------
; 1861 | szBuf[0] = 0;                                                          
; 1863 | //Á÷ÅëÀÎÁö ÀÏ¹ÝÀÎÁö ÀÎ½ÄÇÏ´Â ºÎºÐ (TCMS Åë½Å¿¡¼­ 4È¸ÀÌ»ó -> 10È¸ ¹Ì¸¸»ç
;     | ÀÌ¿¡ µ¥ÀÌÅ¸¸¦ ÀÌ¿ëÇÑ´Ù)                                                
; 1864 | //¼±ÅÃÈ­¸é¿¡¼­ ¼±ÅÃÇÏ¿´´Ù¸é TCMS Á¤º¸¸¦ ÀÌ¿ëÇÏÁö ¾Ê´Â´Ù.               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 1865 | if(!WORD_L(nSelf_Test.nSELF_Selt_Flag) && ((SCC1_INIT_A.RxOKCnt >= 4) &
;     | & (SCC1_INIT_A.RxOKCnt < 30)))                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+186,r0
        bne       L514
;*      Branch Occurs to L514 
        ldiu      @_SCC1_INIT_A+6,r0
        cmpi      4,r0
        blo       L514
;*      Branch Occurs to L514 
        cmpi      30,r0
        bhs       L514
;*      Branch Occurs to L514 
	.line	20
;----------------------------------------------------------------------
; 1867 | if(WORD_L(pTmsRxData->BIT.nExpress)){ //Á÷Åë                           
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      16,r0
        and       *+ar0(8),r0
        lsh       -4,r0
        tstb      255,r0
        beq       L511
;*      Branch Occurs to L511 
	.line	21
;----------------------------------------------------------------------
; 1868 | nSelf_Test.nSELF_ICR_SELECT = 0;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+185
        bu        L514
;*      Branch Occurs to L514 
L511:        
	.line	23
;----------------------------------------------------------------------
; 1870 | else if(WORD_L(pTmsRxData->BIT.nNorMal)){ //ÀÏ¹Ý                       
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      32,r0
        and       *+ar0(8),r0
        lsh       -5,r0
        tstb      255,r0
        beq       L513
;*      Branch Occurs to L513 
	.line	24
;----------------------------------------------------------------------
; 1871 | nSelf_Test.nSELF_ICR_SELECT = 1;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelf_Test+185
        bu        L514
;*      Branch Occurs to L514 
L513:        
	.line	26
;----------------------------------------------------------------------
; 1873 | else {nSelf_Test.nSELF_ICR_SELECT = 1;} //µðÆúÆ® -> ÀÏ¹Ý.              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelf_Test+185
L514:        
	.line	29
;----------------------------------------------------------------------
; 1876 | nTmsRxData.nDataDefin = pTmsRxData->nStCode;                           
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(4),r0
        sti       r0,@_nTmsRxData+0
	.line	31
;----------------------------------------------------------------------
; 1878 | if((WORD_L(nTmsRxData.nDataDefin) >= 0x31) && (WORD_L(nTmsRxData.nDataD
;     | efin) <= 0x34))                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      49,r0
        blo       L558
;*      Branch Occurs to L558 
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      52,r0
        bhi       L558
;*      Branch Occurs to L558 
	.line	33
;----------------------------------------------------------------------
; 1880 | nTr_St_Info.nMasterOffCnt = 0;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+376
	.line	35
;----------------------------------------------------------------------
; 1882 | if((WORD_L(nTmsRxData.nDataDefin) == 0x31) || (WORD_L(nTmsRxData.nDataD
;     | efin) == 0x33))                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      49,r0
        beq       L518
;*      Branch Occurs to L518 
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      51,r0
        bne       L519
;*      Branch Occurs to L519 
L518:        
	.line	37
;----------------------------------------------------------------------
; 1884 | nTr_St_Info.nMasterFlag = TRUE;                                        
; 1886 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+372
        bu        L520
;*      Branch Occurs to L520 
L519:        
	.line	41
;----------------------------------------------------------------------
; 1888 | nTr_St_Info.nMasterFlag = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+372
L520:        
	.line	44
;----------------------------------------------------------------------
; 1891 | if(WORD_L(nTr_St_Info.nAutoManuFlag)){} //¼öµ¿ ¼³Á¤À¸·Î ÀüÈ¯ ÇÏ¿´À» °æ¿
;     | ì                                                                      
; 1892 | else                                                                   
; 1894 |         //ÇöÀç¿ª, ´ÙÀ½¿ªÀÌ "0" ÀÌ¸é ÀÚµ¿ ¿îÀüÀ» ÇØÁ¦ ÇÑ´Ù.             
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        bne       L541
;*      Branch Occurs to L541 
	.line	48
;----------------------------------------------------------------------
; 1895 | if((!WORD_L(pTmsRxData->nNowCode) || !WORD_L(pTmsRxData->nNextCode)) ||
;     |   !DWORD_L(sTrNUM))                                                    
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      *+fp(ir0),ar0
        tstb      *+ar0(5),r0
        beq       L524
;*      Branch Occurs to L524 
        ldiu      *+fp(ir0),ar0
        tstb      *+ar0(6),r0
        beq       L524
;*      Branch Occurs to L524 
        ldiu      614,ir0
        ldiu      *+fp(ir0),r0
        tstb      65535,r0
        bne       L525
;*      Branch Occurs to L525 
L524:        
	.line	50
;----------------------------------------------------------------------
; 1897 | nTr_St_Info.nTcmsAutoDriverFlag = FALSE;                               
; 1899 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+370
        bu        L527
;*      Branch Occurs to L527 
L525:        
	.line	54
;----------------------------------------------------------------------
; 1901 | nTr_St_Info.nTcmsAutoDriverFlag = TRUE;                                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+370
	.line	55
;----------------------------------------------------------------------
; 1902 | nTr_St_Info.nAutoDoorFlag = FALSE; // Á¤»óÀûÀ¸·Î ¿­¹øÀÌ ÀÔ·Â µÇ¸é ½ÇÇà
;     | ÁßÀÌ´ø ½Ã¹Ä·¹ÀÌ¼Ç ÁßÁö.                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+70
	.line	56
;----------------------------------------------------------------------
; 1903 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	58
;----------------------------------------------------------------------
; 1905 | if(WORD_L(pTmsRxData->nNowCode) == WORD_L(pTmsRxData->nNextCode))      
; 1906 | {//2011_11_10                                                          
; 1907 | //¼­¿ï¿ª ¶Ç´Â ÀÎÃµ°øÇ× ¿ª¿¡¼­ ÇöÀç¿ª,´ÙÀ½¿ªÀº ÀÌÀü ÄÚµå°¡ ¼ö½Åµµ°í ÀÖ°í
;     | , ¿­¹ø, Çà¼± ÄÚµå¸¸ º¯°æ µÇ¸é                                          
; 1908 | //³ë¼± Ç¥½Ã±â´Â ÀÌÀü¿¡ ÂüÀÌ ¿´´ø Á¶°ÇÀ» À¯Áö ÇÏ¿© ³ë¼± Ç¥½Ã±â¿¡ Ç¥Ãâ ÇÏ
;     | °Ô µÈ´Ù.                                                               
; 1909 | //µû¶ó¼­ ÃâÀÔ¹®ÀÌ OPEN µÇ¾úÀ» °æ¿ì ÇöÀç¿ª, ´ÙÀ½¿ª ÄÚµå°¡ º¯°æ µÈ°Í ±îÁö
;     |  È®ÀÎ ÇÏ°í Àü¼Û ÇÑ´Ù.                                                  
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      617,ir1
        ldiu      255,r1
        ldiu      *+fp(ir0),ar1
        ldiu      *+fp(ir1),ar0
        ldiu      255,r0
        and       *+ar1(5),r1
        and       *+ar0(6),r0
        cmpi3     r0,r1
        bne       L527
;*      Branch Occurs to L527 
	.line	63
;----------------------------------------------------------------------
; 1910 | nSccSendFlag.nRNDTXFlag = FALSE;                                       
; 1916 | //¿­Â÷ ¹øÈ£¿Í Çà¼±Àº ÃâÀÔ¹® Á¤º¸¿Í °ü°è ¾øÀÌ º¯È­ ÇÏ¸é Ç¥ÃâÇÑ´Ù.       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+10
L527:        
	.line	70
;----------------------------------------------------------------------
; 1917 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nNum) != DWORD_L(sTrNUM))  //
;     | ÃâÀÔ¹®¿¡ °ü°è ¾øÀÌ ¿­¹øÀ» º¯°æ µÈ´Ù.                                   
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      @_nSelect_Button+1,r0
        ldiu      *+fp(ir0),r1
        and       65535,r0
        and       65535,r1
        cmpi3     r1,r0
        beq       L530
;*      Branch Occurs to L530 
	.line	72
;----------------------------------------------------------------------
; 1919 | if(DWORD_L(sTrNUM)){                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),r0
        tstb      65535,r0
        beq       L530
;*      Branch Occurs to L530 
	.line	73
;----------------------------------------------------------------------
; 1920 | nTr_St_Info.nTcmsAutoDriverFlag = TRUE;//ÀÚµ¿ ¿îÇà ½ÃÀÛ                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+370
	.line	74
;----------------------------------------------------------------------
; 1921 | nSelect_Button.nGPTranNumInput.nNum = DWORD_L(sTrNUM);                 
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),r0
        and       65535,r0
        sti       r0,@_nSelect_Button+1
	.line	75
;----------------------------------------------------------------------
; 1922 | nSccSendFlag.nTranNum = 2;                                             
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+1
	.line	77
;----------------------------------------------------------------------
; 1924 | sprintf(szBuf2,"-TRNUM Chang Data Tx... : [%d]",sTrNUM); strcat(szBuf,s
;     | zBuf2);                                                                
;----------------------------------------------------------------------
        ldiu      @CL74,r1
        ldiu      *+fp(ir0),r2
        ldiu      513,r0
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      513,r1
        ldiu      fp,r0
        addi      fp,r1
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	78
;----------------------------------------------------------------------
; 1925 | sdebugFlag = TRUE;                                                     
; 1929 | //2011_11_16 nOnlyDestSendFlag                                         
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L530:        
	.line	83
;----------------------------------------------------------------------
; 1930 | if(WORD_L(nNvsram_Variable.nMatchCode[WORD_L(pTmsRxData->nDestCode)]) !
;     | = WORD_L(nTr_St_Info.nOnlyDestSendFlag))                               
;----------------------------------------------------------------------
        ldiu      617,ir1
        ldiu      255,ir0
        ldiu      255,r0
        ldiu      255,r1
        ldiu      *+fp(ir1),ar0
        ldiu      @CL3,ar1
        and       *+ar0(7),ir0
        and       @_nTr_St_Info+367,r0
        and3      r1,*+ar1(ir0),r1
        cmpi3     r0,r1
        beq       L533
;*      Branch Occurs to L533 
	.line	85
;----------------------------------------------------------------------
; 1932 | if(WORD_L(nNvsram_Variable.nMatchCode[WORD_L(pTmsRxData->nDestCode)]) !
;     | = 0xFF)                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(ir1),ar0
        ldiu      255,ir0
        and       *+ar0(7),ir0
        ldiu      255,r0
        and3      r0,*+ar1(ir0),r0
        cmpi      255,r0
        beq       L533
;*      Branch Occurs to L533 
	.line	87
;----------------------------------------------------------------------
; 1934 | nTr_St_Info.nTcmsAutoDriverFlag = TRUE;//ÀÚµ¿ ¿îÇà ½ÃÀÛ                
; 1935 | //2011_11_16 nOnlyDestSendFlag                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+370
	.line	89
;----------------------------------------------------------------------
; 1936 | nTr_St_Info.nOnlyDestSendFlag =  WORD_L(nNvsram_Variable.nMatchCode[WOR
;     | D_L(pTmsRxData->nDestCode)]);                                          
;----------------------------------------------------------------------
        ldiu      255,ir0
        ldiu      *+fp(ir1),ar0
        and       *+ar0(7),ir0
        ldiu      255,r0
        and3      r0,*+ar1(ir0),r0
        sti       r0,@_nTr_St_Info+367
	.line	90
;----------------------------------------------------------------------
; 1937 | nSccSendFlag.nDeSTCodeSet = 2;                                         
; 1939 | //2011_11_16 nOnlyDestSendFlag                                         
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+0
	.line	93
;----------------------------------------------------------------------
; 1940 | sprintf(szBuf2,"-FDI Chang Data Tx... : [%02X]H",WORD_L(nTr_St_Info.nOn
;     | lyDestSendFlag)); strcat(szBuf,szBuf2);                                
;----------------------------------------------------------------------
        ldiu      513,r1
        ldiu      @CL75,r2
        ldiu      255,r0
        and       @_nTr_St_Info+367,r0
        addi      fp,r1
        push      r0
        push      r2
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	94
;----------------------------------------------------------------------
; 1941 | sdebugFlag = TRUE;                                                     
; 1946 | //µµÂø Á÷Àü¿¡ ÃâÀÔ¹® “‡ÇâÀÌ ¹Ù²î¸é ´Ù½Ã ÇÑ¹ø Àü¼ÛÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L533:        
	.line	100
;----------------------------------------------------------------------
; 1947 | if(WORD_L(pTmsRxData->BIT.nNextSt)) //´ÙÀ½¿ª µµÂø Á÷Àü¿¡ ÄÚµå Á¤º¸°¡ ¼ö
;     | ½Å µÇ¾úÀ» °æ¿ì                                                         
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      8,r0
        and       *+ar0(8),r0
        lsh       -3,r0
        tstb      255,r0
        beq       L539
;*      Branch Occurs to L539 
	.line	102
;----------------------------------------------------------------------
; 1949 | sDoorInfo = ((pTmsRxData->BIT.nDoor2<<1) | (pTmsRxData->BIT.nDoor1))&0x
;     | 03;                                                                    
;----------------------------------------------------------------------
        ldiu      617,ir1
        ldiu      2,r0
        ldiu      *+fp(ir0),ar1
        ldiu      1,r1
        ldiu      *+fp(ir1),ar0
        and       *+ar1(8),r0
        ldiu      616,ir0
        lsh       -1,r0
        and       *+ar0(8),r1
        ash       1,r0
        or3       r0,r1,r0
        and       3,r0
        sti       r0,*+fp(ir0)
	.line	104
;----------------------------------------------------------------------
; 1951 | if(sDoorInfo&0x03) //°ªÀÌ ÂüÀÌ¸é.                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        tstb3     *+fp(ir0),r0
        beq       L539
;*      Branch Occurs to L539 
	.line	106
;----------------------------------------------------------------------
; 1953 | if(WORD_L(nIndex_Flag.nBetweenFlag) && (WORD_L(nDisplayIndex.nDoor) !=
;     | WORD_L(sDoorInfo)))                                                    
; 1954 | {//¸¶Áö¸· ¹®ÀåÀÌ Àü¼ÛµÇ°í ÃâÀÔ¹® Á¤º¸°¡ º¯°æ µÇ¾úÀ» °æ¿ì               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nIndex_Flag+576,r0
        beq       L538
;*      Branch Occurs to L538 
        ldiu      255,r1
        and       @_nDisplayIndex+1,r0
        and3      r1,*+fp(ir0),r1
        cmpi3     r1,r0
        beq       L538
;*      Branch Occurs to L538 
	.line	109
;----------------------------------------------------------------------
; 1956 | nSccSendFlag.nManualSet = 2; //ÃâÀÔ¹® Á¤º¸ ¹®ÀåÀ» ´Ù½Ã ÇÑ¹ø Ç¥ÃâÇÑ´Ù.  
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+11
	.line	111
;----------------------------------------------------------------------
; 1958 | sprintf(szBuf2,"-Next St EVENT -> RX [%02X]H : Default[%02X]H",WORD_L(s
;     | DoorInfo),WORD_L(nDisplayIndex.nDoor));                                
;----------------------------------------------------------------------
        ldiu      255,r2
        ldiu      255,r0
        and3      r2,*+fp(ir0),r2
        and       @_nDisplayIndex+1,r0
        ldiu      @CL76,r1
        push      r0
        ldiu      513,r0
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      4,sp
	.line	112
;----------------------------------------------------------------------
; 1959 | strcat(szBuf,szBuf2);                                                  
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      513,r1
        addi      fp,r1
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	113
;----------------------------------------------------------------------
; 1960 | sdebugFlag = TRUE;                                                     
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L538:        
	.line	116
;----------------------------------------------------------------------
; 1963 | nDisplayIndex.nDoor = sDoorInfo;                                       
; 1968 | //µð¹ö±ë                                                               
;----------------------------------------------------------------------
        ldiu      616,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nDisplayIndex+1
L539:        
	.line	122
;----------------------------------------------------------------------
; 1969 | if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPri
;     | nt(szBuf); }                                                           
; 1974 | //ÃâÀÔ¹®ÀÌ ¿­·Á ÀÖÀ»¶§¹® °Ë»ç ÇÑ´Ù.                                    
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldi       *+fp(ir0),r0
        beq       L541
;*      Branch Occurs to L541 
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      @CL77,r1
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
L541:        
	.line	128
;----------------------------------------------------------------------
; 1975 | if(nDi_Check.nDoor.nFlag && !WORD_L(nTr_St_Info.nAutoManuFlag)) //¼öµ¿
;     | ¼³Á¤ÀÌ µÇ¾î ÀÖÀ¸¸é ¿ªÄÚµå ¼ö½Å »óÅÂ¸¦ È®ÀÎ ÇÏÁö ¾Ê´Â´Ù.                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        beq       L566
;*      Branch Occurs to L566 
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        bned      L566
	nop
        ldieq     617,ir0
        ldieq     617,ir1
;*      Branch Occurs to L566 
	.line	131
;----------------------------------------------------------------------
; 1978 | if(WORD_L(StationCode_Definite(WORD_L(pTmsRxData->nNowCode),WORD_L(pTms
;     | RxData->nNextCode))) >= 2 ) //ÇöÀç¿ª. ´ÙÀ½¿ªÀÌ Á¤»ó ¼ö½Å µÇ¸é          
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      *+fp(ir1),ar0
        ldiu      *+fp(ir0),ar1
        and       *+ar0(5),r0
        and       *+ar1(6),r1
        push      r1
        push      r0
        call      _StationCode_Definite
                                        ; Call Occurs
        and       255,r0
        cmpi      2,r0
        blod      L554
        subi      2,sp
	nop
        ldilo     0,r0
;*      Branch Occurs to L554 
	.line	134
;----------------------------------------------------------------------
; 1981 | nTmsRxData.nDoOpenIf = ((pTmsRxData->BIT.nDoor2<<1) | (pTmsRxData->BIT.
;     | nDoor1))&0x03; //120820 ÃâÀÔ¹® Á¤º¸´Â µµ¾î OPEN ÀÏ °æ¿ì TCMS Á¤º¸·Î °è¼
;     | Ó °»½Å ÇÑ´Ù.                                                           
; 1982 | //¿­¹øÀÌ º¯°æ µÇ¾úÀ» °æ¿ì                                              
;----------------------------------------------------------------------
        ldiu      617,ir1
        ldiu      617,ir0
        ldiu      2,r0
        ldiu      1,r1
        ldiu      *+fp(ir1),ar0
        ldiu      *+fp(ir0),ar1
        and       *+ar0(8),r0
        and       *+ar1(8),r1
        lsh       -1,r0
        ash       1,r0
        or3       r0,r1,r0
        and       3,r0
        sti       r0,@_nTmsRxData+6
	.line	136
;----------------------------------------------------------------------
; 1983 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum) != DWORD_L(nSelect_B
;     | utton.nGPTranNumInput.nNum))                                           
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r1
        and       65535,r1
        ldiu      @_nSelect_Button+2,r0
        and       65535,r0
        cmpi3     r1,r0
        beq       L548
;*      Branch Occurs to L548 
	.line	138
;----------------------------------------------------------------------
; 1985 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nNum))                       
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        tstb      65535,r0
        beq       L547
;*      Branch Occurs to L547 
	.line	140
;----------------------------------------------------------------------
; 1987 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nDi_Check+18
	.line	142
;----------------------------------------------------------------------
; 1989 | nSccSendFlag.nTranNum = 2; //¿­¹øÀÌ º¯°æ µÇ¸é ¿­¹øÀ» º¯°æÇÑ´Ù.         
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+1
	.line	144
;----------------------------------------------------------------------
; 1991 | nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput
;     | .nNum = sTrNUM;                                                        
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nSelect_Button+1
        sti       r0,@_nSelect_Button+2
	.line	146
;----------------------------------------------------------------------
; 1993 | nSelect_Button.nGPTranNumInput.nFlag = TRUE;  //¿­¹ø º¯°æ¿¡ µû¸¥ ¿­¹øÀ»
;     |  ´Ù½Ã °Ë»ö ÇÑ´Ù. 2010_07_31                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+0
	.line	148
;----------------------------------------------------------------------
; 1995 | sprintf(szBuf2,"-DIA FIND : [%d]",DWORD_L(nSelect_Button.nGPTranNumInpu
;     | t.nRemNum));strcat(szBuf,szBuf2);strcat(szBuf,szBuf2);                 
;----------------------------------------------------------------------
        ldiu      @CL79,r2
        ldiu      513,r1
        ldiu      @CL78,r0
        and       @_nSelect_Button+2,r0
        push      r0
        push      r2
        addi      fp,r1
        push      r1
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      513,r1
        addi      fp,r1
        push      r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      513,r1
        ldiu      fp,r0
        addi      fp,r1
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	149
;----------------------------------------------------------------------
; 1996 | sdebugFlag = TRUE;                                                     
; 1998 | else{//¿­¹ø ÀÔ·ÂÀ» "0"À¸·Î ÇßÀ»¶§.                                     
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L548
;*      Branch Occurs to L548 
L547:        
	.line	153
;----------------------------------------------------------------------
; 2000 | nTr_St_Info.nStopPatNum = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+0
	.line	154
;----------------------------------------------------------------------
; 2001 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      32,r1
        push      r2
        ldiu      @CL8,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	155
;----------------------------------------------------------------------
; 2002 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r0
        ldiu      @CL11,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	156
;----------------------------------------------------------------------
; 2003 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r0
        push      r0
        ldiu      32,r1
        ldiu      @CL14,r2
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	157
;----------------------------------------------------------------------
; 2004 | gpSETERR;                                                              
; 2008 | //¿ª Á¤º¸¸¸ º¯°æ µÇ¾úÀ» °æ¿ì                                           
;----------------------------------------------------------------------
        ldiu      2,r1
        push      r1
        ldiu      82,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L548:        
	.line	162
;----------------------------------------------------------------------
; 2009 | if(nTr_St_Info.nStopPatNum && //¿­Â÷ ¹øÈ£°¡ À¯È¿ ÇÏ´Ù¸é...             
; 2010 |         (WORD_L(nSelect_Button.nGPTranNumInput.nNowSt_Re) != WORD_L(pTm
;     | sRxData->nNowCode) ||                                                  
; 2011 |         WORD_L(nSelect_Button.nGPTranNumInput.nNextSt_Re) != WORD_L(pTm
;     | sRxData->nNextCode)))                                                  
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+0,r0
        beq       L555
;*      Branch Occurs to L555 
        ldiu      617,ir0
        ldiu      255,r0
        ldiu      255,r1
        ldiu      *+fp(ir0),ar0
        and       @_nSelect_Button+3,r0
        and       *+ar0(5),r1
        cmpi3     r1,r0
        bne       L551
;*      Branch Occurs to L551 
        ldiu      255,r1
        ldiu      255,r0
        ldiu      *+fp(ir0),ar0
        and       @_nSelect_Button+4,r1
        and       *+ar0(6),r0
        cmpi3     r0,r1
        beq       L555
;*      Branch Occurs to L555 
L551:        
	.line	166
;----------------------------------------------------------------------
; 2013 | d_CarNum1 = nSelect_Button.nGPTranNumInput.nNowSt_Re = WORD_L(pTmsRxDat
;     | a->nNowCode);                                                          
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(5),r0
        sti       r0,@_nSelect_Button+3
        sti       r0,@_d_CarNum1+0
	.line	167
;----------------------------------------------------------------------
; 2014 | d_CarNumRem1 = nSelect_Button.nGPTranNumInput.nNextSt_Re = WORD_L(pTmsR
;     | xData->nNextCode);                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(6),r0
        sti       r0,@_nSelect_Button+4
        sti       r0,@_d_CarNumRem1+0
	.line	169
;----------------------------------------------------------------------
; 2016 | if(WORD_L(nSelect_Button.nGPTranNumInput.nNowSt_Re) != WORD_L(nSelect_B
;     | utton.nGPTranNumInput.nNextSt_Re))                                     
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nSelect_Button+3,r1
        ldiu      255,r0
        and       @_nSelect_Button+4,r0
        cmpi3     r0,r1
        beq       L555
;*      Branch Occurs to L555 
	.line	171
;----------------------------------------------------------------------
; 2018 | d_stChCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_stChCnt+0,r0      ; Unsigned
        sti       r0,@_d_stChCnt+0
	.line	173
;----------------------------------------------------------------------
; 2020 | nTr_St_Info.nAutoDoorFlag = FALSE; // Á¤»óÀûÀ¸·Î ¿­¹øÀÌ ÀÔ·Â µÇ¸é ½ÇÇà
;     | ÁßÀÌ´ø ½Ã¹Ä·¹ÀÌ¼Ç ÁßÁö.                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+70
	.line	174
;----------------------------------------------------------------------
; 2021 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	176
;----------------------------------------------------------------------
; 2023 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+18
	.line	178
;----------------------------------------------------------------------
; 2025 | nTmsRxData.nNow = WORD_L(nNvsram_Variable.nMatchCode[WORD_L(pTmsRxData-
;     | >nNowCode)]);                                                          
;----------------------------------------------------------------------
        ldiu      617,ir1
        ldiu      255,ir0
        ldiu      *+fp(ir1),ar0
        ldiu      @CL3,ar1
        and       *+ar0(5),ir0
        ldiu      255,r0
        and3      r0,*+ar1(ir0),r0
        sti       r0,@_nTmsRxData+3
	.line	179
;----------------------------------------------------------------------
; 2026 | nTmsRxData.nNext = WORD_L(nNvsram_Variable.nMatchCode[WORD_L(pTmsRxData
;     | ->nNextCode)]);                                                        
;----------------------------------------------------------------------
        ldiu      255,ir0
        ldiu      *+fp(ir1),ar1
        ldiu      @CL3,ar0
        and       *+ar1(6),ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTmsRxData+4
	.line	181
;----------------------------------------------------------------------
; 2028 | nTr_St_Info.nDoOp_StCh = TRUE;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+371
	.line	182
;----------------------------------------------------------------------
; 2029 | nTr_St_Info.nRxCode_NoNe_Flag = TRUE;                                  
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+373
	.line	184
;----------------------------------------------------------------------
; 2031 | sprintf(szBuf2,"-Door Open St-St Code RX OK : Now[%02X]H : Next[%02X]H
;     | ",WORD_L(nTmsRxData.nNow),WORD_L(nTmsRxData.nNext));                   
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      513,r3
        ldiu      @CL80,r2
        ldiu      255,r0
        and       @_nTmsRxData+3,r0
        and       @_nTmsRxData+4,r1
        push      r1
        push      r0
        addi      fp,r3
        push      r2
        push      r3
        call      _sprintf
                                        ; Call Occurs
        subi      4,sp
	.line	185
;----------------------------------------------------------------------
; 2032 | strcat(szBuf,szBuf2);                                                  
;----------------------------------------------------------------------
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	186
;----------------------------------------------------------------------
; 2033 | sdebugFlag = TRUE;                                                     
; 2039 | else                                                                   
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L555
;*      Branch Occurs to L555 
	.line	194
;----------------------------------------------------------------------
; 2041 | nTr_St_Info.nRxCode_NoNe_Flag = FALSE;                                 
;----------------------------------------------------------------------
L554:        
        sti       r0,@_nTr_St_Info+373
	.line	196
;----------------------------------------------------------------------
; 2043 | sprintf(szBuf2,"-Door Open St-St Code RX NG-NG : Now[%02X]H : Next[%02X
;     | ]H ",WORD_L(pTmsRxData->nNowCode),WORD_L(pTmsRxData->nNextCode));      
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      617,ir1
        ldiu      255,r2
        ldiu      @CL81,r1
        ldiu      *+fp(ir0),ar0
        ldiu      *+fp(ir1),ar1
        ldiu      255,r0
        and       *+ar0(5),r2
        and       *+ar1(6),r0
        push      r0
        ldiu      513,r0
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      4,sp
	.line	197
;----------------------------------------------------------------------
; 2044 | strcat(szBuf,szBuf2);                                                  
;----------------------------------------------------------------------
        ldiu      513,r1
        ldiu      fp,r0
        addi      fp,r1
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
	.line	198
;----------------------------------------------------------------------
; 2045 | sdebugFlag = TRUE;                                                     
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L555:        
	.line	201
;----------------------------------------------------------------------
; 2048 | if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPri
;     | nt(szBuf); }                                                           
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldi       *+fp(ir0),r0
        beq       L557
;*      Branch Occurs to L557 
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      @CL77,r1
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
L557:        
	.line	203
;----------------------------------------------------------------------
; 2050 | nTr_St_Info.nDoOp_StChFlag = TRUE; //120820 ÃâÀÔ¹®ÀÌ ¿­¸®°í Á¤»óÀûÀ¸·Î
;     | Åë½ÅÀÌ ÀÌ·ç¾î Á³´Ù.                                                    
; 2054 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+377
        bu        L566
;*      Branch Occurs to L566 
L558:        
	.line	209
;----------------------------------------------------------------------
; 2056 | if(WORD_L(nTr_St_Info.nMasterFlag) || WORD_L(nTr_St_Info.nTcmsAutoDrive
;     | rFlag))                                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+372,r0
        bne       L560
;*      Branch Occurs to L560 
        tstb      @_nTr_St_Info+370,r0
        beq       L563
;*      Branch Occurs to L563 
L560:        
	.line	211
;----------------------------------------------------------------------
; 2058 | nTr_St_Info.nMasterOffCnt = 5;                                         
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_nTr_St_Info+376
	.line	213
;----------------------------------------------------------------------
; 2060 | memset(&nSccSendFlag,0x00,sizeof(nSccSendFlag));                       
;----------------------------------------------------------------------
        ldiu      12,r1
        ldiu      0,r2
        push      r1
        ldiu      @CL18,r0
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	215
;----------------------------------------------------------------------
; 2062 | nSelect_Button.nGPTranNumInput.nNum = 0;     //¿­Â÷ ¹øÈ£¸¦ Å¬¸®¾î ÇÑ´Ù.
;     |   //2011_05_02                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+1
	.line	216
;----------------------------------------------------------------------
; 2063 | nSelect_Button.nGPTranNumInput.nRemNum = 0;  //¿­Â÷ ¹øÈ£ ±â¾ï º¯¼öµµ Å¬
;     | ¸®¾î ÇÑ´Ù.//2011_05_02                                                 
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+2
	.line	218
;----------------------------------------------------------------------
; 2065 | nTr_St_Info.nAutoManuFlag = FALSE;//¼öµ¿ ¼³Á¤                          
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+374
	.line	220
;----------------------------------------------------------------------
; 2067 | nTr_St_Info.nSimulationRun = FALSE;                                    
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+69
	.line	222
;----------------------------------------------------------------------
; 2069 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	223
;----------------------------------------------------------------------
; 2070 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+70
	.line	226
;----------------------------------------------------------------------
; 2073 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+71
	.line	227
;----------------------------------------------------------------------
; 2074 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	229
;----------------------------------------------------------------------
; 2076 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	231
;----------------------------------------------------------------------
; 2078 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	233
;----------------------------------------------------------------------
; 2080 | nSccSendFlag.nClean = 3; //¹«Ç¥½Ã Àü¼Û                                 
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	234
;----------------------------------------------------------------------
; 2081 | nTr_St_Info.nClean_Flag = FALSE; //½Ã¹Ä·¹ÀÌ¼ÇÀÌ ¿Ï·á µÇ¸é ¹«Ç¥½Ã flage°
;     | ¡ FALSE·Î µÈ´Ù.                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+369
	.line	236
;----------------------------------------------------------------------
; 2083 | memset(mSelfTest_NG_CntBuf,0x00,sizeof(mSelfTest_NG_CntBuf));//2011_02_
;     | 17 3.2¹öÀü//                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      @CL19,r2
        ldiu      60,r0
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	238
;----------------------------------------------------------------------
; 2085 | if(nTr_St_Info.nDISFPatFlag)                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beq       L562
;*      Branch Occurs to L562 
	.line	240
;----------------------------------------------------------------------
; 2087 | nTr_St_Info.nDISFPatFlag = FALSE; //³ë¼± Ç¥½Ã±â°¡ ÆÐÅÏ ÁßÀÌ ¿´´Ù¸é Á¤Áö
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+66
	.line	241
;----------------------------------------------------------------------
; 2088 | nSccSendFlag.nS_FDIPaten = 2;                                          
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+4
L562:        
	.line	244
;----------------------------------------------------------------------
; 2091 | nTr_St_Info.nStopPatNum = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+0
	.line	246
;----------------------------------------------------------------------
; 2093 | sprintf(szBuf,"-Master Key Off [%02X] \r\n",nTmsRxData.nDataDefin);    
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+0,r2
        ldiu      @CL82,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
	.line	247
;----------------------------------------------------------------------
; 2094 | user_DebugPrint(szBuf);                                                
; 2096 | //DP_SEND_PRO();       //Åë½Å TX ºÎºÐÀ» ÀÌ°÷¿¡¼­ Ã³¸® ÇÑ´Ù.            
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
L563:        
	.line	253
;----------------------------------------------------------------------
; 2100 | nTr_St_Info.nTcmsAutoDriverFlag = FALSE;                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+370
	.line	254
;----------------------------------------------------------------------
; 2101 | nTr_St_Info.nMasterFlag = FALSE;                                       
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+372
	.line	256
;----------------------------------------------------------------------
; 2103 | if(WORD_L(nTr_St_Info.nMasterOffCnt))                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+376,r0
        beq       L565
;*      Branch Occurs to L565 
	.line	258
;----------------------------------------------------------------------
; 2105 | nTr_St_Info.nMasterOffCnt--;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTr_St_Info+376,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+376
	.line	259
;----------------------------------------------------------------------
; 2106 | DP_SEND_PRO();       //Åë½Å TX ºÎºÐÀ» ÀÌ°÷¿¡¼­ Ã³¸® ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_SEND_PRO
                                        ; Call Occurs
L565:        
	.line	263
;----------------------------------------------------------------------
; 2110 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	264
;----------------------------------------------------------------------
; 2111 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	265
;----------------------------------------------------------------------
; 2112 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	266
;----------------------------------------------------------------------
; 2113 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
L566:        
	.line	269
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      619,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2116,000000000h,617



	.sect	".cinit"
	.field  	1,32
	.field  	_dStStion+0,32
	.field  	0,32		; _dStStion @ 0

	.sect	".text"

	.global	_dStStion
	.bss	_dStStion,1
	.sym	_dStStion,_dStStion,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dRndNow+0,32
	.field  	0,32		; _dRndNow @ 0

	.sect	".text"

	.global	_dRndNow
	.bss	_dRndNow,1
	.sym	_dRndNow,_dRndNow,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dRndNext+0,32
	.field  	0,32		; _dRndNext @ 0

	.sect	".text"

	.global	_dRndNext
	.bss	_dRndNext,1
	.sym	_dRndNext,_dRndNext,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dRndDest+0,32
	.field  	0,32		; _dRndDest @ 0

	.sect	".text"

	.global	_dRndDest
	.bss	_dRndDest,1
	.sym	_dRndDest,_dRndDest,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dRndDistance+0,32
	.field  	0,32		; _dRndDistance @ 0

	.sect	".text"

	.global	_dRndDistance
	.bss	_dRndDistance,1
	.sym	_dRndDistance,_dRndDistance,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SendCnt+0,32
	.field  	0,32		; _d_SendCnt @ 0

	.sect	".text"

	.global	_d_SendCnt
	.bss	_d_SendCnt,1
	.sym	_d_SendCnt,_d_SendCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_RndTxCnt+0,32
	.field  	0,32		; _d_RndTxCnt @ 0

	.sect	".text"

	.global	_d_RndTxCnt
	.bss	_d_RndTxCnt,1
	.sym	_d_RndTxCnt,_d_RndTxCnt,12,2,32
	.sect	 ".text"

	.global	_DP_SEND_PRO
	.sym	_DP_SEND_PRO,_DP_SEND_PRO,32,2,0
	.func	2127
;******************************************************************************
;* FUNCTION NAME: _DP_SEND_PRO                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,sp,st,rs,re,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 734 Auto + 0 SOE = 736 words      *
;******************************************************************************
_DP_SEND_PRO:
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_sDestTxBuf,614,60,1,640,,20
	.sym	_sClean_Tx_Buf,634,60,1,640,,20
	.sym	_sSimu_Tx_Buf,654,60,1,640,,20
	.sym	_sAddSet_Tx_Buf,674,60,1,640,,20
	.sym	_sSelf_Tx_Buf,694,60,1,640,,20
	.sym	_sRnd_Tx_Buf,714,60,1,640,,20
	.sym	_nDest_Num,734,12,1,32
	.line	1
;----------------------------------------------------------------------
; 2127 | void DP_SEND_PRO()                                                     
; 2129 | char szBuf[512];                                                       
; 2130 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      734,sp
	.line	5
;----------------------------------------------------------------------
; 2131 | int sdebugFlag = 0;                                                    
; 2133 | UCHAR sDestTxBuf[20];                                                  
; 2134 | UCHAR sClean_Tx_Buf[20];                                               
; 2135 | UCHAR sSimu_Tx_Buf[20];                                                
; 2136 | UCHAR sAddSet_Tx_Buf[20];                                              
; 2138 | UCHAR sSelf_Tx_Buf[20];                                                
; 2139 | UCHAR sRnd_Tx_Buf[20];                                                 
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	14
;----------------------------------------------------------------------
; 2140 | UCHAR nDest_Num = 0;                                                   
;----------------------------------------------------------------------
        ldiu      734,ir0
        sti       r0,*+fp(ir0)
	.line	16
;----------------------------------------------------------------------
; 2142 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 2144 | if(WORD_L(nTr_St_Info.nSelf_Test_Flag)) //ÀÚ±â Áø´Ü ÁøÇàÁßÀÏ¶§ Àü¼ÛÇÑ´Ù
;     | .                                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+368,r0
        beq       L582
;*      Branch Occurs to L582 
	.line	20
;----------------------------------------------------------------------
; 2146 | if(!nSelf_Test.nSELF_ICR_SELECT)                                       
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bned      L574
	nop
        ldieq     @CL16,ar0
        ldieq     @CL83,ar1
;*      Branch Occurs to L574 
	.line	22
;----------------------------------------------------------------------
; 2148 | memcpy(nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT_ADD,DISPLAY_UNIT);    
;----------------------------------------------------------------------
        ldiu      *ar1++(1),r0
        rpts      26                    ; Fast MEMCPY(#87)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	23
;----------------------------------------------------------------------
; 2149 | if(nSelf_Test.nSELF_All_Cnt < SELF_TEST_ALLCNT){                       
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+183,r0
        cmpi      10,r0
        bhs       L572
;*      Branch Occurs to L572 
	.line	24
;----------------------------------------------------------------------
; 2150 | DP_SelfTest(nSelf_Test.nSELF_ADDDATA_BUF,nSelf_Test.nSELF_RXDATA_Buf,DI
;     | SPLAY_UNIT_A);   // Á÷Åë                                               
;----------------------------------------------------------------------
        ldiu      12,r2
        ldiu      @CL27,r1
        ldiu      @CL16,r0
        push      r2
        push      r1
        push      r0
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      3,sp
L572:        
	.line	27
;----------------------------------------------------------------------
; 2153 | if(nSelf_Test.nSELF_All_Cnt_B < SELF_TEST_ALLCNT){                     
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+184,r0
        cmpi      10,r0
        bhs       L579
;*      Branch Occurs to L579 
	.line	28
;----------------------------------------------------------------------
; 2154 | DP_SelfTest_B(&nSelf_Test.nSELF_ADDDATA_BUF[DISPLAY_UNIT_A],&nSelf_Test
;     | .nSELF_RXDATA_Buf[DISPLAY_UNIT_A],DISPLAY_UNIT_B);       // Á÷Åë       
;----------------------------------------------------------------------
        ldiu      16,r1
        ldiu      @CL85,r2
        ldiu      @CL84,r0
        push      r1
        push      r2
        push      r0
        call      _DP_SelfTest_B
                                        ; Call Occurs
        subi      3,sp
        bu        L579
;*      Branch Occurs to L579 
L574:        
	.line	31
;----------------------------------------------------------------------
; 2157 | else if(nSelf_Test.nSELF_ICR_SELECT)                                   
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L579
;*      Branch Occurs to L579 
	.line	33
;----------------------------------------------------------------------
; 2159 | memcpy(nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT_ADD_NOR_PIB,DISPLAY_ST
;     | ANDARD_UNIT_A);                                                        
;----------------------------------------------------------------------
        ldiu      @CL16,ar0
        ldiu      @CL86,ar1
        ldiu      *ar1++(1),r0
        rpts      22                    ; Fast MEMCPY(#90)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	34
;----------------------------------------------------------------------
; 2160 | memcpy(&nSelf_Test.nSELF_ADDDATA_BUF[DISPLAY_STANDARD_UNIT_A],DISPLAY_U
;     | NIT_ADD_NOR_RND,DISPLAY_STANDARD_UNIT_B);                              
;----------------------------------------------------------------------
        ldiu      @CL87,ar1
        ldiu      @CL88,ar0
        ldiu      *ar0++(1),r0
        rpts      26                    ; Fast MEMCPY(#93)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	35
;----------------------------------------------------------------------
; 2161 | if(nSelf_Test.nSELF_All_Cnt < SELF_TEST_ALLCNT){                       
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+183,r0
        cmpi      10,r0
        bhs       L577
;*      Branch Occurs to L577 
	.line	36
;----------------------------------------------------------------------
; 2162 | DP_SelfTest(nSelf_Test.nSELF_ADDDATA_BUF,nSelf_Test.nSELF_RXDATA_Buf,DI
;     | SPLAY_STANDARD_UNIT_A);  // ÀÏ¹Ý                                       
;----------------------------------------------------------------------
        ldiu      24,r1
        ldiu      @CL27,r0
        ldiu      @CL16,r2
        push      r1
        push      r0
        push      r2
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      3,sp
L577:        
	.line	39
;----------------------------------------------------------------------
; 2165 | if(nSelf_Test.nSELF_All_Cnt_B < SELF_TEST_ALLCNT){                     
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+184,r0
        cmpi      10,r0
        bhs       L579
;*      Branch Occurs to L579 
	.line	40
;----------------------------------------------------------------------
; 2166 | DP_SelfTest_B(&nSelf_Test.nSELF_ADDDATA_BUF[DISPLAY_STANDARD_UNIT_A],&n
;     | Self_Test.nSELF_RXDATA_Buf[DISPLAY_STANDARD_UNIT_A],DISPLAY_STANDARD_UN
;     | IT_B);    // ÀÏ¹Ý                                                      
;----------------------------------------------------------------------
        ldiu      28,r0
        ldiu      @CL89,r1
        ldiu      @CL87,r2
        push      r0
        push      r1
        push      r2
        call      _DP_SelfTest_B
                                        ; Call Occurs
        subi      3,sp
L579:        
	.line	45
;----------------------------------------------------------------------
; 2171 | if(WORD_L(nSelf_Test.nSELF_All_Cnt) >=SELF_TEST_ALLCNT && nSelf_Test.nS
;     | ELF_All_Cnt_B >= SELF_TEST_ALLCNT)       //ÀüÃ¥ ¹Ýº¹ È½¼ö°¡ 3È¸¸¦ ³ÑÀ¸¸
;     | é Á¾·á.                                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+183,r0
        cmpi      10,r0
        blo       L644
;*      Branch Occurs to L644 
        ldiu      @_nSelf_Test+184,r0
        cmpi      10,r0
        blo       L644
;*      Branch Occurs to L644 
	.line	47
;----------------------------------------------------------------------
; 2173 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+183
	.line	48
;----------------------------------------------------------------------
; 2174 | nSelf_Test.nSELF_All_Cnt_B = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+184
	.line	49
;----------------------------------------------------------------------
; 2175 | d_ICR_Select = nSelf_Test.nSELF_ICR_SELECT;                            
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+185,r0
        sti       r0,@_d_ICR_Select+0
	.line	51
;----------------------------------------------------------------------
; 2177 | nTr_St_Info.nSelf_Test_Flag = FALSE;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+368
	.line	52
;----------------------------------------------------------------------
; 2178 | nLedDataLoad.nSelfTestFlag = FALSE;                                    
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+7
	.line	54
;----------------------------------------------------------------------
; 2180 | DP_TCMSSD_Format(TCMSSD,&m_SCCPISTXBuff_Ach[3]); //TCMS Àü¼Û DATA ¸¦ °»
;     | ½Å ÇÑ´Ù.                                                               
;----------------------------------------------------------------------
        ldiu      @CL90,r1
        push      r1
        ldiu      @CL91,r0
        push      r0
        call      _DP_TCMSSD_Format
                                        ; Call Occurs
        subi      2,sp
	.line	56
;----------------------------------------------------------------------
; 2182 | sprintf(szBuf2,"#Self Test FINISH");strcat(szBuf,szBuf2);sdebugFlag = T
;     | RUE;                                                                   
;----------------------------------------------------------------------
        ldiu      @CL92,r1
        ldiu      513,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L644
;*      Branch Occurs to L644 
L582:        
	.line	60
;----------------------------------------------------------------------
; 2186 | else if(WORD_L(nSccSendFlag.nManualSet)) // ¼öµ¿ ¼³Á¤½Ã ¹®Àå Àü¼Û      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+11,r0
        beq       L587
;*      Branch Occurs to L587 
	.line	62
;----------------------------------------------------------------------
; 2188 | if(nSccSendFlag.nManualSet == 2)                                       
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+11,r0
        cmpi      2,r0
        bne       L585
;*      Branch Occurs to L585 
	.line	64
;----------------------------------------------------------------------
; 2190 | DP_IM_PR_TEXT_READ(99,1,0xF1);  //Â÷³» ¼öµ¿ ¼³Á¤ Ç¥½Ã±â¿¡ 96¹ø Ç¥Ãâ ¹®À
;     | åÀ» Àü¼ÛÇÑ´Ù.                                                          
;----------------------------------------------------------------------
        ldiu      241,r1
        ldiu      1,r0
        ldiu      99,r2
        push      r1
        push      r0
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
        bu        L586
;*      Branch Occurs to L586 
L585:        
	.line	66
;----------------------------------------------------------------------
; 2192 | else if(nSccSendFlag.nManualSet == 1)                                  
; 2194 |         //DP_IM_PR_TEXT_READ(99,1,0xF1);        //Â÷³» ¼öµ¿ ¼³Á¤ Ç¥½Ã±â
;     | ¿¡ 97¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ´Ù.                                          
;----------------------------------------------------------------------
L586:        
	.line	70
;----------------------------------------------------------------------
; 2196 | nSccSendFlag.nManualSet--;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+11,r0  ; Unsigned
        sti       r0,@_nSccSendFlag+11
        bu        L644
;*      Branch Occurs to L644 
L587:        
	.line	72
;----------------------------------------------------------------------
; 2198 | else if(WORD_L(nSccSendFlag.nDeSTCodeSet) || WORD_L(nSccSendFlag.nTranN
;     | um)) // Á¤¸é Çà¼± Ç¥½Ã±â Ãâ·Â                                          
; 2200 |         //2011_11_16 nOnlyDestSendFlag                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+0,r0
        bne       L589
;*      Branch Occurs to L589 
        tstb      @_nSccSendFlag+1,r0
        beq       L600
;*      Branch Occurs to L600 
L589:        
	.line	75
;----------------------------------------------------------------------
; 2201 | nDest_Num = WORD_L(nTr_St_Info.nOnlyDestSendFlag)+1;                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      734,ir0
        and       @_nTr_St_Info+367,r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(ir0)
	.line	76
;----------------------------------------------------------------------
; 2202 | if(nSccSendFlag.nDeSTCodeSet && nSccSendFlag.nTranNum){                
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+0,r0
        beq       L592
;*      Branch Occurs to L592 
        ldi       @_nSccSendFlag+1,r0
        beq       L592
;*      Branch Occurs to L592 
	.line	77
;----------------------------------------------------------------------
; 2203 | SCC_TX_PROTOCOL(sDestTxBuf,0xF8,0x31,0x1C,nDest_Num,BIN_BCD(nSelect_But
;     | ton.nGPTranNumInput.nNum),0,0,0,10);                                   
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,rs
        ldiu      0,r1
        ldiu      0,r2
        ldiu      0,r3
        push      rs
        ldiu      734,ir0
        push      r3
        ldiu      614,rs
        push      r2
        ldiu      28,r3
        push      r1
        addi      fp,rs
        push      r0
        ldiu      49,r2
        ldiu      *+fp(ir0),r0
        push      r0
        push      r3
        push      r2
        ldiu      248,r1
        push      r1
        push      rs
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	79
;----------------------------------------------------------------------
; 2205 | sprintf(szBuf2,"#SEND FDI-TRNUM Tx Ok");strcat(szBuf,szBuf2);sdebugFlag
;     |  = TRUE;                                                               
;----------------------------------------------------------------------
        ldiu      513,r0
        ldiu      @CL93,r1
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L596
;*      Branch Occurs to L596 
L592:        
	.line	81
;----------------------------------------------------------------------
; 2207 | else if(nSccSendFlag.nDeSTCodeSet)                                     
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+0,r0
        beq       L594
;*      Branch Occurs to L594 
	.line	83
;----------------------------------------------------------------------
; 2209 | SCC_TX_PROTOCOL(sDestTxBuf,0xF5,0x31,0x1C,nDest_Num,BIN_BCD(nSelect_But
;     | ton.nGPTranNumInput.nNum),0,0,0,10);                                   
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,rs
        ldiu      0,r1
        ldiu      0,r2
        ldiu      0,r3
        push      rs
        ldiu      734,ir0
        push      r3
        ldiu      614,rs
        push      r2
        ldiu      28,r3
        push      r1
        addi      fp,rs
        push      r0
        ldiu      49,r2
        ldiu      *+fp(ir0),r0
        push      r0
        push      r3
        push      r2
        ldiu      245,r1
        push      r1
        push      rs
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	85
;----------------------------------------------------------------------
; 2211 | sprintf(szBuf2,"#SEND FDI Tx Ok");strcat(szBuf,szBuf2);sdebugFlag = TRU
;     | E;                                                                     
;----------------------------------------------------------------------
        ldiu      513,r0
        ldiu      @CL94,r1
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L596
;*      Branch Occurs to L596 
L594:        
	.line	87
;----------------------------------------------------------------------
; 2213 | else if(nSccSendFlag.nTranNum)                                         
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+1,r0
        beq       L596
;*      Branch Occurs to L596 
	.line	89
;----------------------------------------------------------------------
; 2215 | SCC_TX_PROTOCOL(sDestTxBuf,0xF7,0x31,0x1C,nDest_Num,BIN_BCD(nSelect_But
;     | ton.nGPTranNumInput.nNum),0,0,0,10);                                   
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,rs
        ldiu      0,r3
        ldiu      0,r1
        ldiu      0,r2
        push      rs
        ldiu      734,ir0
        push      r2
        push      r1
        push      r3
        ldiu      247,r2
        push      r0
        ldiu      49,r1
        ldiu      *+fp(ir0),r0
        ldiu      28,r3
        push      r0
        push      r3
        push      r1
        push      r2
        ldiu      614,rs
        addi      fp,rs
        push      rs
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	91
;----------------------------------------------------------------------
; 2217 | sprintf(szBuf2,"#SEND TRNUM Tx Ok");strcat(szBuf,szBuf2);sdebugFlag = T
;     | RUE;                                                                   
;----------------------------------------------------------------------
        ldiu      513,r0
        addi      fp,r0
        ldiu      @CL95,r1
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
        ldiu      513,r1
        ldiu      fp,r0
        addi      fp,r1
        push      r1
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L596:        
	.line	94
;----------------------------------------------------------------------
; 2220 | Delay_SCC2_SendTo(sDestTxBuf,20,SCC_B_CHANNEL,5);                      
;----------------------------------------------------------------------
        ldiu      5,r2
        ldiu      1,r1
        ldiu      20,r0
        push      r2
        ldiu      614,r2
        push      r1
        addi      fp,r2
        push      r0
        push      r2
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	96
;----------------------------------------------------------------------
; 2222 | if(nSccSendFlag.nDeSTCodeSet)nSccSendFlag.nDeSTCodeSet--;              
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+0,r0
        beq       L598
;*      Branch Occurs to L598 
        ldiu      1,r0
        subri     @_nSccSendFlag+0,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+0
L598:        
	.line	97
;----------------------------------------------------------------------
; 2223 | if(nSccSendFlag.nTranNum)nSccSendFlag.nTranNum--;                      
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+1,r0
        beq       L644
;*      Branch Occurs to L644 
        ldiu      1,r0
        subri     @_nSccSendFlag+1,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+1
        bu        L644
;*      Branch Occurs to L644 
L600:        
	.line	99
;----------------------------------------------------------------------
; 2225 | else if(WORD_L(nSccSendFlag.nCarNum)) //È£Â÷ ¹øÈ£ Ç¥½Ã±â ¼ýÀÚ Ç¥Çö.    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+5,r0
        beq       L602
;*      Branch Occurs to L602 
	.line	101
;----------------------------------------------------------------------
; 2227 | nSccSendFlag.nCarNum = 0;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+5
	.line	103
;----------------------------------------------------------------------
; 2229 | SCC_TX_PROTOCOL(sDestTxBuf,0xFA,0x31,0x1C,nDest_Num,BIN_BCD(nSelect_But
;     | ton.nGPTranNumInput.nNum),0,0,0,10);                                   
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,rs
        ldiu      0,r1
        ldiu      0,r2
        ldiu      0,r3
        push      rs
        ldiu      734,ir0
        push      r3
        push      r2
        push      r1
        push      r0
        ldiu      *+fp(ir0),r0
        ldiu      28,r3
        push      r0
        ldiu      614,rs
        push      r3
        ldiu      49,r2
        push      r2
        addi      fp,rs
        ldiu      250,r1
        push      r1
        push      rs
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	104
;----------------------------------------------------------------------
; 2230 | Delay_SCC2_SendTo(sDestTxBuf,20,SCC_B_CHANNEL,5);                      
;----------------------------------------------------------------------
        ldiu      5,r2
        push      r2
        ldiu      614,r2
        ldiu      1,r0
        push      r0
        ldiu      20,r1
        push      r1
        addi      fp,r2
        push      r2
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	106
;----------------------------------------------------------------------
; 2232 | sprintf(szBuf2,"#SEND CarNum Tx Ok");strcat(szBuf,szBuf2);sdebugFlag =
;     | TRUE;                                                                  
;----------------------------------------------------------------------
        ldiu      513,r0
        ldiu      @CL96,r1
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
        ldiu      513,r1
        ldiu      fp,r0
        addi      fp,r1
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L644
;*      Branch Occurs to L644 
L602:        
	.line	109
;----------------------------------------------------------------------
; 2235 | else if(WORD_L(nSccSendFlag.nClean)) //Â÷³» Ç¥½Ã±â Å¬¸®¾î              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+2,r0
        beq       L604
;*      Branch Occurs to L604 
	.line	111
;----------------------------------------------------------------------
; 2237 | SCC_TX_PROTOCOL(sClean_Tx_Buf,0xF1,0x31,0x1A,0,0,0,0,0,10);            
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      634,rc
        ldiu      0,r3
        ldiu      0,rs
        push      r0
        ldiu      0,re
        ldiu      26,r2
        ldiu      0,r0
        push      r1
        addi      fp,rc
        push      r0
        push      r3
        ldiu      49,r1
        push      rs
        ldiu      241,r0
        push      re
        push      r2
        push      r1
        push      r0
        push      rc
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	113
;----------------------------------------------------------------------
; 2239 | Delay_SCC2_SendTo(sClean_Tx_Buf,20,SCC_A_CHANNEL,5);                   
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      5,r2
        push      r2
        ldiu      20,r0
        push      r1
        push      r0
        ldiu      634,r0
        addi      fp,r0
        push      r0
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	115
;----------------------------------------------------------------------
; 2241 | nSccSendFlag.nClean--;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+2,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+2
	.line	117
;----------------------------------------------------------------------
; 2243 | sprintf(szBuf2,"#SEND Text Clean OK");strcat(szBuf,szBuf2);sdebugFlag =
;     |  TRUE;                                                                 
;----------------------------------------------------------------------
        ldiu      @CL97,r0
        push      r0
        ldiu      513,r0
        addi      fp,r0
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      2,sp
        ldiu      513,r1
        addi      fp,r1
        push      r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L644
;*      Branch Occurs to L644 
L604:        
	.line	120
;----------------------------------------------------------------------
; 2246 | else if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) || WORD_L(nTr_St_Info.n
;     | SimulationFlag)) //ÁÖÇà ¹× ½Ã¹Ä·¹ÀÌ¼Ç ±â´É µ¿ÀÛ½Ã Á¶ÀÛ °¡´ÉÇÑ Á¶°Çµé.  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        bne       L606
;*      Branch Occurs to L606 
        tstb      @_nTr_St_Info+67,r0
        beq       L624
;*      Branch Occurs to L624 
L606:        
	.line	123
;----------------------------------------------------------------------
; 2249 | if(WORD_L(nSccSendFlag.nIM_Text.nTxFlag) && !WORD_L(nTr_St_Info.nClean_
;     | Flag)) //¹«Ç¥½Ã Á¶ÀÛ½Ã Àü¼Û ±ÝÁö.                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+7,r0
        beq       L609
;*      Branch Occurs to L609 
        tstb      @_nTr_St_Info+369,r0
        bne       L609
;*      Branch Occurs to L609 
	.line	126
;----------------------------------------------------------------------
; 2252 | DP_IM_PR_TEXT_READ(WORD_L(nSccSendFlag.nIM_Text.nTxNum),1,0xF1);
;     |  //¹®ÀåÀ» ÀÐ¾î¼­ Àü¼ÛÇÑ´Ù.                                             
;----------------------------------------------------------------------
        ldiu      241,r2
        and       @_nSccSendFlag+6,r0
        ldiu      1,r1
        push      r2
        push      r1
        push      r0
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	127
;----------------------------------------------------------------------
; 2253 | nSccSendFlag.nIM_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+7
	.line	129
;----------------------------------------------------------------------
; 2255 | sprintf(szBuf2,"#SEND IM OK[%d] ",WORD_L(nSccSendFlag.nIM_Text.nTxNum))
;     | ;strcat(szBuf,szBuf2);sdebugFlag = TRUE;                               
;----------------------------------------------------------------------
        ldiu      @CL98,r1
        ldiu      255,r0
        and       @_nSccSendFlag+6,r0
        push      r0
        ldiu      513,r0
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L644
;*      Branch Occurs to L644 
L609:        
	.line	132
;----------------------------------------------------------------------
; 2258 | else if(WORD_L(nSccSendFlag.nPR_Text.nTxFlag) && !WORD_L(nTr_St_Info.nC
;     | lean_Flag))//¹«Ç¥½Ã Á¶ÀÛ½Ã Àü¼Û ±ÝÁö.                                  
; 2260 |         //d_SendCnt++;                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+9,r0
        beq       L612
;*      Branch Occurs to L612 
        tstb      @_nTr_St_Info+369,r0
        bne       L612
;*      Branch Occurs to L612 
	.line	135
;----------------------------------------------------------------------
; 2261 | DP_IM_PR_TEXT_READ(WORD_L(nSccSendFlag.nPR_Text.nTxNum),4,0xF1);
;     |  //¹®ÀåÀ» ÀÐ¾î¼­ Àü¼ÛÇÑ´Ù.                                             
;----------------------------------------------------------------------
        ldiu      241,r2
        and       @_nSccSendFlag+8,r0
        ldiu      4,r1
        push      r2
        push      r1
        push      r0
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	136
;----------------------------------------------------------------------
; 2262 | nSccSendFlag.nPR_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+9
	.line	138
;----------------------------------------------------------------------
; 2264 | sprintf(szBuf2,"#SEND PR OK[%d] ",WORD_L(nSccSendFlag.nPR_Text.nTxNum))
;     | ;strcat(szBuf,szBuf2);sdebugFlag = TRUE;                               
;----------------------------------------------------------------------
        ldiu      @CL99,r1
        ldiu      255,r0
        and       @_nSccSendFlag+8,r0
        push      r0
        ldiu      513,r0
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      3,sp
        ldiu      513,r1
        addi      fp,r1
        ldiu      fp,r0
        addi      1,r0
        push      r1
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L644
;*      Branch Occurs to L644 
L612:        
	.line	141
;----------------------------------------------------------------------
; 2267 | else if(WORD_L(nSccSendFlag.nRNDTXFlag) &&      !WORD_L(nTr_St_Info.nCl
;     | ean_Flag))//³ë¼± Ç¥½Ã±â Àü¼Û.  //¹«Ç¥½Ã Á¶ÀÛ½Ã Àü¼Û ±ÝÁö.              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+10,r0
        beq       L644
;*      Branch Occurs to L644 
        tstb      @_nTr_St_Info+369,r0
        bne       L644
;*      Branch Occurs to L644 
	.line	144
;----------------------------------------------------------------------
; 2270 | if((WORD_L(nTr_St_Info.nNow.nCode)+1) && (WORD_L(nTr_St_Info.nNext.nCod
;     | e)+1) && (WORD_L(nTr_St_Info.nDest.nCode)+1))                          
;----------------------------------------------------------------------
        and       @_nTr_St_Info+169,r0
        addi      1,r0                  ; Unsigned
        cmpi      0,r0
        beq       L623
;*      Branch Occurs to L623 
        ldiu      255,r0
        and       @_nTr_St_Info+215,r0
        addi      1,r0                  ; Unsigned
        cmpi      0,r0
        beq       L623
;*      Branch Occurs to L623 
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        addi      1,r0                  ; Unsigned
        cmpi      0,r0
        beq       L623
;*      Branch Occurs to L623 
	.line	146
;----------------------------------------------------------------------
; 2272 | if(!DWORD_L(nTr_St_Info.nDistance))                                    
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        tstb      65535,r0
        bne       L621
;*      Branch Occurs to L621 
	.line	148
;----------------------------------------------------------------------
; 2274 | if(dRndNow != (WORD_L(nTr_St_Info.nNow.nCode)+1) && dRndNext != (WORD_L
;     | (nTr_St_Info.nNext.nCode)+1))                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_dRndNow+0,r1
        and       @_nTr_St_Info+169,r0
        addi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        beq       L622
;*      Branch Occurs to L622 
        ldiu      255,r0
        ldiu      @_dRndNext+0,r1
        and       @_nTr_St_Info+215,r0
        addi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        beq       L622
;*      Branch Occurs to L622 
	.line	150
;----------------------------------------------------------------------
; 2276 | dRndDistance = DWORD_L(nTr_St_Info.nDistance);                         
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        and       65535,r0
        sti       r0,@_dRndDistance+0
        bu        L622
;*      Branch Occurs to L622 
L621:        
	.line	153
;----------------------------------------------------------------------
; 2279 | else {dRndDistance = DWORD_L(nTr_St_Info.nDistance); }                 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        and       65535,r0
        sti       r0,@_dRndDistance+0
L622:        
	.line	155
;----------------------------------------------------------------------
; 2281 | dStStion = WORD_L(nTr_St_Info.nStart.nCode)+1;                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+77,r0
        addi      1,r0                  ; Unsigned
        sti       r0,@_dStStion+0
	.line	156
;----------------------------------------------------------------------
; 2282 | dRndNow  = WORD_L(nTr_St_Info.nNow.nCode)+1;                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+169,r0
        addi      1,r0                  ; Unsigned
        sti       r0,@_dRndNow+0
	.line	157
;----------------------------------------------------------------------
; 2283 | dRndNext = WORD_L(nTr_St_Info.nNext.nCode)+1;                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+215,r0
        addi      1,r0                  ; Unsigned
        sti       r0,@_dRndNext+0
	.line	158
;----------------------------------------------------------------------
; 2284 | dRndDest = WORD_L(nTr_St_Info.nDest.nCode)+1;                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        addi      1,r0                  ; Unsigned
        sti       r0,@_dRndDest+0
	.line	160
;----------------------------------------------------------------------
; 2286 | SCC_RNDTX_PROTOCOL(sRnd_Tx_Buf,0xF9,0x31,0x28,dRndNow,dRndNext,dRndDest
;     | ,dStStion,dRndDistance,10);                                            
;----------------------------------------------------------------------
        ldiu      714,rs
        ldiu      40,r2
        ldiu      49,r1
        addi      fp,rs
        ldiu      10,r0
        push      r0
        ldiu      @_dRndDistance+0,r0
        push      r0
        ldiu      @_dStStion+0,r0
        push      r0
        ldiu      @_dRndDest+0,r0
        push      r0
        ldiu      @_dRndNext+0,r3
        push      r3
        ldiu      @_dRndNow+0,r3
        push      r3
        push      r2
        ldiu      249,r0
        push      r1
        push      r0
        push      rs
        call      _SCC_RNDTX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	161
;----------------------------------------------------------------------
; 2287 | Delay_SCC2_SendTo(sRnd_Tx_Buf,20,SCC_B_CHANNEL,5);                     
;----------------------------------------------------------------------
        ldiu      5,r0
        push      r0
        ldiu      714,r0
        ldiu      1,r1
        ldiu      20,r2
        push      r1
        addi      fp,r0
        push      r2
        push      r0
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	163
;----------------------------------------------------------------------
; 2289 | d_RndTxCnt++;                                                          
; 2292 | //if(!(d_RndTxCnt%10))                                                 
; 2293 | //{                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_RndTxCnt+0,r0     ; Unsigned
        sti       r0,@_d_RndTxCnt+0
	.line	168
;----------------------------------------------------------------------
; 2294 | sprintf(szBuf2,"#RND TX DATA : StartST[%02X]H-NowST[%02X]H-NextST[%02X]
;     | H-DestST[%02X]H-Distan[%d]",dStStion,dRndNow,dRndNext,dRndDest,dRndDist
;     | ance);                                                                 
;----------------------------------------------------------------------
        ldiu      @_dRndDistance+0,r0
        push      r0
        ldiu      @_dRndDest+0,r0
        push      r0
        ldiu      @_dRndNext+0,r0
        push      r0
        ldiu      @_dRndNow+0,r0
        push      r0
        ldiu      @_dStStion+0,r0
        push      r0
        ldiu      513,r0
        ldiu      @CL100,r1
        addi      fp,r0
        push      r1
        push      r0
        call      _sprintf
                                        ; Call Occurs
        subi      7,sp
	.line	169
;----------------------------------------------------------------------
; 2295 | strcat(szBuf,szBuf2);sdebugFlag = TRUE;                                
; 2296 | //}                                                                    
;----------------------------------------------------------------------
        ldiu      513,r1
        addi      fp,r1
        push      r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L623:        
	.line	174
;----------------------------------------------------------------------
; 2300 | nSccSendFlag.nRNDTXFlag = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+10
        bu        L644
;*      Branch Occurs to L644 
L624:        
	.line	177
;----------------------------------------------------------------------
; 2303 | else if(!WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) && !WORD_L(nTr_St_Info
;     | .nSimulationFlag))//ÀÚµ¿ ¿îÀüµµ ¾Æ´Ï°í ½Ã¹Ä·¹ÀÌ¼Çµµ ¾Æ´Ò¶§ ÆÐÅÏ TEST ½Ç
;     | ½Ã ÇÑ´Ù.                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        bne       L644
;*      Branch Occurs to L644 
        tstb      @_nTr_St_Info+67,r0
        bne       L644
;*      Branch Occurs to L644 
	.line	179
;----------------------------------------------------------------------
; 2305 | d_SendCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_SendCnt+0,r0      ; Unsigned
        sti       r0,@_d_SendCnt+0
	.line	181
;----------------------------------------------------------------------
; 2307 | if(nSccSendFlag.nPIBPaten) // Â÷³» ÆÐÅÏ TEST                           
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+3,r0
        beq       L632
;*      Branch Occurs to L632 
	.line	183
;----------------------------------------------------------------------
; 2309 | if(nTr_St_Info.nPIBPatFlag)                                            
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+65,r0
        beqd      L630
        ldieq     10,r0
        ldieq     0,r1
        ldieq     0,rc
;*      Branch Occurs to L630 
	.line	185
;----------------------------------------------------------------------
; 2311 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x0B,0,0,0,0,0,10);             
; 2313 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      654,r2
        ldiu      0,rs
        ldiu      0,re
        push      r0
        ldiu      0,rc
        ldiu      11,r3
        ldiu      0,r0
        push      r1
        addi      fp,r2
        push      r0
        ldiu      241,r1
        push      rs
        ldiu      49,r0
        push      re
        push      rc
        push      r3
        push      r0
        push      r1
        push      r2
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L631
;*      Branch Occurs to L631 
	.line	189
;----------------------------------------------------------------------
; 2315 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x1B,0,0,0,0,0,10);             
;----------------------------------------------------------------------
L630:        
        ldiu      0,r2
        ldiu      0,r3
        push      r0
        ldiu      27,rs
        ldiu      241,re
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      49,r1
        push      rc
        ldiu      654,r0
        push      r2
        addi      fp,r0
        push      r3
        push      rs
        push      r1
        push      re
        push      r0
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
L631:        
	.line	192
;----------------------------------------------------------------------
; 2318 | Delay_SCC2_SendTo(sSimu_Tx_Buf,20,SCC_A_CHANNEL,5);                    
;----------------------------------------------------------------------
        ldiu      5,r0
        ldiu      0,r1
        ldiu      20,r2
        push      r0
        ldiu      654,r0
        push      r1
        addi      fp,r0
        push      r2
        push      r0
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	193
;----------------------------------------------------------------------
; 2319 | nSccSendFlag.nPIBPaten = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+3
        bu        L644
;*      Branch Occurs to L644 
L632:        
	.line	195
;----------------------------------------------------------------------
; 2321 | else if(nSccSendFlag.nS_FDIPaten) // Á¤¸é,¿­¹ø,³ë¼± ÆÐÅÏ TEST          
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+4,r0
        beq       L644
;*      Branch Occurs to L644 
	.line	197
;----------------------------------------------------------------------
; 2323 | if(nSccSendFlag.nS_FDIPaten == 0x01)                                   
;----------------------------------------------------------------------
        cmpi      1,r0
        bne       L638
;*      Branch Occurs to L638 
	.line	199
;----------------------------------------------------------------------
; 2325 | if(nTr_St_Info.nDISFPatFlag)                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beqd      L637
        ldieq     10,r0
        ldieq     0,r1
        ldieq     0,re
;*      Branch Occurs to L637 
	.line	201
;----------------------------------------------------------------------
; 2327 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x0B,0,0,0,0,0,10);             
; 2329 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      0,r0
        ldiu      654,r2
        ldiu      0,rc
        ldiu      0,rs
        push      r1
        ldiu      0,re
        ldiu      11,r3
        ldiu      0,r1
        push      r0
        addi      fp,r2
        push      r1
        ldiu      248,r0
        push      rc
        ldiu      49,r1
        push      rs
        push      re
        push      r3
        push      r1
        push      r0
        push      r2
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L643
;*      Branch Occurs to L643 
	.line	205
;----------------------------------------------------------------------
; 2331 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x1B,0,0,0,0,0,10);             
;----------------------------------------------------------------------
L637:        
        ldiu      0,rc
        ldiu      0,rs
        push      r0
        ldiu      27,r2
        ldiu      49,r3
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      248,r1
        push      re
        ldiu      654,r0
        push      rc
        addi      fp,r0
        push      rs
        push      r2
        push      r3
        push      r1
        push      r0
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L643
;*      Branch Occurs to L643 
L638:        
	.line	208
;----------------------------------------------------------------------
; 2334 | else if(nSccSendFlag.nS_FDIPaten == 0x02) // È£Â÷ ¹øÈ£ Ç¥½Ã±â ÆÐÅÏ TEST
;     |  ??? È®ÀÎ ÇÊ¿ä                                                         
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+4,r0
        cmpi      2,r0
        bne       L643
;*      Branch Occurs to L643 
	.line	210
;----------------------------------------------------------------------
; 2336 | if(nTr_St_Info.nDISFPatFlag)                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beqd      L642
        ldieq     10,r0
        ldieq     0,r1
        ldieq     0,re
;*      Branch Occurs to L642 
	.line	212
;----------------------------------------------------------------------
; 2338 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xFA,0x31,0x0B,0,0,0,0,0,10);             
; 2340 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      0,rc
        ldiu      0,re
        ldiu      0,r3
        push      r0
        ldiu      11,rs
        ldiu      250,r2
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      49,r1
        push      rc
        ldiu      654,r0
        push      re
        addi      fp,r0
        push      r3
        push      rs
        push      r1
        push      r2
        push      r0
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L643
;*      Branch Occurs to L643 
	.line	216
;----------------------------------------------------------------------
; 2342 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xFA,0x31,0x1B,0,0,0,0,0,10);             
;----------------------------------------------------------------------
L642:        
        ldiu      0,rs
        ldiu      0,r3
        push      r0
        ldiu      27,r2
        ldiu      49,rc
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      654,r1
        push      re
        addi      fp,r1
        push      rs
        ldiu      250,r0
        push      r3
        push      r2
        push      rc
        push      r0
        push      r1
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	218
;----------------------------------------------------------------------
; 2344 | nSccSendFlag.nCarNum = 1; //È£Â÷ ¹øÈ£ Ç¥½Ã±â´Â ÆÐÅÏÀÌ ³¡³ª¸é ¼ýÀÚ¸¦ Ç¥Ã
;     | âÇÑ´Ù.                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+5
L643:        
	.line	222
;----------------------------------------------------------------------
; 2348 | Delay_SCC2_SendTo(sSimu_Tx_Buf,20,SCC_B_CHANNEL,5);                    
;----------------------------------------------------------------------
        ldiu      5,r0
        ldiu      1,r1
        ldiu      20,r2
        push      r0
        ldiu      654,r0
        push      r1
        addi      fp,r0
        push      r2
        push      r0
        call      _Delay_SCC2_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	224
;----------------------------------------------------------------------
; 2350 | nSccSendFlag.nS_FDIPaten--;                                            
; 2354 | //µð¹ö±ë                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+4,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+4
L644:        
	.line	229
;----------------------------------------------------------------------
; 2355 | if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPri
;     | nt(szBuf); }                                                           
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldi       *+fp(ir0),r0
        beq       L646
;*      Branch Occurs to L646 
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      @CL77,r1
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
L646:        
	.line	230
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      736,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2356,000000000h,734


	.sect	 ".text"

	.global	_DP_SD_Format_Change
	.sym	_DP_SD_Format_Change,_DP_SD_Format_Change,32,2,0
	.func	2362
;******************************************************************************
;* FUNCTION NAME: _DP_SD_Format_Change                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st,rs,re,rc                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_DP_SD_Format_Change:
	.sym	_pDData,-2,28,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 2362 | void DP_SD_Format_Change(UCHAR *pDData)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 2364 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 2366 | memcpy(d_self_Buf,pDData,60);                                          
;----------------------------------------------------------------------
        ldiu      @CL101,ar1
        ldiu      *-fp(2),ar0
        ldiu      *ar0++(1),r0
        rpts      58                    ; Fast MEMCPY(#96)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	7
;----------------------------------------------------------------------
; 2368 | for(i=0;i<18;i++) TCMSSD[i].DR.BYTE = 0x00;                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      0,r1
        cmpi      18,r0
        bge       L650
;*      Branch Occurs to L650 
L649:        
        ldiu      *+fp(1),ir0
        ldiu      @CL91,ar0
        sti       r1,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      18,r0
        blt       L649
;*      Branch Occurs to L649 
L650:        
	.line	9
;----------------------------------------------------------------------
; 2370 | for(i=0;i<60;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        bge       L655
;*      Branch Occurs to L655 
L651:        
	.line	12
;----------------------------------------------------------------------
; 2373 | if( WORD_L(mSelfTest_NG_CntBuf[i]) >= SELF_TEST_ALLCNT)//2011_02_17 3.2
;     | ¹öÀü                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL19,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      10,r0
        blo       L653
;*      Branch Occurs to L653 
	.line	14
;----------------------------------------------------------------------
; 2375 | pDData[i] = 1;                                                         
; 2377 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
        bu        L654
;*      Branch Occurs to L654 
L653:        
	.line	17
;----------------------------------------------------------------------
; 2378 | pDData[i] = 0;                                                         
; 2383 | //TC1                                                                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
L654:        
	.line	9
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        blt       L651
;*      Branch Occurs to L651 
L655:        
	.line	23
;----------------------------------------------------------------------
; 2384 | TCMSSD[0].DR.BIT.B0 = 0;//IDC                                          
;----------------------------------------------------------------------
        ldiu      @_TCMSSD+0,r0
        andn      1,r0
        sti       r0,@_TCMSSD+0
	.line	24
;----------------------------------------------------------------------
; 2385 | TCMSSD[0].DR.BIT.B1 = WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[50]
;     | : pDData[26] ;//TNSU1                                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL91,ar0
        beq       L657
;*      Branch Occurs to L657 
        bud       L658
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(50),r0
;*      Branch Occurs to L658 
L657:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(26),r0
L658:        
        ldiu      *ar0,r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	25
;----------------------------------------------------------------------
; 2386 | TCMSSD[0].DR.BIT.B2 = WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[48]
;     | : pDData[24] ;//DUS-F                                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL91,ar0
        beq       L660
;*      Branch Occurs to L660 
        bud       L661
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(48),r0
;*      Branch Occurs to L661 
L660:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(24),r0
L661:        
        ldiu      *ar0,r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	26
;----------------------------------------------------------------------
; 2387 | TCMSSD[0].DR.BIT.B3 = 0;                                               
;----------------------------------------------------------------------
        ldiu      @_TCMSSD+0,r0
        andn      8,r0
        sti       r0,@_TCMSSD+0
	.line	27
;----------------------------------------------------------------------
; 2388 | TCMSSD[0].DR.BIT.B4 = 0;                                               
;----------------------------------------------------------------------
        andn      16,r0
        sti       r0,@_TCMSSD+0
	.line	28
;----------------------------------------------------------------------
; 2389 | TCMSSD[0].DR.BIT.B5 = 0;                                               
;----------------------------------------------------------------------
        andn      32,r0
        sti       r0,@_TCMSSD+0
	.line	29
;----------------------------------------------------------------------
; 2390 | TCMSSD[0].DR.BIT.B6 = 0;                                               
;----------------------------------------------------------------------
        andn      64,r0
        sti       r0,@_TCMSSD+0
	.line	30
;----------------------------------------------------------------------
; 2391 | TCMSSD[0].DR.BIT.B7 = 0;                                               
; 2394 | //CAR1                                                                 
;----------------------------------------------------------------------
        andn      128,r0
        sti       r0,@_TCMSSD+0
	.line	34
;----------------------------------------------------------------------
; 2395 | TCMSSD[1].DR.BIT.B0 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[0]
;     | : pDData[0] ;    //IDU1                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL102,ar0
        beq       L663
;*      Branch Occurs to L663 
        bud       L664
	nop
        ldiu      *-fp(2),ar1
        ldiu      *ar1,r0
;*      Branch Occurs to L664 
L663:        
        ldiu      *-fp(2),ar1
        ldiu      *ar1,r0
L664:        
        ldiu      *ar0,r1
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	35
;----------------------------------------------------------------------
; 2396 | TCMSSD[1].DR.BIT.B1 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[6]
;     | : pDData[6] ;   //IDU2                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL102,ar0
        beq       L666
;*      Branch Occurs to L666 
        bud       L667
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(6),r0
;*      Branch Occurs to L667 
L666:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(6),r0
L667:        
        ldiu      *ar0,r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	36
;----------------------------------------------------------------------
; 2397 | TCMSSD[1].DR.BIT.B2 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[12]
;     |  : 0 ;   //IDU3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L669
        ldiu      @CL102,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L669 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(12),r0
L669:        
        ldiu      *ar0,r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	37
;----------------------------------------------------------------------
; 2398 | TCMSSD[1].DR.BIT.B3 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[18]
;     |  : 0 ;   //IDU4                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L671
        ldiu      @CL102,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L671 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(18),r0
L671:        
        ldiu      *ar0,r1
        and       1,r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	38
;----------------------------------------------------------------------
; 2399 | TCMSSD[1].DR.BIT.B4 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[24]
;     |  : pDData[12];   //FSM1   - CNSU1                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL102,ar0
        beq       L673
;*      Branch Occurs to L673 
        bud       L674
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(24),r0
;*      Branch Occurs to L674 
L673:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(12),r0
L674:        
        ldiu      *ar0,r1
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	39
;----------------------------------------------------------------------
; 2400 | TCMSSD[1].DR.BIT.B5 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[30]
;     |  : 0 ;   //FSM2                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L676
        ldiu      @CL102,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L676 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(30),r0
L676:        
        ldiu      *ar0,r1
        and       1,r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	40
;----------------------------------------------------------------------
; 2401 | TCMSSD[1].DR.BIT.B6 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[36]
;     |  : 0 ;   //FSM3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L678
        ldiu      @CL102,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L678 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(36),r0
L678:        
        ldiu      *ar0,r1
        and       1,r0
        andn      64,r1
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	41
;----------------------------------------------------------------------
; 2402 | TCMSSD[1].DR.BIT.B7 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[42]
;     |  : pDData[18];   //FSM4   - CNSU2                                      
; 2404 | //CAR2                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL102,ar0
        beq       L680
;*      Branch Occurs to L680 
        bud       L681
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(42),r0
;*      Branch Occurs to L681 
L680:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(18),r0
L681:        
        ldiu      *ar0,r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	44
;----------------------------------------------------------------------
; 2405 | TCMSSD[2].DR.BIT.B0 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[1]
;     | : pDData[1] ;    //IDU1                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL103,ar0
        beq       L683
;*      Branch Occurs to L683 
        bud       L684
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(1),r0
;*      Branch Occurs to L684 
L683:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(1),r0
L684:        
        ldiu      *ar0,r1
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	45
;----------------------------------------------------------------------
; 2406 | TCMSSD[2].DR.BIT.B1 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[7]
;     | : pDData[7] ;   //IDU2                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL103,ar0
        beq       L686
;*      Branch Occurs to L686 
        bud       L687
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(7),r0
;*      Branch Occurs to L687 
L686:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(7),r0
L687:        
        ldiu      *ar0,r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	46
;----------------------------------------------------------------------
; 2407 | TCMSSD[2].DR.BIT.B2 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[13]
;     |  : 0 ;   //IDU3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L689
        ldiu      @CL103,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L689 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(13),r0
L689:        
        ldiu      *ar0,r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	47
;----------------------------------------------------------------------
; 2408 | TCMSSD[2].DR.BIT.B3 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[19]
;     |  : 0 ;   //IDU4                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L691
        ldiu      @CL103,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L691 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(19),r0
L691:        
        ldiu      *ar0,r1
        and       1,r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	48
;----------------------------------------------------------------------
; 2409 | TCMSSD[2].DR.BIT.B4 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[25]
;     |  : pDData[13];   //FSM1   - CNSU1                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL103,ar0
        beq       L693
;*      Branch Occurs to L693 
        bud       L694
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(25),r0
;*      Branch Occurs to L694 
L693:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(13),r0
L694:        
        ldiu      *ar0,r1
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	49
;----------------------------------------------------------------------
; 2410 | TCMSSD[2].DR.BIT.B5 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[31]
;     |  : 0 ;   //FSM2                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L696
        ldiu      @CL103,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L696 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(31),r0
L696:        
        ldiu      *ar0,r1
        and       1,r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	50
;----------------------------------------------------------------------
; 2411 | TCMSSD[2].DR.BIT.B6 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[37]
;     |  : 0 ;   //FSM3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L698
        ldiu      @CL103,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L698 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(37),r0
L698:        
        ldiu      *ar0,r1
        and       1,r0
        andn      64,r1
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	51
;----------------------------------------------------------------------
; 2412 | TCMSSD[2].DR.BIT.B7 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[43]
;     |  : pDData[19];   //FSM4   - CNSU2                                      
; 2414 | //CAR3                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL103,ar0
        beq       L700
;*      Branch Occurs to L700 
        bud       L701
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(43),r0
;*      Branch Occurs to L701 
L700:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(19),r0
L701:        
        ldiu      *ar0,r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	54
;----------------------------------------------------------------------
; 2415 | TCMSSD[3].DR.BIT.B0 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT)? pDData[2]
;     | : pDData[2] ;    //IDU1                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL104,ar0
        beq       L703
;*      Branch Occurs to L703 
        bud       L704
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(2),r1
;*      Branch Occurs to L704 
L703:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(2),r1
L704:        
        ldiu      *ar0,r0
        and       1,r1
        andn      1,r0
        or3       r0,r1,r0
        sti       r0,*ar0
	.line	55
;----------------------------------------------------------------------
; 2416 | TCMSSD[3].DR.BIT.B1 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT)? pDData[8]
;     | : pDData[8] ;   //IDU2                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL104,ar0
        beq       L706
;*      Branch Occurs to L706 
        bud       L707
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(8),r0
;*      Branch Occurs to L707 
L706:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(8),r0
L707:        
        ldiu      *ar0,r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	56
;----------------------------------------------------------------------
; 2417 | TCMSSD[3].DR.BIT.B2 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT)? pDData[14]
;     |  : 0 ;   //IDU3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L709
        ldiu      @CL104,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L709 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(14),r0
L709:        
        ldiu      *ar0,r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	57
;----------------------------------------------------------------------
; 2418 | TCMSSD[3].DR.BIT.B3 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT)? pDData[20]
;     |  : 0 ;   //IDU4                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L711
        ldiu      @CL104,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L711 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(20),r0
L711:        
        ldiu      *ar0,r1
        and       1,r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	58
;----------------------------------------------------------------------
; 2419 | TCMSSD[3].DR.BIT.B4 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT)? pDData[26]
;     |  : pDData[14];   //FSM1   - CNSU1                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL104,ar0
        beq       L713
;*      Branch Occurs to L713 
        bud       L714
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(26),r0
;*      Branch Occurs to L714 
L713:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(14),r0
L714:        
        ldiu      *ar0,r1
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	59
;----------------------------------------------------------------------
; 2420 | TCMSSD[3].DR.BIT.B5 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT)? pDData[32]
;     |  : 0 ;   //FSM2                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L716
        ldiu      @CL104,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L716 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(32),r0
L716:        
        ldiu      *ar0,r1
        and       1,r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	60
;----------------------------------------------------------------------
; 2421 | TCMSSD[3].DR.BIT.B6 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT)? pDData[38]
;     |  : 0 ;   //FSM3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L718
        ldiu      @CL104,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L718 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(38),r0
L718:        
        ldiu      *ar0,r1
        and       1,r0
        andn      64,r1
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	61
;----------------------------------------------------------------------
; 2422 | TCMSSD[3].DR.BIT.B7 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT)? pDData[44]
;     |  : pDData[20];   //FSM4   - CNSU2                                      
; 2424 | //CAR4                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL104,ar0
        beq       L720
;*      Branch Occurs to L720 
        bud       L721
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(44),r0
;*      Branch Occurs to L721 
L720:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(20),r0
L721:        
        ldiu      *ar0,r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	64
;----------------------------------------------------------------------
; 2425 | TCMSSD[4].DR.BIT.B0 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[3]
;     |  : pDData[3] ;   //IDU1                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL105,ar0
        beq       L723
;*      Branch Occurs to L723 
        bud       L724
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(3),r1
;*      Branch Occurs to L724 
L723:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(3),r1
L724:        
        ldiu      *ar0,r0
        and       1,r1
        andn      1,r0
        or3       r0,r1,r0
        sti       r0,*ar0
	.line	65
;----------------------------------------------------------------------
; 2426 | TCMSSD[4].DR.BIT.B1 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[9]
;     |  : pDData[9] ;   //IDU2                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL105,ar0
        beq       L726
;*      Branch Occurs to L726 
        bud       L727
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(9),r0
;*      Branch Occurs to L727 
L726:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(9),r0
L727:        
        ldiu      *ar0,r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	66
;----------------------------------------------------------------------
; 2427 | TCMSSD[4].DR.BIT.B2 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[15
;     | ] : 0 ;  //IDU3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L729
        ldiu      @CL105,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L729 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(15),r0
L729:        
        ldiu      *ar0,r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	67
;----------------------------------------------------------------------
; 2428 | TCMSSD[4].DR.BIT.B3 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[21
;     | ] : 0 ;  //IDU4                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L731
        ldiu      @CL105,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L731 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(21),r0
L731:        
        ldiu      *ar0,r1
        and       1,r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	68
;----------------------------------------------------------------------
; 2429 | TCMSSD[4].DR.BIT.B4 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[27
;     | ] : pDData[15];  //FSM1   - CNSU1                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL105,ar0
        beq       L733
;*      Branch Occurs to L733 
        bud       L734
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(27),r0
;*      Branch Occurs to L734 
L733:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(15),r0
L734:        
        ldiu      *ar0,r1
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	69
;----------------------------------------------------------------------
; 2430 | TCMSSD[4].DR.BIT.B5 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[33
;     | ] : 0 ;  //FSM2                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L736
        ldiu      @CL105,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L736 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(33),r0
L736:        
        ldiu      *ar0,r1
        and       1,r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	70
;----------------------------------------------------------------------
; 2431 | TCMSSD[4].DR.BIT.B6 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[39
;     | ] : 0 ;  //FSM3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L738
        ldiu      @CL105,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L738 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(39),r0
L738:        
        ldiu      *ar0,r1
        and       1,r0
        andn      64,r1
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	71
;----------------------------------------------------------------------
; 2432 | TCMSSD[4].DR.BIT.B7 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[45
;     | ] : pDData[21];  //FSM4   - CNSU2                                      
; 2434 | //CAR5                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL105,ar0
        beq       L740
;*      Branch Occurs to L740 
        bud       L741
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(45),r0
;*      Branch Occurs to L741 
L740:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(21),r0
L741:        
        ldiu      *ar0,r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	74
;----------------------------------------------------------------------
; 2435 | TCMSSD[5].DR.BIT.B0 =  0;                       //IDU1                 
;----------------------------------------------------------------------
        ldiu      @_TCMSSD+5,r0
        andn      1,r0
        sti       r0,@_TCMSSD+5
	.line	75
;----------------------------------------------------------------------
; 2436 | TCMSSD[5].DR.BIT.B1 =  0;                   //IDU2                     
;----------------------------------------------------------------------
        andn      2,r0
        sti       r0,@_TCMSSD+5
	.line	76
;----------------------------------------------------------------------
; 2437 | TCMSSD[5].DR.BIT.B2 =  0;                       //IDU3                 
;----------------------------------------------------------------------
        andn      4,r0
        sti       r0,@_TCMSSD+5
	.line	77
;----------------------------------------------------------------------
; 2438 | TCMSSD[5].DR.BIT.B3 =  0;                       //IDU4                 
;----------------------------------------------------------------------
        andn      8,r0
        sti       r0,@_TCMSSD+5
	.line	78
;----------------------------------------------------------------------
; 2439 | TCMSSD[5].DR.BIT.B4 =  0;                       //FSM1   - CNSU1       
;----------------------------------------------------------------------
        andn      16,r0
        sti       r0,@_TCMSSD+5
	.line	79
;----------------------------------------------------------------------
; 2440 | TCMSSD[5].DR.BIT.B5 =  0;                       //FSM2                 
;----------------------------------------------------------------------
        andn      32,r0
        sti       r0,@_TCMSSD+5
	.line	80
;----------------------------------------------------------------------
; 2441 | TCMSSD[5].DR.BIT.B6 =  0;                       //FSM3                 
;----------------------------------------------------------------------
        andn      64,r0
        sti       r0,@_TCMSSD+5
	.line	81
;----------------------------------------------------------------------
; 2442 | TCMSSD[5].DR.BIT.B7 =  0;                       //FSM4   - CNSU2       
; 2444 | //CAR6                                                                 
;----------------------------------------------------------------------
        andn      128,r0
        sti       r0,@_TCMSSD+5
	.line	84
;----------------------------------------------------------------------
; 2445 | TCMSSD[6].DR.BIT.B0 =  0;                       //IDU1                 
;----------------------------------------------------------------------
        ldiu      @_TCMSSD+6,r0
        andn      1,r0
        sti       r0,@_TCMSSD+6
	.line	85
;----------------------------------------------------------------------
; 2446 | TCMSSD[6].DR.BIT.B1 =  0;                       //IDU2                 
;----------------------------------------------------------------------
        andn      2,r0
        sti       r0,@_TCMSSD+6
	.line	86
;----------------------------------------------------------------------
; 2447 | TCMSSD[6].DR.BIT.B2 =  0;                       //IDU3                 
;----------------------------------------------------------------------
        andn      4,r0
        sti       r0,@_TCMSSD+6
	.line	87
;----------------------------------------------------------------------
; 2448 | TCMSSD[6].DR.BIT.B3 =  0;                       //IDU4                 
;----------------------------------------------------------------------
        andn      8,r0
        sti       r0,@_TCMSSD+6
	.line	88
;----------------------------------------------------------------------
; 2449 | TCMSSD[6].DR.BIT.B4 =  0;                       //FSM1   - CNSU1       
;----------------------------------------------------------------------
        andn      16,r0
        sti       r0,@_TCMSSD+6
	.line	89
;----------------------------------------------------------------------
; 2450 | TCMSSD[6].DR.BIT.B5 =  0;                       //FSM2                 
;----------------------------------------------------------------------
        andn      32,r0
        sti       r0,@_TCMSSD+6
	.line	90
;----------------------------------------------------------------------
; 2451 | TCMSSD[6].DR.BIT.B6 =  0;                       //FSM3                 
;----------------------------------------------------------------------
        andn      64,r0
        sti       r0,@_TCMSSD+6
	.line	91
;----------------------------------------------------------------------
; 2452 | TCMSSD[6].DR.BIT.B7 =  0;                       //FSM4   - CNSU2       
; 2454 | //CAR7                                                                 
;----------------------------------------------------------------------
        andn      128,r0
        sti       r0,@_TCMSSD+6
	.line	94
;----------------------------------------------------------------------
; 2455 | TCMSSD[7].DR.BIT.B0 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[4]
;     | : pDData[4] ;    //IDU1                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL106,ar0
        beq       L743
;*      Branch Occurs to L743 
        bud       L744
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(4),r1
;*      Branch Occurs to L744 
L743:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(4),r1
L744:        
        ldiu      *ar0,r0
        and       1,r1
        andn      1,r0
        or3       r0,r1,r0
        sti       r0,*ar0
	.line	95
;----------------------------------------------------------------------
; 2456 | TCMSSD[7].DR.BIT.B1 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[10]
;     |  : pDData[10] ;   //IDU2                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL106,ar0
        beq       L746
;*      Branch Occurs to L746 
        bud       L747
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(10),r0
;*      Branch Occurs to L747 
L746:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(10),r0
L747:        
        ldiu      *ar0,r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	96
;----------------------------------------------------------------------
; 2457 | TCMSSD[7].DR.BIT.B2 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[16]
;     |  : 0 ;   //IDU3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L749
        ldiu      @CL106,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L749 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(16),r0
L749:        
        ldiu      *ar0,r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	97
;----------------------------------------------------------------------
; 2458 | TCMSSD[7].DR.BIT.B3 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[22]
;     |  : 0 ;   //IDU4                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L751
        ldiu      @CL106,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L751 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(22),r0
L751:        
        ldiu      *ar0,r1
        and       1,r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	98
;----------------------------------------------------------------------
; 2459 | TCMSSD[7].DR.BIT.B4 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[28]
;     |  : pDData[16];   //FSM1   - CNSU1                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL106,ar0
        beq       L753
;*      Branch Occurs to L753 
        bud       L754
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(28),r0
;*      Branch Occurs to L754 
L753:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(16),r0
L754:        
        ldiu      *ar0,r1
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	99
;----------------------------------------------------------------------
; 2460 | TCMSSD[7].DR.BIT.B5 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[34]
;     |  : 0 ;   //FSM2                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L756
        ldiu      @CL106,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L756 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(34),r0
L756:        
        ldiu      *ar0,r1
        and       1,r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	100
;----------------------------------------------------------------------
; 2461 | TCMSSD[7].DR.BIT.B6 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[40]
;     |  : 0 ;   //FSM3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L758
        ldiu      @CL106,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L758 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(40),r0
L758:        
        ldiu      *ar0,r1
        and       1,r0
        andn      64,r1
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	101
;----------------------------------------------------------------------
; 2462 | TCMSSD[7].DR.BIT.B7 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[46]
;     |  : pDData[22];   //FSM4   - CNSU2                                      
; 2464 | //CAR8                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL106,ar0
        beq       L760
;*      Branch Occurs to L760 
        bud       L761
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(46),r0
;*      Branch Occurs to L761 
L760:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(22),r0
L761:        
        ldiu      *ar0,r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	104
;----------------------------------------------------------------------
; 2465 | TCMSSD[8].DR.BIT.B0 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[5]
;     |  : pDData[5] ;   //IDU1                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL107,ar0
        beq       L763
;*      Branch Occurs to L763 
        bud       L764
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(5),r1
;*      Branch Occurs to L764 
L763:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(5),r1
L764:        
        ldiu      *ar0,r0
        and       1,r1
        andn      1,r0
        or3       r0,r1,r0
        sti       r0,*ar0
	.line	105
;----------------------------------------------------------------------
; 2466 | TCMSSD[8].DR.BIT.B1 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[11
;     | ] : 0 ;   //IDU2                                                       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L766
        ldiu      @CL107,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L766 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(11),r0
L766:        
        ldiu      *ar0,r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	106
;----------------------------------------------------------------------
; 2467 | TCMSSD[8].DR.BIT.B2 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[17
;     | ] : 0 ;  //IDU3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L768
        ldiu      @CL107,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L768 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(17),r0
L768:        
        ldiu      *ar0,r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	107
;----------------------------------------------------------------------
; 2468 | TCMSSD[8].DR.BIT.B3 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[23
;     | ] : 0 ;  //IDU4                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L770
        ldiu      @CL107,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L770 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(23),r0
L770:        
        ldiu      *ar0,r1
        and       1,r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	108
;----------------------------------------------------------------------
; 2469 | TCMSSD[8].DR.BIT.B4 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[29
;     | ] : pDData[17];  //FSM1   - CNSU1                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL107,ar0
        beq       L772
;*      Branch Occurs to L772 
        bud       L773
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(29),r0
;*      Branch Occurs to L773 
L772:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(17),r0
L773:        
        ldiu      *ar0,r1
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	109
;----------------------------------------------------------------------
; 2470 | TCMSSD[8].DR.BIT.B5 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[35
;     | ] : 0 ;  //FSM2                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L775
        ldiu      @CL107,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L775 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(35),r0
L775:        
        ldiu      *ar0,r1
        and       1,r0
        andn      32,r1
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	110
;----------------------------------------------------------------------
; 2471 | TCMSSD[8].DR.BIT.B6 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[41
;     | ] : 0 ;  //FSM3                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L777
        ldiu      @CL107,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L777 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(41),r0
L777:        
        ldiu      *ar0,r1
        and       1,r0
        andn      64,r1
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	111
;----------------------------------------------------------------------
; 2472 | TCMSSD[8].DR.BIT.B7 =   WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[47
;     | ] : 0;   //FSM4   - CNSU2                                              
; 2474 | //TC2                                                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beqd      L779
        ldiu      @CL107,ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L779 
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(47),r0
L779:        
        ldiu      *ar0,r1
        and       1,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	114
;----------------------------------------------------------------------
; 2475 | TCMSSD[9].DR.BIT.B0 =  0;                       //IDC                  
;----------------------------------------------------------------------
        ldiu      @_TCMSSD+9,r0
        andn      1,r0
        sti       r0,@_TCMSSD+9
	.line	115
;----------------------------------------------------------------------
; 2476 | TCMSSD[9].DR.BIT.B1 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[51]
;     |  : pDData[27] ;  //TNSU1                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL108,ar0
        beq       L781
;*      Branch Occurs to L781 
        bud       L782
	nop
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(51),r0
;*      Branch Occurs to L782 
L781:        
        ldiu      *-fp(2),ar1
        ldiu      *+ar1(27),r0
L782:        
        ldiu      *ar0,r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	116
;----------------------------------------------------------------------
; 2477 | TCMSSD[9].DR.BIT.B2 =  WORD_L(nSelf_Test.nSELF_ICR_SELECT) ? pDData[49]
;     |  : pDData[25] ;  //DUS-F1                                              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        ldiu      @CL108,ar1
        beq       L784
;*      Branch Occurs to L784 
        bud       L785
	nop
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(49),r0
;*      Branch Occurs to L785 
L784:        
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(25),r0
L785:        
        ldiu      *ar1,r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*ar1
	.line	117
;----------------------------------------------------------------------
; 2478 | TCMSSD[9].DR.BIT.B3 =  0;                                              
;----------------------------------------------------------------------
        ldiu      @_TCMSSD+9,r0
        andn      8,r0
        sti       r0,@_TCMSSD+9
	.line	118
;----------------------------------------------------------------------
; 2479 | TCMSSD[9].DR.BIT.B4 =  0;                                              
;----------------------------------------------------------------------
        andn      16,r0
        sti       r0,@_TCMSSD+9
	.line	119
;----------------------------------------------------------------------
; 2480 | TCMSSD[9].DR.BIT.B5 =  0;                                              
;----------------------------------------------------------------------
        andn      32,r0
        sti       r0,@_TCMSSD+9
	.line	120
;----------------------------------------------------------------------
; 2481 | TCMSSD[9].DR.BIT.B6 =  0;                                              
;----------------------------------------------------------------------
        andn      64,r0
        sti       r0,@_TCMSSD+9
	.line	121
;----------------------------------------------------------------------
; 2482 | TCMSSD[9].DR.BIT.B7 =  0;                                              
;----------------------------------------------------------------------
        andn      128,r0
        sti       r0,@_TCMSSD+9
	.line	123
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	2484,000000000h,1


	.sect	 ".text"

	.global	_DP_TCMSSD_Format
	.sym	_DP_TCMSSD_Format,_DP_TCMSSD_Format,32,2,0
	.func	2487
;******************************************************************************
;* FUNCTION NAME: _DP_TCMSSD_Format                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,fp,ir0,sp,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_DP_TCMSSD_Format:
	.sym	_Type,-2,24,9,32,.fake74
	.sym	_pDData,-3,28,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 2487 | void DP_TCMSSD_Format(TMS_SEND_DATA *Type,UCHAR *pDData)
;     |                                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 2489 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 2491 | DP_SD_Format_Change(nSelf_Test.nSELF_RXDATA_Buf);                      
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        push      r0
        call      _DP_SD_Format_Change
                                        ; Call Occurs
        subi      1,sp
	.line	7
;----------------------------------------------------------------------
; 2493 | pDData[0] = 0x30;                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 2494 | for(i=0;i<10;i++) pDData[(i+1)] = Type[i].DR.BYTE;                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      10,r0
        bge       L790
;*      Branch Occurs to L790 
L789:        
        ldiu      *+fp(1),ar0
        ldiu      *-fp(2),ir0
        ldiu      ar0,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *+ar1(ir0),r0
        sti       r0,*+ar0(1)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      10,r0
        blt       L789
;*      Branch Occurs to L789 
L790:        
	.line	9
;----------------------------------------------------------------------
; 2495 | pDData[11] = ROM_VER;                                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      45,r0
        sti       r0,*+ar0(11)
	.line	11
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2497,000000000h,1


	.sect	 ".text"

	.global	_DP_IDC_SW_UPLOAD_Pro
	.sym	_DP_IDC_SW_UPLOAD_Pro,_DP_IDC_SW_UPLOAD_Pro,32,2,0
	.func	2502
;******************************************************************************
;* FUNCTION NAME: _DP_IDC_SW_UPLOAD_Pro                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 12 Auto + 0 SOE = 14 words        *
;******************************************************************************
_DP_IDC_SW_UPLOAD_Pro:
	.sym	_i,1,15,1,32
	.sym	_sDATA_IDC,2,12,1,32
	.sym	_sDataBuf,3,60,1,320,,10
	.line	1
;----------------------------------------------------------------------
; 2502 | void DP_IDC_SW_UPLOAD_Pro()                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      12,sp
	.line	3
;----------------------------------------------------------------------
; 2504 | DWORD i=0;                                                             
; 2505 | UCHAR sDATA_IDC;                                                       
; 2506 | UCHAR sDataBuf[10];                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 2508 | if(((SanDisk_Vari.nDiskUpChekFlag == 1) || (SanDisk_Vari.nDiskUpChekFla
;     | g == 2)||(SanDisk_Vari.nDiskUpChekFlag == 3))                          
; 2509 |   && SanDisk_Vari.nDiskInputCheckFlag)                                 
;----------------------------------------------------------------------
        ldiu      @_SanDisk_Vari+3,r0
        cmpi      1,r0
        beq       L796
;*      Branch Occurs to L796 
        cmpi      2,r0
        beq       L796
;*      Branch Occurs to L796 
        cmpi      3,r0
        bne       L812
;*      Branch Occurs to L812 
L796:        
        ldi       @_SanDisk_Vari+2,r0
        beq       L812
;*      Branch Occurs to L812 
	.line	10
;----------------------------------------------------------------------
; 2511 | if(!DWORD_MASKING(Idc_Load.nDataNvsrLoad))                             
;----------------------------------------------------------------------
        ldi       @_Idc_Load+2,r0
        bne       L805
;*      Branch Occurs to L805 
	.line	12
;----------------------------------------------------------------------
; 2513 | if(!WORD_L(Idc_Load.nErCnt))                                           
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+1,r0
        bne       L800
;*      Branch Occurs to L800 
	.line	14
;----------------------------------------------------------------------
; 2515 | Idc_Load.nErCnt = NorFlashAllErase();                                  
;----------------------------------------------------------------------
        call      _NorFlashAllErase
                                        ; Call Occurs
        sti       r0,@_Idc_Load+1
        bu        L802
;*      Branch Occurs to L802 
L800:        
	.line	16
;----------------------------------------------------------------------
; 2517 | else if(WORD_L(Idc_Load.nErCnt))                                       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+1,r0
        beq       L802
;*      Branch Occurs to L802 
	.line	18
;----------------------------------------------------------------------
; 2519 | Idc_Load.nErCnt++;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Idc_Load+1,r0       ; Unsigned
        sti       r0,@_Idc_Load+1
L802:        
	.line	21
;----------------------------------------------------------------------
; 2522 | if(WORD_L(Idc_Load.nErCnt)==50 && !DWORD_MASKING(Idc_Load.nDataNvsrLoad
;     | ))                                                                     
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_Idc_Load+1,r0
        cmpi      50,r0
        bne       L805
;*      Branch Occurs to L805 
        ldi       @_Idc_Load+2,r0
        bne       L805
;*      Branch Occurs to L805 
	.line	23
;----------------------------------------------------------------------
; 2524 | Idc_Load.nDataNvsrLoad = Nvsram_IDC_UpLoad_Da();        //IDC ÆÄÀÏ »çÀÌ
;     | Áî¸¦ ¸®ÅÏÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        call      _Nvsram_IDC_UpLoad_Da
                                        ; Call Occurs
        sti       r0,@_Idc_Load+2
L805:        
	.line	27
;----------------------------------------------------------------------
; 2528 | if(DWORD_MASKING(Idc_Load.nDataNvsrLoad))                              
;----------------------------------------------------------------------
        ldi       @_Idc_Load+2,r0
        beq       L812
;*      Branch Occurs to L812 
	.line	29
;----------------------------------------------------------------------
; 2530 | Idc_Load.nDataNvsrWait++;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Idc_Load+3,r0       ; Unsigned
        sti       r0,@_Idc_Load+3
	.line	31
;----------------------------------------------------------------------
; 2532 | if(DWORD_MASKING(Idc_Load.nDataNvsrWait)>=5)                           
;----------------------------------------------------------------------
        cmpi      5,r0
        blo       L812
;*      Branch Occurs to L812 
	.line	33
;----------------------------------------------------------------------
; 2534 | for(i=0;i<512;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      512,r0
        bhs       L812
;*      Branch Occurs to L812 
L808:        
	.line	35
;----------------------------------------------------------------------
; 2536 | if(DWORD_MASKING(Idc_Load.nRomWriteCnt)>= DWORD_MASKING(Idc_Load.nDataN
;     | vsrLoad))                                                              
;----------------------------------------------------------------------
        ldiu      @_Idc_Load+4,r0
        cmpi      @_Idc_Load+2,r0
        blod      L811
	nop
        ldilo     @_Idc_Load+4,ir0
        ldilo     @CL109,ar0
;*      Branch Occurs to L811 
	.line	37
;----------------------------------------------------------------------
; 2538 | Idc_Load.nDataNvsrLoad = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Idc_Load+2
	.line	38
;----------------------------------------------------------------------
; 2539 | Idc_Load.nDataNvsrWait = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+3
	.line	39
;----------------------------------------------------------------------
; 2540 | Idc_Load.nErCnt = 0;                                                   
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+1
	.line	40
;----------------------------------------------------------------------
; 2541 | Idc_Load.nRomWriteCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+4
	.line	41
;----------------------------------------------------------------------
; 2542 | Idc_Load.nKO_Flag = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Idc_Load+5
	.line	42
;----------------------------------------------------------------------
; 2543 | Idc_Load.nIDC_ROM_Flag = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Idc_Load+0
	.line	44
;----------------------------------------------------------------------
; 2545 | gpBuzzerOn;                                                            
;----------------------------------------------------------------------
        ldiu      11,r1
        ldiu      2,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	46
;----------------------------------------------------------------------
; 2547 | break;                                                                 
; 2549 | else                                                                   
;----------------------------------------------------------------------
        bu        L812
;*      Branch Occurs to L812 
	.line	50
;----------------------------------------------------------------------
; 2551 | sDATA_IDC = NVSRAM(Idc_Load.nRomWriteCnt);                             
;----------------------------------------------------------------------
L811:        
        ldiu      *+ar0(ir0),r0
        sti       r0,*+fp(2)
	.line	51
;----------------------------------------------------------------------
; 2552 | NorFlashWrite(Idc_Load.nRomWriteCnt,sDATA_IDC);                        
;----------------------------------------------------------------------
        push      r0
        ldiu      @_Idc_Load+4,r0
        push      r0
        call      _NorFlashWrite
                                        ; Call Occurs
        subi      2,sp
	.line	54
;----------------------------------------------------------------------
; 2555 | Idc_Load.nRomWriteCnt++;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Idc_Load+4,r0       ; Unsigned
        sti       r0,@_Idc_Load+4
	.line	33
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      512,r0
        blo       L808
;*      Branch Occurs to L808 
L812:        
	.line	59
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      14,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2560,000000000h,12



	.sect	".cinit"
	.field  	1,32
	.field  	_d_DP_STOP_PT_INFO_ITEM_FUNCT+0,32
	.field  	0,32		; _d_DP_STOP_PT_INFO_ITEM_FUNCT @ 0

	.sect	".text"

	.global	_d_DP_STOP_PT_INFO_ITEM_FUNCT
	.bss	_d_DP_STOP_PT_INFO_ITEM_FUNCT,1
	.sym	_d_DP_STOP_PT_INFO_ITEM_FUNCT,_d_DP_STOP_PT_INFO_ITEM_FUNCT,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2+0,32
	.field  	0,32		; _d_DP_STOP_PT_INFO_ITEM_FUNCT_2 @ 0

	.sect	".text"

	.global	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2
	.bss	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2,1
	.sym	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2,_d_DP_STOP_PT_INFO_ITEM_FUNCT_2,14,2,32
	.sect	 ".text"

	.global	_DP_STOP_PT_INFO_ITEM_FUNCT
	.sym	_DP_STOP_PT_INFO_ITEM_FUNCT,_DP_STOP_PT_INFO_ITEM_FUNCT,32,2,0
	.func	2570
;******************************************************************************
;* FUNCTION NAME: _DP_STOP_PT_INFO_ITEM_FUNCT                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ar4,ir0,sp,st            *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 12 Auto + 1 SOE = 16 words        *
;******************************************************************************
_DP_STOP_PT_INFO_ITEM_FUNCT:
	.sym	_pData,-2,24,9,32,.fake50
	.sym	_s_St_Info_Point,1,4,1,32
	.sym	_s_Stop_Pt_Item_Point,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_sAdd,4,4,1,32
	.sym	_sForCnt,5,4,1,32
	.sym	_sCnt,6,4,1,32
	.sym	_sCnt2,7,4,1,32
	.sym	_pSt_Info,8,24,1,32,.fake48
	.sym	_pSt_Info_b,9,24,1,32,.fake47
	.sym	_pStop_Pt_Item,10,24,1,32,.fake46
	.sym	_pStop_Pt_Item_b,11,24,1,32,.fake45
	.sym	_pDest_s,12,24,1,32,.fake26
	.line	1
;----------------------------------------------------------------------
; 2570 | void DP_STOP_PT_INFO_ITEM_FUNCT(STOP_PT_INFO_ITEM *pData)              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      12,sp
        push      ar4
	.line	2
	.line	4
;----------------------------------------------------------------------
; 2573 | int s_St_Info_Point = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 2574 | int s_Stop_Pt_Item_Point = 0;                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 2575 | int i = 0;                                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 2576 | int sAdd = 0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 2577 | int sForCnt = 0;                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	9
;----------------------------------------------------------------------
; 2578 | int sCnt=0;                                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	10
;----------------------------------------------------------------------
; 2579 | int sCnt2=0;                                                           
; 2582 | pST_INFO pSt_Info;                                                     
; 2583 | pST_INFO_B pSt_Info_b;                                                 
; 2585 | pSTOP_PT_ITEM pStop_Pt_Item;                                           
; 2586 | pSTOP_PT_ITEM_B pStop_Pt_Item_b;                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	19
;----------------------------------------------------------------------
; 2588 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);            
;----------------------------------------------------------------------
        ldiu      @CL110,r0
        sti       r0,*+fp(12)
	.line	21
;----------------------------------------------------------------------
; 2590 | s_St_Info_Point = MAKE_DWORD(pDest_s->nAdd2_St_Info_b[0],pDest_s->nAdd2
;     | _St_Info_b[1],pDest_s->nAdd2_St_Info_b[2],pDest_s->nAdd2_St_Info_b[3]);
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      r0,ar0
        ldiu      ar0,ar1
        ldiu      ar0,ar4
        ldiu      ar0,ar2
        ldiu      *+ar0(52),r3
        and       *+ar1(53),r1
        ldiu      255,r0
        ash       24,r3
        ash       16,r1
        and       *+ar4(55),r2
        and       *+ar2(54),r0
        or3       r3,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        sti       r0,*+fp(1)
	.line	22
;----------------------------------------------------------------------
; 2591 | s_Stop_Pt_Item_Point = MAKE_DWORD(pDest_s->nAdd4_Stop_Pt_I_b[0],pDest_s
;     | ->nAdd4_Stop_Pt_I_b[1],pDest_s->nAdd4_Stop_Pt_I_b[2],pDest_s->nAdd4_Sto
;     | p_Pt_I_b[3]);                                                          
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       *+ar1(62),r0
        ldiu      *+ar4(60),r3
        and       *+ar0(61),r1
        ash       24,r3
        ash       16,r1
        ash       8,r0
        or3       r3,r1,r1
        or3       r1,r0,r0
        ldiu      255,r2
        and       *+ar2(63),r2
        or3       r0,r2,r0
        sti       r0,*+fp(2)
	.line	24
;----------------------------------------------------------------------
; 2593 | pSt_Info = (ST_INFO *) NVSRAM_ADD(s_St_Info_Point);                    
;----------------------------------------------------------------------
        ldiu      @CL111,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(8)
	.line	25
;----------------------------------------------------------------------
; 2594 | sCnt = MAKE_WORD(pSt_Info->nCnt.nNum_b[0],pSt_Info->nCnt.nNum_b[1]);   
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      r0,ar0
        ldiu      255,r0
        ldiu      ar0,ar1
        ash3      r1,*ar0,r1
        and       *+ar1(1),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(6)
	.line	26
;----------------------------------------------------------------------
; 2595 | pSt_Info_b = (ST_INFO_B *)calloc(sCnt,sizeof(ST_INFO_B));              
;----------------------------------------------------------------------
        ldiu      6,r0
        push      r0
        ldiu      *+fp(6),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(9)
	.line	27
;----------------------------------------------------------------------
; 2596 | pSt_Info_b = (ST_INFO_B *) NVSRAM_ADD(s_St_Info_Point+2);              
;----------------------------------------------------------------------
        ldiu      @CL112,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(9)
	.line	30
;----------------------------------------------------------------------
; 2599 | pStop_Pt_Item = (STOP_PT_ITEM *)NVSRAM_ADD(s_Stop_Pt_Item_Point);      
;----------------------------------------------------------------------
        ldiu      @CL111,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(10)
	.line	31
;----------------------------------------------------------------------
; 2600 | sCnt2 = MAKE_WORD(pStop_Pt_Item->nCnt.nNum_b[0],pStop_Pt_Item->nCnt.nNu
;     | m_b[1]);                                                               
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      ar0,ar1
        ldiu      8,r1
        ldiu      255,r0
        and       *+ar1(1),r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(7)
	.line	32
;----------------------------------------------------------------------
; 2601 | pStop_Pt_Item_b = (STOP_PT_ITEM_B *)calloc(sCnt2,sizeof(STOP_PT_ITEM_B)
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      9,r0
        push      r0
        ldiu      *+fp(7),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(11)
	.line	33
;----------------------------------------------------------------------
; 2602 | pStop_Pt_Item_b = (STOP_PT_ITEM_B *)NVSRAM_ADD(s_Stop_Pt_Item_Point+2);
;----------------------------------------------------------------------
        ldiu      @CL112,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(11)
	.line	36
;----------------------------------------------------------------------
; 2605 | memcpy(pData->nCnt.nNum_b,pStop_Pt_Item->nCnt.nNum_b,2);               
; 2607 | //free(pData->pBody);                                                  
; 2608 | //pData->pBody = (STOP_PT_INFO_ITEM_B *)calloc(sCnt2,sizeof(STOP_PT_INF
;     | O_ITEM_B));                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(10),ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	48
;----------------------------------------------------------------------
; 2617 | sForCnt = MAKE_WORD(pStop_Pt_Item->nCnt.nNum_b[0],pStop_Pt_Item->nCnt.n
;     | Num_b[1]);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(10),ar0
        ldiu      ar0,ar1
        ldiu      8,r1
        ldiu      255,r0
        and       *+ar1(1),r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(5)
	.line	50
;----------------------------------------------------------------------
; 2619 | d_DP_BUFF[4] = sForCnt;                                                
; 2621 | //°³¼ö ¸¸Å­ ¹Ýº¹ ÀÔ·Â ÇÑ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        sti       r0,@_d_DP_BUFF+4
	.line	53
;----------------------------------------------------------------------
; 2622 | for(i = 0;i<sForCnt;i++)                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        ldiu      8,r1
        cmpi      *+fp(5),r0
        bge       L816
;*      Branch Occurs to L816 
L815:        
	.line	55
;----------------------------------------------------------------------
; 2624 | sAdd = MAKE_WORD(pStop_Pt_Item_b[i].nSt_Info_b[0],pStop_Pt_Item_b[i].nS
;     | t_Info_b[1]);                                                          
; 2625 | //¿ª°£ Á¤º¸¸¦ ÀÔ·Â ÇÑ´Ù.                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      *+fp(11),ir0
        ldiu      ar0,ar1
        ldiu      255,r2
        mpyi      9,ar0
        mpyi      9,ar1
        addi      *+fp(11),ar0          ; Unsigned
        ash3      r1,*+ar1(ir0),r0
        and       *+ar0(1),r2
        or3       r0,r2,r0
        and       65535,r0
        sti       r0,*+fp(4)
	.line	57
;----------------------------------------------------------------------
; 2626 | memcpy(pData->pBody[i].nSt_Info_flag.nSt_Index_b,pSt_Info_b[sAdd].nSt_I
;     | ndex_b,2);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        mpyi      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      r0,ar1
        mpyi      6,ar1
        addi      *+fp(9),ar1           ; Unsigned
        addi      2,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	58
;----------------------------------------------------------------------
; 2627 | memcpy(pData->pBody[i].nSt_Info_flag.nArr_Index_b,pSt_Info_b[sAdd].nArr
;     | _Index_b,2);                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        mpyi      13,ar1
        ldiu      *+fp(4),ar0
        mpyi      6,ar0
        addi      *+fp(9),ar0           ; Unsigned
        addi      *-fp(2),ar1           ; Unsigned
        addi      2,ar0                 ; Unsigned
        addi      4,ar1                 ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	59
;----------------------------------------------------------------------
; 2628 | memcpy(pData->pBody[i].nSt_Info_flag.nSt_Dist_b,pSt_Info_b[sAdd].nSt_Di
;     | st_b,2);                                                               
; 2630 | //Á¤Â÷ ÆÐÅÏ ITEMÀ» ÀÔ·Â ÇÑ´Ù.                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar1
        ldiu      *+fp(3),ar0
        mpyi      6,ar1
        mpyi      13,ar0
        addi      *+fp(9),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      4,ar1                 ; Unsigned
        addi      6,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	62
;----------------------------------------------------------------------
; 2631 | pData->pBody[i].nDoor_Info = pStop_Pt_Item_b[i].nDoor_Info;            
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      ar1,ar0
        mpyi      9,ar1
        addi      *+fp(11),ar1          ; Unsigned
        mpyi      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(8)
	.line	63
;----------------------------------------------------------------------
; 2632 | memcpy(pData->pBody[i].nSt_Time_b,pStop_Pt_Item_b[i].nSt_Time_b,3);    
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      ar0,ar1
        mpyi      9,ar0
        mpyi      13,ar1
        addi      *+fp(11),ar0          ; Unsigned
        addi      *-fp(2),ar1           ; Unsigned
        addi      3,ar0                 ; Unsigned
        addi      9,ar1                 ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      *+ar0(2),r0
        sti       r0,*+ar1(2)
	.line	64
;----------------------------------------------------------------------
; 2633 | memcpy(pData->pBody[i].nStop_Time_b,pStop_Pt_Item_b[i].nStop_Time_b,3);
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        mpyi      13,ar0
        ldiu      *+fp(3),ar1
        mpyi      9,ar1
        addi      *+fp(11),ar1          ; Unsigned
        addi      6,ar1                 ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      12,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	53
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      *+fp(5),r0
        blt       L815
;*      Branch Occurs to L815 
L816:        
	.line	68
;----------------------------------------------------------------------
; 2637 | free(pSt_Info_b);                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(9),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	69
;----------------------------------------------------------------------
; 2638 | free(pStop_Pt_Item_b);                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(11),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	71
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      14,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2640,000001000h,12



	.sect	".cinit"
	.field  	1,32
	.field  	_d_DP_STOP_PT_INFO_G_FUNCT+0,32
	.field  	0,32		; _d_DP_STOP_PT_INFO_G_FUNCT @ 0

	.sect	".text"

	.global	_d_DP_STOP_PT_INFO_G_FUNCT
	.bss	_d_DP_STOP_PT_INFO_G_FUNCT,1
	.sym	_d_DP_STOP_PT_INFO_G_FUNCT,_d_DP_STOP_PT_INFO_G_FUNCT,12,2,32
	.sect	 ".text"

	.global	_DP_STOP_PT_INFO_G_FUNCT
	.sym	_DP_STOP_PT_INFO_G_FUNCT,_DP_STOP_PT_INFO_G_FUNCT,32,2,0
	.func	2647
;******************************************************************************
;* FUNCTION NAME: _DP_STOP_PT_INFO_G_FUNCT                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ir0,ir1,sp,st            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1308 Auto + 0 SOE = 1311 words    *
;******************************************************************************
_DP_STOP_PT_INFO_G_FUNCT:
	.sym	_pData,-2,24,9,32,.fake51
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_sCnt,3,4,1,32
	.sym	_sStG_IndexCnt,4,4,1,32
	.sym	_nStop_Pt_Info_Flag,5,8,1,41664,.fake50
	.sym	_pStop_Pt_G,1307,24,1,32,.fake44
	.sym	_pStop_Pt_G_b,1308,24,1,32,.fake43
	.line	1
;----------------------------------------------------------------------
; 2647 | void DP_STOP_PT_INFO_G_FUNCT(STOP_PT_G_I_HAP *pData)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1308,sp
	.line	2
;----------------------------------------------------------------------
; 2649 | int i,j;                                                               
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 2650 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
	.line	5
;----------------------------------------------------------------------
; 2651 | int sStG_IndexCnt = 0;                                                 
; 2653 | STOP_PT_INFO_ITEM nStop_Pt_Info_Flag; //Á¤Â÷ ÆÐÅÏ ITEM ´õÇÏ±â ¿ª°£ Á¤º¸
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	9
;----------------------------------------------------------------------
; 2655 | pSTOP_PT_G_B pStop_Pt_G = (STOP_PT_G_B *)NVSRAM_ADD(nStart_Address_Poin
;     | t.nSt_Pt_G_Address); //Á¤Â÷ ÆÐÅÏ ±×·ì ÁÖ¼Ò.                            
; 2656 | pSTOP_PT_G_B_B pStop_Pt_G_b;                                           
;----------------------------------------------------------------------
        ldiu      1307,ir0
        ldiu      @CL113,r0
        addi      @_nStart_Address_Point+0,r0 ; Unsigned
        sti       r0,*+fp(ir0)
	.line	12
;----------------------------------------------------------------------
; 2658 | DP_STOP_PT_INFO_ITEM_FUNCT(&nStop_Pt_Info_Flag); ////Á¤Â÷ ÆÐÅÏ ITEM ´õÇ
;     | Ï±â ¿ª°£ Á¤º¸ ÇÕÄ¡´Â ºÎºÐ.                                             
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      5,r0
        push      r0
        call      _DP_STOP_PT_INFO_ITEM_FUNCT
                                        ; Call Occurs
        subi      1,sp
	.line	14
;----------------------------------------------------------------------
; 2660 | memcpy(pData->nHeader.nSt_Index_b,pStop_Pt_G->nHeader.nSt_Index_b,2);  
;----------------------------------------------------------------------
        ldiu      1307,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	15
;----------------------------------------------------------------------
; 2661 | memcpy(pData->nHeader.nEn_Index_b,pStop_Pt_G->nHeader.nEn_Index_b,2);  
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      2,ar0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	16
;----------------------------------------------------------------------
; 2662 | memcpy(pData->nHeader.nSt_P_G_Cnt_b,pStop_Pt_G->nHeader.nSt_P_G_Cnt_b,2
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      4,r0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        ldiu      4,ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	18
;----------------------------------------------------------------------
; 2664 | d_DP_STOP_PT_INFO_G_FUNCT = sCnt = MAKE_WORD(pStop_Pt_G->nHeader.nSt_P_
;     | G_Cnt_b[0],pStop_Pt_G->nHeader.nSt_P_G_Cnt_b[1]);                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      1307,ir1
        ldiu      *+ar0(4),r0
        ldiu      *+fp(ir1),ar0
        ldiu      255,r1
        and       *+ar0(5),r1
        ash       8,r0
        or3       r0,r1,r0
        and       @CL78,r0
        sti       r0,@_d_DP_STOP_PT_INFO_G_FUNCT+0
        sti       r0,*+fp(3)
	.line	20
;----------------------------------------------------------------------
; 2666 | pStop_Pt_G_b = (STOP_PT_G_B_B *)calloc(sCnt,sizeof(STOP_PT_G_B_B));    
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        ldiu      *+fp(3),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        ldiu      1308,ir0
        sti       r0,*+fp(ir0)
	.line	21
;----------------------------------------------------------------------
; 2667 | pStop_Pt_G_b = (STOP_PT_G_B_B *)NVSRAM_ADD(nStart_Address_Point.nSt_Pt_
;     | G_Address+6); //Á¤Â÷ ÆÐÅÏ ±×·ì ÁÖ¼Ò.                                   
; 2669 | //free(pData->nSt_Pt_G_I_Flage);                                       
; 2670 | //pData->nSt_Pt_G_I_Flage = (STOP_PT_INFO_ITEM_B *)calloc(sCnt,sizeof(S
;     | TOP_PT_INFO_ITEM_B));                                                  
;----------------------------------------------------------------------
        ldiu      @CL114,r0
        addi      @_nStart_Address_Point+0,r0 ; Unsigned
        sti       r0,*+fp(ir0)
	.line	27
;----------------------------------------------------------------------
; 2673 | memset(d_DP_STOP_Buf,0x00,20);                                         
;----------------------------------------------------------------------
        ldiu      20,r2
        push      r2
        ldiu      0,r1
        ldiu      @CL115,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	29
;----------------------------------------------------------------------
; 2675 | for(i=0;i<WORD_L(sCnt);i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      8,r3
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *+fp(3),r0
        cmpi3     r0,r1
        bge       L821
;*      Branch Occurs to L821 
L820:        
	.line	32
;----------------------------------------------------------------------
; 2678 | d_DP_STOP_Buf[i] =  sStG_IndexCnt =MAKE_WORD(pStop_Pt_G_b[i].nSt_P_Item
;     | _Index_b[0],pStop_Pt_G_b[i].nSt_P_Item_Index_b[1]);                    
;----------------------------------------------------------------------
        ldiu      1308,ir0

        ldiu      *+fp(1),r0
||      ldiu      *+fp(1),r2

        ldiu      255,r1
        ldiu      r2,ar0
        ldiu      *+fp(ir0),ir0
        ash       1,ar0
        ash       1,r2
        ldiu      1308,ir1
        addi3     r2,*+fp(ir1),ar1      ; Unsigned
        ldiu      @CL115,ar2
        and       *+ar1(1),r1
        ash3      r3,*+ar0(ir0),r2
        or3       r2,r1,r1
        ldiu      r0,ir0
        and       @CL78,r1
        sti       r1,*+fp(4)
        sti       r1,*+ar2(ir0)
	.line	34
;----------------------------------------------------------------------
; 2680 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Index_b,nStop_Pt_In
;     | fo_Flag.pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Index_b,2);             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        ldiu      *+fp(4),r0
        ldiu      fp,r1
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      13,r0
        addi      7,r1
        addi3     r1,r0,ar1             ; Unsigned
        addi      6,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	35
;----------------------------------------------------------------------
; 2681 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b,nStop_Pt_I
;     | nfo_Flag.pBody[sStG_IndexCnt].nSt_Info_flag.nArr_Index_b,2);           
;----------------------------------------------------------------------
        ldiu      *+fp(4),r1
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      13,r1
        ldiu      fp,r0
        addi      9,r0
        addi3     r0,r1,ar1             ; Unsigned
        addi      8,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	36
;----------------------------------------------------------------------
; 2682 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Dist_b,nStop_Pt_Inf
;     | o_Flag.pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Dist_b,2);               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        ldiu      fp,r0
        addi      11,r0
        ldiu      *+fp(4),r1
        mpyi      13,r1
        addi3     r0,r1,ar1             ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      10,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	38
;----------------------------------------------------------------------
; 2684 | pData->nSt_Pt_G_I_Flage[i].nDoor_Info = nStop_Pt_Info_Flag.pBody[sStG_I
;     | ndexCnt].nDoor_Info;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        mpyi      13,ar1
        ldiu      *+fp(4),ir0
        ldiu      fp,ar0
        mpyi      13,ir0
        addi      13,ar0
        addi      *-fp(2),ar1           ; Unsigned
        ldiu      *+ar0(ir0),r0
        sti       r0,*+ar1(12)
	.line	40
;----------------------------------------------------------------------
; 2686 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Time_b,nStop_Pt_Info_Flag.pBody[s
;     | StG_IndexCnt].nSt_Time_b,3);                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        ldiu      fp,r0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *+fp(4),r1
        addi      14,r0
        mpyi      13,r1
        addi3     r0,r1,ar1             ; Unsigned
        addi      13,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	41
;----------------------------------------------------------------------
; 2687 | memcpy(pData->nSt_Pt_G_I_Flage[i].nStop_Time_b,nStop_Pt_Info_Flag.pBody
;     | [sStG_IndexCnt].nStop_Time_b,3);                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      fp,r1
        mpyi      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        addi      17,r1
        ldiu      *+fp(4),r0
        mpyi      13,r0
        addi3     r1,r0,ar1             ; Unsigned
        addi      16,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	29
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        ldiu      255,r0
        and       *+fp(3),r0
        cmpi3     r0,r1
        blt       L820
;*      Branch Occurs to L820 
L821:        
	.line	44
;----------------------------------------------------------------------
; 2690 | free(pStop_Pt_G_b);                                                    
;----------------------------------------------------------------------
        ldiu      1308,ir0
        ldiu      *+fp(ir0),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	45
;----------------------------------------------------------------------
; 2691 | free(nStop_Pt_Info_Flag);                                              
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      5,r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	46
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      1310,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2692,000000000h,1308



	.sect	".cinit"
	.field  	1,32
	.field  	_d_disp_g_cnt+0,32
	.field  	0,32		; _d_disp_g_cnt @ 0

	.sect	".text"

	.global	_d_disp_g_cnt
	.bss	_d_disp_g_cnt,1
	.sym	_d_disp_g_cnt,_d_disp_g_cnt,12,2,32
	.sect	 ".text"

	.global	_DP_DISP_G__HAP
	.sym	_DP_DISP_G__HAP,_DP_DISP_G__HAP,32,2,0
	.func	2698
;******************************************************************************
;* FUNCTION NAME: _DP_DISP_G__HAP                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ar4,sp,st                *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 10 Auto + 1 SOE = 14 words        *
;******************************************************************************
_DP_DISP_G__HAP:
	.sym	_pData,-2,24,9,32,.fake41
	.sym	_sCnt,1,4,1,32
	.sym	_sCnt2,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_sDisplayItemAdd_D,4,4,1,32
	.sym	_sDisItemAdd,5,15,1,32
	.sym	_pDest_s,6,24,1,32,.fake26
	.sym	_nDisplay_G,7,24,1,32,.fake37
	.sym	_nDisplay_G_b,8,24,1,32,.fake36
	.sym	_nDisplay_I,9,24,1,32,.fake39
	.sym	_nDisplay_I_b,10,24,1,32,.fake38
	.line	1
;----------------------------------------------------------------------
; 2698 | void DP_DISP_G__HAP(DISPLAY_G_I_H *pData)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      10,sp
        push      ar4
	.line	2
	.line	3
;----------------------------------------------------------------------
; 2700 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 2701 | int sCnt2 =0;                                                          
; 2702 | int i;                                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 2703 | int sDisplayItemAdd_D = 0;                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 2704 | DWORD sDisItemAdd = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	9
;----------------------------------------------------------------------
; 2706 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //ÇÁ·Î±×·¥
;     | ½ÃÀÛÇÑ¶§ ÀüÃ¼ ÁÖ¼Ò ¸®½ºÆ®                                              
; 2708 | //µ¿Àû¹è¿­ ¼±¾ð                                                        
;----------------------------------------------------------------------
        ldiu      @CL110,r0
        sti       r0,*+fp(6)
	.line	12
;----------------------------------------------------------------------
; 2709 | pDISPLAY_GROUP nDisplay_G = (DISPLAY_GROUP *)NVSRAM_ADD(nStart_Address_
;     | Point.nDisp_G_Address); //Display Group address                        
; 2710 | pDISPLAY_G_B nDisplay_G_b;                                             
; 2712 | //µ¿Àû¹è¿­ ¼±¾ð                                                        
; 2713 | pDISPLAY_ITEM nDisplay_I;                                              
; 2714 | pDISPLAY_ITEM_B nDisplay_I_b;                                          
;----------------------------------------------------------------------
        ldiu      @CL113,r0
        addi      @_nStart_Address_Point+1,r0 ; Unsigned
        sti       r0,*+fp(7)
	.line	19
;----------------------------------------------------------------------
; 2716 | sDisItemAdd = MAKE_DWORD(pDest_s->nAdd6_Display_I_b[0],pDest_s->nAdd6_D
;     | isplay_I_b[1],pDest_s->nAdd6_Display_I_b[2],pDest_s->nAdd6_Display_I_b[
;     | 3]);                                                                   
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      *+fp(6),ar2
        ldiu      ar2,ar1
        ldiu      ar1,ar0
        ldiu      ar0,ar4
        ldiu      *+ar2(68),r3
        and       *+ar1(69),r1
        ldiu      255,r0
        ash       24,r3
        ash       16,r1
        and       *+ar4(71),r2
        and       *+ar0(70),r0
        or3       r3,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        sti       r0,*+fp(5)
	.line	21
;----------------------------------------------------------------------
; 2718 | nDisplay_I = (DISPLAY_ITEM *)NVSRAM_ADD(sDisItemAdd); //Display Item ÁÖ
;     | ¼Ò.                                                                    
;----------------------------------------------------------------------
        ldiu      @CL113,r0
        addi      *+fp(5),r0            ; Unsigned
        sti       r0,*+fp(9)
	.line	22
;----------------------------------------------------------------------
; 2719 | sCnt2 = MAKE_WORD(nDisplay_I->nCnt.nNum_b[0],nDisplay_G->nCnt.nNum_b[1]
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+fp(7),ar1
        ldiu      255,r0
        and       *+ar1(1),r0
        ldiu      8,r1
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	23
;----------------------------------------------------------------------
; 2720 | nDisplay_I_b = (DISPLAY_ITEM_B *)calloc(sCnt2,sizeof(DISPLAY_ITEM_B));
;     | //µ¿Àû¹è¿­ ÇÒ´ç                                                        
;----------------------------------------------------------------------
        ldiu      4,r0
        push      r0
        ldiu      *+fp(2),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(10)
	.line	24
;----------------------------------------------------------------------
; 2721 | nDisplay_I_b = (DISPLAY_ITEM_B *)NVSRAM_ADD(sDisItemAdd+2); //Display I
;     | tem ÁÖ¼Ò.                                                              
;----------------------------------------------------------------------
        ldiu      @CL116,r0
        addi      *+fp(5),r0            ; Unsigned
        sti       r0,*+fp(10)
	.line	27
;----------------------------------------------------------------------
; 2724 | d_disp_g_cnt = sCnt = MAKE_WORD(nDisplay_G->nCnt.nNum_b[0],nDisplay_G->
;     | nCnt.nNum_b[1]);                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        ldiu      8,r1
        and       *+ar1(1),r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       @CL78,r0
        sti       r0,@_d_disp_g_cnt+0
        sti       r0,*+fp(1)
	.line	28
;----------------------------------------------------------------------
; 2725 | nDisplay_G_b = (DISPLAY_G_B *)calloc(sCnt,sizeof(DISPLAY_G_B)); //µ¿Àû¹
;     | è¿­ ÇÒ´ç                                                               
;----------------------------------------------------------------------
        ldiu      6,r0
        push      r0
        ldiu      *+fp(1),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(8)
	.line	29
;----------------------------------------------------------------------
; 2726 | nDisplay_G_b = (DISPLAY_G_B *)NVSRAM_ADD(nStart_Address_Point.nDisp_G_A
;     | ddress+2); //Display Group address                                     
;----------------------------------------------------------------------
        ldiu      @CL116,r0
        addi      @_nStart_Address_Point+1,r0 ; Unsigned
        sti       r0,*+fp(8)
	.line	32
;----------------------------------------------------------------------
; 2729 | memcpy(pData->nCnt.nNum_b,nDisplay_G->nCnt.nNum_b,2);                  
; 2731 | //free(pData->pBody);                                                  
; 2732 | //pData->pBody = (DISPLAY_G_I_B *)calloc(sCnt,sizeof(DISPLAY_G_I_B));  
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	38
;----------------------------------------------------------------------
; 2735 | for(i=0;i<sCnt;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        cmpi      *+fp(1),r0
        bge       L826
;*      Branch Occurs to L826 
L825:        
	.line	40
;----------------------------------------------------------------------
; 2737 | memcpy(pData->pBody[i].nSt_Cnt_b,nDisplay_G_b[i].nSt_Cnt_b,2);         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      ar0,ar1
        ash       3,ar0
        mpyi      6,ar1
        addi      *-fp(2),ar0           ; Unsigned
        addi      *+fp(8),ar1           ; Unsigned
        addi      2,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	41
;----------------------------------------------------------------------
; 2738 | memcpy(pData->pBody[i].nGuri_b,nDisplay_G_b[i].nGuri_b,2);             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      ar1,ar0
        mpyi      6,ar1
        ash       3,ar0
        addi      *+fp(8),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      2,ar1                 ; Unsigned
        addi      4,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	43
;----------------------------------------------------------------------
; 2740 | sDisplayItemAdd_D = MAKE_WORD(nDisplay_G_b[i].nItem_Index_b[0],nDisplay
;     | _G_b[i].nItem_Index_b[1]);//Display Item Index °ª                      
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      *+fp(3),ar0
        mpyi      6,ar0
        addi      *+fp(8),ar0           ; Unsigned
        ldiu      *+fp(3),ar1
        mpyi      6,ar1
        addi      *+fp(8),ar1           ; Unsigned
        and       *+ar0(5),r1
        ldiu      *+ar1(4),r0
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(4)
	.line	45
;----------------------------------------------------------------------
; 2742 | memcpy(pData->pBody[i].nItem_Index_Flag.nText_Kind_b,nDisplay_I_b[sDisp
;     | layItemAdd_D].nText_Kind_b,2);                                         
;----------------------------------------------------------------------
        ldiu      r0,ar1
        ash       2,ar1
        addi      *+fp(10),ar1          ; Unsigned
        ldiu      *+fp(3),ar0
        ash       3,ar0
        addi      *-fp(2),ar0           ; Unsigned
        addi      6,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	46
;----------------------------------------------------------------------
; 2743 | memcpy(pData->pBody[i].nItem_Index_Flag.nText_Index,nDisplay_I_b[sDispl
;     | ayItemAdd_D].nText_Index,2);                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ash       3,ar0
        ldiu      *+fp(4),ar1
        ash       2,ar1
        addi      *+fp(10),ar1          ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      2,ar1                 ; Unsigned
        addi      8,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	38
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      *+fp(1),r0
        blt       L825
;*      Branch Occurs to L825 
L826:        
	.line	51
;----------------------------------------------------------------------
; 2748 | free(nDisplay_G_b);                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	52
;----------------------------------------------------------------------
; 2749 | free(nDisplay_I_b);                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(10),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	53
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      12,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2750,000001000h,10


	.sect	 ".text"

	.global	_DP_ConvAsc2Hex
	.sym	_DP_ConvAsc2Hex,_DP_ConvAsc2Hex,44,2,0
	.func	2755
;******************************************************************************
;* FUNCTION NAME: _DP_ConvAsc2Hex                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_DP_ConvAsc2Hex:
	.sym	_chDat,-2,2,9,32
	.sym	_nBuf,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 2755 | UCHAR DP_ConvAsc2Hex(char chDat)                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 2757 | int nBuf = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 2758 | if(chDat >= '0' && chDat <= '9') nBuf = chDat-'0';                     
; 2759 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      48,r0
        blt       L832
;*      Branch Occurs to L832 
        cmpi      57,r0
        bgt       L832
;*      Branch Occurs to L832 
        ldiu      48,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
        bu        L838
;*      Branch Occurs to L838 
L832:        
	.line	6
;----------------------------------------------------------------------
; 2760 | if(chDat >= 'a' && chDat <= 'f') nBuf = ((chDat-'a') + 10);
;     |                                                                        
; 2761 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      97,r0
        blt       L835
;*      Branch Occurs to L835 
        cmpi      102,r0
        bgt       L835
;*      Branch Occurs to L835 
        ldiu      87,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
        bu        L838
;*      Branch Occurs to L838 
L835:        
	.line	8
;----------------------------------------------------------------------
; 2762 | if(chDat >= 'A' && chDat <= 'F') nBuf = ((chDat-'A') + 10);            
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      65,r0
        blt       L838
;*      Branch Occurs to L838 
        cmpi      70,r0
        bgt       L838
;*      Branch Occurs to L838 
        ldiu      55,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
L838:        
	.line	10
;----------------------------------------------------------------------
; 2764 | return nBuf;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	11
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	2765,000000000h,1


	.sect	 ".text"

	.global	_DP_ConvHex2Asc
	.sym	_DP_ConvHex2Asc,_DP_ConvHex2Asc,34,2,0
	.func	2770
;******************************************************************************
;* FUNCTION NAME: _DP_ConvHex2Asc                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_DP_ConvHex2Asc:
	.sym	_btCh,-2,12,9,32
	.sym	_chBuf,1,2,1,32
	.line	1
;----------------------------------------------------------------------
; 2770 | char DP_ConvHex2Asc(UCHAR btCh)                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 2772 | char chBuf = '0';                                                      
;----------------------------------------------------------------------
        ldiu      48,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 2773 | if(btCh >= 0 && btCh <= 9) chBuf = btCh+'0';                           
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      9,r0
        bhi       L843
;*      Branch Occurs to L843 
        ldiu      48,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
        bu        L846
;*      Branch Occurs to L846 
L843:        
	.line	5
;----------------------------------------------------------------------
; 2774 | else if(btCh >= 10 && btCh <= 15) chBuf = (btCh-10)+'A';               
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      10,r0
        blo       L846
;*      Branch Occurs to L846 
        cmpi      15,r0
        bhi       L846
;*      Branch Occurs to L846 
        ldiu      55,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
L846:        
	.line	7
;----------------------------------------------------------------------
; 2776 | return chBuf;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	8
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	2777,000000000h,1


	.sect	 ".text"

	.global	_user_DebugPrint
	.sym	_user_DebugPrint,_user_DebugPrint,32,2,0
	.func	2784
;******************************************************************************
;* FUNCTION NAME: _user_DebugPrint                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_user_DebugPrint:
	.sym	_pTxBuf,-2,18,9,32
	.line	1
;----------------------------------------------------------------------
; 2784 | void user_DebugPrint(char *pTxBuf)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 2786 | Delay_SCC3_SendTo((UCHAR *)pTxBuf,strlen(pTxBuf),SCC_B_CHANNEL,1);     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        subi      1,sp
        ldiu      1,r1
        ldiu      1,r2
        push      r2
        push      r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	4
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2787,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeDataPro_Cnt+0,32
	.field  	0,32		; _nTimeDataPro_Cnt @ 0

	.sect	".text"

	.global	_nTimeDataPro_Cnt
	.bss	_nTimeDataPro_Cnt,1
	.sym	_nTimeDataPro_Cnt,_nTimeDataPro_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DI_Door+0,32
	.field  	0,32		; _d_DI_Door @ 0

	.sect	".text"

	.global	_d_DI_Door
	.bss	_d_DI_Door,1
	.sym	_d_DI_Door,_d_DI_Door,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DI_Dist_cnt+0,32
	.field  	0,32		; _d_DI_Dist_cnt @ 0

	.sect	".text"

	.global	_d_DI_Dist_cnt
	.bss	_d_DI_Dist_cnt,1
	.sym	_d_DI_Dist_cnt,_d_DI_Dist_cnt,12,2,32
	.sect	 ".text"

	.global	_DP_Timer_1ms_DataPro
	.sym	_DP_Timer_1ms_DataPro,_DP_Timer_1ms_DataPro,32,2,0
	.func	2796
;******************************************************************************
;* FUNCTION NAME: _DP_Timer_1ms_DataPro                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,sp,st                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_Timer_1ms_DataPro:
	.line	1
;----------------------------------------------------------------------
; 2796 | void DP_Timer_1ms_DataPro()                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 2798 | nTimeDataPro_Cnt++;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeDataPro_Cnt+0,r0 ; Unsigned
        sti       r0,@_nTimeDataPro_Cnt+0
	.line	5
;----------------------------------------------------------------------
; 2800 | DP_ONTD(~DICE&0x02,&nDi_Check.nDoor.nFlag,nDi_Check.nDoor.nTime,&nDi_Ch
;     | eck.nDoor.nTimeCnt);                                                   
;----------------------------------------------------------------------
        ldiu      @CL117,ar0
        ldiu      @CL118,r1
        ldiu      @CL119,r2
        ldiu      2,r0
        andn3     *ar0,r0,r0
        push      r1
        ldiu      @_nDi_Check+16,r1
        push      r1
        push      r2
        push      r0
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	7
;----------------------------------------------------------------------
; 2802 | DP_ONTD(~DI_STATUS_RD&0x01,&nDi_Check.nDist.nFlag,nDi_Check.nDist.nTime
;     | ,&nDi_Check.nDist.nTimeCnt);                                           
;----------------------------------------------------------------------
        ldiu      @CL120,ar0
        ldiu      1,r1
        andn3     *ar0,r1,r1
        ldiu      @CL121,r2
        push      r2
        ldiu      @CL122,r0
        ldiu      @_nDi_Check+21,r2
        push      r2
        push      r0
        push      r1
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	9
;----------------------------------------------------------------------
; 2804 | d_DI_Door = nDi_Check.nDist.nFlag;                                     
;----------------------------------------------------------------------
        ldiu      @_nDi_Check+20,r0
        sti       r0,@_d_DI_Door+0
	.line	11
;----------------------------------------------------------------------
; 2806 | if((WORD_L(nDi_Check.nDist.nRemem) != WORD_L(nDi_Check.nDist.nFlag)) &&
;     |   WORD_L(nDi_Check.nDist.nFlag)){ //¿îÇà °Å¸® Ä«¿îÅÍ.                  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDi_Check+20,r0
        ldiu      255,r1
        and       @_nDi_Check+24,r1
        cmpi3     r0,r1
        beq       L855
;*      Branch Occurs to L855 
        ldiu      255,r0
        tstb      @_nDi_Check+20,r0
        beq       L855
;*      Branch Occurs to L855 
	.line	13
;----------------------------------------------------------------------
; 2808 | nDi_Check.nDist.nFlagCnt++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nDi_Check+23,r0     ; Unsigned
        sti       r0,@_nDi_Check+23
	.line	14
;----------------------------------------------------------------------
; 2809 | d_DI_Dist_cnt++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_DI_Dist_cnt+0,r0  ; Unsigned
        sti       r0,@_d_DI_Dist_cnt+0
L855:        
	.line	17
;----------------------------------------------------------------------
; 2812 | nDi_Check.nDist.nRemem = nDi_Check.nDist.nFlag;                        
;----------------------------------------------------------------------
        ldiu      @_nDi_Check+20,r0
        sti       r0,@_nDi_Check+24
	.line	20
;----------------------------------------------------------------------
; 2815 | if(!(nTimeDataPro_Cnt%200))                                            
;----------------------------------------------------------------------
        ldiu      200,r1
        ldiu      @_nTimeDataPro_Cnt+0,r0
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L857
;*      Branch Occurs to L857 
	.line	22
;----------------------------------------------------------------------
; 2817 | nTimeFlag.nAutoPlay_Flag = TRUE;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTimeFlag+3
L857:        
	.line	25
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2820,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Rnd_Cnt+0,32
	.field  	0,32		; _d_Rnd_Cnt @ 0

	.sect	".text"

	.global	_d_Rnd_Cnt
	.bss	_d_Rnd_Cnt,1
	.sym	_d_Rnd_Cnt,_d_Rnd_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeDataPro_100Cnt+0,32
	.field  	0,32		; _nTimeDataPro_100Cnt @ 0

	.sect	".text"

	.global	_nTimeDataPro_100Cnt
	.bss	_nTimeDataPro_100Cnt,1
	.sym	_nTimeDataPro_100Cnt,_nTimeDataPro_100Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_Timer_100ms_DataPro
	.sym	_DP_Timer_100ms_DataPro,_DP_Timer_100ms_DataPro,32,2,0
	.func	2826
;******************************************************************************
;* FUNCTION NAME: _DP_Timer_100ms_DataPro                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,st                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_Timer_100ms_DataPro:
	.line	1
;----------------------------------------------------------------------
; 2826 | void DP_Timer_100ms_DataPro()                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 2828 | nTimeDataPro_100Cnt++;                                                 
; 2830 | //ÀÏ¹Ý Æí¼ºÀÌ°í ¼¿ÇÁÅ×½ºÆ®°¡ ¾Æ´Ï¸é ³ë¼± Ç¥½Ã±â¸¦ ÁøÇà ÇÑ´Ù.           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeDataPro_100Cnt+0,r0 ; Unsigned
        sti       r0,@_nTimeDataPro_100Cnt+0
	.line	6
;----------------------------------------------------------------------
; 2831 | if(!(nTimeDataPro_100Cnt%10) && (!nTr_St_Info.nSelf_Test_Flag) && WORD_
;     | L(nSelf_Test.nSELF_ICR_SELECT))  //1ÃÊ                                 
; 2833 |         //½Ã¹Ä·¹ÀÌ¼Ç ÀÌ´øÁö. ¾Æ´Ï¸é Á¤»ó ÄÚµå ÀÔ·Â ¹Þ¾ÒÀ» °æ¿ì         
;----------------------------------------------------------------------
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L866
;*      Branch Occurs to L866 
        ldi       @_nTr_St_Info+368,r0
        bne       L866
;*      Branch Occurs to L866 
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        beq       L866
;*      Branch Occurs to L866 
	.line	9
;----------------------------------------------------------------------
; 2834 | if((nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag) || WORD_L
;     | (nTr_St_Info.nRxCode_NoNe_Flag))                                       
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L864
;*      Branch Occurs to L864 
        ldi       @_nTr_St_Info+67,r0
        bne       L865
;*      Branch Occurs to L865 
L864:        
        ldiu      255,r0
        tstb      @_nTr_St_Info+373,r0
        beq       L866
;*      Branch Occurs to L866 
L865:        
	.line	11
;----------------------------------------------------------------------
; 2836 | d_Rnd_Cnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Rnd_Cnt+0,r0      ; Unsigned
        sti       r0,@_d_Rnd_Cnt+0
	.line	12
;----------------------------------------------------------------------
; 2837 | nSccSendFlag.nRNDTXFlag = TRUE; //³ë¼± Ç¥½Ã±â µ¿ÀÛ Flag                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+10
L866:        
	.line	16
;----------------------------------------------------------------------
; 2841 | if(!(nTimeDataPro_100Cnt%5))    //500ms                                
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_100Cnt+0,r0
        ldiu      5,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L868
;*      Branch Occurs to L868 
	.line	18
;----------------------------------------------------------------------
; 2843 | nTimeFlag.nFlag_DI_INPUT = TRUE;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTimeFlag+0
L868:        
	.line	21
;----------------------------------------------------------------------
; 2846 | if(!(nTimeDataPro_100Cnt%20) && nTr_St_Info.nAutoDoorFlag && nTr_St_Inf
;     | o.nSimulationFlag)       //2ÃÊ ¸¶´Ù                                    
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_100Cnt+0,r0
        ldiu      20,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L872
;*      Branch Occurs to L872 
        ldi       @_nTr_St_Info+70,r0
        beq       L872
;*      Branch Occurs to L872 
        ldi       @_nTr_St_Info+67,r0
        beq       L872
;*      Branch Occurs to L872 
	.line	23
;----------------------------------------------------------------------
; 2848 | nTimeFlag.nFlag_Simu = TRUE;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTimeFlag+1
L872:        
	.line	26
;----------------------------------------------------------------------
; 2851 | }                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	2851,000000000h,0



	.global	_d_Text_Send_NumBuf
	.bss	_d_Text_Send_NumBuf,20
	.sym	_d_Text_Send_NumBuf,_d_Text_Send_NumBuf,60,2,640,,20

	.global	_mSelfTest_NG_CntBuf
	.bss	_mSelfTest_NG_CntBuf,60
	.sym	_mSelfTest_NG_CntBuf,_mSelfTest_NG_CntBuf,60,2,1920,,60

	.global	_d_DP_STOP_Buf
	.bss	_d_DP_STOP_Buf,20
	.sym	_d_DP_STOP_Buf,_d_DP_STOP_Buf,60,2,640,,20

	.global	_nIndex_Flag
	.bss	_nIndex_Flag,578
	.sym	_nIndex_Flag,_nIndex_Flag,8,2,18496,.fake70

	.global	_nTmsRxData
	.bss	_nTmsRxData,7
	.sym	_nTmsRxData,_nTmsRxData,8,2,224,.fake71

	.global	_nSelf_Test
	.bss	_nSelf_Test,187
	.sym	_nSelf_Test,_nSelf_Test,8,2,5984,.fake66

	.global	_d_DP_BUFF
	.bss	_d_DP_BUFF,20
	.sym	_d_DP_BUFF,_d_DP_BUFF,60,2,640,,20

	.global	_d_self_Buf
	.bss	_d_self_Buf,60
	.sym	_d_self_Buf,_d_self_Buf,60,2,1920,,60

	.global	_nTimeFlag
	.bss	_nTimeFlag,4
	.sym	_nTimeFlag,_nTimeFlag,8,2,128,.fake65

	.global	_Idc_Load
	.bss	_Idc_Load,6
	.sym	_Idc_Load,_Idc_Load,8,2,192,.fake77

	.global	_nDi_Check
	.bss	_nDi_Check,25
	.sym	_nDi_Check,_nDi_Check,8,2,800,.fake69

	.global	_nTr_St_Info
	.bss	_nTr_St_Info,378
	.sym	_nTr_St_Info,_nTr_St_Info,8,2,12096,.fake67

	.global	_TCMSSD
	.bss	_TCMSSD,20
	.sym	_TCMSSD,_TCMSSD,56,2,640,.fake74,20

	.global	_SanDisk_Vari
	.bss	_SanDisk_Vari,4
	.sym	_SanDisk_Vari,_SanDisk_Vari,8,2,128,.fake62

	.global	_nSccSendFlag
	.bss	_nSccSendFlag,12
	.sym	_nSccSendFlag,_nSccSendFlag,8,2,384,.fake73
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"---Self Test Start...",0
SL2:	.byte	"---DoorPoen Function-1 ST:[%02X]H-ST[%02X]H code Using Find"
	.byte	0
SL3:	.byte	"---all Text :[%d]",13,10,0
SL4:	.byte	"---DoorPoen Function-2 ST:[%02X]H-ST[%02X]H code Using Find"
	.byte	0
SL5:	.byte	"--IM Text[%d]  : Send Cnt[%d] -> Dist[%d]",13,10,0
SL6:	.byte	"--PR Text[%d]  : Send Cnt[%d] -> Dist[%d]",13,10,0
SL7:	.byte	"[NextSta]",0
SL8:	.byte	"[A)NextSta]",0
SL9:	.byte	"[DestSta]",0
SL10:	.byte	"[A)DestSta]",0
SL11:	.byte	"[StartSta]",0
SL12:	.byte	"[A)StartSta]",0
SL13:	.byte	"[H)Arrow]",0
SL14:	.byte	191,192,184,165,194,202,0
SL15:	.byte	191,222,194,202,0
SL16:	.byte	"  ",191,192," ",184,165," ",194,202,"  ",0
SL17:	.byte	"  ",191,222,"    ",194,202,"  ",0
SL18:	.byte	"[A)Arrow]",0
SL19:	.byte	"right",0
SL20:	.byte	"left",0
SL21:	.byte	"RIGHT",0
SL22:	.byte	"LEFT",0
SL23:	.byte	"[Arrow]",0
SL24:	.byte	"@[R)Arrow]",0
SL25:	.byte	"@[L)Arrow]",0
SL26:	.byte	"[J)Arrow]",0
SL27:	.byte	"[C)Arrow]",0
SL28:	.byte	"[STH",0
SL29:	.byte	"[STM",0
SL30:	.byte	"[ETH",0
SL31:	.byte	"[ETM",0
SL32:	.byte	"-TRNUM Chang Data Tx... : [%d]",0
SL33:	.byte	"-FDI Chang Data Tx... : [%02X]H",0
SL34:	.byte	"-Next St EVENT -> RX [%02X]H : Default[%02X]H",0
SL35:	.byte	13,10,0
SL36:	.byte	"-DIA FIND : [%d]",0
SL37:	.byte	"-Door Open St-St Code RX OK : Now[%02X]H : Next[%02X]H ",0
SL38:	.byte	"-Door Open St-St Code RX NG-NG : Now[%02X]H : Next[%02X]H ",0
SL39:	.byte	"-Master Key Off [%02X] ",13,10,0
SL40:	.byte	"#Self Test FINISH",0
SL41:	.byte	"#SEND FDI-TRNUM Tx Ok",0
SL42:	.byte	"#SEND FDI Tx Ok",0
SL43:	.byte	"#SEND TRNUM Tx Ok",0
SL44:	.byte	"#SEND CarNum Tx Ok",0
SL45:	.byte	"#SEND Text Clean OK",0
SL46:	.byte	"#SEND IM OK[%d] ",0
SL47:	.byte	"#SEND PR OK[%d] ",0
SL48:	.byte	"#RND TX DATA : StartST[%02X]H-NowST[%02X]H-NextST[%02X]H-De"
	.byte	"stST[%02X]H-Distan[%d]",0
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
	.bss	CL80,1
	.bss	CL81,1
	.bss	CL82,1
	.bss	CL83,1
	.bss	CL84,1
	.bss	CL85,1
	.bss	CL86,1
	.bss	CL87,1
	.bss	CL88,1
	.bss	CL89,1
	.bss	CL90,1
	.bss	CL91,1
	.bss	CL92,1
	.bss	CL93,1
	.bss	CL94,1
	.bss	CL95,1
	.bss	CL96,1
	.bss	CL97,1
	.bss	CL98,1
	.bss	CL99,1
	.bss	CL100,1
	.bss	CL101,1
	.bss	CL102,1
	.bss	CL103,1
	.bss	CL104,1
	.bss	CL105,1
	.bss	CL106,1
	.bss	CL107,1
	.bss	CL108,1
	.bss	CL109,1
	.bss	CL110,1
	.bss	CL111,1
	.bss	CL112,1
	.bss	CL113,1
	.bss	CL114,1
	.bss	CL115,1
	.bss	CL116,1
	.bss	CL117,1
	.bss	CL118,1
	.bss	CL119,1
	.bss	CL120,1
	.bss	CL121,1
	.bss	CL122,1

	.sect	".cinit"
	.field  	122,32
	.field  	CL1+0,32
	.field  	_nNvsram_Variable+341,32
	.field  	_nNvsram_Variable+261,32
	.field  	_nNvsram_Variable+5,32
	.field  	_nTr_St_Info+78,32
	.field  	_nTr_St_Info+93,32
	.field  	_nTr_St_Info+170,32
	.field  	_nTr_St_Info+185,32
	.field  	_nTr_St_Info+322,32
	.field  	_nTr_St_Info+216,32
	.field  	_nTr_St_Info+231,32
	.field  	_nTr_St_Info+337,32
	.field  	_nTr_St_Info+262,32
	.field  	_nTr_St_Info+277,32
	.field  	_nTr_St_Info+352,32
	.field  	_nTr_St_Info,32
	.field  	_nSelf_Test,32
	.field  	_nIndex_Flag,32
	.field  	_nSccSendFlag,32
	.field  	_mSelfTest_NG_CntBuf,32
	.field  	1245184,32
	.field  	_nTr_St_Info+5,32
	.field  	_StationName+1,32
	.field  	_StationName+16,32
	.word   	020000000H ; float   4.294967296000000e+09
	.word   	0FF000000H ; double  5.000000000000000e-01
	.word   	01F000000H ; float   2.147483648000000e+09
	.field  	_nSelf_Test+60,32
	.field  	_nSelf_Test+150,32
	.field  	_nSelf_Test+120,32
	.field  	SL1,32
	.field  	SL2,32
	.field  	SL3,32
	.field  	SL4,32
	.field  	_nIndex_Flag+550,32
	.field  	.init0$1,32
	.field  	.init1$2,32
	.field  	.init2$3,32
	.field  	.init3$4,32
	.field  	_nDisplayIndex+3,32
	.field  	_nDisplayIndex+4,32
	.field  	_d_Text_Send_NumBuf,32
	.field  	SL5,32
	.field  	SL6,32
	.field  	_m_ExperssTimeBuf,32
	.field  	SL7,32
	.field  	SL8,32
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
	.field  	_m_JapanStBuf_R,32
	.field  	_m_JapanStBuf_L,32
	.field  	SL27,32
	.field  	_m_ChangStBuf_R,32
	.field  	_m_ChangStBuf_L,32
	.field  	SL28,32
	.field  	SL29,32
	.field  	SL30,32
	.field  	SL31,32
	.field  	SL32,32
	.field  	SL33,32
	.field  	SL34,32
	.field  	SL35,32
	.field  	65535,32
	.field  	SL36,32
	.field  	SL37,32
	.field  	SL38,32
	.field  	SL39,32
	.field  	_DISPLAY_UNIT_ADD,32
	.field  	_nSelf_Test+12,32
	.field  	_nSelf_Test+72,32
	.field  	_DISPLAY_UNIT_ADD_NOR_PIB,32
	.field  	_nSelf_Test+24,32
	.field  	_DISPLAY_UNIT_ADD_NOR_RND,32
	.field  	_nSelf_Test+84,32
	.field  	_m_SCCPISTXBuff_Ach+3,32
	.field  	_TCMSSD,32
	.field  	SL40,32
	.field  	SL41,32
	.field  	SL42,32
	.field  	SL43,32
	.field  	SL44,32
	.field  	SL45,32
	.field  	SL46,32
	.field  	SL47,32
	.field  	SL48,32
	.field  	_d_self_Buf,32
	.field  	_TCMSSD+1,32
	.field  	_TCMSSD+2,32
	.field  	_TCMSSD+3,32
	.field  	_TCMSSD+4,32
	.field  	_TCMSSD+7,32
	.field  	_TCMSSD+8,32
	.field  	_TCMSSD+9,32
	.field  	2097152,32
	.field  	2097152,32
	.field  	2097152,32
	.field  	2097154,32
	.field  	2097152,32
	.field  	2097158,32
	.field  	_d_DP_STOP_Buf,32
	.field  	2097154,32
	.field  	8454144,32
	.field  	_nDi_Check+17,32
	.field  	_nDi_Check+15,32
	.field  	1249280,32
	.field  	_nDi_Check+22,32
	.field  	_nDi_Check+20,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_memset

	.global	_strcat

	.global	_strlen

	.global	_strncmp

	.global	_sprintf

	.global	_cal_CRC16

	.global	_Delay_SCC2_SendTo

	.global	_Delay_SCC3_SendTo

	.global	_SCC_TX_PROTOCOL

	.global	_SCC_TX_PROTOCOL_SELFTEST

	.global	_SCC_TX_PIB_TEXT

	.global	_SCC_RNDTX_PROTOCOL

	.global	_Sandisk_Init

	.global	_Seek_File

	.global	_Nvsram_IDC_UpLoad_Da

	.global	_NVSRAM_Display_Schedule

	.global	_NVSRAM_Find_IM

	.global	_NVSRAM_Find_PR

	.global	_NVSRAM_Get_StopP

	.global	_NVSRAM_Rd_StationName

	.global	_NVSRAM_Rd_StationName_Total

	.global	_StationCode_Definite

	.global	_NVSRAM_Find_RootAllNo

	.global	_NVSRAM_Comp_TrainNo

	.global	_NVSRAM_Find_Schedule_Cnt

	.global	_Nvsram_EditerData

	.global	_SCC1_INIT_A

	.global	_nLedDataLoad

	.global	_gp_WritingWord

	.global	_gp_WritingStr

	.global	_BCD_BIN

	.global	_NorFlashAllErase

	.global	_NorFlashWrite

	.global	_SCC2_INIT_A

	.global	_SCC2_INIT_B

	.global	_nStart_Address_Point

	.global	_nDisplayIndex

	.global	_StationName

	.global	_nNvsram_Variable

	.global	_glSectorStartOffset

	.global	_glTotalClusterCnt

	.global	_nSelect_Button

	.global	_m_SCCPISTXBuff_Ach
	.global	MOD_U30
	.global	_gp_WritingDWord
	.global	_memcpy
	.global	DIV_U30
	.global	_BIN_BCD
	.global	_calloc
	.global	_free
