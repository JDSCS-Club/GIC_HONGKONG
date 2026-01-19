#include <Types/vxTypesOld.h>
#include <vxWorks.h>
#include <ioLib.h>
#include <semLib.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "am29f040.h"
/*#include "te28fxxx.h"*/
#include "wmpu860.h"


/**************************************************************************************
	프로그램영역에 자동으로 프로그램을 쓴다.
	File Open,Read -> Write -> Verify -> Close
	Type => RomAutoProgram("Directory + FileName");
***************************************************************************************/
UCHAR *GetFileMemory(const char fn[],int *psize)
{
	int size;
	UCHAR *pBuff = NULL;
	int fd;
	
	if(!strlen(fn)){printf("No FileName..\n"); return NULL;}
		
	/* File을 오픈하고 데이터를 읽는다. */
	fd = open(fn,O_RDONLY,0);
	if(fd == -1){printf("No File..\n"); return NULL;}	
	size = lseek(fd,0,SEEK_END);
	pBuff = malloc(size+128);
	memset(pBuff,0xff,size+128);
	printf("File Size : [%d]\n",size);
	lseek(fd,0,SEEK_SET);
	read(fd,pBuff,size);
	printf("File Load Ok..\n");	
	close(fd);

	if(psize) *psize = size;

	return pBuff;

}

int RomAutoProgram(const char fn[])
{
	int i,size;
	UCHAR *pBuff;
	USHORT *pwBuff;
	USHORT *pRmAddr = (USHORT *)SECFLASH_BASE_ADDRESS;
	USHORT *pRmPrgAddr = &pRmAddr[E28F320B_PRGWR_STOFF];
	int fd;
	
	if(!strlen(fn)){printf("No FileName..\n"); return ERROR;}
		
	/* File을 오픈하고 데이터를 읽는다. */
	fd = open(fn,0,0);
	if(fd == -1){printf("No File..\n"); return ERROR;}	
	size = lseek(fd,0,2);	
	pBuff = malloc(size + 0x100);	
	printf("File Size : [%d]\n",size);	
	lseek(fd,0,0);
	read(fd,pBuff,size);
	close(fd);	
	
	/* ROM을 지우고 새로이 작성한다. */
	if(Te28_Program(pBuff,size) == ERROR) {free(pBuff); return ERROR;}	
	
	/* 정상으로 쓰여졌는지 비교검사한다. */
	printf("Verifing..\n");
	pwBuff = (USHORT *)pBuff;
	for(i=0;i<size/2;i++)
	if(pwBuff[i] != pRmPrgAddr[i])
	{
		printf("Verify Error Address %p\n",&pRmPrgAddr[i]);
		break;
	}
	
	if(i == (size/2)) printf("Verify OK..\n");

	free(pBuff);
	
	return OK;
}

/**************************************************************************************
	프로그램영역에 자동으로 프로그램을 쓴다.
	File Open,Read -> Write -> Verify -> Close
	Type => RomAutoProgram("Directory + FileName",Device);
	Device :
		0 => 부팅한 롬
		1 => TE28FXXX(SMD)
		2 => AM29F040 OR EN29F040DIP)
***************************************************************************************/


