/**********************************************************************
 * Details:
 *
 * Porgram By Yeon Jun Sang
 *
 *	DS1646 consists of 8 8-bit registers for 
 *	control and time keeping. The date and time registers are in BCD format, 
 *	arranged as shown below:
 *
 *                        Data
 *   Address    |  D7 D6 D5 D4 D3 D2 D1 D0 |  Function
 *   ---------+--------------------------+----------------------
 *   0x7ffff    |  -- -- -- -- -- -- -- -- |  Year     (00-0x99)
 *   0x7fffe    |   0  0  0 -- -- -- -- -- |  Month    (01-0x12)
 *   0x7fffd    |   0  0 -- -- -- -- -- -- |  Day      (01-0x31)
 *   0x7fffc    |   0 FT  0  0  0 -- -- -- |  Weekday  (01-0x7)
 *   0x7fffb    |  KS  0 -- -- -- -- -- -- |  Hour     (00-0x23)
 *   0x7fffa    |   0 -- -- -- -- -- -- -- |  Minutes  (00-0x59)
 *   0x7fff9    |  ST -- -- -- -- -- -- -- |  Seconds  (00-0x59)
 *   0x7fff8    |   W  R  S -- -- -- -- -- |  Control
 *   ---------+--------------------------+----------------------
 *   Key:  ST = Stop Bit     R = Read Bit      FT = Frequency Test
 *          W = Write Bit    S = Sign Bit      KS = Kick Start
 *
 *   The addresses are really the offset from the start of the battery-backed
 *   ram base. The DS1646 does not use interrupts in any way.
 *
 */
#include <Types/vxTypesOld.h>
#include <vxWorks.h>

#include "ds1647.h"

int gTimeInitFlag = FALSE;

/**********************************************************************************
	DS1647초기화
***********************************************************************************/
void timeInit()
{
	Ds1647Tp.Ctrl = (DS1647ONELTP *)(DS1647_BASE + 0x7FFF8);
	Ds1647Tp.Second = (DS1647ONELTP *)(DS1647_BASE + 0x7FFF9);
	Ds1647Tp.Minute = (DS1647ONELTP *)(DS1647_BASE + 0x7FFFA);
	Ds1647Tp.Hour = (DS1647ONELTP *)(DS1647_BASE + 0x7FFFB);
	Ds1647Tp.Day = (DS1647ONELTP *)(DS1647_BASE + 0x7FFFC);
	Ds1647Tp.Date = (DS1647ONELTP *)(DS1647_BASE + 0x7FFFD);
	Ds1647Tp.Month = (DS1647ONELTP *)(DS1647_BASE + 0x7FFFE);
	Ds1647Tp.Year = (DS1647ONELTP *)(DS1647_BASE + 0x7FFFF);
	
	Ds1647Tp.Ctrl->CtrlBit.W = 0;
	Ds1647Tp.Ctrl->CtrlBit.R = 0;
	
	gTimeInitFlag = TRUE;
}

/**********************************************************************************
	ASCII를 HEX로 바꾼다.
***********************************************************************************/
UCHAR timeAsc2Hex(char Ch)
{
	if((char)Ch >= 'a' && (char)Ch <= 'f') return Ch - 'a' + 10;
	else
		if((char)Ch >= 'A' && (char)Ch <= 'F') return Ch - 'A' + 10;
		else
			if((char)Ch >= '0' && (char)Ch <= '9') return Ch - '0';
			else return 0;
}

/**********************************************************************************
	DS1647를 시작비트를 시작시킨다.
***********************************************************************************/
void timeStart()
{
	if(!gTimeInitFlag) timeInit();

	Ds1647Tp.Ctrl->CtrlBit.W = 1;	
	Ds1647Tp.Second->SecBit.Osc = 0;
	Ds1647Tp.Ctrl->CtrlBit.W = 0;
}

/**********************************************************************************
	DS1647에서 시간을 얻어온다.
***********************************************************************************/
int timeGet(DATE_TIME_PTR pTmSt)
{
	Ds1647Tp.Ctrl->CtrlBit.R = 1;	

	pTmSt->second = Ds1647Tp.Second->B8 & 0x7F;
	pTmSt->minute = Ds1647Tp.Minute->B8;
	pTmSt->hour =  Ds1647Tp.Hour->B8;
	pTmSt->day =   Ds1647Tp.Date->B8;
	pTmSt->month=  Ds1647Tp.Month->B8;
	pTmSt->year =  Ds1647Tp.Year->B8;
	pTmSt->weekday = Ds1647Tp.Day->B8;

	Ds1647Tp.Ctrl->CtrlBit.R = 0;
}

/**********************************************************************************
	시간을 설정한다.
	Type => timeSet("MMDDYYHHMMSS");
***********************************************************************************/
int timeSet(char *pTmDat)
{
	if(!strlen(pTmDat) || strlen(pTmDat) > 12)
	{
		printf("MMDDYYHHMM\n");
		return ERROR;
	}
	
	Ds1647Tp.Ctrl->CtrlBit.W = 1;	

	Ds1647Tp.Month->B8 = timeAsc2Hex(pTmDat[0])<<4 | timeAsc2Hex(pTmDat[1]);
	Ds1647Tp.Date->B8 = timeAsc2Hex(pTmDat[2])<<4 | timeAsc2Hex(pTmDat[3]);
	Ds1647Tp.Year->B8 = timeAsc2Hex(pTmDat[4])<<4 | timeAsc2Hex(pTmDat[5]);
	Ds1647Tp.Hour->B8 = timeAsc2Hex(pTmDat[6])<<4 | timeAsc2Hex(pTmDat[7]);
	Ds1647Tp.Minute->B8 = timeAsc2Hex(pTmDat[8])<<4 | timeAsc2Hex(pTmDat[9]);
	Ds1647Tp.Second->B8 = timeAsc2Hex(pTmDat[10])<<4 | timeAsc2Hex(pTmDat[11])&0x7F;
	
	Ds1647Tp.Ctrl->CtrlBit.W = 0;
	
	return OK;
}

/**********************************************************************************
	설정된 시간을 보여준다.
***********************************************************************************/
void timeShow()
{
	Ds1647Tp.Ctrl->CtrlBit.R = 1;	
	printf("20[%02X]:[%02X]:[%02X]:[%02X]:[%02X]:[%02X]\n"
		,Ds1647Tp.Year->B8,Ds1647Tp.Month->B8,Ds1647Tp.Date->B8,Ds1647Tp.Hour->B8,Ds1647Tp.Minute->B8,Ds1647Tp.Second->B8&0x7F);
	Ds1647Tp.Ctrl->CtrlBit.R = 0;
}