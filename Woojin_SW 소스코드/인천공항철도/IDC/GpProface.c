#include "main.h"
#include "ALL_DEF.h"
#include "z85c30.h"
#include "Disk.h"
#include "LED_DOWNLOAD.h"
#include "GpProface.h"
#include "DataPro.h"


extern SCC_INIT_SHAPE SCC1_INIT_A;
extern UCHAR m_Scc1RXBuff_Ach_Back[SCC_BUFF_SIZE];
extern UCHAR m_Scc1TXBuff_Ach[SCC_BUFF_SIZE];

extern SCC_INIT_SHAPE SCC2_INIT_A;
extern SCC_INIT_SHAPE SCC2_INIT_B;

extern SCC_INIT_SHAPE SCC3_INIT_A;
extern UCHAR m_Scc3RXBuff_Ach[SCC_BUFF_SIZE];

SELETC_BUTTON nSelect_Button;

extern IDC_ROM_WRITE Idc_Load;
extern LED_DATA_DOWNLOAD nLedDataLoad;

extern TMS_RX_DATA_PR nTmsRxData;

extern INDEX_FLAG nIndex_Flag;

extern NVSRAM_VARIABLE nNvsram_Variable;	// 사용 되는 변수
extern SANDISK_VARI SanDisk_Vari;
extern TRAN_STATION_INFO nTr_St_Info;
extern STATION_NAME StationName[61];		// 한 다이아 에서 사용 가능한 역명.

extern SELF_TEST nSelf_Test;	//자기 진단 관련 구조체

extern DI_CHECK nDi_Check;

extern SCC_SEND_FLAG nSccSendFlag;

int m_StartScreenSetTime = 0;

extern UCHAR m_FileSize;

UCHAR nTimeGp_Cnt = 0;
UCHAR glTxBufA3[500];
UCHAR glTxA3_Len = 0;

/*****************************************************/
/*       Write Protocol at Gp Address                */
/*       Input:  Addr = 16bit Address                */
/*       value = 2byte Data (Interrupt)  	     */
/*****************************************************/
void gp_WritingDWord(WORD Addr,WORD nData)
{
	glTxBufA3[glTxA3_Len++] = STX;
	glTxBufA3[glTxA3_Len++] = 'W';
	glTxBufA3[glTxA3_Len++] = (Addr>>8)&0xff;
	glTxBufA3[glTxA3_Len++] = Addr&0xff;
	glTxBufA3[glTxA3_Len++] = 0x00;
	glTxBufA3[glTxA3_Len++] = 0x02;
	glTxBufA3[glTxA3_Len++] = (nData >> 24) & 0xff;
	glTxBufA3[glTxA3_Len++] = (nData >> 16) & 0xff;
	glTxBufA3[glTxA3_Len++] = (nData >> 8) & 0xff;
	glTxBufA3[glTxA3_Len++] = nData&0xff;
}
void gp_WritingWord(WORD Addr,WORD nData)
{	
	glTxBufA3[glTxA3_Len++] = STX;
	glTxBufA3[glTxA3_Len++] = 'W';
	glTxBufA3[glTxA3_Len++] = (Addr>>8)&0xff;
	glTxBufA3[glTxA3_Len++] = Addr&0xff;
	glTxBufA3[glTxA3_Len++] = 0x00;
	glTxBufA3[glTxA3_Len++] = 0x01;
	glTxBufA3[glTxA3_Len++] = (nData >> 8) & 0xff;
	glTxBufA3[glTxA3_Len++] = nData&0xff;
}

void gp_ReadingWord(WORD Addr,WORD nCnt)
{	
	glTxBufA3[glTxA3_Len++] = STX;
	glTxBufA3[glTxA3_Len++] = 'R';
	glTxBufA3[glTxA3_Len++] = (Addr>>8)&0xff;
	glTxBufA3[glTxA3_Len++] = Addr&0xff;
	glTxBufA3[glTxA3_Len++] = (nCnt >> 8) & 0xff;
	glTxBufA3[glTxA3_Len++] = nCnt&0xff;
}

void gp_WritingStr(WORD Addr,WORD Len, UCHAR *pData)
{	
	int i;
	
	glTxBufA3[glTxA3_Len++] = STX;
	glTxBufA3[glTxA3_Len++] = 'W';
	glTxBufA3[glTxA3_Len++] = (Addr>>8)&0xff;
	glTxBufA3[glTxA3_Len++] = Addr&0xff;
	glTxBufA3[glTxA3_Len++] = (Len>>8)&0xff;
	glTxBufA3[glTxA3_Len++] = Len&0xff;
	
	for(i=0;i<Len*2;i++)
	{
		glTxBufA3[glTxA3_Len++] = WORD_L(pData[i]);
	}	
}

/******************************************************
	Name  : Hex2ASCIIW(WORD nInput, UCHAR *pOutput)
	Input : BCD 4digit Train No
	Output: pOutput (Buffer)
	Description:

	열차 번호를 얻기 위한 작업 (Ascii 코드로 인식)
	(0x1234 -> 0x31,0x32,0x33,0x34)
*******************************************************/
UCHAR Hex2ASCIIW(WORD nInput, UCHAR *pOutput)
{
	pOutput[0] = 0x30;
	pOutput[1] = ((nInput>>12)&0xf)%10 +0x30; 
	pOutput[2] = ((nInput>>8 )&0xf)%10 +0x30;
	pOutput[3] = ((nInput>>4 )&0xf)%10 +0x30;
	pOutput[4] = (nInput&0xf)%10 +0x30;
}

WORD BCD_BIN(WORD nInput)
{
	WORD sNum = 0;

	sNum += ((nInput>>12)&0xf) * 1000;
	sNum += ((nInput>>8)&0xf) * 100;
	sNum += ((nInput>>4)&0xf) * 10;
	sNum += ((nInput)&0xf) * 1;
	return sNum;
}

