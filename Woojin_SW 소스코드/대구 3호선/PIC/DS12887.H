#define RTC_WR(nAddr,nDat) {(*(BYTE *)0x120000) = nAddr; (*(BYTE *)0x121000) = nDat;}
#define RTC_RD(nAddr,nDat) {(*(BYTE *)0x120000) = nAddr; nDat = (*(BYTE *)0x121000) & 0xff;}

typedef struct ds12887_time
{
	BYTE second;
	BYTE minute;
	BYTE hour;
	BYTE day;
	BYTE month;
	BYTE year;
} DS12887_TIME;

/*********************************************************************************
	DS12887에서 시간을 구조체로 얻어온다.
**********************************************************************************/
DS12887_TIME DS12887_GetTime()
{
	DS12887_TIME time;
	
	RTC_RD(0x00,time.second);	
	RTC_RD(0x02,time.minute);	
	RTC_RD(0x04,time.hour);	
	RTC_RD(0x07,time.day);	
	RTC_RD(0x08,time.month);	
	RTC_RD(0x09,time.year);	
	
	return time;
}

/*********************************************************************************
	DS12887에서 시간을 버퍼로 얻어온다.
**********************************************************************************/
void DS12887_GetTimeBuffer(BYTE *pBuffer)
{
	RTC_RD(0x00,pBuffer[0]);	
	RTC_RD(0x02,pBuffer[1]);	
	RTC_RD(0x04,pBuffer[2]);	
	RTC_RD(0x07,pBuffer[3]);	
	RTC_RD(0x08,pBuffer[4]);	
	RTC_RD(0x09,pBuffer[5]);	
}

/*********************************************************************************
	DS12887에서 시간을 스트링으로 셋팅한다.
**********************************************************************************/
void DS12887_SetTimeString(const char *pString)
{
	RTC_WR(0x00,(BYTE)((pString[12]-0x30)<<4 | (pString[13]-0x30)&0xf)); // 초	
	RTC_WR(0x02,(BYTE)((pString[10]-0x30)<<4 | (pString[11]-0x30)&0xf)); // 분	
	RTC_WR(0x04,(BYTE)((pString[8]-0x30)<<4 | (pString[9]-0x30)&0xf)); // 시 	
	RTC_WR(0x07,(BYTE)((pString[6]-0x30)<<4 | (pString[7]-0x30)&0xf)); // 일	
	RTC_WR(0x08,(BYTE)((pString[4]-0x30)<<4 | (pString[5]-0x30)&0xf)); // 월	
	RTC_WR(0x09,(BYTE)((pString[2]-0x30)<<4 | (pString[3]-0x30)&0xf)); // 년
}


/*********************************************************************************
	DS12887를 초기화 시킨다.
**********************************************************************************/
void DS12887_Init()
{
	RTC_WR(0x0a,0xa0);
	RTC_WR(0x0b,0x22);
	RTC_WR(0x0c,0x00);
	RTC_WR(0x0d,0x00);	
}