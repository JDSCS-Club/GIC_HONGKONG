#include "def.h"
#include "ds1647.h"

#ifndef _MAIN_H_
#define _MAIN_H_

#define BOOT2INT ((*(int *)0x100000) = 0)

#define WDI_ACT (*(UCHAR *)0x002000 = 0x00)

#define LED_CS (*(UCHAR *)0x200000)
#define RUN_LED(x) {if((x)) {LED_CS = LED_CS & 0x02;} else {LED_CS = LED_CS | 0x01;}}
#define ERR_LED(x) {if((x)) {LED_CS = LED_CS & 0x01;} else {LED_CS = LED_CS | 0x02;}}

#define INT_ST_BASE 0x80B000
#define INT0_ST ((*(UCHAR *)INT_ST_BASE)&0x01)
#define INT1_ST (((*(UCHAR *)INT_ST_BASE)>>1)&0x01)
#define XR16L784_INT_ST INT0_ST
#define LONWORK_INT_ST INT1_ST

#define ISRANGE_LOW(X,MIN,MAX)	((X) >= (MIN) && (X) < (MAX))

#define XF0_SET			asm(" OR  00004h,IOF")
#define XF0_CLEAR		asm(" AND 0fffbh,IOF")

#define XF1_SET			asm(" OR  00040h,IOF")
#define XF1_CLEAR		asm(" AND 0ffbfh,IOF")

#define IS_ASCNUMBER(x) ((x) >= '0' && (x) <= '9')
#define IS_ASCHEX(x) (((x) >= '0' && (x) <= '9') || ((x) >= 'A' && (x) <= 'F') || ((x) >= 'a' && (x) <= 'f'))
#define IS_ASCALPHABET(x)  (((x) >= 'A' && (x) <= 'Z') || ((x) >= 'a' && (x) <= 'z'))
#define IS_ASCSPEC(x)  ((x) == '?')

#define TWOBYTE_ASC2HEX(x) (MAKE_BYTE(ConvAsc2Hex(x[0]),ConvAsc2Hex(x[1])))
#define TWOBYTE_ASC2DEC(x) ((ConvAsc2Dec(x[0]) * 10) + ConvAsc2Dec(x[1]))

void c_int01(void);
void c_int02(void);
void c_int10(void);
void DspInit(void);
BOOL IsNumAsc(char nCh);
int ConvAsc2Dec(char nCh);
char ConvHex2Asc(UCHAR btCh);
UCHAR ConvAsc2Hex(char chDat);
void Dec2Str(char *pBuf,int nDat);
void StrCat(char *dest, const char *src);
int StrLen(const char *string);
void StrCpy(char *dest, const char *src);
int StrCmp(const char *string1, const char *string2);
BOOL FirmwareVersionStrCmp(char *pObj,char *pSrc,int nLen);
int GetFirmwareVersion(UCHAR nVerBuildData);
void PortOut(int nKind,BOOL nHl);
UCHAR Make1ByteBcc(UCHAR *pDat,int nLen);
void MakeBcc(UCHAR *pDat,int nLen);
int IsBccOk(UCHAR *pDat,int nLen);
int Delay(int nCnt);
BOOL gm_SysTimeToRtc(DATE_TIME_PTR pTime,UINT nSysTime);
void MyPrintf(char * format, ... );

int FunConvAscHex(char *InchData,UCHAR *OuthexData,int Len);
int FunConvHexAsc(UCHAR *InhexData,char *OUTAscData,int Len);

#endif