WORD BIN_BCD(WORD nInput)
{
	WORD sNum = 0;

	sNum = (((nInput/1000)%10)<<12)&0xf000;
	sNum |= (((nInput/100)%10)<<8)&0xf00;
	sNum |= (((nInput/10)%10)<<4)&0xf0;
	sNum |= ((nInput%10)&0xf);
	return sNum;

}
/****************** GP초기화 함수   *****************
/*****************************************************/
void GpProface_Init()
{
	nSelect_Button.nGPTranNumInput.nFlag = 0;
	nSelect_Button.nScreenRxTime = 100;
	nSelect_Button.nScreenSafe = 600;
	nSelect_Button.nScreenSetNum = 1;
	nSelect_Button.nScreen_Send_Delay_Time = 0;

	//시험 화면 버튼 초기화.
	nTr_St_Info.nAutoDoorFlag = 0;
	nTr_St_Info.nSimulationFlag = 0;
	nTr_St_Info.nDISFPatFlag  = 0;
	nTr_St_Info.nPIBPatFlag = 0;
	gp_WritingWord(0x41,0);	

	nTr_St_Info.nOnlyDestSendFlag = 1;//2011_11_16 nOnlyDestSendFlag

	gpTURNOFFINIT;

	//gpSTATE; //초기에 상태 화면을 표출

}
/******** Main 문에서 처리되는 내용.  *****************
/*****************************************************/
int m_StScreen = 0;
void Gp_Pro_Main()
{
	int sGpTxLen = 0;

	if((m_StartScreenSetTime >= 25) && !m_StScreen)
	{

		if(!WORD_L(SCC1_INIT_A.RxOKCnt))
		{
			if(m_StartScreenSetTime == 25)
			{
				m_StartScreenSetTime = 0;

				nSelect_Button.nScreenSetNum = 14;
				gpExpNomScreenSet;

				Delay_SCC3_SendTo(glTxBufA3,glTxA3_Len,SCC_A_CHANNEL,2);
			}
		}
		else if(WORD_L(SCC1_INIT_A.RxOKCnt))
		{
			nSelect_Button.nScreenSetNum = 1;
			gpSTATE;

			m_StScreen++;

			Delay_SCC3_SendTo(glTxBufA3,glTxA3_Len,SCC_A_CHANNEL,2);

		} //초기에 상태 화면을 표출 }

		m_StartScreenSetTime++;

	}


	if(m_StartScreenSetTime>25 || m_StScreen)
	{
		//GP 화면에 모든 통신을 여기서 일괄 적으로 보낸다.
		if(!(nTimeGp_Cnt%100) && !SCC3_INIT_A.TxPos && !SCC3_INIT_A.RxPos)
		{
			if(glTxA3_Len)
			{
				sGpTxLen = glTxA3_Len;
				glTxA3_Len = 0;
				Delay_SCC3_SendTo(glTxBufA3,sGpTxLen,SCC_A_CHANNEL,2);
			}
		}

		//화면에 상태 정보를 일적 시간마다 체크 해서 갱신 한다.
		if(!(nTimeGp_Cnt%300) && !(nSelect_Button.nScreenRxTime) && SCC2_INIT_A.TxOK)
		{
			nSelect_Button.nScreenRxTime = 100;
			GP_SEND_SCREEN(nSelect_Button.nScreenSetNum);
		}
	}
	
}
/****************** GP   함수 내용   *****************
/*****************************************************/
UCHAR d_TranNum = 0;
void Gp_Receive(UCHAR *pGpRXData)	
{
	if(WORD_L(pGpRXData[1]) == 0x41)	//GP 에서 열차 변호를 입력 한다.
	{
		nSelect_Button.nScreenRxTime = 100; 

		//nSelect_Button.nGPTranNumInput.nNum = MAKE_WORD(pGpRXData[2],pGpRXData[3]);

		d_TranNum = nSelect_Button.nGPTranNumInput.nNum = BCD_BIN(MAKE_WORD(pGpRXData[2],pGpRXData[3]));


		if(DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum) != DWORD_L(nSelect_Button.nGPTranNumInput.nNum))
		{
			if(DWORD_L(nSelect_Button.nGPTranNumInput.nNum))
			{
				nSccSendFlag.nTranNum = 2; //열번이 변경 되면 열번을 변경한다.

				nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput.nNum;

				nSelect_Button.nGPTranNumInput.nFlag = TRUE;
			}
			else{ //열번 입력을 "0"으로 했을때.
				memset(nTr_St_Info.nGpStName.nNow,0x20,15);
				memset(nTr_St_Info.nGpStName.nNext,0x20,15);
				memset(nTr_St_Info.nGpStName.nDest,0x20,15);
				gpSETERR;
			}
		}
		else if(DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum) == DWORD_L(nSelect_Button.nGPTranNumInput.nNum))
		{
			gpSETCLR;
		}

	}			
	else if(pGpRXData[1] == 0x49)
	{

		nSelect_Button.nScreenRxTime = 100; 
		GP_STATE_SCREEN(WORD_L(pGpRXData[3]));		//상태화면 처리부분.
		GP_MANUAL_SCREEN(WORD_L(pGpRXData[3]));		//수동 설정 처리 부분.
		GP_MENU_SCREEN(WORD_L(pGpRXData[3]));		//메뮤 화면 이동
		GP_DEST_SCREEN(WORD_L(pGpRXData[3]));		//행선설정
		GP_SIMU_SCREEN(WORD_L(pGpRXData[3]));		//시험 화면 처리 부분.
		GP_POINT_SCREEN(WORD_L(pGpRXData[3]));		//지점 보정 화면 처리
		GP_SELFTEST_SCREEN(WORD_L(pGpRXData[3]));	//자기진단.
		GP_TRAIN_SCREEN(WORD_L(pGpRXData[3]));		//열차번호 입력 화면
		GP_CLEAN(WORD_L(pGpRXData[3]));				//무표시 전송.
		GP_DISPLAY_SAFETY(WORD_L(pGpRXData[3]));	//화면 보호 기능.
		GP_SDR_SCREEN(WORD_L(pGpRXData[3]));		//디버깅 화면
		GP_IDC_SW_UPLOAD(WORD_L(pGpRXData[3]));		//SW UPLOAD 화면
		GP_SFDD_SW_UPLOAD(WORD_L(pGpRXData[3]));	//LED 표시기 업로드 화면.
		GP_SFDD_DATA_UPLOAD(WORD_L(pGpRXData[3]));  //데이타 다운로드 화면
		GP_START_SET(WORD_L(pGpRXData[3]));
		GP_AUTO_MANU_SET(WORD_L(pGpRXData[3]));

	}
	
	nSelect_Button.nScreenSafe = 300;	//화면 보호 기능
} 

/****************************************************** 
		지속 적으로 화면 정보를 갱신한다. (300ms 마다 동작)
/*****************************************************/
UCHAR d_NowStPoint = 0;
UCHAR d_abab = 0;

