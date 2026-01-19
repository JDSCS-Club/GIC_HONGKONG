#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include "main.h"
#include "def.h"
#include "Display.h"
#include "Cdma.h"
#include "xr16l784.h"

extern TEMP_CHANGE nTemp_Val;

extern int m_nXr16l784TxPos1;
extern int m_nXr16l784TxPos3;
extern int m_nXr16l784TxPos4;
extern int m_nXr16l784TxPos5;


extern UCHAR m_ucXr161784RxBackup[XR16L784_BUF_RX+4];
extern SCREEN_INF nScreenInf;
extern UCHAR m_ucXr16l784Rx5Backup[150];


CDMA_START pCdmaPro;


CDMA_TIME nCdma_time_Flag;

UCHAR nCdma_Time_Set_Flag = 0; //CMDA 시간을 이용하여 화면 시간을 설정 한다.

/*
UCHAR nCdma_Time_Set_nHH = 0x00;
UCHAR nCdma_Time_Set_nMm =0x00;
UCHAR nCdma_Time_Set_nSs =0x00;
*/

USHORT Cdma_Time_Cnt = 0;
UCHAR Cdma_Time_Flag = 0;

UCHAR m_Cdma_Tx_Flag = 0;


UCHAR m_CDMA_Buf[300];

USHORT nCdmaTimeDlyCnt=0; //타임 인터럽트 변수 

void Cdma_Init()
{

	DWORD pdwRoundKey[130];
	UCHAR pbUserKey[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};	// User secret key

	pCdmaPro.nStStReCnt = 0;
	pCdmaPro.nStStRequest = 0;
	pCdmaPro.nStepCntRe = 0;
	pCdmaPro.nStepCntReCnt = 0;
	pCdmaPro.nEmFlae = 0;
	pCdmaPro.nStSetFlag = 1;
	pCdmaPro.nStDelFlag = 0;
	pCdmaPro.nSendFlag = 0;
	pCdmaPro.nSendFlagRe = 0;
	pCdmaPro.nStFlag = 0;
	pCdmaPro.nStepCnt = 0;
	pCdmaPro.nStLen = 12;
	pCdmaPro.nTxCnt = 0;
	//memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"AT$TCPEXIT\r\n",12);
	memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"ate0\r\n",6);

	SeedRoundKey(pdwRoundKey, pbUserKey);

	nCdma_time_Flag.nFlag = 0x00;
	nCdma_time_Flag.nYY = 0x00;
	nCdma_time_Flag.nMM = 0;
	nCdma_time_Flag.nDD = 0;
	nCdma_time_Flag.nhh = 0;
	nCdma_time_Flag.nmm = 0;
	nCdma_time_Flag.nss = 0;
	nCdma_time_Flag.nDisplay_time_Set = 0;

	NVSRAM_W(ROUNDKEY,0x00,130,pdwRoundKey);
}