int RomAutoProgram2_Mem(int nDev,char *pBuff,int size)
{
	int i;
	UINT nBaseBuf;
	USHORT *pwBuff;
	USHORT *pRmAddr;
	USHORT *pRmPrgAddr;
	
	if(nDev == BOOTFLASH)
	{
		if(IsFlashMem(BOOTFLASH_BASE_ADDRESS,TE28FXXX))
		{
			nBaseBuf = BOOTFLASH_BASE_ADDRESS;
			nDev = TE28FXXX;
		}
		else
		if(IsFlashMem(BOOTFLASH_BASE_ADDRESS,AM29F040))
		{
			nBaseBuf = BOOTFLASH_BASE_ADDRESS;
			nDev = AM29F040;
		}
		else
		{
			nBaseBuf = BOOTFLASH_BASE_ADDRESS;
			printf("BootRom : No Device\n");
			return ERROR;
		}
	}

	if(nDev == TE28FXXX)
	{
		printf("TE28F320B Writing\n");
		if(IsFlashMem(BOOTFLASH_BASE_ADDRESS,TE28FXXX)) nBaseBuf = BOOTFLASH_BASE_ADDRESS;
		else if(IsFlashMem(SECFLASH_BASE_ADDRESS,TE28FXXX)) nBaseBuf = SECFLASH_BASE_ADDRESS;
		else nBaseBuf = 0x00000000;
		
		if(nBaseBuf)	
		{
			printf("Physical Address:0x%X\n",nBaseBuf);
			
			Te28_Init(nBaseBuf);
			
			pRmAddr = (USHORT *)nBaseBuf;
			pRmPrgAddr = &pRmAddr[E28F320B_PRGWR_STOFF];

			/* ROM을 지우고 새로이 작성한다. */
			if(Te28_Program(pBuff,size) == ERROR) {return ERROR;}	
			
			/* 정상으로 쓰여졌는지 비교검사한다. */
			printf("Verifing..\n");
			pwBuff = (USHORT *)pBuff;
			for(i=0;i<size/2;i++)
			if(pwBuff[i] != pRmPrgAddr[i])
			{
				printf("Verify Error Address %p\n",&pRmPrgAddr[i]);
				break;
			}
			
			if(i == (size/2)) printf("Verify OK..\n");		
		}		
		else
		{
			printf("No TE28Fxxx Device..\n");
			return ERROR;
		}		
	}
	else
	if(nDev == AM29F040)
	{
		printf("AM29F040 or EN29F040 Writing\n");
		if(IsFlashMem(BOOTFLASH_BASE_ADDRESS,AM29F040)) nBaseBuf = BOOTFLASH_BASE_ADDRESS;
		else if(IsFlashMem(SECFLASH_BASE_ADDRESS,AM29F040)) nBaseBuf = SECFLASH_BASE_ADDRESS;
		else nBaseBuf = 0x00000000;
		if(nBaseBuf)
		{	
			printf("Physical Address:0x%X\n",nBaseBuf);
			
			Am29f040_Init(nBaseBuf);
			
			pRmAddr = (USHORT *)nBaseBuf;
			pRmPrgAddr = &pRmAddr[0];

			/* ROM을 지우고 새로이 작성한다. */
			if(Am29f040_Program(pBuff,size) == ERROR) {return ERROR;}	
			
			/* 정상으로 쓰여졌는지 비교검사한다. */
			printf("Verifing..\n");
			pwBuff = (USHORT *)pBuff;
			for(i=0;i<size/2;i++)
			if(pwBuff[i] != pRmPrgAddr[i])
			{
				printf("Verify Error Address %p\n",&pRmPrgAddr[i]);
				break;
			}
			
			if(i == (size/2)) printf("Verify OK..\n");		
		}		
		else
		{
			printf("No AM29F040 or EN29F040  Device..\n");
			return ERROR;
		}		
	}	
	
	return OK;
}

int RomAutoProgram2(const char fn[],int nDev)
{
	int nRet=ERROR,size=0;
	UCHAR *pBuff;
	
	pBuff = GetFileMemory(fn,&size);

	if(pBuff)
	{
		nRet = RomAutoProgram2_Mem(nDev,pBuff,size);
		free(pBuff);
	}
	

	return nRet;

}

/**************************************************************************************
	각 장치가 존재하지 유무를 리턴
***************************************************************************************/
BOOL IsFlashMem(UINT nAddr,int nDev)
{
	USHORT wTemp;
	UCHAR wManuFactIdH = 0x00;
	UCHAR wDevIdH = 0x00;
	UCHAR wManuFactIdL = 0x00;
	UCHAR wDevIdL = 0x00;
	
	if(nDev == TE28FXXX)
	{
		Te28_Init(nAddr);
		if(Te28_GetManufacturerCode() == E28F320B_MANUFACTOR_ID && Te28_GetDeviceCode() == E28F320B_DEVICE_ID) return TRUE;
	}			
	else
	if(nDev == AM29F040)
	{
		Am29f040_Init(nAddr);
		Am29f040_Reset();
		wTemp = Am29f040_GetManufacturerCode();
		wManuFactIdH = (UCHAR)(wTemp >> 8);
		wManuFactIdL = (UCHAR)(wTemp&0xFF);
		wTemp = Am29f040_GetDeviceCode();
		wDevIdH = (UCHAR)(wTemp >> 8);
		wDevIdL = (UCHAR)(wTemp&0xFF);
		if(
					(wManuFactIdH == AM29F040_MANUFACTOR_ID || wManuFactIdH == EN29F040_MANUFACTOR_ID)
			&&	(wManuFactIdL == AM29F040_MANUFACTOR_ID || wManuFactIdL == EN29F040_MANUFACTOR_ID)
			&&	(wDevIdH == AM29F040_DEVICE_ID || wDevIdH == EN29F040_DEVICE_ID)
			&&	(wDevIdL == AM29F040_DEVICE_ID || wDevIdL == EN29F040_DEVICE_ID)
			) return TRUE;
	}
	
	return FALSE;
}

/**************************************************************************************
	프로그램영역에 자동으로 프로그램을 쓴다.
	File Open,Read -> Write -> Varify -> Close
	Type => RomAutoProgram("Directory + FileName");
***************************************************************************************/
int makeFlashBoot(const char fn[])
{
	return RomAutoProgram(fn);
}

/**************************************************************************************
	프로그램영역에 자동으로 프로그램을 쓴다.
	File Open,Read -> Write -> Varify -> Close
	Type => RomAutoProgram("Directory + FileName",Device);
***************************************************************************************/
int makeFlashBoot2(const char fn[],int nDev)
{
	return RomAutoProgram2(fn,nDev);
}
