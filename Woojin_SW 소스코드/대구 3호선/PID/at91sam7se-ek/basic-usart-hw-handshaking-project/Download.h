#ifndef Download_H 
#define Download_H

#include "main.h"




/***********************************************************************
	함수 정의
************************************************************************/

extern void Down_int09(void); // Timer 0
extern void Download_main(void);
extern void Download_Init(void);

extern UCHAR OneChar2HEX(char Ch);
extern UCHAR TwoChar2HEX(char Ch1,char Ch2);
//extern UINT CalCrc16(UCHAR *pDat,int No);
extern void SendStatusReq(UCHAR *pRevPtcTextBuff);
extern void LdmLatchClk(int Line);
extern void VersionImagePut();
extern int IsPrintOfVersion();
extern UCHAR GetFirmWareVersion();
extern int IsDisplayAddressOk(UCHAR nToAddr);
extern void TextOut(int x,int y,UCHAR nChar,UCHAR nfClr,UCHAR nbClr);
extern void PixelPut(int x,int y,UCHAR nClr);
extern void ScreenWidth();



#endif