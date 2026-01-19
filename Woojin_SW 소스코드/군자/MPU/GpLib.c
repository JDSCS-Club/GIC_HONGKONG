/*******************************************************************/
/* GpLib.c                                                         */
/*******************************************************************/
#ifndef _GPLIB_C_
#define _GPLIB_C_

#include <vxWorks.h>
#include <ioLib.h>
#include <semLib.h>
#include <stdlib.h>
#include <wdlib.h>

#include "GpLib.h"
#include "mmtype.h"

int m_GpFd = ERROR;				/* GP ID */
SEM_ID m_semGpId;		/* GP 세마포어 ID */
USHORT m_nAnswerAddr;	/* 응답할 주소 */
WDOG_ID m_wdGpButtonId;	/* GP 버튼 와치독 ID */
BOOL m_bButtonSkip;		
USHORT m_nAnswerSize;	/* 응답할 데이터 */
LOCAL UCHAR m_RevBuffer[MAX_REV_BUFFER_SIZE];	/* 수신 버퍼 */
LOCAL int m_nRxPos;		/* GP에서 전송된 데이터의 인덱스 */

int m_nRevCommTaskId=0;	/* GP 수신 Task ID */

/*********************************************************/
/* GP Port 오픈                                          */
/**********************************************************/
int gp_PortOpen()
{
	m_wdGpButtonId = wdCreate();
	m_GpFd = open(GP_DEV_NAME,2,0);
	ioctl(m_GpFd,FIOFLUSH,0);
	ioctl(m_GpFd,0x100c,-1);
	if(ERROR == ioctl(m_GpFd,FIOBAUDRATE,GP_DEV_BAUDRATE)) TRACE("Error: GP Screen Setting Failure..!!");
	
	m_semGpId = semBCreate(SEM_Q_FIFO,SEM_FULL);
	return m_GpFd;
}

/*********************************************************/
/* GP로 데이터 전송                                      */
/*********************************************************/
void gp_SendComm(UCHAR *ptl,int size)
{
	while(!m_GpFd || m_GpFd == ERROR) 
	{
		TRACE("GP port not open!!\n");
		taskDelay(100);
	}

	semTake(m_semGpId,WAIT_FOREVER);
	
	
	if(write(m_GpFd,ptl,size) == ERROR)
	{
		TRACE("GP port write error!!!\n");
		semGive(m_semGpId);
		return;
	}
	
	semGive(m_semGpId);
}


/*********************************************************/
/* Read Protocol at Gp Address                           */
/* - Input:  Addr = 16bit Address                        */
/* - Output: None                                        */
/*********************************************************/
void gp_ReadingWord(USHORT Addr)
{
	UCHAR Pt[GP_MAX_PTL];
	int i=0;
	Pt[i++] = GP_ESC;
	Pt[i++] = 'R';
	Pt[i++] = (Addr>>8)&0xff;
	Pt[i++] = (Addr&0xff);
	Pt[i++] = 0x00;
	Pt[i++] = 0x01;
	
	m_nAnswerAddr = Addr;	
	m_nAnswerSize = 0x01;
	gp_SendComm(Pt,i);
}



/*********************************************************/
/* Read Protocol at Gp Address                           */
/* - Input: Addr = 16bit Address                         */
/*          size = size to want Receive Data(2Byte Pack) */
/* - Output: None                                        */
/*********************************************************/
void gp_ReadingWordData(USHORT Addr,USHORT size)
{
	UCHAR Pt[GP_MAX_PTL];
	int i=0;
	Pt[i++] = GP_ESC;
	Pt[i++] = 'R';
	Pt[i++] = (Addr>>8)&0xff;
	Pt[i++] = (Addr&0xff);
	Pt[i++] = (size>>8)&0xff;
	Pt[i++] = (size&0xff);
	
	
	m_nAnswerAddr = Addr;	
	m_nAnswerSize = size;
	gp_SendComm(Pt,i);
}

/*********************************************************/
/* Write Protocol at Gp Address                          */
/* - Input: Addr = 16bit Address                         */
/*          wWata = 2byte step Data                      */
/* - Output: None                                        */
/*********************************************************/
void gp_WritingWord(USHORT Addr,USHORT wWord)
{	
	UCHAR Pt[GP_MAX_PTL];
	int i=0,j;
	
	Pt[i++] = GP_ESC;
	Pt[i++] = 'W';
	Pt[i++] = (Addr>>8)&0x00ff;
	Pt[i++] = (Addr&0x00ff);
	Pt[i++] = 0;
	Pt[i++] = 0x01;
	Pt[i++] = WORD_H(wWord);
	Pt[i++] = WORD_L(wWord);
	
	gp_SendComm(Pt,i);
}

