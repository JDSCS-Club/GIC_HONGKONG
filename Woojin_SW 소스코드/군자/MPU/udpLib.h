#include "mmtype.h"
/****************************************************************
	TGIS DEV 무선수집 UDP LIBLARY 
*****************************************************************/

#ifndef __UDPLIB_H__
#define __UDPLIB_H__

#define UDP_PORTNO	8000
#define TX_IP_NO	"192.9.200.130"

int so_UdpTx(UCHAR *pData,UINT nSize);
int so_UdpRx(UCHAR *pData);
BOOL so_Init();
void so_close();


#endif /* __UDPLIB_H__ */