void CDMA_Main()
{
	UCHAR sSendStDataBuf[400];
	UCHAR sTimeBuf[10];

	int i;
	
	if(pCdmaPro.nSendFlag == 1 && !nScreenInf.mkiGi_Mode)
	{
		if((nCdmaTimeDlyCnt >=3000) || pCdmaPro.nStFlag)
		{
			pCdmaPro.nStFlag = 0;
			nCdmaTimeDlyCnt = 0;

			if(pCdmaPro.nStStRequest) //문자 제요청
			{
				pCdmaPro.nSendFlag = 0;
				pCdmaPro.nSendStFlag = 0;
				pCdmaPro.nStStRequest = 0;
				xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)"at*skt*readmt=0\r\n",17,20);
			}
			else if(pCdmaPro.nStDelFlag) //잘못 수신된 문자 지우는곳
			{
				pCdmaPro.nSendFlag = 0;
				pCdmaPro.nSendStFlag = 0;
				pCdmaPro.nStDelFlag = 0;
				xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)"at*skt*delallmt\r\n",17,20);

			}
			else //정상적으로 진행 하는 부분.
			{
				if(pCdmaPro.nStepCnt < 6 )
				{
					xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)pCdmaPro.CDMA_ST_Buf,pCdmaPro.nStLen,20);
				}
				else if(pCdmaPro.nStepCnt == 6) //|| pCdmaPro.nStepCnt == 7)
				{
					m_Cdma_Tx_Flag = 1;
				}
				else if(pCdmaPro.nStepCnt == 7)
				{
					pCdmaPro.nStepCnt = 8;
					pCdmaPro.nStLen = 12;
					memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"AT$TCPEXIT\r\n",12);
				}
				else if(pCdmaPro.nStepCnt == 8)
				{
					pCdmaPro.nTxCnt++;
					xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)pCdmaPro.CDMA_ST_Buf,pCdmaPro.nStLen,20);
				}
			}
		}

		if(m_Cdma_Tx_Flag && !m_nXr16l784TxPos1 && !m_nXr16l784TxPos3&& !m_nXr16l784TxPos4)
		{
			m_Cdma_Tx_Flag = 0;

			CDMA_SEND_Data_Make(sSendStDataBuf,TRUE);	

			CDMA_SEND(m_CDMA_Buf,sSendStDataBuf,166,TRUE); //전송 타입으로 전환한다.

			xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)sSendStDataBuf,386,20);

			pCdmaPro.nStepCnt = 7;
		}
	}
	else
	{
		//if((nCdmaTimeDlyCnt >= 500) && (Cdma_Time_Cnt <= 100)) { nCdmaTimeDlyCnt = 0 ; Cdma_Time_Cnt++;}
		if((Cdma_Time_Cnt <= 250)) { nCdmaTimeDlyCnt = 0 ; Cdma_Time_Cnt++;} //

	}


	if((Cdma_Time_Cnt==200) && (pCdmaPro.nStepCnt == 0) && !m_nXr16l784TxPos1 && !m_nXr16l784TxPos3 && !m_nXr16l784TxPos4 && !m_nXr16l784TxPos5)
	{
		Cdma_Time_Flag++;

		if(Cdma_Time_Flag <CDMA_MAX_CNT &&!WORD_L(nCdma_time_Flag.nFlag)) //CDMA 시간을 모조건 설정 하기 위해 최대 100번까지 요청 한다.
		{
			Cdma_Time_Cnt = 0;
			xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)"AT*SKT*PING:<curstate>,<curtime>\r\n",34,20);  
		}
		else
		{
			nCdma_time_Flag.nFlag = 1;  //일정 시간 동안 시간 설정이 않되면 기록을 현재 시간으로 시작 한다.
			Cdma_Time_Cnt = 300;
		}


	}

	if(nCdma_Time_Set_Flag && !m_nXr16l784TxPos1 && !m_nXr16l784TxPos3&& !m_nXr16l784TxPos4) //CDMA 시간 정보를 화면 장치에 전송 한다.
	{
		i = 0;
		nCdma_Time_Set_Flag = 0;

		sTimeBuf[0] =0x00;
		sTimeBuf[1] =0x01;

		sTimeBuf[2] =WORD_H(nCdma_time_Flag.nYY);
		sTimeBuf[3] =WORD_L(nCdma_time_Flag.nYY);

		sTimeBuf[4] =WORD_H(nCdma_time_Flag.nMM);
		sTimeBuf[5] =WORD_L(nCdma_time_Flag.nMM);

		sTimeBuf[6] =WORD_H(nCdma_time_Flag.nDD);
		sTimeBuf[7] =WORD_L(nCdma_time_Flag.nDD);

		sTimeBuf[8] =WORD_H(nCdma_time_Flag.nhh);
		sTimeBuf[9] =WORD_L(nCdma_time_Flag.nhh);

		sTimeBuf[10] =WORD_H(nCdma_time_Flag.nmm);
		sTimeBuf[11] =WORD_L(nCdma_time_Flag.nmm);

		sTimeBuf[12] =WORD_H(nCdma_time_Flag.nss);
		sTimeBuf[13] =WORD_L(nCdma_time_Flag.nss);
		
	
		ModBusMulti_WORD(0x00,335,7,sTimeBuf,XR16L784_3CHL);

		nCdma_time_Flag.nDisplay_time_Set++;

		//xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)"Xpanel-TimeSEt\r\n",16,20); //문자 자동 수신 기능
	}

	if((WORD_L(pCdmaPro.nStSetFlag) == 1) && !m_nXr16l784TxPos1 && !m_nXr16l784TxPos3 && !m_nXr16l784TxPos4 && !m_nXr16l784TxPos5)
	{
		pCdmaPro.nStSetFlag = 0;
		xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)"AT*SKT*NEWMSG=4098,4099\r\n",25,20); //문자 자동 수신 기능
	}
}