/*****************************************************/
/*       Write Register at Gp Alarm                  */
/*          wWata = 2byte Register Data              */
/*  Output: None                                     */
/*  => Before use : semTake(m_semGpId,WAIT_FOREVER); */
/*  => After  use : semGive(m_semGpId);				 */
/*****************************************************/
void gp_WritingAlarm(USHORT wWord)
{	
	UCHAR Pt[GP_MAX_PTL];
	int i=0,j;

	if(!m_GpFd || m_GpFd == ERROR) return;
	
	Pt[i++] = GP_ESC;
	Pt[i++] = 'W';
	Pt[i++] = 0x00;
	Pt[i++] = 0x0B;
	Pt[i++] = 0x00;
	Pt[i++] = 0x01;
	Pt[i++] = WORD_H(wWord);
	Pt[i++] = WORD_L(wWord);
	
	write(m_GpFd,Pt,i);
}

/*********************************************************/
/* Write Protocol at Gp Address                          */
/* - Input: Addr = 16bit Address                         */
/*          wWata = 4byte step Data                      */
/* - Output: None                                        */
/*********************************************************/
void gp_WritingDWord(USHORT Addr,UINT dwDWord)
{	
	UCHAR Pt[GP_MAX_PTL];
	int i=0,j;
	
	Pt[i++] = GP_ESC;
	Pt[i++] = 'W';
	Pt[i++] = WORD_H(Addr);
	Pt[i++] = WORD_L(Addr);
	Pt[i++] = 0;
	Pt[i++] = 0x02;
	Pt[i++] = WORD_H(dwDWord>>16);
	Pt[i++] = WORD_L(dwDWord>>16);
	Pt[i++] = WORD_H(dwDWord&0x0ffff);
	Pt[i++] = WORD_L(dwDWord&0x0ffff);
	
	gp_SendComm(Pt,i);
}

/*********************************************************/
/* Write Protocol at Gp Address                          */
/* - Input: Addr = 16bit Address                         */
/*          wWata = WORD STRING                          */
/* - Output: None                                        */
/*********************************************************/
void gp_WritingWStr(USHORT Addr,BYTE *pszStr)
{
    UCHAR Pt[GP_MAX_PTL];
    int i=0,j;
    USHORT bsize = strlen(pszStr),wsize = (bsize>>1) + 1;
    Pt[i++] = GP_ESC;
    Pt[i++] = 'W';
    Pt[i++] = WORD_H(Addr);
    Pt[i++] = WORD_L(Addr);
    Pt[i++] = WORD_H(wsize);
    Pt[i++] = WORD_L(wsize);

    for(j=0;j<(wsize<<1);j++)
    {
        if(j<bsize) Pt[i++] = pszStr[j];
        else Pt[i++] = NULL;
    }

    gp_SendComm(Pt,i);
}


/*********************************************************/
/* Write Protocol at Gp Address                          */
/* - Input: Addr = 16bit Address                         */
/*          wWata = WORD STRING                          */
/* - Output: None                                        */
/*********************************************************/
void gp_WritingWStrN(USHORT Addr,BYTE *pszStr,USHORT wMaxSize)
{
    UCHAR Pt[GP_MAX_PTL];
    int i=0,j;
    USHORT bsize = MIN(wMaxSize,strlen(pszStr)),wsize = (bsize>>1) + 1;
    Pt[i++] = GP_ESC;
    Pt[i++] = 'W';
    Pt[i++] = WORD_H(Addr);
    Pt[i++] = WORD_L(Addr);
    Pt[i++] = WORD_H(wsize);
    Pt[i++] = WORD_L(wsize);

    for(j=0;j<(wsize<<1);j++)
    {
        if(j<bsize) Pt[i++] = pszStr[j];
        else Pt[i++] = NULL;
    }

    gp_SendComm(Pt,i);
}

/*********************************************************/
/* Write Protocol at Gp Address                          */
/* - Input: Addr = 16bit Address                         */
/*          wWata = 1byte step Data                      */
/*          size = size of pData array(even)             */ 
/* - Output: None                                        */
/*********************************************************/
void gp_WritingByteData(USHORT Addr,UCHAR *pData,USHORT size)
{
	
	UCHAR Pt[GP_MAX_PTL];
	int i=0,j;
	Pt[i++] = GP_ESC;
	Pt[i++] = 'W';
	Pt[i++] = (Addr>>8)&0xff;
	Pt[i++] = (Addr&0xff);
	
	Pt[i++] = ((size/2)>>8)&0xff;
	Pt[i++] = ((size/2)&0xff);
	
	for(j=0;j<size;j++)	Pt[i++] = pData[j];
	
	gp_SendComm(Pt,i);
}

