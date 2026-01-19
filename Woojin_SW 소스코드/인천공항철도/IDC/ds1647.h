#ifndef _DS1647_H_
#define _DS1647_H_

#define DS1647_ADR 0x200000
#define DS1647_MEM(a) (*(BYTE *)(DS1647_ADR + (a)))
#define DS1647_SPEC_REG(x) (*(BYTE  *)(DS1647_ADR + 0x7FFF0 + (x)))

#define DS1647_CTRL DS1647_SPEC_REG(0x08)
#define DS1647_SEC DS1647_SPEC_REG(0x09)
#define DS1647_MIN DS1647_SPEC_REG(0x0A)
#define DS1647_HOUR DS1647_SPEC_REG(0x0B)
#define DS1647_DAY DS1647_SPEC_REG(0x0D)
#define DS1647_MON DS1647_SPEC_REG(0x0E)
#define DS1647_YEAR DS1647_SPEC_REG(0x0F)

#define DS1647_OSCSTART 0x80

#define DS1647_WRITE 0x80
#define DS1647_READ 0x40

typedef struct{
	BYTE Sec;	
	BYTE Min;
	BYTE Hour;
	BYTE Week;
	BYTE Day;
	BYTE Mon;
	BYTE Year;
} TMSTRT, *PTMSTRT;

/***************************************************************************************
	DS1647 Start
****************************************************************************************/
void TimeStart()
{
	DS1647_CTRL |= DS1647_WRITE;
	DS1647_SEC &= ~DS1647_OSCSTART;
	DS1647_CTRL &= ~DS1647_WRITE;
}

/***************************************************************************************
	DS1647 Get Time
****************************************************************************************/
void TimeGet(PTMSTRT pTmBuf)
{	
	int i;
	BYTE *p;
	
	DS1647_CTRL |= DS1647_READ;
	
	p = (BYTE *)pTmBuf;
	for(i=0;i<7;i++) p[i] = DS1647_SPEC_REG(i+9);
	
	DS1647_CTRL &= ~DS1647_READ;
}

/***************************************************************************************
	DS1647 Set Time
	char buf[]={0x04,0x01,0x08,0x12,0x23,0x45};
****************************************************************************************/
void TimeSet(BYTE *pBuf)
{	
	int i;
	
	DS1647_CTRL |= DS1647_WRITE;
	
	DS1647_SEC = (pBuf[5]&0x7F);
	DS1647_MIN = pBuf[4];
	DS1647_HOUR = pBuf[3];
	DS1647_DAY = pBuf[2];
	DS1647_MON = pBuf[1];
	DS1647_YEAR = pBuf[0];
	
	DS1647_CTRL &= ~DS1647_WRITE;
}

#endif