UCHAR d_exCnt = 0;
UCHAR d_NorCnt = 0;
void GP_SEND_SCREEN(UCHAR nScreenNum)
{
	UCHAR sTemp;
	UCHAR sCharBuf[10];
	UCHAR glVer[15];
	UCHAR sSelfTestBuf[60];
	UCHAR sClean_Buf[20];
	UCHAR sDowRep[15];
	
	switch(WORD_L(nScreenNum))
	{
		case 1:	//상태 화면

			if(nDi_Check.nHcr.nFlag) {gpHCR;}
			else if(nDi_Check.nIcr.nFlag){gpICR;}
			else if(nDi_Check.nTcr.nFlag){gpTCR;}
			else {gpDI_CHECK;}

			if(SanDisk_Vari.nDiskInputCheckFlag){gpCARDOK;}
			else {gpCARDERR; }

			if(WORD_L(nTr_St_Info.nTcmsRxNGCnt)>5) 
			{
				nTr_St_Info.nTcmsAutoDriverFlag = FALSE; 
				gpCOMERR; 
			} //TCMS 통신 화면 표출 부분.
			else { gpCOMCLR; }

			if(!nSelf_Test.nSELF_ICR_SELECT) {gpNorClr; gpExp;}  //직-일반
			else {gpExpClr; gpNor; }

			if(WORD_L(nTr_St_Info.nSimulationFlag)){
				gpDISTANCE(nTr_St_Info.nDistance);
			}
			else{
				gpDISTANCE(DWORD_L(nTmsRxData.nDist));
			}

			
			if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) && !WORD_L(nTr_St_Info.nAutoManuFlag)) {d_exCnt++; gpManu_OFF;gpAuto_ON;} //수동 자동
			else  {d_NorCnt++;gpAuto_OFF; gpManu_ON;}
			

			gp_WritingWord(0x64,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));


			memset(sClean_Buf,0x20,20);


			if(nDi_Check.nDoor.nFlag)//출입문 처리.
			{
				gpSTATEOPEN;
				gpNOWSTATION;
				if((nTr_St_Info.nNow.nCode != 0xFF) && (nTr_St_Info.nStopPatNum))
				{
					NVSRAM_Rd_StationName_Code(nTr_St_Info.nNow.nCode,&nTr_St_Info.nNow.nEnNameBuf[0],&nTr_St_Info.nGpStName.nNow[0]);
					gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNow);	// 현재역
				}
				else
				{
					gp_WritingStr(0x82,5,sClean_Buf);	// 현재역
				}
			}	
			else 
			{
				gpSTATECLOSE ;
				gpAFTERSTATION; 
				if((nTr_St_Info.nNext.nCode != 0xFF)&&(nTr_St_Info.nStopPatNum))
				{
					NVSRAM_Rd_StationName_Code(nTr_St_Info.nNext.nCode,&nTr_St_Info.nNext.nEnNameBuf[0],&nTr_St_Info.nGpStName.nNext[0]);
					gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNext);	// 다음역 표출
				}
				else
				{
					gp_WritingStr(0x82,5,sClean_Buf);	// 현재역
				}
				
			}

			//2011_11_16 nOnlyDestSendFlag
			if((nTr_St_Info.nOnlyDestSendFlag != 0xFF)&&(nTr_St_Info.nStopPatNum))
			{
				gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);	// 행선 표출
			}
			else
			{
				gp_WritingStr(0x96,5,sClean_Buf);	// 행선 표출
			}

			
			glVer[0] = BYTE_H(nTmsRxData.nDataDefin)%10+0x30; 
			glVer[1] = BYTE_L(nTmsRxData.nDataDefin)%10+0x30;
			glVer[2] = ((ROM_VER /100)+0x30);
			glVer[3] = (ROM_VER %100)/10+0x30; 
			glVer[4] = '.'; 
			glVer[5] = (ROM_VER %100)%10+0x30; 
			
			sTemp = MAKE_WORD(WORD_L(NVSRAM(m_FileSize-4)),WORD_L(NVSRAM(m_FileSize-3)));

			glVer[6] = DP_ConvHex2Asc(BYTE_H(WORD_H(sTemp)));
			glVer[7] = DP_ConvHex2Asc(BYTE_L(WORD_H(sTemp)));
			glVer[8] = '.'; 
			glVer[9] =  DP_ConvHex2Asc(BYTE_H(WORD_L(sTemp)));
			glVer[10] = DP_ConvHex2Asc(BYTE_L(WORD_L(sTemp)));

			gp_WritingStr(0xc8,6,glVer);
			

			break;
	
		case 2:	//수동 설정.

			gp_WritingWord(0x64,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));

			//2011_11_16 nOnlyDestSendFlag
			if((nTr_St_Info.nOnlyDestSendFlag != 0xFF)&&(nTr_St_Info.nStopPatNum))
			{
				gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);	// 행선 표출
			}
			else
			{
				gp_WritingStr(0x96,5,sClean_Buf);	// 행선 표출
			}

			if(nTr_St_Info.nDistance > 100)	
			{
				gpAFTERSTATION; 
				gpMANUINIT;
			}
			else 
			{ 
				gpNOWSTATION;
				gpMANUINIT;
			}

			nSelect_Button.nScreenSetNum = 0;

			break;
		case 3:	//자기 진다.

			if(WORD_L(nTr_St_Info.nSelf_Test_Flag))	//자기진단 진행중
			{
				gpSDRCHK;
			}
			else	//자기진단 결과 표출.
			{
				gpSETCLR;
				gpROOTEN;

				memset(sSelfTestBuf,0x01,60);

				if(!nSelf_Test.nSELF_ICR_SELECT)
				{
					memcpy(sSelfTestBuf,nSelf_Test.nSELF_RXDATA_Buf,DISPLAY_UNIT);
					SDR_Routine_Complete(sSelfTestBuf,DISPLAY_UNIT,TRUE);	// GP 화면에 0/X를 표출한다.
				}
				else if(nSelf_Test.nSELF_ICR_SELECT)
				{
					memcpy(sSelfTestBuf,nSelf_Test.nSELF_RXDATA_Buf,DISPLAY_STANDARD_UNIT);
					SDR_Routine_Complete(sSelfTestBuf,DISPLAY_STANDARD_UNIT,TRUE);	// GP 화면에 0/X를 표출한다.


				}
				
				nSelect_Button.nScreenSetNum  = 0;
			}

			break;
		case 4:	//시험 화면.

			gpSPEED(nTr_St_Info.nSpeed);
			gpDISTANCE(nTr_St_Info.nDistance);

			if(nTr_St_Info.nDoor){gpDOOROPEN;}
			else {gpDOORCLOSE;}

			break;
		case 5:	//지점 보정.

			if(nTr_St_Info.nStopPatNum)
			{
				if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag)
				{
					if(nTr_St_Info.nDoor && (nTr_St_Info.nDoorOPenCnt == 1)) // 오픈
					{
						gpSPOT;
						GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);
					}
					else if(!nTr_St_Info.nDoor) //close
					{
						gpSPOT2;
						GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);
					}
				}
				else
				{
					if(nDi_Check.nDoor.nFlag) // 오픈
					{
						gpSPOT;
						GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);
					}
					else if(!nDi_Check.nDoor.nFlag) //close
					{
						gpSPOT2;
						GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);
					}

				}
				d_NowStPoint = nTr_St_Info.nStation_PointCnt;

				//gpDISTANCE(nTr_St_Info.nDistance); //거리 정보를 갱신한다.
				if(nTr_St_Info.nSimulationFlag){
					gpDISTANCE(nTr_St_Info.nDistance);
				}
				else{
					gpDISTANCE(nTmsRxData.nDist);
				}
			}

			break;
		case 6: //행선 설정 화면.
			gpROOTEN;
			break;
		case 7:	//열번 설정 화면.

			gp_WritingWord(0x64,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));

			gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNext);	// 현재역
			gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);	// 행선 표출

			break;
		case 8:	//디버깅 화면

			if(SCC1_INIT_A.TxOK )
			{
				nSelect_Button.nScreen_Send_Delay_Time++;
				GP_SDR_PRINT(m_Scc1RXBuff_Ach_Back,m_Scc1TXBuff_Ach,nSelect_Button.nScreen_Send_Delay_Time);
			}
			
			break;
		case 9:

			gpROOTDIS;

			gp_WritingStr(555,5,(UCHAR*)"UpLoading!");

			gp_WritingWord(600,2086);

			memset(sClean_Buf,0x20,20);

			if(WORD_L(Idc_Load.nErCnt) && !WORD_L(Idc_Load.nDataNvsrLoad ))
			{
				sTemp = (WORD_L(Idc_Load.nErCnt)*100)/50;
				

				sCharBuf[0] = sTemp/100 +0x30;
				sCharBuf[1] = sTemp/10 +0x30;
				sCharBuf[2] = sTemp%10 +0x30;
				sCharBuf[3] = 0x25;

				gp_WritingWord(300,sTemp);

				gp_WritingStr(540,2,sCharBuf);
				gp_WritingStr(545,2,sClean_Buf);

			}
			else if(DWORD_MASKING(Idc_Load.nDataNvsrLoad))
			{
				sTemp = (DWORD_MASKING(Idc_Load.nRomWriteCnt)*100)/DWORD_MASKING(Idc_Load.nDataNvsrLoad);

				sCharBuf[0] = sTemp/100 +0x30;
				sCharBuf[1] = sTemp/10 +0x30;
				sCharBuf[2] = sTemp%10 +0x30;
				sCharBuf[3] = 0x25;

				gp_WritingWord(300,100);
				gp_WritingStr(540,2,(UCHAR*)"100%");

				gp_WritingWord(301,sTemp);
				gp_WritingStr(545,2,sCharBuf);

			}

			if(Idc_Load.nKO_Flag)
			{

				gp_WritingWord(301,100);
				gp_WritingStr(545,2,(UCHAR*)"100%");

				gp_WritingStr(555,5,sClean_Buf);
				gp_WritingStr(550,5,(UCHAR*)"OK_Finish!");
				

				nSelect_Button.nScreenSetNum = 0;

				gpBuzzerOff;

				gpROOTEN;
			}

			break;
		case 11:		// 다운로드 상태 확인 버튼
			if(!nLedDataLoad.nSelfTestFlag)
			{
				nSelect_Button.nScreenSetNum = 0;

				gpROOTEN;

				memset(sSelfTestBuf,0x01,nSelf_Test.nSELF_DownLoad_UnitCnt);
				memcpy(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSELF_DownLoad_UnitCnt);
				SDR_Routine_Complete(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_UnitCnt,TRUE);	// GP 화면에 0/X를 표출한다.

				if(nLedDataLoad.nSDR_RxCnt)// 수신 카운터가 있으면 
				{
					gpLED_UPLOAD_ERBUT;	// 상태 확인이 끝나면 삭제 버튼을 보여준다.
					gpLED_UPLOAD_ERBUT_SF_ON;

					gp_WritingStr(585,8,(UCHAR *)"UNIT FiND -> OK");
				}
				else	//수신 카운터가 없으면.
				{
					gp_WritingStr(585,8,(UCHAR *)"UNIT FiND -> NG");

				}

				nLedDataLoad.nSDR_RxCnt = 0;	//수신 카운터.
			}
			break;
		case 12:	//다운로드 메모리 삭제 결과 

				if(nLedDataLoad.nErassFlag.nST_2)
				{
					sTemp = (DWORD_L(nLedDataLoad.nSDR_RxCnt)*100)/DWORD_L(nLedDataLoad.nErassFlag.nTXCnt);
					sCharBuf[0] = sTemp/100 +0x30;
					sCharBuf[1] = sTemp/10 +0x30;
					sCharBuf[2] = sTemp%10 +0x30;
					sCharBuf[3] = 0x25;

					gp_WritingWord(300,sTemp);
					gp_WritingStr(540,2,sCharBuf);

					gp_WritingWord(301,000);
					gp_WritingStr(545,2,(UCHAR*)"000%");
					
				}
				else
				{
					nSelect_Button.nScreenSetNum = 0;
					if(WORD_L(nLedDataLoad.nErassFlag.nRepCnt))
					{
						memcpy(sDowRep,(UCHAR *)"Repet Num -> ",13);
						sDowRep[13] = 0x30;
						sDowRep[14] = WORD_L(nLedDataLoad.nErassFlag.nRepCnt)%10 + 0x30;
					
						gp_WritingStr(595,8,sDowRep);
					}
					else
					{
						if(!nLedDataLoad.nErassFlag.nErassOk)		{ gp_WritingStr(595,8,(UCHAR *)"ERASER    -> NG");}
						else if(nLedDataLoad.nErassFlag.nErassOk)	
						{
							gp_WritingStr(595,8,(UCHAR *)"ERASS     -> OK");
							gp_WritingWord(300,100);
							gp_WritingStr(540,2,(UCHAR*)"100%");

							gpLED_UPLOAD_DABUT;
							gpLED_UPLOAD_DABUT_SF_ON;

							gpLED_UPLOAD_BUTOFF;

						}	

						gpROOTEN;

					}

				}

			break;
		case 13:	//다운로드 데이타 다운로드
			if(nLedDataLoad.nDataSize)
			{

				sTemp = (DWORD_MASKING(nLedDataLoad.nDataTxCnt)*100)/(DWORD_MASKING(nLedDataLoad.nDataSize)/128) ;
				sCharBuf[0] = sTemp/100 +0x30;
				sCharBuf[1] = sTemp/10 +0x30;
				sCharBuf[2] = sTemp%10 +0x30;
				sCharBuf[3] = 0x25;

				gp_WritingWord(300,100);
				gp_WritingStr(540,2,(UCHAR*)"100%");

				gp_WritingWord(301,sTemp);
				gp_WritingStr(545,2,sCharBuf);

			}
			else if(!nLedDataLoad.nDataSize)
			{
				
				gp_WritingWord(301,100);
				gp_WritingStr(545,2,(UCHAR*)"100%");

				gp_WritingStr(605,8,(UCHAR *)"DATA DOWN -> OK");

				memset(sSelfTestBuf,0x01,60);

				SDR_Routine_Complete(sSelfTestBuf,DISPLAY_UNIT,FALSE);//공백 표출한다.

				if(nLedDataLoad.nDataSDRFlag)
				{
					gp_WritingStr(615,8,(UCHAR *)"DATA SDR CHACK.");
				}
				else if(!nLedDataLoad.nDataSDRFlag)
				{
					memcpy(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSELF_DownLoad_UnitCnt);
					SDR_Routine_Complete(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_UnitCnt,TRUE);	// GP 화면에 0/X를 표출한다
					nSelect_Button.nScreenSetNum = 0;
				}
			}
			break;
		case 14: //

			break;

	}

}
/*************************************************** 
		화면 보호 기능.
*****************************************************/
void GP_DISPLAY_SAFETY(UCHAR nScreenInf)
{
	switch(nScreenInf)
	{
	case 0x39: 
		gpTURNOFF;
		break;
	}
}