/*********************************************************/
/* Write Protocol at Gp Address                          */
/* - Input: Addr = 16bit Address                         */
/*          wWata = 2byte pData array                    */
/* - Output: None                                        */
/*********************************************************/
void gp_WritingWordData(USHORT Addr,USHORT *pData,USHORT size)
{	
	UCHAR Pt[GP_MAX_PTL];
	int i=0,j;
	Pt[i++] = GP_ESC;
	Pt[i++] = 'W';
	Pt[i++] = (Addr>>8)&0x00ff;
	Pt[i++] = (Addr&0x00ff);
	Pt[i++] = (size>>8)&0x00ff;
	Pt[i++] = (size&0x00ff);
	
	for(j=0;j<size;j++)
	{
		Pt[i++] = (pData[j]>>8)&0x00ff;
		Pt[i++] = pData[j]&0x00ff;
	}
	
	gp_SendComm(Pt,i);
}

/*********************************************************/
/* Write Protocol at Gp Address                          */
/* - Input: Addr = 16bit Address                         */
/*          wWata = 2byte Fill Data                      */
/* - Output: None                                        */
/*********************************************************/
void gp_WritingWordFill(USHORT Addr,USHORT wFillData,USHORT size)
{	
	UCHAR Pt[GP_MAX_PTL];
	int i=0,j;
	Pt[i++] = GP_ESC;
	Pt[i++] = 'W';
	Pt[i++] = (Addr>>8)&0x00ff;
	Pt[i++] = (Addr&0x00ff);
	Pt[i++] = (size>>8)&0x00ff;
	Pt[i++] = (size&0x00ff);
	
	for(j=0;j<size;j++)
	{
		Pt[i++] = (wFillData>>8)&0x00ff;
		Pt[i++] = wFillData&0x00ff;
	}
	
	gp_SendComm(Pt,i);
}

/*********************************************************/
/* GP 화면전환                                           */
/*********************************************************/
void gp_ScreenChange(USHORT nCode)
{
	int i = 0;
	char cPt[100];
	
	cPt[i++] = GP_ESC;
	cPt[i++] = 'W';
	cPt[i++] = 0x00;
	cPt[i++] = 0x0f;
	cPt[i++] = 0x00;
	cPt[i++] = 0x01;
	cPt[i++] = WORD_H(nCode);
	cPt[i++] = WORD_L(nCode);
	
	gp_SendComm(cPt,i);
}

/* GP가 꺼지는 시각을 입력한다. */
void gp_ScreenSave(USHORT wTime)
{
	/* gp_WritingWord(12,wTime); */
}

void gp_ScreenOff()
{
	gp_ScreenSave(0xFFFF);
}

void gp_ScreenOn()
{
	gp_ScreenSave(0x0000);
}

/*******************************************************************************/
/* GP의 화면을 OFF 한다 gp_ScreenOff 기능                                      */
/* 입력(wTick)  : wTick 동안 부져를 울린다.				       */
/* Register 11  | 15 ... 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |                       */
/*              | Reserved |   |   |   |Res|   |   |   |                       */
/*                           |   |   |       |   |   +-- Back lignt OFF        */
/*                           |   |   |       |   +-- Buzzer On                 */
/*                           |   |   |       +-- Start Printing                */
/*                           |   |   +-- Buzzer Sound (0:ON ,1:OFF)           */
/*                           |    +-- AUX Output (0:ON ,1:OFF)                */
/*                           +-- Screen On/Off Interrupt (225)                 */
/*******************************************************************************/
void gp_BuzzerTimer(USHORT wTick)
{
	gp_WritingWord(11,BIT06|BIT01);
	taskDelay(wTick);
	gp_WritingWord(11,BIT06|BIT04);
}

void gp_BuzzerReset()
{
	gp_WritingWord(11,BIT06|BIT04);
}

void gp_AlarmTimer(USHORT wTick)
{
	taskDelay(wTick);
	gp_WritingAlarm(BIT06|BIT01);
	taskDelay(wTick);
	gp_WritingAlarm(BIT06|BIT04);
}

void gp_AlarmBuzzer()
{
	semTake(m_semGpId,WAIT_FOREVER);
	gp_AlarmTimer(100);	
	gp_AlarmTimer(100);	
	semGive(m_semGpId);
}

void gp_DoubleAlarmBuzzer()
{
	gp_AlarmBuzzer();
	taskDelay(500);
	gp_AlarmBuzzer();
	taskDelay(500);
}

