#include <vxWorks.h>
#include <sockLib.h>
#include <in.h>
#include <ioctl.h>

#include "udpLib.h"

#ifndef __UDPLIB_C__
#define __UDPLIB_C__

static int m_nSockFd;


int so_SendTo(UCHAR *pData,UINT nSize,UINT nPort,char szIpNo[])
{
	struct sockaddr_in serveraddr;

	if(m_nSockFd != ERROR)
	{
		serveraddr.sin_len = sizeof(serveraddr);
		serveraddr.sin_family = AF_INET; 
		serveraddr.sin_addr.s_addr = inet_addr(szIpNo);
		serveraddr.sin_port = htons(nPort);

		return sendto(m_nSockFd,pData,nSize,0,(struct sockaddr*)&serveraddr,sizeof(serveraddr));
	}
	return 0;
}

int so_UdpTx(UCHAR *pData,UINT nSize)
{
	return so_SendTo(pData,nSize,UDP_PORTNO,TX_IP_NO);
}

BOOL so_UdpBind()
{
	struct sockaddr_in serveraddr;
	int state,optval=1;

	if(m_nSockFd != ERROR)
	{
		serveraddr.sin_len = sizeof(serveraddr);
		serveraddr.sin_family = AF_INET; 
		serveraddr.sin_addr.s_addr = htonl(INADDR_ANY);
		serveraddr.sin_port = htons(UDP_PORTNO);

		state = bind(m_nSockFd,(struct sockaddr *)&serveraddr,sizeof(serveraddr));
		if(state == ERROR) printf("=> ERROR: binding error !!!\n");		
		else return TRUE;
	}
	return FALSE;
}

/************************************************************/
/* UdpRx 가 들어올때 까지 Panding 한다						*/
/* pData	: 들어온 데이타를 가지고 올  주소 MAX-2000		*/
/* return   : 들어온 데이타의 크기                          */
/************************************************************/

int so_UdpRx(UCHAR *pData)
{
	struct sockaddr_in serveraddr;
	int nRxCnt,nAddrSize = sizeof(serveraddr);
	nRxCnt = recvfrom(m_nSockFd,pData,2000,0,(struct sockaddr*)&serveraddr,&nAddrSize);
	return nRxCnt;
}


BOOL so_Init()
{
	m_nSockFd = socket(AF_INET,SOCK_DGRAM,0);

	if(m_nSockFd == ERROR) 
	{
		printf("SOCKET ERROR !!!\n");
		return FALSE;
	}
	else so_UdpBind();
	return TRUE;
}

void so_close()
{
	shutdown(m_nSockFd,0);

}

#endif /* __UDPLIB_C__ */