/*************************************************** 
		무표시 전송  
*****************************************************/
void GP_CLEAN(UCHAR nScreenInf)
{
	
	switch(nScreenInf)
	{
	case 0x4B:

		

		nTr_St_Info.nClean_Flag = NOT(nTr_St_Info.nClean_Flag);	// 차내패턴시험	

		if(nTr_St_Info.nClean_Flag)
		{
			nSccSendFlag.nClean = 3;

			gp_WritingWord(100,1);
		}
		else
		{
			gp_WritingWord(100,0);
		}


		
		break;
	}

}
/*************************************************** 
		상태 화면 처리 부분.   
*****************************************************/
void GP_STATE_SCREEN(UCHAR nScreenInf)
{
	UCHAR sClean_Buf[30];
	switch(nScreenInf)
	{
	case 0x33: //상태 화면
		memset(sClean_Buf,0x20,30);
		gp_WritingStr(300,15,sClean_Buf);

		nLedDataLoad.nSWScreenSelt = 0;
		nLedDataLoad.nDATAScreenSelt = 0;


		nSelect_Button.nScreenSetNum = 1;
		nTr_St_Info.nSinmuScrCnt = 0;
		nTr_St_Info.nAutoManuFlagCnt = 0;
		gpSTATE;
		break;
	}
}
/****************************************************
		수동 설정 처리 부분   
/*****************************************************/
void GP_MANUAL_SCREEN(UCHAR nScreenInf)
{
	UCHAR sManual_Buf[40];
	UCHAR sManual_ClenBuf[30];
	memset(sManual_Buf,0x20,40);
	memset(sManual_ClenBuf,0x20,30);

	memcpy(sManual_Buf,(UCHAR *)"The Next Station ",17);

	memcpy(&sManual_Buf[17],nTr_St_Info.nGpStName.nNext,15);
		
	switch(nScreenInf)
	{
	case 0x3C:	// 수동 설정.

		gp_WritingStr(300,15,sManual_ClenBuf);
		gp_WritingStr(330,15,sManual_ClenBuf);

		nSelect_Button.nScreenSetNum = 2;
		
		nTr_St_Info.nSinmuScrCnt = 0;
		nTr_St_Info.nAutoManuFlagCnt = 0;
		gpMANU;
		gpMANUINIT; 
		gpMANUNOBLK;
				
		break;
	case 0x4E:  //문장 표출 정보

		gp_WritingStr(330,15,sManual_ClenBuf);
		gp_WritingStr(300,15,sManual_Buf);
		
		gpNOWBLK;
		gpMANUOKBLK;
		break;
	case 0x56: 
		gp_WritingStr(300,15,sManual_ClenBuf);
		gp_WritingStr(330,15,sManual_Buf);
		
		gpMANUNOBLK;
		gpMANUINIT; 

		nSelect_Button.nScreenSetNum = 2;

		nSccSendFlag.nManualSet = 2;
		
		break;
	}
}
/*****************************************************
		메뉴 이동 버튼   
*****************************************************/
void GP_MENU_SCREEN(UCHAR nScreenInf)
{
	UCHAR sSimuFlag_Cnt = 0;

	switch(nScreenInf)
	{
	case 0x32://메뉴 화면
		nSelect_Button.nScreenSetNum = 0;
		gpMENU;

		sSimuFlag_Cnt = nTr_St_Info.nClean_Flag ? 0x01 : 0x00;

		gp_WritingWord(100,sSimuFlag_Cnt);

		if(WORD_L(nTr_St_Info.nAutoManuFlag))
		{
			gp_WritingWord(150,1);
		}
		else{gp_WritingWord(150,0); }

		
		break;
	}
}
/*****************************************************
		디버깅 화면 이동
*****************************************************/
void GP_SDR_SCREEN(UCHAR nScreenInf)
{
	UCHAR sClBuf[100];

	switch(nScreenInf)
	{
	case 114://디버깅 화면 이동
		nSelect_Button.nScreenSetNum = 8;
		nSelect_Button.nScreenRxTime = 1000;

		gpSDR_SCREEN;

		memset(sClBuf,0x00,100);

		gp_WritingStr(400,40,sClBuf);
		gp_WritingStr(500,40,sClBuf);
		gp_WritingStr(600,10,sClBuf);

		break;
	}
}