void gp_TripleAlarmBuzzer()
{
	semTake(m_semGpId,WAIT_FOREVER);
	gp_AlarmTimer(100);
	gp_AlarmTimer(100);
	gp_AlarmTimer(100);
	taskDelay(500);
	gp_AlarmTimer(100);
	gp_AlarmTimer(100);
	gp_AlarmTimer(100);
	semGive(m_semGpId);
}

/*********************************************************/
/* BCD 코드로 GP의 시간을 설정한다.                      */
/*********************************************************/
void gp_SetGpDTime(UCHAR chBuf[])
{
    USHORT wBuf[10];
    wBuf[0] = chBuf[0];		/* 년 */
    wBuf[1] = chBuf[1];		/* 월 */
    wBuf[2] = chBuf[2];		/* 일 */
    wBuf[3] = chBuf[3];		/* 시 */
    wBuf[4] = chBuf[4];		/* 분 */
    gp_WritingWordData(4,wBuf,5);
	TRACE("=> Set Gp Time Clock\n");
}

/*********************************************************/
/* GP로부터 데이터 수신 -Task Routine                    */
/*********************************************************/
void gp_RevComm()
{
	int nNum,i,size;
	UCHAR pRx[MAX_REV_BUFFER_SIZE];
	
	m_nRxPos = 0;
	
	if(m_GpFd != ERROR)	
	{
		while(1)
		{
			if(ERROR == ioctl(m_GpFd,FIONREAD,(int)&nNum)) TRACE("FIONREAD Error");
			nNum = read(m_GpFd,pRx,1);
			if(nNum > 0)
			{
				for(i=0;i<nNum;i++)
				{
					m_RevBuffer[m_nRxPos] = pRx[i];
					m_nRxPos = (m_nRxPos + 1) % MAX_REV_BUFFER_SIZE;
					if(m_RevBuffer[0] != GP_ESC) m_nRxPos = 0;                     		        
					
				}
				if(gp_RevCommProcess())
				{
				}
			}
		}
	}	
	else 
	{
		TRACE("%s 통신 포트 열기 안됨!!\n",GP_DEV_NAME);
	}
}

BOOL gp_LibAnswerWord(const UCHAR Ptl[],int size)
{
	return gp_AnswerWord(m_nAnswerAddr,Ptl,size);
}

/*********************************************************/
/* 타이머에 의해 GP 버튼 비활성화                        */
/*********************************************************/
void gp_ButtonSkipTimer()
{
	m_bButtonSkip = FALSE;
}


/*********************************************************/
/* GP 수신 데이터 처리기                                 */
/*********************************************************/
BOOL gp_RevCommProcess()
{
	int i,bRet;
	int size;
	ULONG lTick;
	
	if(m_nRxPos < 3) return FALSE;
	if(m_RevBuffer[0] == GP_ESC)
	{
		switch(m_RevBuffer[1])
		{			
		case 'I': /* GP 인터럽트 */
			size = m_RevBuffer[2];	
			if(m_nRxPos >= size + 3)
			{
				m_nRxPos = 0;
				if(!m_bButtonSkip)
				{
					lTick = tickGet();
					bRet = gp_ButtonProcess(&m_RevBuffer[3],size);
					lTick = tickGet() - lTick;
					if(lTick>=1) /* 100ms 이상 소요시 눌렸던 버튼 모두 취소 */
					{
						wdCancel(m_wdGpButtonId);
						m_bButtonSkip = TRUE;
						wdStart(m_wdGpButtonId,1,(FUNCPTR)gp_ButtonSkipTimer,0);
					}
				}
				else 
				{
					bRet = FALSE;
				}
			
				return bRet;
			}				
			break;
			
		case 'A': /* 응답 'R' */
			size = m_nAnswerSize * 2; /* Word Method */
			if(m_nRxPos >= size + 2)
			{
				m_nRxPos = 0;
				return gp_LibAnswerWord(&m_RevBuffer[2],size);
			}
			break;
		}
	}	
}

void gp_LibInit(BOOL bFail)
{
	if(m_GpFd==ERROR) gp_PortOpen();

	if(!bFail)
	{
		m_nRevCommTaskId = taskSpawn("uGpRevComm",GP_PRIORITY,0,10000,gp_RevComm,0,0,0,0,0,0,0,0,0,0);
	}

}

void gp_LibClose()
{
	semTake(m_semGpId,WAIT_FOREVER);

	if(taskIdVerify(m_nRevCommTaskId) == OK) taskDelete(m_nRevCommTaskId);

	semGive(m_semGpId);
	semDelete(m_semGpId);
	close(m_GpFd);

	wdCancel(m_wdGpButtonId);
	wdDelete(m_wdGpButtonId);
}


#endif /* _GPLIB_C_ */