UCHAR d_5ch_RcCnt_NG = 0;
void CDMA_Revice_Data_Pro()
{
	UCHAR sStChtckBuf[15];
	UCHAR sRxData[150];
	int i;
	int sRxDataFilt = 0;

	memcpy(sRxData,m_ucXr16l784Rx5Backup,150);
	memset(m_ucXr16l784Rx5Backup,0x00,150);

	for(i=0;i<150;i++)
	{
		if(m_ucXr16l784Rx5Backup[i] > 0x20)
		{
			sRxData[sRxDataFilt++] =  m_ucXr16l784Rx5Backup[i];
		}
	}

	if( pCdmaPro.nSendFlag == 1)
	{
		if(pCdmaPro.nStepCnt == pCdmaPro.nStepCntRe) //동이일한 동작을 지속적으로 반복하면 초기화 한다.
		{
			pCdmaPro.nStepCntReCnt++;
		}
		else {pCdmaPro.nStepCntReCnt = 0; }
		pCdmaPro.nStepCntRe = pCdmaPro.nStepCnt;

		if(!strncmp((char *)&sRxData[0],"NO CARRIER",10) || !strncmp((char *)&sRxData[0],"ERROR",5) ||
		   !strncmp((char *)&sRxData[0],"$TCPCLOSED",9)|| !strncmp((char *)&sRxData[0], "NO DIALTONE",11) || (pCdmaPro.nStepCntReCnt > 5))
		{

			pCdmaPro.nStepCntReCnt++;

			if(pCdmaPro.nStepCnt == 3){
				pCdmaPro.nStLen = 12;
				memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"AT$TCPEXIT\r\n",12);
			}
			else{
				pCdmaPro.nStLen = 5;
				memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"atz\r\n",5);
			}

			if(pCdmaPro.nStepCnt == 8)
			{
				pCdmaPro.nSendFlag = 0;
				pCdmaPro.nSendStFlag = 0;

				pCdmaPro.nStepCntReCnt = 0;

				xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)pCdmaPro.CDMA_ST_Buf,pCdmaPro.nStLen,20);


			}	
			else if(pCdmaPro.nStepCntReCnt > 5) 
			{
				pCdmaPro.nSteptotlCnt++;
				pCdmaPro.nStepCntReCnt = 0;
				pCdmaPro.nStFlag = 1;

				if(pCdmaPro.nSteptotlCnt < 3)
				{
					pCdmaPro.nStLen = 6;
					memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"ate0\r\n",6);
				}
				else
				{
					pCdmaPro.nStLen = 12;
					memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"AT$TCPEXIT\r\n",12);
				}

				xr16l784_RtsDelayStartSend(XR16L784_5CHL,(UCHAR *)pCdmaPro.CDMA_ST_Buf,pCdmaPro.nStLen,20);

				if(pCdmaPro.nSteptotlCnt > 5)
				{
					pCdmaPro.nSteptotlCnt = 0;
					pCdmaPro.nSendFlag = 0;
					pCdmaPro.nSendStFlag = 0;

					pCdmaPro.nStepCntReCnt = 0;
				}
			}
			
			pCdmaPro.nStepCnt = 0;

		}
		else
		{

			switch(pCdmaPro.nStepCnt)
			{
			case 0:
				if(!strncmp((char *)sRxData,"OK",2))
				{
					pCdmaPro.nStFlag = 1;
					pCdmaPro.nStepCnt = 1;
					pCdmaPro.nStLen = 6;
					memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"ate0\r\n",6);
					
				}
				break;
			case 1:
				if(!strncmp((char *)sRxData,"OK",2))
				{
					pCdmaPro.nStFlag = 1;
					pCdmaPro.nStepCnt = 2;
					pCdmaPro.nStLen = 12;
					memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"AT+CRM=251\r\n",12);
				}
				break;
			case 2:
				if(!strncmp((char *)sRxData,"OK",2))
				{
					pCdmaPro.nStFlag = 1;
					pCdmaPro.nStepCnt = 3;
					pCdmaPro.nStLen = 21;
					memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"AT$TCPUID=sktelecom\r\n",21);
				}
				break;
			case 3:
				if(!strncmp((char *)sRxData,"OK",2))
				{
					pCdmaPro.nStFlag = 1;
					pCdmaPro.nStepCnt = 4;
					pCdmaPro.nStLen = 9;
					memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"ATD1501\r\n",9);
				}
				break;
			case 4:
				if(!strncmp((char *)sRxData,"CONNECT",7))
				{
					pCdmaPro.nStFlag = 1;
					pCdmaPro.nStepCnt = 5;
					pCdmaPro.nStLen = 29;
					memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"AT$TCPOPEN=211.54.2.96,7000\r\n",29); //사당 IP

					//pCdmaPro.nStLen = 33;
					//memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"AT$TCPOPEN=211.225.214.249,7000\r\n",33); //본사 IP

				}
				break;
			case 5:
				if(!strncmp((char *)sRxData,"$TCPOPEN",8) ||!strncmp((char *)sRxData,"$TCPREADDATA",12))
				{
					pCdmaPro.nStFlag = 1;
					pCdmaPro.nStepCnt = 6;
				}
				break;
			case 7: 
				if(!strncmp((char *)sRxData,"OK",2) || !strncmp((char *)sRxData,"$TCPSENDDONE",12)
				 ||!strncmp((char *)sRxData,"$TCPCLOSED",10))
				{
					pCdmaPro.nStFlag = 1;
					pCdmaPro.nStepCnt = 8;
					pCdmaPro.nStLen = 12;
					memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"AT$TCPEXIT\r\n",12);
				}
				break;
			}
		}	
	}
	else
	{

		if(!strncmp((char *)&sRxData[0],"*SKT*NEWMSG:4098",16)) //처음 수신
		{
			pCdmaPro.nSendFlag = 1;
			pCdmaPro.nStDelFlag = 1;

			pCdmaPro.nStLen = 6;
			memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"ate0\r\n",6);
		}
		else if(!strncmp((char *)&sRxData[0],"*SKT*REMSG:",11) && (pCdmaPro.nStepCnt == 0)) //2,3번째 수신 문자
		{

			CDMA_ST_CHECK(&sRxData[28],sStChtckBuf);
			
			if(!strncmp((char *)sStChtckBuf,"01034206859",11))
			{
				pCdmaPro.nSendFlag = 1;
				pCdmaPro.nSendStFlag = 1;
				pCdmaPro.nStDelCnt = 0;
				pCdmaPro.nStFlag = 1;
				pCdmaPro.nStStRequest = 0;
				pCdmaPro.nStStReCnt = 0;

				pCdmaPro.nStLen = 6;
				memcpy(pCdmaPro.CDMA_ST_Buf,(UCHAR *)"ate0\r\n",6);

			}
			else
			{
				if(!pCdmaPro.nStStReCnt)
				{
					pCdmaPro.nStStReCnt = 1;
					pCdmaPro.nSendFlag = 1;
					pCdmaPro.nStStRequest = 1;
				}
				else {pCdmaPro.nStStReCnt = 0; }

			}
		}
		else if(!strncmp((char *)&sRxData[0],"*SKT*READMT:",12) && (pCdmaPro.nStepCnt == 0)) //제 요청 수신 문자
		{
			CDMA_ST_CHECK(&sRxData[29],sStChtckBuf);
			if(!strncmp((char *)sStChtckBuf,"01034206859",11))
			{
				pCdmaPro.nSendFlag = 1;
				pCdmaPro.nSendStFlag = 1;
				pCdmaPro.nStDelCnt = 0;
				pCdmaPro.nStFlag = 1;
				pCdmaPro.nStStRequest = 0;
				pCdmaPro.nStStReCnt = 0;
			}
			else
			{
				xr16l784_RtsDelayStartSend(XR16L784_5CHL,&sRxData[28],25,20);
			}
		}
		else if(!strncmp((char *)&sRxData[0],"*SKT*PONG:",10)){//시간 값 읽어서 전송.

			nCdma_time_Flag.nYY = (WORD_L(sRxData[12])-0x30)*1000 + (WORD_L(sRxData[13])-0x30)*100 +
				                  (WORD_L(sRxData[14])-0x30)*10 + (WORD_L(sRxData[15])-0x30);

			nCdma_time_Flag.nMM = (WORD_L(sRxData[16])-0x30)*10 + (WORD_L(sRxData[17])-0x30);
			nCdma_time_Flag.nDD = (WORD_L(sRxData[18])-0x30)*10 + (WORD_L(sRxData[19])-0x30);
			nCdma_time_Flag.nhh = (WORD_L(sRxData[20])-0x30)*10 + (WORD_L(sRxData[21])-0x30);
			nCdma_time_Flag.nmm = (WORD_L(sRxData[22])-0x30)*10 + (WORD_L(sRxData[23])-0x30);
			nCdma_time_Flag.nss = (WORD_L(sRxData[24])-0x30)*10 + (WORD_L(sRxData[25])-0x30);

			if((nCdma_time_Flag.nhh != 0x00) && (nCdma_time_Flag.nmm <= 60) && (nCdma_time_Flag.nss <= 60)){
				nCdma_Time_Set_Flag = 1;
				nCdma_time_Flag.nFlag = TRUE;
			}

		}
		else if(!strncmp((char *)&sRxData[0],"AT*SKT*PING:",12)){

			nCdma_time_Flag.nYY = (WORD_L(sRxData[47])-0x30)*1000 + (WORD_L(sRxData[48])-0x30)*100 +
				                  (WORD_L(sRxData[49])-0x30)*10 + (WORD_L(sRxData[50])-0x30);

			nCdma_time_Flag.nMM = (WORD_L(sRxData[51])-0x30)*10 + (WORD_L(sRxData[52])-0x30);
			nCdma_time_Flag.nDD = (WORD_L(sRxData[53])-0x30)*10 + (WORD_L(sRxData[54])-0x30);

			nCdma_time_Flag.nhh = (WORD_L(sRxData[55])-0x30)*10 + (WORD_L(sRxData[56])-0x30);
			nCdma_time_Flag.nmm = (WORD_L(sRxData[57])-0x30)*10 + (WORD_L(sRxData[58])-0x30);
			nCdma_time_Flag.nss = (WORD_L(sRxData[59])-0x30)*10 + (WORD_L(sRxData[60])-0x30);

			if((nCdma_time_Flag.nhh != 0x00) && (nCdma_time_Flag.nmm <= 60) && (nCdma_time_Flag.nss <= 60)){
				nCdma_Time_Set_Flag = 1;
				nCdma_time_Flag.nFlag = TRUE;

			}
			
		}

	}

	
}