void GP_SDR_PRINT(UCHAR *pDataTcms,UCHAR *pDataIcd,UCHAR nSend_ID)
{
	int i;
	UCHAR sGpSdrBuf[100];

	if(WORD_L(nTr_St_Info.nTcmsRxNGCnt)<=5)
	{
		if(nSend_ID&0x01)//부하량 감소
		{

			for(i=0;i< WORD_L(SCC1_INIT_A.RxLen-2);i++)
			{
				sGpSdrBuf[i*3] =   BYTE_H(pDataTcms[i]) >= 0x0A ? (BYTE_H(pDataTcms[i])-10) + 0x41 :   BYTE_H(pDataTcms[i])+0x30;
				sGpSdrBuf[i*3+1] = BYTE_L(pDataTcms[i]) >= 0x0A ? (BYTE_L(pDataTcms[i])-10) + 0x41 :   BYTE_L(pDataTcms[i])+0x30;

				sGpSdrBuf[i*3+2] = 0x2D;
			}
			sGpSdrBuf[i*3+2] = 0x20;

			gp_WritingStr(400,((SCC1_INIT_A.RxLen-2)*3)/2,sGpSdrBuf);
		}
		else
		{

			for(i=0;i<= WORD_L(SCC1_INIT_A.TxLen);i++)
			{
				sGpSdrBuf[i*3] =   BYTE_H(pDataIcd[i]) >= 0x0A ? (BYTE_H(pDataIcd[i])-10) + 0x41 :   BYTE_H(pDataIcd[i])+0x30;
				sGpSdrBuf[i*3+1] = BYTE_L(pDataIcd[i]) >= 0x0A ? (BYTE_L(pDataIcd[i])-10) + 0x41 :   BYTE_L(pDataIcd[i])+0x30;

				sGpSdrBuf[i*3+2] = 0x2D;
			}
			sGpSdrBuf[i*3+2] = 0x20;

			gp_WritingStr(500,(SCC1_INIT_A.TxLen*3)/2,sGpSdrBuf);
		}
	}
	else
	{
		gp_WritingStr(600,9,(UCHAR *)"* TMS InterFace NG");
	}

}
/*****************************************************
            행선 설정 처리 부분   
*****************************************************/
void GP_DEST_SCREEN(UCHAR nScreenInf)
{
	UCHAR i;
	UCHAR sScreenNumBuf[5];
	UCHAR sDestNum = 0,sDestNum1 = 0;
	UCHAR sTreanNumSet = 0;
	UCHAR sTreanSetDest = 0;
	UCHAR sDestTxBuf[20];
	
	switch(WORD_L(nScreenInf))
	{
	case 0x38://행선 설정 화면 
		nSelect_Button.nScreenSetNum = 6;
		nTr_St_Info.nSinmuScrCnt = 0;
		nTr_St_Info.nAutoManuFlagCnt = 0;
		gpROOT;
		gpROOTINIT; 
		gpROOTEN; 
		gpROOTNOBLK;

		for(i=0;i<100;i++) // 100 = 행선 설정에서 설정될수 있는 전체 역명
		{
			if(WORD_L(nNvsram_Variable.nDestCodeList[i]) == WORD_L(nTr_St_Info.nOnlyDestSendFlag))//2011_11_16 nOnlyDestSendFlag
			{
				sTreanNumSet = i;
				break;
			}
		}

		nNvsram_Variable.nScreenNum = ((sTreanNumSet)/10);
		sTreanSetDest = (sTreanNumSet%10);

		NVSRAM_Find_StationRoot(nNvsram_Variable.nScreenNum,10);	//역명을 불러 오는 부분.	
		for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable.nDestScreen[i].nStationName);	

		gp_WritingWord(0x3D,(0x01<<((sTreanSetDest)%10))); // 선택된 데이터 검정색으로 고정 

		sScreenNumBuf[0] = (((nNvsram_Variable.nScreenNum+1)/10)+0x30);
		sScreenNumBuf[1] = (((nNvsram_Variable.nScreenNum+1)%10)+0x30);
		gp_WritingStr(440,1,sScreenNumBuf);

		//gpROOTWHITE;

		break;
	case 0x6E:	//이전 화면 버튼.

		if(nNvsram_Variable.nScreenNum)
		{
			nNvsram_Variable.nScreenNum--;

			NVSRAM_Find_StationRoot(nNvsram_Variable.nScreenNum,10);	//역명을 불러 오는 부분.	
			for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable.nDestScreen[i].nStationName);	

			sScreenNumBuf[0] = (((nNvsram_Variable.nScreenNum+1)/10)+0x30);
			sScreenNumBuf[1] = (((nNvsram_Variable.nScreenNum+1)%10)+0x30);
			gp_WritingStr(440,1,sScreenNumBuf);

			gpROOTWHITE;
			gpROOTINIT; 
			gpROOTDIS;

		}

		break;
	case 0x6F:	//다음 화면 버튼.

		if(WORD_L(nNvsram_Variable.nScreenNum)<9)
		{
			if((WORD_L(SanDisk_Vari.nTotalDestCnt)/10)+1 > WORD_L(nNvsram_Variable.nScreenNum+1 ))
			{
				nNvsram_Variable.nScreenNum++;
				NVSRAM_Find_StationRoot(nNvsram_Variable.nScreenNum,10);	//역명을 불러 오는 부분.	
				for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable.nDestScreen[i].nStationName);	

				sScreenNumBuf[0] = (((nNvsram_Variable.nScreenNum+1)/10)+0x30);
				sScreenNumBuf[1] = (((nNvsram_Variable.nScreenNum+1)%10)+0x30);
				gp_WritingStr(440,1,sScreenNumBuf);

				gpROOTWHITE;
				gpROOTINIT; 
				gpROOTDIS;
			}
		}

	break;
	case 0x64: gpROOT1BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=1; break;	// 행선설정1 (T Tag 설정)
	case 0x65: gpROOT2BLK;	gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=2; break;	// 행선설정2 (T Tag 설정)
	case 0x66: gpROOT3BLK;	gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=3; break;	// 행선설정3 (T Tag 설정)
	case 0x67: gpROOT4BLK;	gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=4; break;	// 행선설정4 (T Tag 설정)
	case 0x68: gpROOT5BLK;	gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=5; break;	// 행선설정5 (T Tag 설정)
	case 0x69: gpROOT6BLK;	gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=6; break;	// 행선설정6 (T Tag 설정)
	case 0x6a: gpROOT7BLK;	gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=7; break;	// 행선설정7 (T Tag 설정)
	case 0x6b: gpROOT8BLK;	gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=8; break;	// 행선설정8 (T Tag 설정)
	case 0x6c: gpROOT9BLK;	gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=9; break;	// 행선설정9 (T Tag 설정)
	case 0x6d: gpROOT10BLK;	gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDestSetNum=10; break;	// 행선설정10(T Tag 설정)

	case 0x51: 
		gpROOTNOBLK; 
		gpROOTINIT; //행성 설정 확인 버튼 조작.

		sDestNum = WORD_L(SanDisk_Vari.nTotalDestCnt);
		sDestNum1 = WORD_L(nNvsram_Variable.nScreenNum)*10+WORD_L(nNvsram_Variable.nDestSetNum);

		if(sDestNum >= sDestNum1)
		{
			nNvsram_Variable.nDestSetNumRe = nNvsram_Variable.nDestSetNum;
			gp_WritingWord(0x3D,(0x01<<((nNvsram_Variable.nDestSetNumRe-1)%10))); 	 // 선택된 데이터 검정색으로 고정 
			nTr_St_Info.nOnlyDestSendFlag = nNvsram_Variable.nDestCodeList[sDestNum1-1];//2011_11_16 nOnlyDestSendFlag
			NVSRAM_Rd_StationName_Code(nTr_St_Info.nOnlyDestSendFlag,nTr_St_Info.nDest.nEnNameBuf,nTr_St_Info.nGpStName.nDest);//2011_11_16 nOnlyDestSendFlag

			gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);	// 행선 표출

			nSccSendFlag.nDeSTCodeSet = 2;

			//SCC_TX_PROTOCOL(sDestTxBuf,0xF8,0x31,0x1C,WORD_L(nTr_St_Info.nDest.nCode),10);
			//Delay_SCC2_SendTo(sDestTxBuf,20,SCC_A_CHANNEL,5);

		}
		gpROOTEN;
		break;
	}

}
/******************************************************
                  시험 화면 처리 부분.  
*****************************************************/
void GP_SIMU_SCREEN(UCHAR nScreenInf)
{
	
	UCHAR sSimuFlag_Cnt = 0;
	switch(nScreenInf)
	{
	case 0x37:	//시험 화면.
		nTr_St_Info.nAutoManuFlagCnt = 0;
		nTr_St_Info.nSinmuScrCnt++;
		if(!(nTr_St_Info.nSinmuScrCnt%5)) // 5번을 눌렀을 경우 들어 온다.
		{
			nSelect_Button.nScreenSetNum = 4;
			nTr_St_Info.nSinmuScrCnt= 0;

			sSimuFlag_Cnt  |= nTr_St_Info.nPIBPatFlag ? 0x01 : 0x00;
			sSimuFlag_Cnt  |= nTr_St_Info.nDISFPatFlag ? 0x04 : 0x00;
			sSimuFlag_Cnt  |= nTr_St_Info.nSimulationFlag ? 0x02 : 0x00;
			sSimuFlag_Cnt  |= nTr_St_Info.nAutoDoorFlag ? 0x08 : 0x00;

			gp_WritingWord(0x41,sSimuFlag_Cnt);

			gpTEST;

			gpTrNumCheckMs_Off; //열차 번호 확인 메세지
			gpPattern_Off;

		}
		break;
	case 0x5A: 

		if(nTr_St_Info.nSimulationFlag) {gpPattern_ON; }
		else
		{
			gpPattern_Off;
			nTr_St_Info.nPIBPatFlag = NOT(nTr_St_Info.nPIBPatFlag);	// 차내패턴시험	
			nSccSendFlag.nPIBPaten = 1;
		}
		break;		
	case 0x5D: 

		if(nTr_St_Info.nSimulationFlag) {gpPattern_ON; }
		else
		{
			gpPattern_Off;
			nTr_St_Info.nDISFPatFlag = NOT(nTr_St_Info.nDISFPatFlag); // 행선 패턴시험
			nSccSendFlag.nS_FDIPaten = 2;
		}
		break;
	case 0x5B: 

		if(nTr_St_Info.nStopPatNum) //정상 열번이 입력 되어야 시험도 진행 한다.
		{
			nTr_St_Info.nSimulationFlag = NOT(nTr_St_Info.nSimulationFlag); // 모의주행시험 
			nTr_St_Info.nAutoDoorFlag = NOT(nTr_St_Info.nAutoDoorFlag);		// 자동 출입문 개폐

			if(!nTr_St_Info.nSimulationFlag)//시험을 종류할때 초기화
			{

				nTr_St_Info.nSimulationRun = FALSE;

				nTr_St_Info.nSpeed = 0;
				nTr_St_Info.nDistance = 0;

				nTr_St_Info.nDoor = 1;

				nTr_St_Info.nDoorOPenCnt = 0;

				nTr_St_Info.nStation_PointCnt = 0;
				nTr_St_Info.nStation_StartPointCnt = 0;

				nSccSendFlag.nClean = 3; //모의 주행 시험이 끝나면 무표시 전송
				nTr_St_Info.nClean_Flag = FALSE; //시뮬레이션이 완료 되면 무표시 flage가 FALSE로 된다.

				gp_WritingStr(300,15,(UCHAR *)"                              ");	//클리어한다.

				gpDISTANCE(nTr_St_Info.nDistance);
				gpSPEED(nTr_St_Info.nSpeed);
				gpDOOROPEN; 			
			}
			else	//시험을 시작할때 출입문을 오픈으로 한다.
			{
				nTr_St_Info.nDoor = 1;

				nTr_St_Info.nSpeed = 0;
				nTr_St_Info.nDistance = 0;

				nTr_St_Info.nDoor = 1;

				nTr_St_Info.nDoorOPenCnt = 0;

				nTr_St_Info.nStation_PointCnt = 0;
				nTr_St_Info.nStation_StartPointCnt = 0;

				DP_STNAME_INFO_UP();

			}
		}
		else{gpTrNumCheckMs_ON; } //열차 번호 확인 메세지 출력

		break;		
	case 0x5C: 
		nTr_St_Info.nAutoDoorFlag = NOT(nTr_St_Info.nAutoDoorFlag);		// 자동 출입문 개폐
		break;		

	case 0x5E: 
		nTr_St_Info.nSpeed+= 10;	 				// 속도 +
		if(nTr_St_Info.nSpeed >= 200) nTr_St_Info.nSpeed = 200;
		gpSPEED(nTr_St_Info.nSpeed);

		break;						
	case 0x5F: // 속도 -		
		if(nTr_St_Info.nSpeed) { nTr_St_Info.nSpeed-= 10;}
		gpSPEED(nTr_St_Info.nSpeed);

		break;
	case 0x60: // 출입문 ON
		nTr_St_Info.nDoor =1; 
		gpDOOROPEN;							
		break;											// DoorOpen
	case 0x61: //출입문 OFF
		nTr_St_Info.nDoor =0; 
		gpDOORCLOSE;
		break;		// DoorClose

	case 132: //모의 주행 전용 열번 설정화면

		nSelect_Button.nScreenSetNum = 4;
		nTr_St_Info.nSinmuScrCnt= 0;
		nTr_St_Info.nAutoManuFlagCnt = 0;

		sSimuFlag_Cnt  |= nTr_St_Info.nPIBPatFlag ? 0x01 : 0x00;
		sSimuFlag_Cnt  |= nTr_St_Info.nDISFPatFlag ? 0x04 : 0x00;
		sSimuFlag_Cnt  |= nTr_St_Info.nSimulationFlag ? 0x02 : 0x00;
		sSimuFlag_Cnt  |= nTr_St_Info.nAutoDoorFlag ? 0x08 : 0x00;

		gp_WritingWord(0x41,sSimuFlag_Cnt);

		gpTEST;

		gpTrNumCheckMs_Off;
		gpPattern_Off;

		break;

	}
}
/****************************************************
		지점 보정 화면 처리 부분.   
*****************************************************/
UCHAR d_gpNowPoint = 0;
void GP_POINT_SCREEN(UCHAR nScreenInf)
{
	switch(nScreenInf)
	{
	case 0x36: //지점 보정 화면
		
		

		if(nDi_Check.nDoor.nFlag) {gpSPOT; }	// 출입문 접점에 따라 지점 보정에서 보여주는 화면이 달라 진다.
		else {gpSPOT2; }
		
		gpSPOTINIT; gpSPOTEN;

		nTr_St_Info.nStation_PointCntRe = nTr_St_Info.nStation_PointCnt;

		d_gpNowPoint = nTr_St_Info.nStation_PointCntRe;


		GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);

		nSelect_Button.nScreenSetNum = 5;
		 //시험 조건 확인 메시지 표출
		if(WORD_L(nTr_St_Info.nStopPatNum) && (WORD_L(nTr_St_Info.nSimulationFlag)|| nTr_St_Info.nAutoManuFlag)){
			gpStPointSet_Off;
		}
		else{
			gpStPointSet_ON;;
		}

		break;
			//////////////////////////////////////////////////////////////////진행방향
	case 0x46: 
		gpSPOTDIS; 
		if(WORD_L(nTr_St_Info.nStopPatNum))
		{
			nSelect_Button.nScreenRxTime = 2000;
			if(WORD_L(nTr_St_Info.nStation_PointCntRe) < WORD_L(nTr_St_Info.nStation_MaxCnt)-1)
			{
				nTr_St_Info.nStation_PointCntRe++;
			}
			else
			{
				nTr_St_Info.nStation_PointCntRe = WORD_L(nTr_St_Info.nStation_MaxCnt)-1;
			}

			GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCntRe);	
		}
		gpSPOTEN;
		break;
		
		//////////////////////////////////////////////////////////////////반대방향
		
	case 0x47: 
		gpSPOTDIS; 
		if(WORD_L(nTr_St_Info.nStopPatNum))
		{	
			nSelect_Button.nScreenRxTime = 2000;
			if(WORD_L(nTr_St_Info.nStation_PointCntRe)> 0)
			{
				nTr_St_Info.nStation_PointCntRe--;
			}
			else
			{
				nTr_St_Info.nStation_PointCntRe = 0;
			}
			GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCntRe);
			
		}	
		gpSPOTEN;
		break;
		/////////////////////////////////////////////////////////////////// 확인 
						   
	case 0x53: 
		gpSPOTINIT; 	//확인시 현재역 포인터 업데이트
		if(WORD_L(nTr_St_Info.nStopPatNum))
		{
			nTr_St_Info.nStation_PointCnt = nTr_St_Info.nStation_PointCntRe;

			d_gpNowPoint = nTr_St_Info.nStation_PointCnt;

			//속도가 있는 상황에서 지점 보정을 다시 하면 문장 Index를 초기화 한다. 정확한 문장 찾기를 위해
			nIndex_Flag.nIndexDI_DICnt = 0;
			nIndex_Flag.nIndexCnt = 0;

			//*****************************************
			nTr_St_Info.nDistance = 0;

			nIndex_Flag.nDistanRe = 0;
			nIndex_Flag.nDistanNew = 0;

			//*****************************************

			DP_STNAME_INFO_UP();
			DP_ALL_TEXT_CHECK();

		}
		break;	
	}

}
/***************************************************
                    자기진단 처리 부분. 
****************************************************/
UCHAR d_GpSelfCnt = 0;
void GP_SELFTEST_SCREEN(UCHAR nScreenInf)
{
	UCHAR sSelf_Buf[60];

	switch(nScreenInf)
	{
	case 0x3D:	//자기 진단 화면
		nTr_St_Info.nSinmuScrCnt = 0;
		nTr_St_Info.nAutoManuFlagCnt = 0;

		//nSelf_Test.nSELF_ICR_SELECT = 0;

		//gpSELFT_4;

		if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpNorSelfScreen;}//gpSELFT_8;}
		else if(!WORD_L(nSelf_Test.nSELF_ICR_SELECT)) { gpExpSelfScreen;}//gpSELFT_4;}



		gpSELFTESTINIT;		
		gp4RBLACK_S;gp6RWITE;gp8RWITE;
		gp8SELFITEM;

		gpROOTEN;
		gpSelftest_Off;

		break;
	case 0x74:	// 자기 진단 4량 선택
		if(!WORD_L(nTr_St_Info.nMasterFlag)) {gpSelftest_ON;}
		else{
			gp4RBLK_S; 
			gpSELKTOKBLK;
			gpROOTDIS;
			gpSelftest_Off;
		}
		break;
	case 0x57: // 자기 진단 확인 버튼 누름
		
		gpSELFTESTINIT;		
		gp4RBLACK_S;

		nSelf_Test.nSELF_All_Cnt = 0;

		
		nTr_St_Info.nSelf_Test_Flag = TRUE;

		memset(nSelf_Test.nSELF_RXDATA_Buf,0x01,60);
	

		memset(sSelf_Buf,0x01,60);

		if(!nSelf_Test.nSELF_ICR_SELECT)
		{
			SDR_Routine_Complete(sSelf_Buf,DISPLAY_UNIT,FALSE);//공백 표출한다.
		}
		else if(nSelf_Test.nSELF_ICR_SELECT)
		{
			SDR_Routine_Complete(sSelf_Buf,DISPLAY_STANDARD_UNIT,FALSE);//공백 표출한다.
		}

		nSelect_Button.nScreenSetNum = 3;

		break;
	case 112:	//자기진단 3중연 -> 2중연 -> 1편성 감쇠.
		if(nSelf_Test.nSELF_ICR_SELECT)
		{
			nSelf_Test.nSELF_ICR_SELECT--;
		}

		nSelf_Test.nSELF_ICR_SELECT = nSelf_Test.nSELF_ICR_SELECT <=0 ? 0 : nSelf_Test.nSELF_ICR_SELECT;

		if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpSELFT_8;}
		else if(!WORD_L(nSelf_Test.nSELF_ICR_SELECT)) { gpSELFT_4;}

		nSelect_Button.nScreenSetNum = 3;

		break;
	case 113:	//자기진단 1편성 -> 2중연 -> 3중연 증가.
		nSelf_Test.nSELF_ICR_SELECT++;
		nSelf_Test.nSELF_ICR_SELECT = nSelf_Test.nSELF_ICR_SELECT >=2 ? 2 : nSelf_Test.nSELF_ICR_SELECT;

		if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpSELFT_8;}
		else if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 2) {gpSELFT_12;}

		nSelect_Button.nScreenSetNum = 3;

		break;

	}
}
/******************************************************************
	SDR_Routine_Complete 
	GP 화면에 O/X를 표출한다.
*******************************************************************/
void SDR_Routine_Complete(UCHAR *pSData,UCHAR nUnitCnt,UCHAR nSt_End)					// GP와 재확인 할 것 
{
	UCHAR i;
	UCHAR pDData[120];
	
	for(i=0;i<nUnitCnt;i++) 									//선택한 중연에 따른 자기진단 표출.
	{
		if(WORD_L(nSt_End))
		{
			if(pSData[i]) {pDData[i*2]= 0x08; pDData[i*2+1]= 0x06;} // X 표출 (2054)
			else {pDData[i*2]= 0x08; pDData[i*2+1]= 0x05;}		// O 표출 (2053)	
		}
		else if(!WORD_L(nSt_End))
		{
			pDData[i*2]= 0x08; pDData[i*2+1]= 0x07; // 공백 표출
		}
	}

	if(nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt)
	{
		gp_WritingStr(244,nUnitCnt,pDData);					// Address 를 순차적으로 잡아서 표출 할 것 
	}
	else
	{
		gp_WritingStr(220,nUnitCnt,pDData);					// Address 를 순차적으로 잡아서 표출 할 것 
	}
}
/***************************************************
		열차 번호 입력 처리 부분.   
*****************************************************/
void GP_TRAIN_SCREEN(UCHAR nScreenInf)
{

	switch(nScreenInf)
	{
	case 0x34:	// 열번설정 화면.
		nSelect_Button.nScreenSetNum = 7;
		gpTRAINNUMBER;
		gpKEYACTIVE;
		gpKEYCLR;
		gpSETCLR;
		gpKEYEN; 	
		break;
	case 0x4D:	//열번설정 KEY입력 신호 값.
		gpKEYINIT;
		break;
	case 0x50: //열번설정후 확인 버튼 조작.

		gpKEYCLR;
		gpRDNUMBER;	
		gpKEYDIS; 
		gpTRNOSEEK; 	
		gpKEYEN;
		break;
	case 133: //시험 화면에서 열번을 선택하면 시험 열번 화면이 표출 된다.
		nSelect_Button.nScreenSetNum = 7;
		gpSIM_TRAINNUMBER;
		gpKEYACTIVE;
		gpKEYCLR;
		gpSETCLR;
		gpKEYEN; 	
		break;

	}
}

