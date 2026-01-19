#include <Types/vxTypesOld.h>


#ifndef _DS1647_H_
#define _DS1647_H_

typedef union
{
	struct
	{
		char W : 1;
		char R : 1;
		char Spare : 6;
	} CtrlBit;
	
	struct
	{
		char Osc : 1;
		char Sec : 7;
	} SecBit;
	
	struct
	{
		char Spare1 : 1;
		char FT : 1;
		char SPare2 : 3;
		char Day : 3;
	} DayBit;
	
	UCHAR B8;
} DS1647ONELTP, *PDS1647ONELTP;

typedef struct
{
	PDS1647ONELTP Ctrl;
	PDS1647ONELTP Second;
	PDS1647ONELTP Minute;
	PDS1647ONELTP Hour;
	PDS1647ONELTP Day;
	PDS1647ONELTP Date;
	PDS1647ONELTP Month;
	PDS1647ONELTP Year;
} DS1647TP, *PDS1647TP;

DS1647TP Ds1647Tp;

#define DS1647_BASE 0xF2000000

typedef struct
{
	UCHAR second;
	UCHAR minute;
	UCHAR hour;
	UCHAR day;
	UCHAR month;
	UCHAR year;
	UCHAR weekday;
} DATE_TIME_TYPE, *DATE_TIME_PTR;

void timeInit();
UCHAR timeAsc2Hex(char Ch);
void timeStart();
int timeGet(DATE_TIME_PTR pTmSt);
int timeSet(char *pTmDat);
void timeShow();


#endif