void CDMA_ST_CHECK(UCHAR *pInData,UCHAR *pOutData)
{
	int i = 0;
	int j = 0;
	pOutData[0] = pInData[0];
	for(i=0;i<15;i++)
	{
		if(pOutData[j] != pInData[i])
		{
			j++;
			pOutData[j] = pInData[i];
		}
	}
}
void CDMA_SEND(UCHAR *pInData,UCHAR *pOutData,UCHAR Len,UCHAR sFlag)
{
	int i;
	UCHAR sDataBuf[400];

	UCHAR sSendSt[20]="AT$TCPWRITE=";

	sDataBuf[0] = 0x02;
	sDataBuf[1] = 0x01;
	sDataBuf[2] = 0x02;

	sDataBuf[3] = WORD_L(180);
	sDataBuf[4] = 0x00;
	sDataBuf[5] = 0x00;
	sDataBuf[6] = 0x00;

	sDataBuf[7] = WORD_H(Len+4);
	sDataBuf[8] = WORD_L(Len+4);

	sDataBuf[9] = pCdmaPro.nSendStFlag ? 0x01 : 0x02;

	memcpy(&sDataBuf[10],pInData,Len);

	sDataBuf[(Len+10)] = pCdmaPro.nSendStFlag ? 0 : pCdmaPro.nFlatCode;

	if(sFlag)
	{
		SeedMakeData(&sDataBuf[7],176); //SEED
	}

	sDataBuf[(Len+17)] = 0x03;

	CRC16(&sDataBuf[1],(Len+17));

	for(i=0;i<(Len+20);i++)
	{
		pOutData[(i*2)+12] = ((sDataBuf[i]>>4) <= 0x09) ?  (sDataBuf[i]>>4)+ 0x30 : ((sDataBuf[i]>>4)-0x0A)+0x41;
		pOutData[(i*2)+13] = ((sDataBuf[i]&0x0F) <= 0x09) ?  (sDataBuf[i]&0x0F)+ 0x30 : ((sDataBuf[i]&0x0F)-0x0A)+0x41;
	}

	memcpy(pOutData,sSendSt,12);
	memcpy(&pOutData[((Len+20)*2)+12],"\r\n",2);
}

USHORT m_wDistance_ScuTis = 0;
UCHAR m_CarTempCnt = 0;