/********************************************************************
		지점 보정기능 문장 처리 하는 함수  
*********************************************************************/
void GP_POINT_ST_PRO(UCHAR nPointSt)
{
	UCHAR sPointBuf[15];
	UCHAR sPreBuf[15];
	UCHAR sNowBuf[15];
	UCHAR sNextBuf[15];
	memset(sPointBuf,0x20,15);
	if(!WORD_L(nTr_St_Info.nStopPatNum))
	{

	}
	else 
	{
		if(WORD_L(nPointSt))
		{

			if((WORD_L(nPointSt)+1)<= WORD_L(nTr_St_Info.nStation_MaxCnt)-1)
			{
				memcpy(sNextBuf,StationName[nPointSt+1].EngName,15);
				DP_GpDataChange(nTr_St_Info.nGpStName.nNext,sNextBuf);
				gp_WritingStr(170,6,nTr_St_Info.nGpStName.nNext);

			}
			else if(WORD_L(nPointSt) == WORD_L(nTr_St_Info.nStation_MaxCnt)-1)
			{
				gp_WritingStr(170,6,sPointBuf);

			}

			memcpy(sPreBuf, StationName[nPointSt-1].EngName,15);
			memcpy(sNowBuf, StationName[nPointSt].EngName,15);

			DP_GpDataChange(nTr_St_Info.nGpStName.nPre,sPreBuf);
			DP_GpDataChange(nTr_St_Info.nGpStName.nNow,sNowBuf);

			gp_WritingStr(180,6,nTr_St_Info.nGpStName.nPre);
			gp_WritingStr(160,6,nTr_St_Info.nGpStName.nNow);

		}
		else 
		{
			memcpy(sNowBuf, StationName[nPointSt].EngName,15);
			memcpy(sNextBuf,StationName[nPointSt+1].EngName,15);

			DP_GpDataChange(nTr_St_Info.nGpStName.nNow,sNowBuf);
			DP_GpDataChange(nTr_St_Info.nGpStName.nNext,sNextBuf);

			gp_WritingStr(180,6,sPointBuf);
			gp_WritingStr(170,6,nTr_St_Info.nGpStName.nNext);
			gp_WritingStr(160,6,nTr_St_Info.nGpStName.nNow);
		}
	}

 }
/********************************************************************
		GP_DOWNLOAD_SDR  ---> LED 프로그램 다운로드 자기진단.
*********************************************************************/

void GP_DOWNLOAD_SDR()
{
	UCHAR sSelf_Buf[60];
	nTr_St_Info.nSinmuScrCnt = 0;
	nTr_St_Info.nAutoManuFlagCnt = 0;

	//nSelf_Test.nSELF_ICR_SELECT = 0;

	nSelf_Test.nSELF_All_Cnt = 0;

	memset(nSelf_Test.nSELF_RXDATA_Buf,0x01,60);
	memset(nSelf_Test.nSELF_DownLoad_RxBuf,0x01,30);
	
	memset(sSelf_Buf,0x01,60);

	SDR_Routine_Complete(sSelf_Buf,DISPLAY_UNIT,FALSE);//공백 표출한다.
}

/*****************************************************
		GP_IDC_SW_UPLOAD 
*****************************************************/
UCHAR sCardInfo = 0;
void GP_IDC_SW_UPLOAD(UCHAR nScreenInf)
{
	UCHAR sDataBuf[10];
	UCHAR sClenBuf[20];
	

	memset(sClenBuf,0x20,20);

	switch(nScreenInf)
	{
	case 117:		//SW 다운로드 화면. 설정기.표시기 

		nLedDataLoad.nSWScreenSelt++;
		nLedDataLoad.nDATAScreenSelt = 0;

		nSelect_Button.nScreenSetNum = 0;

		if(!(nLedDataLoad.nSWScreenSelt%10))
		{
			nLedDataLoad.nSWScreenSelt = 0;
			gpUpLoad;
			gpROOTDIS;
			gp_WritingStr(550,5,sClenBuf);
			gp_WritingStr(555,5,sClenBuf);
			gp_WritingWord(300,0);
			gp_WritingWord(301,0);
		}

		break;
	case 118:
		if(SanDisk_Vari.nDiskInputCheckFlag)
		{

			sCardInfo = SanDisk_Vari.nDiskUpChekFlag = Nvsram_IDC_UpLoad_CK(sDataBuf,IDC_FILE);

			if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) ==1 || WORD_L(SanDisk_Vari.nDiskUpChekFlag) ==2||WORD_L(SanDisk_Vari.nDiskUpChekFlag) ==3)
			{
				gpUpLoad_2;	//설정기 다운로드 화면.

				gp_WritingWord(600,2087);

				gp_WritingStr(560,3,(UCHAR*)ROM_VER_S);
				gp_WritingStr(565,1,(UCHAR*)"->");
				gp_WritingStr(570,3,sDataBuf);

				gp_WritingStr(540,2,(UCHAR*)"000%");
				gp_WritingStr(545,2,(UCHAR*)"000%");

				if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 1)
				{
					gp_WritingStr(550,5,sClenBuf);
					gp_WritingStr(555,5,(UCHAR*)"New UpLoad");
					
				}
				else if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 2)
				{
					gp_WritingStr(550,5,sClenBuf);
					gp_WritingStr(555,5,(UCHAR*)"SameUpLoad");
					
				}
				else if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 3)
				{
					gp_WritingStr(550,5,sClenBuf);
					gp_WritingStr(555,5,(UCHAR*)"OldUpLoad");
				}

				gpROOTEN;
			}
			else 
			{
				gp_WritingStr(555,5,sClenBuf);
				gp_WritingStr(550,5,(UCHAR*)"File CHECK");
				gpROOTDIS;
			}
		}
		else
		{
			gp_WritingStr(550,5,sClenBuf);
			gp_WritingStr(555,5,(UCHAR*)"CARD CHECK");
			gpROOTDIS;

		}

		break;
	case 119:

		Idc_Load.nIDC_ROM_Flag = 1;
		Idc_Load.nKO_Flag = 0;
		nSelect_Button.nScreenSetNum = 9;

		break;

	}

}
/*****************************************************
		GP_SFDD_SW_UPLOAD 
*****************************************************/