void CDMA_SEND_Data_Make(UCHAR *pInData,UCHAR sFlag)
{

	UCHAR sDataBuf[300];
	UCHAR sClose_LB4Flag = 0;

	PTCCAR_MEMORY sTcDiList;

	SCU_TIS_MEMORY_RE DrvBody;

	PTIS_MEMORY pScuRxData = (TIS_MEMORY *)sDataBuf;

	NVSRAM_R(CDMA_SAVE_CHL,3,286,sDataBuf); //오리지날

	memcpy(DrvBody.stime,nScreenInf.nDATE,6);

	DrvBody.wCarNum[0] = m_ucXr161784RxBackup[21];
	DrvBody.wCarNum[1] = m_ucXr161784RxBackup[22];

	if(pScuRxData->nTC_0.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pScuRxData->nTC_0;}
	else if(pScuRxData->nTC_9.nXd16W1.nData.nBit.nBV_HANDLE){sTcDiList =(PTCCAR_MEMORY) &pScuRxData->nTC_9;}

	pScuRxData->nTC_0.nXd16W1.nData.nBit.nEm_Brake = ~(pScuRxData->nTC_0.nXd16W1.nData.nBit.nEm_Brake);
	pScuRxData->nTC_0.nXd16W1.nData.nBit.nEpands = ~(pScuRxData->nTC_0.nXd16W1.nData.nBit.nEpands);

	memcpy(&DrvBody.nTC_0.nXd16W1,&pScuRxData->nTC_0.nXd16W1,10);
	memcpy(DrvBody.nNetSta_0,pScuRxData->nNetSta_0,2);

	memcpy(&DrvBody.nM1_1.nXd16W1,&pScuRxData->nM1_1.nXd16W1,8);
	DrvBody.nM1_1.nXd16A1.nData.nM116A1[0] = ~(pScuRxData->nM1_1.nXd16A1.nData.nM116A1[0])&0x03;
	DrvBody.nM1_1.nXd16A2.nData.nM116A2[0] = ~(pScuRxData->nM1_1.nXd16A2.nData.nM116A2[0]);
	DrvBody.nM1_1.nXd16A2.nData.nM116A2[1] = ~(pScuRxData->nM1_1.nXd16A2.nData.nM116A2[1]);

	memcpy(&DrvBody.nM2_2.nXd16W1,&pScuRxData->nM2_2.nXd16W1,8);
	DrvBody.nM2_2.nXd16A1.nData.nM216A1[0] = ~(pScuRxData->nM2_2.nXd16A1.nData.nM216A1[0])&0x03;
	DrvBody.nM2_2.nXd16A2.nData.nM216A2[0] = ~(pScuRxData->nM2_2.nXd16A2.nData.nM216A2[0]);
	DrvBody.nM2_2.nXd16A2.nData.nM216A2[1] = ~(pScuRxData->nM2_2.nXd16A2.nData.nM216A2[1]);

	memcpy(&DrvBody.nM1_3.nXd16W1,&pScuRxData->nM1_3.nXd16W1,8);
	DrvBody.nM1_3.nXd16A1.nData.nM116A1[0] = ~(pScuRxData->nM1_3.nXd16A1.nData.nM116A1[0])&0x03;
	DrvBody.nM1_3.nXd16A2.nData.nM116A2[0] = ~(pScuRxData->nM1_3.nXd16A2.nData.nM116A2[0]);
	DrvBody.nM1_3.nXd16A2.nData.nM116A2[1] = ~(pScuRxData->nM1_3.nXd16A2.nData.nM116A2[1]);

	memcpy(&DrvBody.nM2_4.nXd16W1,&pScuRxData->nM2_4.nXd16W1,8);
	DrvBody.nM2_4.nXd16A1.nData.nM216A1[0] = ~(pScuRxData->nM2_4.nXd16A1.nData.nM216A1[0])&0x03;
	DrvBody.nM2_4.nXd16A2.nData.nM216A2[0] = ~(pScuRxData->nM2_4.nXd16A2.nData.nM216A2[0]);
	DrvBody.nM2_4.nXd16A2.nData.nM216A2[1] = ~(pScuRxData->nM2_4.nXd16A2.nData.nM216A2[1]);

	memcpy(&DrvBody.nT_5.nXd16W,&pScuRxData->nT_5.nXd16W1,2);

	DrvBody.nT_5.nXd16.nDoor1 = pScuRxData->nT_5.nXd16A1.nData.nBit.nDoor1;
	DrvBody.nT_5.nXd16.nDoor2 = pScuRxData->nT_5.nXd16A1.nData.nBit.nDoor2;
	DrvBody.nT_5.nXd16.nDoor3 = pScuRxData->nT_5.nXd16A1.nData.nBit.nDoor3;
	DrvBody.nT_5.nXd16.nDoor4 = pScuRxData->nT_5.nXd16A1.nData.nBit.nDoor4;
	DrvBody.nT_5.nXd16.nDoor5 = pScuRxData->nT_5.nXd16A1.nData.nBit.nDoor5;
	DrvBody.nT_5.nXd16.nDoor6 = pScuRxData->nT_5.nXd16A1.nData.nBit.nDoor6;
	DrvBody.nT_5.nXd16.nDoor7 = pScuRxData->nT_5.nXd16A1.nData.nBit.nDoor7;
	DrvBody.nT_5.nXd16.nDoor8 = pScuRxData->nT_5.nXd16A1.nData.nBit.nDoor8;

	memcpy(&DrvBody.nT_6.nXd16W,&pScuRxData->nT_6.nXd16W1,2);

	DrvBody.nT_6.nXd16.nDoor1 = pScuRxData->nT_6.nXd16A1.nData.nBit.nDoor1;
	DrvBody.nT_6.nXd16.nDoor2 = pScuRxData->nT_6.nXd16A1.nData.nBit.nDoor2;
	DrvBody.nT_6.nXd16.nDoor3 = pScuRxData->nT_6.nXd16A1.nData.nBit.nDoor3;
	DrvBody.nT_6.nXd16.nDoor4 = pScuRxData->nT_6.nXd16A1.nData.nBit.nDoor4;
	DrvBody.nT_6.nXd16.nDoor5 = pScuRxData->nT_6.nXd16A1.nData.nBit.nDoor5;
	DrvBody.nT_6.nXd16.nDoor6 = pScuRxData->nT_6.nXd16A1.nData.nBit.nDoor6;
	DrvBody.nT_6.nXd16.nDoor7 = pScuRxData->nT_6.nXd16A1.nData.nBit.nDoor7;
	DrvBody.nT_6.nXd16.nDoor8 = pScuRxData->nT_6.nXd16A1.nData.nBit.nDoor8;


	memcpy(&DrvBody.nM1_7.nXd16W1,&pScuRxData->nM1_7.nXd16W1,8);
	DrvBody.nM1_7.nXd16A1.nData.nM116A1[0] = ~(pScuRxData->nM1_7.nXd16A1.nData.nM116A1[0])&0x03;
	DrvBody.nM1_7.nXd16A2.nData.nM116A2[0] = ~(pScuRxData->nM1_7.nXd16A2.nData.nM116A2[0]);
	DrvBody.nM1_7.nXd16A2.nData.nM116A2[1] = ~(pScuRxData->nM1_7.nXd16A2.nData.nM116A2[1]);

	memcpy(&DrvBody.nM2_8.nXd16W1,&pScuRxData->nM2_8.nXd16W1,8);
	DrvBody.nM2_8.nXd16A1.nData.nM216A1[0] = ~(pScuRxData->nM2_8.nXd16A1.nData.nM216A1[0])&0x03;
	DrvBody.nM2_8.nXd16A2.nData.nM216A2[0] = ~(pScuRxData->nM2_8.nXd16A2.nData.nM216A2[0]);
	DrvBody.nM2_8.nXd16A2.nData.nM216A2[1] = ~(pScuRxData->nM2_8.nXd16A2.nData.nM216A2[1]);

	
	pScuRxData->nTC_9.nXd16W1.nData.nBit.nEm_Brake = ~(pScuRxData->nTC_9.nXd16W1.nData.nBit.nEm_Brake);
	pScuRxData->nTC_9.nXd16W1.nData.nBit.nEpands = ~(pScuRxData->nTC_9.nXd16W1.nData.nBit.nEpands);
	memcpy(&DrvBody.nTC_9.nXd16W1,&pScuRxData->nTC_9.nXd16W1,10);

	//속도
	DrvBody.nTC_0.nHs02B.nSpeed = (UCHAR)(MAKE_WORD(pScuRxData->nTC_0.nHs02B.nData.nWord.nSpeed[0],pScuRxData->nTC_0.nHs02B.nData.nWord.nSpeed[1])*((((860*3.14)/90)*3600)/1000000));
	DrvBody.nTC_9.nHs02B.nSpeed = (UCHAR)(MAKE_WORD(pScuRxData->nTC_9.nHs02B.nData.nWord.nSpeed[0],pScuRxData->nTC_9.nHs02B.nData.nWord.nSpeed[1])*((((860*3.14)/90)*3600)/1000000));

	/***********************************TC - 0***************************************/
	CDMA_AnData(&DrvBody.nTC_0.nAd04W1.nBC,pScuRxData->nTC_0.nAd04W1.nData.nWord.nBC,1,1,0);
	CDMA_AnData(&DrvBody.nTC_0.nAd04W1.nMR,pScuRxData->nTC_0.nAd04W1.nData.nWord.nMR,1,0,0);

	CDMA_AnData(&DrvBody.nTC_0.nAd04W1.nTemp1,(UCHAR*)&pScuRxData->nTC_0.nAd04W1.nData.nWord.nTEMP1,2,0,1);

	CDMA_AnData((UCHAR*)&DrvBody.nTC_0.nAd04W2,(UCHAR*)&pScuRxData->nTC_0.nAd04W2,2,0,0);

	DrvBody.nTC_0.nAd04W1.nMR= DrvBody.nTC_0.nAd04W1.nMR - 10;
	DrvBody.nTC_0.nAd04W1.nMR = (DrvBody.nTC_0.nAd04W1.nMR*2) +(DrvBody.nTC_0.nAd04W1.nMR/2);

	/************************************1호차**************************************/
	CDMA_AnData((UCHAR*)&DrvBody.nM1_1.nAd04W1,(UCHAR*)&pScuRxData->nM1_1.nAd04W1,4,0,0);
	CDMA_AnData(&DrvBody.nM1_1.nAd04W2.nBC,pScuRxData->nM1_1.nAd04W2.nData.nWord.nBC,1,1,0);
	CDMA_AnDataSL(&DrvBody.nM1_1.nAd04W2.nSL,pScuRxData->nM1_1.nAd04W2.nData.nWord.nSL);

	CDMA_AnData(&DrvBody.nM1_1.nAd04W2.nTemp1,(UCHAR*)&pScuRxData->nM1_1.nAd04W2.nData.nWord.nTEMP1,2,0,1);
	CDMA_AnData((UCHAR*)&DrvBody.nM1_1.nAd04W3,(UCHAR*)&pScuRxData->nM1_1.nAd04W3,2,0,0);

	CDMA_AnData((UCHAR*)&sClose_LB4Flag,(UCHAR*)&pScuRxData->nM1_1.nAd04W3.nData.nWord.nClose_LB4An,1,0,0);/*아날로그 값을 디지탈로 변환*/
	DrvBody.nM1_1.nXd16A2.nData.nBit.nCLOSE_LB4 = sClose_LB4Flag >= 70 ? 1 : 0;


	/************************************2호차**************************************/
	CDMA_AnData((UCHAR*)&DrvBody.nM2_2.nAd04W1,(UCHAR*)&pScuRxData->nM2_2.nAd04W1,4,0,0);
	CDMA_AnData(&DrvBody.nM2_2.nAd04W2.nBC,pScuRxData->nM2_2.nAd04W2.nData.nWord.nBC,1,1,0);
	CDMA_AnDataSL(&DrvBody.nM2_2.nAd04W2.nSL,pScuRxData->nM2_2.nAd04W2.nData.nWord.nSL);

	CDMA_AnData(&DrvBody.nM2_2.nAd04W2.nTemp1,(UCHAR*)&pScuRxData->nM2_2.nAd04W2.nData.nWord.nTEMP1,2,0,1);
	CDMA_AnData((UCHAR*)&DrvBody.nM2_2.nAd04W3,(UCHAR*)&pScuRxData->nM2_2.nAd04W3,2,0,0);

	CDMA_AnData((UCHAR*)&sClose_LB4Flag,(UCHAR*)&pScuRxData->nM2_2.nAd04W3.nData.nWord.nClose_LB4An,1,0,0);/*아날로그 값을 디지탈로 변환*/
	DrvBody.nM2_2.nXd16A2.nData.nBit.nCLOSE_LB4 = sClose_LB4Flag >= 70 ? 1 : 0;

	/*************************************3호차*************************************/
	CDMA_AnData((UCHAR*)&DrvBody.nM1_3.nAd04W1,(UCHAR*)&pScuRxData->nM1_3.nAd04W1,4,0,0);
	CDMA_AnData(&DrvBody.nM1_3.nAd04W2.nBC,pScuRxData->nM1_3.nAd04W2.nData.nWord.nBC,1,1,0);
	CDMA_AnDataSL(&DrvBody.nM1_3.nAd04W2.nSL,pScuRxData->nM1_3.nAd04W2.nData.nWord.nSL);

	CDMA_AnData(&DrvBody.nM1_3.nAd04W2.nTemp1,(UCHAR*)&pScuRxData->nM1_3.nAd04W2.nData.nWord.nTEMP1,2,0,1);
	CDMA_AnData((UCHAR*)&DrvBody.nM1_3.nAd04W3,(UCHAR*)&pScuRxData->nM1_3.nAd04W3,2,0,0);

	CDMA_AnData((UCHAR*)&sClose_LB4Flag,(UCHAR*)&pScuRxData->nM1_3.nAd04W3.nData.nWord.nClose_LB4An,1,0,0);/*아날로그 값을 디지탈로 변환*/
	DrvBody.nM1_3.nXd16A2.nData.nBit.nCLOSE_LB4 = sClose_LB4Flag >= 70 ? 1 : 0;

	/***********************************4호차***************************************/
	CDMA_AnData((UCHAR*)&DrvBody.nM2_4.nAd04W1,(UCHAR*)&pScuRxData->nM2_4.nAd04W1,4,0,0);
	CDMA_AnData(&DrvBody.nM2_4.nAd04W2.nBC,pScuRxData->nM2_4.nAd04W2.nData.nWord.nBC,1,1,0);
	CDMA_AnDataSL(&DrvBody.nM2_4.nAd04W2.nSL,pScuRxData->nM2_4.nAd04W2.nData.nWord.nSL);

	CDMA_AnData(&DrvBody.nM2_4.nAd04W2.nTemp1,(UCHAR*)&pScuRxData->nM2_4.nAd04W2.nData.nWord.nTEMP1,2,0,1);
	CDMA_AnData((UCHAR*)&DrvBody.nM2_4.nAd04W3,(UCHAR*)&pScuRxData->nM2_4.nAd04W3,2,0,0);

	CDMA_AnData((UCHAR*)&sClose_LB4Flag,(UCHAR*)&pScuRxData->nM2_4.nAd04W3.nData.nWord.nClose_LB4An,1,0,0);/*아날로그 값을 디지탈로 변환*/
	DrvBody.nM2_4.nXd16A2.nData.nBit.nCLOSE_LB4 = sClose_LB4Flag >= 70 ? 1 : 0;
	
	/***********************************5,6호차***************************************/
	CDMA_AnData(&DrvBody.nT_5.nAd04W1.nBC,pScuRxData->nT_5.nAd04W1.nData.nWord.nBC,1,1,0);
	CDMA_AnData(&DrvBody.nT_5.nAd04W1.nTemp1,(UCHAR*)&pScuRxData->nT_5.nAd04W1.nData.nWord.nTEMP1,2,0,1);

	CDMA_AnData(&DrvBody.nT_6.nAd04W1.nBC,pScuRxData->nT_6.nAd04W1.nData.nWord.nBC,1,1,0);
	CDMA_AnData(&DrvBody.nT_6.nAd04W1.nTemp1,(UCHAR*)&pScuRxData->nT_6.nAd04W1.nData.nWord.nTEMP1,2,0,1);

	/***********************************7호차***************************************/
	CDMA_AnData((UCHAR*)&DrvBody.nM1_7.nAd04W1,(UCHAR*)&pScuRxData->nM1_7.nAd04W1,4,0,0);
	CDMA_AnData(&DrvBody.nM1_7.nAd04W2.nBC,pScuRxData->nM1_7.nAd04W2.nData.nWord.nBC,1,1,0);
	CDMA_AnDataSL(&DrvBody.nM1_7.nAd04W2.nSL,pScuRxData->nM1_7.nAd04W2.nData.nWord.nSL);

	CDMA_AnData(&DrvBody.nM1_7.nAd04W2.nTemp1,(UCHAR*)&pScuRxData->nM1_7.nAd04W2.nData.nWord.nTEMP1,2,0,1);
	CDMA_AnData((UCHAR*)&DrvBody.nM1_7.nAd04W3,(UCHAR*)&pScuRxData->nM1_7.nAd04W3,2,0,0);

	CDMA_AnData((UCHAR*)&sClose_LB4Flag,(UCHAR*)&pScuRxData->nM1_7.nAd04W3.nData.nWord.nClose_LB4An,1,0,0);/*아날로그 값을 디지탈로 변환*/
	DrvBody.nM1_7.nXd16A2.nData.nBit.nCLOSE_LB4 = sClose_LB4Flag >= 70 ? 1 : 0;

	/************************************8호차**************************************/
	CDMA_AnData((UCHAR*)&DrvBody.nM2_8.nAd04W1,(UCHAR*)&pScuRxData->nM2_8.nAd04W1,4,0,0);
	CDMA_AnData(&DrvBody.nM2_8.nAd04W2.nBC,pScuRxData->nM2_8.nAd04W2.nData.nWord.nBC,1,1,0);
	CDMA_AnDataSL(&DrvBody.nM2_8.nAd04W2.nSL,pScuRxData->nM2_8.nAd04W2.nData.nWord.nSL);

	CDMA_AnData(&DrvBody.nM2_8.nAd04W2.nTemp1,(UCHAR*)&pScuRxData->nM2_8.nAd04W2.nData.nWord.nTEMP1,2,0,1);
	CDMA_AnData((UCHAR*)&DrvBody.nM2_8.nAd04W3,(UCHAR*)&pScuRxData->nM2_8.nAd04W3,2,0,0);

	CDMA_AnData((UCHAR*)&sClose_LB4Flag,(UCHAR*)&pScuRxData->nM2_8.nAd04W3.nData.nWord.nClose_LB4An,1,0,0);/*아날로그 값을 디지탈로 변환*/
	DrvBody.nM2_8.nXd16A2.nData.nBit.nCLOSE_LB4 = sClose_LB4Flag >= 70 ? 1 : 0;

	/*************************************9호차*************************************/
	CDMA_AnData((UCHAR*)&DrvBody.nTC_9.nAd04W1.nBC,(UCHAR*)&pScuRxData->nTC_9.nAd04W1.nData.nWord.nBC,1,1,0);
	CDMA_AnData(&DrvBody.nTC_9.nAd04W1.nMR,pScuRxData->nTC_9.nAd04W1.nData.nWord.nMR,1,0,0);
	CDMA_AnData(&DrvBody.nTC_9.nAd04W1.nTemp1,(UCHAR*)&pScuRxData->nTC_9.nAd04W1.nData.nWord.nTEMP1,2,0,1);

	CDMA_AnData((UCHAR*)&DrvBody.nTC_9.nAd04W2,(UCHAR*)&pScuRxData->nTC_9.nAd04W2,2,0,0);

	DrvBody.nTC_9.nAd04W1.nMR= DrvBody.nTC_9.nAd04W1.nMR - 10;
	DrvBody.nTC_9.nAd04W1.nMR = (DrvBody.nTC_9.nAd04W1.nMR*2) +(DrvBody.nTC_9.nAd04W1.nMR/2);

	m_CarTempCnt = 0;

	memcpy(m_CDMA_Buf,&DrvBody,sizeof(DrvBody));

	//CDMA_SEND(&DrvBody,pInData,166,sFlag); //전송 타입으로 전환한다.

}