void GP_SFDD_SW_UPLOAD(UCHAR nScreenInf)
{
	UCHAR sClenBuf[20];
	UCHAR sDataBuf[30];
	UCHAR sFileCheck = 0;

	memset(sClenBuf,0x20,20);

	switch(nScreenInf)
	{
	case 121:	// 상태 확인
		nLedDataLoad.nWaitSDR = 10;
		
		gpROOTDIS;
		break;
	case 122:	//Erass 
		nLedDataLoad.nErassFlag.nST_1 = TRUE;
		nLedDataLoad.nErassFlag.nErassOk = FALSE;
		nSelf_Test.nSELF_TX_Cnt = 0;
		gpLED_UPLOAD_ERBUT_SF_OFF;
		gpROOTDIS;

		break;
	case 123:	//데이타 다운로드
		nLedDataLoad.nDataDownFlag = TRUE;

		gpLED_UPLOAD_DABUT_SF_OFF;
		gpROOTDIS;

		break;
	case 124:	//RND 노선 선택
		gpROOTEN;

		nSelect_Button.nScreenSetNum = 0;

		//if(!Seek_File_UNIT(SDD_FILE))
		if(!Nvsram_IDC_UpLoad_CK(sDataBuf,RND_FILE))
		{
			gp_WritingStr(550,5,sClenBuf);
			gp_WritingStr(555,5,(UCHAR*)"RND NoFile");
		}
		else
		{
			//Nvsram_IDC_UpLoad_CK(sDataBuf,SDD_FILE);
			gpSFDD_UPLOAD_SCREEN;

			nLedDataLoad.nSFKindCode = 0xF9;

			if(WORD_L(sDataBuf[0]) == 0x32)
			{
				gp_WritingStr(575,8,(UCHAR*)"RND CHECK -> OK");
			}
			else
			{
				gp_WritingStr(575,8,(UCHAR*)"RND CHECK -> NG");
			}

			GP_SFDD_SW_UPLOAD_CLEAN();

		}
		
		nLedDataLoad.nRNDSelt = TRUE;
		nLedDataLoad.nFDDSelt = FALSE;
		nLedDataLoad.nIDDSelt = FALSE;
		nLedDataLoad.nTNDSelt = FALSE;

		break;
	
	case 125:	//FDD 정면선택
		gpROOTEN;
		
		nSelect_Button.nScreenSetNum = 0;


		if(nLedDataLoad.nFDD_DATA_Selt)
		{
			sFileCheck = Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_DATA);
		}
		else
		{
			sFileCheck = Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);
		}

		if(!sFileCheck)
		{
			gp_WritingStr(550,5,sClenBuf);
			gp_WritingStr(555,5,(UCHAR*)"FDD NoFile");
		}
		else
		{
			//Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);
			gpSFDD_UPLOAD_SCREEN;
			nLedDataLoad.nSFKindCode = 0xF5;

			if(nLedDataLoad.nFDD_DATA_Selt)//데이타 다운로드 화면.
			{	
				gp_WritingStr(575,8,(UCHAR*)"FDD DATA -> OK");
			}
			else	//프로그램 다운로드 선택.
			{
				if(WORD_L(sDataBuf[0]) == 0x34)
				{
					gp_WritingStr(575,8,(UCHAR*)"FDD CHECK -> OK");
				}
				else
				{
					gp_WritingStr(575,8,(UCHAR*)"FDD CHECK -> NG");
				}
			}

			GP_SFDD_SW_UPLOAD_CLEAN();

		}

		nLedDataLoad.nRNDSelt = FALSE;
		nLedDataLoad.nFDDSelt = TRUE;
		nLedDataLoad.nIDDSelt = FALSE;
		nLedDataLoad.nTNDSelt = FALSE;
		
		break;
	case 126:// 차내 선택
		gpROOTEN;
		nSelect_Button.nScreenSetNum = 0;

		if(!Nvsram_IDC_UpLoad_CK(sDataBuf,IDD_FILE))
		{
			gp_WritingStr(550,5,sClenBuf);
			gp_WritingStr(555,5,(UCHAR*)"IDD NoFile");
		}
		else
		{
			//Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);
			gpSFDD_UPLOAD_SCREEN;
			nLedDataLoad.nSFKindCode = 0xF1;
			if(WORD_L(sDataBuf[0]) == 0x31)
			{
				gp_WritingStr(575,8,(UCHAR*)"IDD CHECK -> OK");
			}
			else
			{
				gp_WritingStr(575,8,(UCHAR*)"IDD CHECK -> NG");
			}

			GP_SFDD_SW_UPLOAD_CLEAN();

		}

		nLedDataLoad.nRNDSelt = FALSE;
		nLedDataLoad.nFDDSelt = FALSE;
		nLedDataLoad.nIDDSelt = TRUE;
		nLedDataLoad.nTNDSelt = FALSE;

		break;
	case 127:	//열번 선택
		gpROOTEN;
		nSelect_Button.nScreenSetNum = 0;

		if(!Nvsram_IDC_UpLoad_CK(sDataBuf,TND_FILE))
		{
			gp_WritingStr(550,5,sClenBuf);
			gp_WritingStr(555,5,(UCHAR*)"TND NoFile");
		}
		else
		{
			//Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);
			gpSFDD_UPLOAD_SCREEN;
			nLedDataLoad.nSFKindCode = 0xF7;
			if(WORD_L(sDataBuf[0]) == 0x33)
			{
				gp_WritingStr(575,8,(UCHAR*)"TND CHECK -> OK");
			}
			else
			{
				gp_WritingStr(575,8,(UCHAR*)"TND CHECK -> NG");
			}

			GP_SFDD_SW_UPLOAD_CLEAN();

		}

		nLedDataLoad.nRNDSelt = FALSE;
		nLedDataLoad.nFDDSelt = FALSE;
		nLedDataLoad.nIDDSelt = FALSE;
		nLedDataLoad.nTNDSelt = TRUE;
		break;

	}
	
}
/*****************************************************
		GP_SFDD_DATA_UPLOAD  데이타 다운로드
*****************************************************/
void GP_SFDD_DATA_UPLOAD(UCHAR nScreenInf) 
{
	UCHAR sClenBuf[20];
	UCHAR sDataBuf[30];

	memset(sClenBuf,0x20,20);

	switch(nScreenInf)
	{
	case 128:

		nLedDataLoad.nSWScreenSelt = 0;
		nLedDataLoad.nDATAScreenSelt++;

		if(!(nLedDataLoad.nDATAScreenSelt%10))
		{
			nLedDataLoad.nDATAScreenSelt = 0;
			nLedDataLoad.nFDD_DATA_Selt = TRUE;
			gpDATA_UpLoad;
			gpROOTDIS;
			gp_WritingStr(550,5,sClenBuf);
			gp_WritingStr(555,5,sClenBuf);
		}
		
		break;
	}
}

/*****************************************************
		GP_SFDD_SW_UPLOAD_CLEAN  메모리 초기화
*****************************************************/
void GP_SFDD_SW_UPLOAD_CLEAN()
{
	UCHAR sSelf_Buf[60];
	UCHAR sClenBuf[20];

	memset(sSelf_Buf,0x01,60);

	memset(sClenBuf,0x20,20);

	if(!nSelf_Test.nSELF_ICR_SELECT)
	{
		SDR_Routine_Complete(sSelf_Buf,DISPLAY_UNIT,FALSE);//공백 표출한다.
	}
	else 
	{
		SDR_Routine_Complete(sSelf_Buf,DISPLAY_STANDARD_UNIT,FALSE);//공백 표출한다.
	}

	gpLED_UPLOAD_BUTOFF;
	gpLED_UPLOAD_DABUTOFF;

	gpLED_UPLOAD_ERBUT_SF_OFF;
	gpLED_UPLOAD_DABUT_SF_OFF;

	gp_WritingStr(585,10,sClenBuf);
	gp_WritingStr(595,10,sClenBuf);
	gp_WritingStr(605,10,sClenBuf);
	gp_WritingStr(615,10,sClenBuf);

	gp_WritingWord(300,0);
	gp_WritingStr(540,2,(UCHAR*)"000%");

	gp_WritingWord(301,0);
	gp_WritingStr(545,2,(UCHAR*)"000%");

}
/*****************************************************
		시작 화면
*****************************************************/
void GP_START_SET(UCHAR nScreenInf)
{
	UCHAR sClenBuf[20];
	UCHAR sDataBuf[30];

	memset(sClenBuf,0x20,20);

	switch(nScreenInf)
	{
	case 130: //일반

		nSelf_Test.nSELF_Selt_Flag = TRUE;
		nSelf_Test.nSELF_ICR_SELECT = 1;
		nSelect_Button.nScreenSetNum = 1;


		m_StScreen++;

		gpSTATE;

		break;
	case 131: //직통

		nSelf_Test.nSELF_Selt_Flag = TRUE;

		nSelf_Test.nSELF_ICR_SELECT = 0;
		nSelect_Button.nScreenSetNum = 1;

		m_StScreen++;
		gpSTATE;
		break;
	}

}

/*****************************************************
		수동 설정 화면
*****************************************************/
void GP_AUTO_MANU_SET(UCHAR nScreenInf)
{
	switch(nScreenInf)
	{
	case 150: //일반
		nTr_St_Info.nAutoManuFlagCnt++;
		if(!(WORD_L(nTr_St_Info.nAutoManuFlagCnt)%5))
		{
			nTr_St_Info.nAutoManuFlag = NOT(nTr_St_Info.nAutoManuFlag);
		}

		if(WORD_L(nTr_St_Info.nAutoManuFlag)) //수동 모드 설정
		{
			nTr_St_Info.nRxCode_NoNe_Flag = TRUE;
			gp_WritingWord(150,1);
		}
		else //수동 모드 해제
		{
			nTr_St_Info.nRxCode_NoNe_Flag = FALSE;
			gp_WritingWord(150,0);
		}

		break;
	}
}
/*****************************************************
		GP   1ms 타이머 
*****************************************************/
void GP_1msTime()
{
	
	nTimeGp_Cnt++;
	//화면 보호 기능. 카운터.

	if(nSelect_Button.nScreenRxTime) {nSelect_Button.nScreenRxTime--;}
	
}

/*****************************************************
		GP   1ms 타이머 
*****************************************************/
UCHAR nTimeGp_100Cnt = 0;
void GP_100msTime()
{
	nTimeGp_100Cnt++;

	m_StartScreenSetTime++;

	
	if(nSelect_Button.nScreenSafe == 1)
	{
		nSelect_Button.nScreenSafe = 0;
		gpTURNOFF;
	}

	if(nSelect_Button.nScreenSafe){nSelect_Button.nScreenSafe--;}
	
}