/***********************************************************************************
		Display_AnData
***********************************************************************************/
void CDMA_AnData(UCHAR *pBackUp,UCHAR *pSouData,UCHAR Cnt,UCHAR nBcBrake,UCHAR nTemp)
{
	int i;
	USHORT sAnDataVal = 0;

	WORD *sTempVal;

	for(i = 0;i < Cnt;i++)
	{
		sAnDataVal = MAKE_WORD(pSouData[(i*2)],pSouData[(i*2)+1]);

		sAnDataVal = sAnDataVal+260;
		if(sAnDataVal > 32767){sAnDataVal = 65535 - sAnDataVal;}
		sAnDataVal = ((sAnDataVal/3276)*10)+((sAnDataVal%3276)/327);

		if(nBcBrake)
		{
			sAnDataVal = sAnDataVal - 10;
			sAnDataVal = sAnDataVal + (sAnDataVal/2);
		}
		else if(nTemp)
		{
			sTempVal = (WORD *)&nTemp_Val.nT_0;

			sAnDataVal = MAKE_WORD(pSouData[(i*2)],pSouData[(i*2)+1]);

			if((sAnDataVal) >= 5025)
			{
				sAnDataVal = ((sAnDataVal)-5025);
				sAnDataVal = (sAnDataVal)/19;
			}
			else {
				sAnDataVal = (5025-(sAnDataVal));
				sAnDataVal = (sAnDataVal)/19;
				sAnDataVal = 65535 - sAnDataVal;
			}
			
			sAnDataVal = sTempVal[m_CarTempCnt] + sAnDataVal;

			m_CarTempCnt++;

		}

		pBackUp[i] = (UCHAR)WORD_L(sAnDataVal);

		
	}
}
/***********************************************************************************
		CDMA_AnDataSL
***********************************************************************************/
void CDMA_AnDataSL(UCHAR *pBackUp,UCHAR *pSouData)
{
	USHORT sAnDataVal = 0;
	int sTempData3 =0;
	int sValCheck = 0;
	int sH =0;
	int sL = 0;

	sAnDataVal = MAKE_WORD(pSouData[0],pSouData[1]);

	if(sAnDataVal > 32767)
	{
		sValCheck = 0;
	}
	else
	{
		sValCheck = 1;
	}

	if(sAnDataVal > 32767){sAnDataVal = 65535 - sAnDataVal;}
	sAnDataVal = ((sAnDataVal/3276)*10)+((sAnDataVal%3276)/327);

	if(sValCheck){
		sAnDataVal = sAnDataVal + ((sAnDataVal/10)*6); 

		sH = ((sAnDataVal/100)&0x01);
		sL = ((sAnDataVal%10) > 6) ? 6 : (sAnDataVal%10);

		sTempData3 |= (sH)<<6;
		sTempData3 |= (((sAnDataVal/10)-(sH*10))&0x0F)<<2;
		sTempData3 |= (sL>>1)&0x03;
	}
	else{
		sAnDataVal = sAnDataVal + ((sAnDataVal/10)*6); 

		sH = ((sAnDataVal/100)&0x01);
		sL = ((sAnDataVal%10) > 6) ? 6 : (sAnDataVal%10);

		sTempData3 = 0x80;
		sTempData3 |= (sH)<<6;
		sTempData3 |= (((sAnDataVal/10)-(sH*10))&0x0F)<<2;
		sTempData3 |= (sL>>1)&0x03;
		
	}
	
	pBackUp[0] = WORD_L(sTempData3); 

}

/***********************************************************************************
		CDMA_TIMER
***********************************************************************************/
void CDMA_TIMER()
{
	nCdmaTimeDlyCnt++;

}
