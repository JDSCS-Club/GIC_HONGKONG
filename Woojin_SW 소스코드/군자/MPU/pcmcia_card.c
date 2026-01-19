/****************************************************************************/
/* Copyright 2001-     Woojin Industrial Systems Co,. Ltd.                  */
/*                                                                          */
/* PCMCIA-ATA Driver Version 1.01                                           */
/*                                                                          */
/****************************************************************************/
/****************************************************************************/
/* pcmcia_card.c - PCMCIA Card interface driver Source						*/
/* pcmcia_card.h - PCMCIA Card interface driver Header  					*/
/* Programmed by Cho Seong Ju                           					*/
/* - Modified for FAT16 at 2005.05.03 - by Cho Seong Ju 					*/
/*    1. Added m_nFat1Offset                            					*/
/*    2. Modified StartRootSector Formula               					*/
/* - Model Disk                                         					*/
/*    1. SanDisk                                        					*/
/*    2. SiliconDrive                                   					*/
/* - pc_IsExistFile's Return Value : INT -> BOOL TYPE   (2005.10.23)        */
/* - pc_Fat16NextClust's Fat Offset Modify : 1 -> m_nFat1Offset (2007.9.16) */
/* - pc_GetDiskFree return 0xFFFFFFFF when 32G byte over :		(2009.5.15) */
/* - pv_vFileWrite : created...                                 (2009.6.04) */
/****************************************************************************/
#ifndef _PCMCIA_C_
#define _PCMCIA_C_

/* LBA = (((C * Head per Cylinder) + H)* Sector per Head) + S - 1 */
#include "stdio.h"
#include "pcmcia_card.h"




/* Disk Access Base Functions */
BOOL pc_CardRead(int nSelDrive,UINT nAbsSec,UCHAR cBuf[]);
BOOL pc_CardWrite(int nSelDrive,UINT nAbsSec,UCHAR cBuf[]);
BOOL pc_GetInfo(int nSelDrive,SanDiskInfoType *Info);


void pc_ErrorString(int nSelDrive,char strErr[],UCHAR bFlag);




/* File System Base Functions */
DOS_FAT_DIR_ENT * pc_sysFileCreateEntry(int nSelDrive,char szFname[],UINT nFSize);
DOS_FAT_DIR_ENT * pc_sysFileCreateEntry16(int nSelDrive,char szFname[],UINT nFSize);
DOS_FAT_DIR_ENT * pc_sysFileCreateEntry32(int nSelDrive,char szFname[],UINT nFSize);
void pc_FreeFatList(FATLINK *pNextLink);
USHORT pc_GetFat16ClusterForSize(int nSelDrive,UINT nClustSize);
UINT pc_GetFat32ClusterForSize(int nSelDrive,UINT nClustSize,BOOL bFillZero);
UINT pc_GetUsedClust(int nSelDrive);
UINT pc_GetEmptyClust(int nSelDrive);
FATLINK *pc_GetFatList(int nSelDrive,UINT nStClust);
INT pc_ClustSeekInList(int nSelDrive,FATLINK *pStClust,UINT nClustCnt);
INT pc_ClustSeek(int nSelDrive,UINT nStClust,UINT nClustCnt);
BOOL pc_IsEnableClustSize(int nSelDrive,UINT nClustSize);
INT pc_NextClust(int nSelDrive,UINT nCurClust);
void pc_SpliteFileName(char srcName[],char fname[],char ext[]);
DOS_FAT_DIR_ENT * pc_FindFileEntry(int nSelDrive,char szFname[]);
DOS_FAT_DIR_ENT * pc_FindFolderEntrySub(int nSelDrive,UINT nFormSec,UINT nSecSize,UCHAR fname[]);
DOS_FAT_DIR_ENT * pc_sysDirCreateEntry(int nSelDrive,UINT nFormSec, char szDname[]);
UINT pc_SpliteDirName(char srcName[],char fname[], int nStart);

USHORT *pc_GetBaseAddress(int nSelDrive,UINT nOffset)
{
	return (USHORT*)((UCHAR *)PCMCIABASE + (0x1000*nSelDrive) +(nOffset));
}

USHORT *pc_GetRegAddress(int nSelDrive)
{
	return (USHORT*)PCMCIA_REG;
}

BOOL pc_CardInit(BOOL bConsole,int nSelDrive)
{
	UCHAR cBuf[512],bOK = FALSE;
	USHORT* wBuf=(USHORT*)cBuf;
	char sFat[9];
	PDISK_PART_TBL pDiskPart=NULL;

	if(!pc_GetInfo(nSelDrive,NULL))
		if(!pc_GetInfo(nSelDrive,NULL))
			if(!pc_GetInfo(nSelDrive,NULL)) return FALSE;	/* 카드의 정보를 읽는다.*/
	/************* Boot Secotor Find ***********************************/
	/* SanDisk의 PBE 대한 Offset 찾기 (LBA 가 Sector/Track 만큼 이동)*/
	m_xDrive[nSelDrive].nSanDiskLBAOffset = 0;
	if(!pc_CardRead(nSelDrive,0,cBuf)) return FALSE; /* LBA 0 Find */

	m_xDrive[nSelDrive].nFat = 0;
	if(cBuf[0] != 0xeb && cBuf[510] == 0x55 && cBuf[511] == 0xAA)
	{
		pDiskPart = (PDISK_PART_TBL)&cBuf[DOS_BOOT_PART_TBL];
		m_xDrive[nSelDrive].nSanDiskLBAOffset = ENDIAN_DW(pDiskPart->dwLBABegin);
		if(bConsole)
		{
			/***** MBR Partiion *****************************************/
			TRACE("MBR Found : %02X , %d Sector Offset..\n",pDiskPart->chTypeCode,m_xDrive[nSelDrive].nSanDiskLBAOffset);
			/************************************************************/
		}
		switch(pDiskPart->chTypeCode)
		{
		case DOS_PTTYPE_FAT12:	/* FAT-12 FORMAT */
			m_xDrive[nSelDrive].nFat = DOS_PTTYPE_FAT12;
			break;
		case DOS_PTTYPE_FAT16_1: /* FAT-16, 32Mbyte Under */
		case DOS_PTTYPE_FAT16_2: /* FAT-16, 32Mbyte Upper */
			m_xDrive[nSelDrive].nFat = DOS_PTTYPE_FAT16;
			break;
		case DOS_PTTYPE_FAT32_1: /* FAT 32 */
		case DOS_PTTYPE_FAT32_2: /* FAT-32, LBA */
			m_xDrive[nSelDrive].nFat = DOS_PTTYPE_FAT32;
			break;

		case DOS_PTTYPE_UNFORMAT:  /* NOT FORMATED.. */
		case DOS_PTTYPE_DOSEXT: /* DOS Extended partition */
		default:
			return FALSE;
			break;
		}
		if(!pc_CardRead(nSelDrive,0,cBuf)) return FALSE;
	}

	if(cBuf[0] != 0xeb)
	{
		m_xDrive[nSelDrive].nFat = 0;
		m_xDrive[nSelDrive].nSanDiskLBAOffset = 0;
		pc_CardRead(nSelDrive,m_xDrive[nSelDrive].CHSInfo.wSecotrPerTrack,cBuf);
		
		if(cBuf[0] != 0xeb)
		{
			TRACE("NOT FOUND BOOT SECTOR\n");
			return FALSE;
		}
		m_xDrive[nSelDrive].nSanDiskLBAOffset = m_xDrive[nSelDrive].CHSInfo.wSecotrPerTrack;
	}

	/* FAT Common *********************************************************/
	m_xDrive[nSelDrive].nFat1Offset = LD_RWORD(cBuf,DOS_BOOT_NRESRVD_SECS);
	m_xDrive[nSelDrive].nFatSize = LD_RWORD(cBuf,DOS_BOOT_SEC_PER_FAT); 
	m_xDrive[nSelDrive].chNumOfFats = cBuf[DOS_BOOT_NFATS];
	m_xDrive[nSelDrive].nFat2Offset = (m_xDrive[nSelDrive].chNumOfFats==1)? m_xDrive[nSelDrive].nFat1Offset : m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize;

	m_xDrive[nSelDrive].nRootEntCnt = LD_RWORD(cBuf,DOS_BOOT_MAX_ROOT_ENTS);
	m_xDrive[nSelDrive].nRootOffset = m_xDrive[nSelDrive].nFat1Offset + (m_xDrive[nSelDrive].chNumOfFats *  m_xDrive[nSelDrive].nFatSize);

	m_xDrive[nSelDrive].nDataOffset = m_xDrive[nSelDrive].nRootOffset  + m_xDrive[nSelDrive].nRootEntCnt/16; /* 16 EntryPerSector */;
	m_xDrive[nSelDrive].nBytePerSec = LD_RWORD(cBuf,DOS_BOOT_BYTES_PER_SEC);
   	m_xDrive[nSelDrive].nSecPerClust = cBuf[DOS_BOOT_SEC_PER_CLUST];
	m_xDrive[nSelDrive].nTotalSec    = LD_RWORD(cBuf,DOS_BOOT_NSECTORS); /* FAT-32 : 0 */
	if(!m_xDrive[nSelDrive].nTotalSec) m_xDrive[nSelDrive].nTotalSec = LD_RDWORD(cBuf,DOS_BOOT_LONG_NSECTORS);
	m_xDrive[nSelDrive].chMediaType = cBuf[DOS_BOOT_MEDIA_BYTE];
	
	if((m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32) || (!m_xDrive[nSelDrive].nRootEntCnt && !m_xDrive[nSelDrive].nFatSize))
	{
		/*  FAT-32 Boot Struct **********************************************/
		m_xDrive[nSelDrive].nTotalSec    = LD_RDWORD(cBuf,DOS_BOOT32_TOTALSECTOR); /* FAT-32 : 0 */
		if(!m_xDrive[nSelDrive].nFatSize) m_xDrive[nSelDrive].nFatSize = LD_RDWORD(cBuf,DOS_BOOT32_FATS);
		m_xDrive[nSelDrive].nFat2Offset = (m_xDrive[nSelDrive].chNumOfFats==1)? m_xDrive[nSelDrive].nFat1Offset : m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize;
		m_xDrive[nSelDrive].F32_wExtFlags = LD_RWORD(cBuf,DOS_BOOT32_EXTFALG);
		m_xDrive[nSelDrive].F32_wFatVer = LD_RWORD(cBuf,DOS_BOOT32_FATVERSION);
		m_xDrive[nSelDrive].F32_nRootCluster = LD_RDWORD(cBuf,DOS_BOOT32_ROOTCLUSTER);
		m_xDrive[nSelDrive].F32_wBootBackupSec = LD_RWORD(cBuf,DOS_BOOT32_FATVERSION);
		m_xDrive[nSelDrive].F32_wFileSysInfo = LD_RWORD(cBuf,DOS_BOOT32_FILESYSINFO);
		m_xDrive[nSelDrive].F32_wBootBackupSec = LD_RWORD(cBuf,DOS_BOOT32_BOOTBKSEC);
		
		MemCpy(m_xDrive[nSelDrive].VolumeID,&cBuf[DOS_BOOT32_VOL_ID],4);
		MemCpy(m_xDrive[nSelDrive].szVolume,&cBuf[DOS_BOOT32_VOL_LABEL],11);m_xDrive[nSelDrive].szVolume[11] = 0;
		memcpy(m_xDrive[nSelDrive].chFileSysType,&cBuf[DOS_BOOT32_FAT_LABEL],8);m_xDrive[nSelDrive].chFileSysType[8] = 0;

		if(!m_xDrive[nSelDrive].nFat && !strncmp(m_xDrive[nSelDrive].chFileSysType,"FAT32   ",8))
		{
			m_xDrive[nSelDrive].nFat = DOS_PTTYPE_FAT32;
		}

		m_xDrive[nSelDrive].nRootOffset = m_xDrive[nSelDrive].nFat1Offset + (m_xDrive[nSelDrive].chNumOfFats *  m_xDrive[nSelDrive].nFatSize);
		m_xDrive[nSelDrive].nDataOffset = m_xDrive[nSelDrive].nRootOffset;
	}
	else
	{
		/*  FAT-16 Boot Struct **********************************************/
		MemCpy(m_xDrive[nSelDrive].VolumeID,&cBuf[DOS_BOOT_VOL_ID],4);
		MemCpy(m_xDrive[nSelDrive].szVolume,&cBuf[DOS_BOOT_VOL_LABEL],11);m_xDrive[nSelDrive].szVolume[11] = 0;
		memcpy(m_xDrive[nSelDrive].chFileSysType,&cBuf[DOS_BOOT_FAT_LABEL],8);m_xDrive[nSelDrive].chFileSysType[8] = 0;
		
		if(!m_xDrive[nSelDrive].nFat)
		{
			if(!strncmp(&cBuf[DOS_BOOT_FAT_LABEL],"FAT12   ",8))m_xDrive[nSelDrive].nFat = DOS_PTTYPE_FAT12;
			else if(!strncmp(&cBuf[DOS_BOOT_FAT_LABEL],"FAT16   ",8))m_xDrive[nSelDrive].nFat = DOS_PTTYPE_FAT16;
			else m_xDrive[nSelDrive].nFat=0;
		}
	}
	

	
	/********************************************************************/
	memset(m_OpenFileList,0,MAX_OPENFILE*sizeof(DOS_OPEN_FILE)); /* Open File List Init */
	if(bConsole)
	{
		printf("+---------------------------------------------+\n");
		printf("| %02X            FAT %02d system                 \n",m_xDrive[nSelDrive].chMediaType,M_NFATV(nSelDrive));
		printf("+---------------------------------------------+\n");
		printf("| m_nSanDiskLBAOffset = %02d                     \n",m_xDrive[nSelDrive].nSanDiskLBAOffset);
		printf("| m_nFat1Offset      = %02d                     \n",m_xDrive[nSelDrive].nFat1Offset);	
		printf("| m_nFat2Offset      = %02d                     \n",m_xDrive[nSelDrive].nFat2Offset);	
		printf("| m_nFatSize         = %02d                     \n",m_xDrive[nSelDrive].nFatSize);	
		printf("| m_nBytePerSector   = %02d                     \n",m_xDrive[nSelDrive].nBytePerSec);
		printf("| m_nRootEntCnt      = %02d                     \n",m_xDrive[nSelDrive].nRootEntCnt);
		printf("| m_nRootOffset      = %02d                     \n",m_xDrive[nSelDrive].nRootOffset);
		printf("| m_nDataOffset      = %02d                     \n",m_xDrive[nSelDrive].nDataOffset);
		printf("| m_nSecPerClust     = %02d                     \n",m_xDrive[nSelDrive].nSecPerClust);
		if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
		{
			printf("| m_F32_nRootCluster = %02d                     \n",m_xDrive[nSelDrive].F32_nRootCluster);
		}

		printf("+---------------------------------------------+\n");
		printf("| PBE TotalSector    = %d                     \n",m_xDrive[nSelDrive].nTotalSec);
		printf("| SDP3B TotalSector  = %d                     \n",m_xDrive[nSelDrive].CHSInfo.dwTotalSector);
		printf("+---------------------------------------------+\n");
	}

	return m_xDrive[nSelDrive].nFat ? TRUE : 0;
}

BOOL pc_SetVolume(int nSelDrive,UCHAR *pszVolume)
{
	UCHAR cBuf[512];
	pc_CardRead(nSelDrive,m_xDrive[nSelDrive].nSanDiskLBAOffset,cBuf);
	strncpy(m_xDrive[nSelDrive].szVolume,pszVolume,11);
	MemCpy(&cBuf[DOS_BOOT_VOL_LABEL],m_xDrive[nSelDrive].szVolume,11);m_xDrive[nSelDrive].szVolume[11] = 0;
	return pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nSanDiskLBAOffset,cBuf);
}

UCHAR *pc_GetVolume(int nSelDrive)
{
	return m_xDrive[nSelDrive].szVolume;
}

UINT pc_GetVolumeID(int nSelDrive)
{
	return (m_xDrive[nSelDrive].VolumeID[1]<<16)|m_xDrive[nSelDrive].VolumeID[0];
}

UINT pc_GetFatInfo(int nSelDrive)
{
	return m_xDrive[nSelDrive].nFat;
}

BOOL pc_IsByteAccess()
{
	return  ISWORDACCESS ? FALSE : TRUE;
}
/**************************************************************************/
/*                            case BUS8                                   */
/**************************************************************************/
UCHAR pc_Read_08(int nSelDrive,UINT nOffset)
{
	USHORT *pAddr = pc_GetBaseAddress(nSelDrive,nOffset);     

	return (UCHAR)*pAddr;
}

void pc_Write_08(int nSelDrive,UINT nOffset,UCHAR cData)
{
	USHORT *pAddr = pc_GetBaseAddress(nSelDrive,nOffset);     
	*pAddr = (UCHAR)cData;
}

BOOL pc_IsReady_08(int nSelDrive)
{
	UCHAR cState;
	UINT nErrCnt=0;
	char strErr[100];

	do{
		cState = pc_Read_08(nSelDrive,STATUS_REG);
		if(cState==0x01)
		{
			nErrCnt++;
			if(nErrCnt == 0x0ffff)
			{
				pc_ErrorString(nSelDrive,strErr,0);
				TRACE(strErr);
				return FALSE;
			}
		}
	}while(cState == 0x01);


	do
	{
		cState = pc_Read_08(nSelDrive,STATUS_REG);
		if(cState&0x01)
		{
			nErrCnt++;
			if(nErrCnt == 0x0ffff)
			{
				pc_ErrorString(nSelDrive,strErr,0);
				logMsg(strErr);
				return FALSE;
			}
		}
	}while((cState & 0xf0) != 0x50);
	return TRUE;
}

BOOL pc_WaitDRQ_08(int nSelDrive)
{
	UCHAR cState;
	UCHAR bError=0,bErrorTemp;
	USHORT wErrCnt=0;
	char strErr[100];

	do{
		cState = pc_Read_08(nSelDrive,STATUS_REG);
		if(cState&0x01) /* Error Detected */
		{
			
			bErrorTemp = pc_Read_08(nSelDrive,ERR_REG);
			if(bErrorTemp != bError)
				bError = bErrorTemp;
			taskDelay(1);
			if(0xffff == wErrCnt++)
			{
				pc_ErrorString(nSelDrive,strErr,bError);
				TRACE(strErr);
				return FALSE;
			}
		}
		else
		{
			
			if(0xffff == wErrCnt++)
			{
				logMsg("TIMEOUT STATE: %x\n",cState);		
				return FALSE;
			}
		}
	}while((cState&0xf8) != 0x58);

	return TRUE;
}

BOOL pc_SetSectorLBA_08(int nSelDrive,UINT nAbsSec,UINT nCommand,UCHAR cnt) /* 95 ~ 31327(32768) sector*/
{
	if(!pc_IsReady_08(nSelDrive)) return FALSE;
	nAbsSec += m_xDrive[nSelDrive].nSanDiskLBAOffset;
	/********** LBA Mode *************************/
	pc_Write_08(nSelDrive,SEC_CNT_REG,1);
	pc_Write_08(nSelDrive,LBA_ADD0_REG,(nAbsSec)&0xff);
	pc_Write_08(nSelDrive,LBA_ADD1_REG,(nAbsSec>>8)&0xff);
	pc_Write_08(nSelDrive,LBA_ADD2_REG,(nAbsSec>>16)&0xff);
	pc_Write_08(nSelDrive,LBA_ADD3_REG,0xe0 | (nAbsSec>>24)&0xff);
	pc_Write_08(nSelDrive,COMMAND_REG,nCommand);
	/*********************************************/
	return pc_WaitDRQ_08(nSelDrive);
}

BOOL pc_SetSector_08(int nSelDrive,UINT nAbsSec,UINT nCommand) /* 95 ~ 31327(32768) sector*/
{
	return pc_SetSectorLBA_08(nSelDrive,nAbsSec,nCommand,1);
}

/**********************************************************************/
/*        Erase Sector - 256 Sector Fill with FFh                     */
/* Input - AbsSec (LBA7 - 0 Don't care)                               */
/**********************************************************************/
BOOL pc_EraseSector_08(int nSelDrive,UINT nAbsSec,UCHAR nSize)
{
	UCHAR cbState;
	if(!pc_IsReady_08(nSelDrive)){ return FALSE;}
	nAbsSec += m_xDrive[nSelDrive].nSanDiskLBAOffset;
	/********** LBA Mode *************************/
	pc_Write_08(nSelDrive,SEC_CNT_REG,nSize);
	pc_Write_08(nSelDrive,LBA_ADD0_REG,(nAbsSec)&0xff);
	pc_Write_08(nSelDrive,LBA_ADD1_REG,(nAbsSec>>8)&0xff);
	pc_Write_08(nSelDrive,LBA_ADD2_REG,(nAbsSec>>16)&0xff);
	pc_Write_08(nSelDrive,LBA_ADD3_REG,0xe0 | (nAbsSec>>24)&0xff);
	pc_Write_08(nSelDrive,COMMAND_REG,PC_COMMAND_ERASESECTOR);
	/*********************************************/
	return TRUE;
}

BOOL pc_CardRead_08(int nSelDrive,UINT nAbsSec,UCHAR cBuf[])
{
	BOOL bSuccess;
	UINT i;
	if(!cBuf)
	{
		TRACE("Usage : pc_CardRead(int nSelDrive,UINT nAbsSec,UCHAR cBuf[]) \n");
		return FALSE;
	}
	for(i=0;i<3;i++)
	{
		if(bSuccess = pc_SetSector_08(nSelDrive,nAbsSec,PC_COMMAND_READ)) break;
	}
	if(!bSuccess){ return FALSE;}

	for (i=0;i<512;i++)	cBuf[i] = pc_Read_08(nSelDrive,DATA_REG);

	return TRUE;
}

BOOL pc_CardWrite_08(int nSelDrive,UINT nAbsSec,UCHAR cBuf[])
{
	BOOL bSuccess;
	UINT i;
	for(i=0;i<3;i++)
	{
		if(bSuccess = pc_SetSector_08(nSelDrive,nAbsSec,PC_COMMAND_WRITE)) break;
	}
	if(!bSuccess){ return FALSE;}

	for (i=0;i<512;i++)		pc_Write_08(nSelDrive,DATA_REG,cBuf[i]);
	
	return TRUE;
}

BOOL pc_GetInfo_08(int nSelDrive,SanDiskInfoType *Info)
{
	int i;
	UCHAR *pReg = (UCHAR *)Info;
	BOOL	bNull = 0;
	USHORT wIdHeader;
	if(!Info)
	{
		pReg = (UCHAR*)malloc(256);
		Info = (SanDiskInfoType *)pReg;
		bNull = 1;
	}

	pc_Write_08(nSelDrive,DRV_HD_REG,0);
	pc_Write_08(nSelDrive,COMMAND_REG,PC_COMMAND_IDENTIFY);
	pc_WaitDRQ_08(nSelDrive);
	for(i=0;i<256;i++)
		pReg[i] = pc_Read_08(nSelDrive,DATA_REG);

	m_xDrive[nSelDrive].CHSInfo.wCylinder = WBE(Info->wCylinders);
	m_xDrive[nSelDrive].CHSInfo.wSecotrPerTrack = WBE(Info->wSectPerTrack);
	m_xDrive[nSelDrive].CHSInfo.wHeads = WBE(Info->wHeads);
	m_xDrive[nSelDrive].CHSInfo.dwTotalSector = (UINT)(WBE(Info->wTotalSectorMSW)<<16)|WBE(Info->wTotalSectorLSW);

	wIdHeader = WBE(Info->wIdHeader);
	if(bNull) free(pReg);
	if(wIdHeader == 0x848a); /* SANDISK DETECTED */
	else if(wIdHeader == 0x044a); /* SILICON DRIVE DETECTED */
	else return FALSE;
	return TRUE;
}


/**************************************************************************/
/*                            case BUS16                                  */
/**************************************************************************/
/*********************************************************************/
/*          PCMCIA Read Byte  VME Bus                                */
/* for Word Read and Upper is dummy..                                */
/* Odd  Address's Data is D07~D0  <== Only Use and A0,DS0,DS1 ignore */
/* Even Address's Data is D15~D8  <== Not Used                       */
/* nOffset/2 is Board's real Address                                 */
/*********************************************************************/
USHORT pc_Read16(int nSelDrive,UINT nOffset)
{
	USHORT *pAddr = pc_GetBaseAddress(nSelDrive,nOffset);/*&0xfffffffe;*/
	return *pAddr;
}

void pc_Write16(int nSelDrive,UINT nOffset,USHORT cData)
{
	USHORT *pAddr = (USHORT *)pc_GetBaseAddress(nSelDrive,nOffset);/*&0xfffffffe);*/
	*pAddr = cData;
}

BOOL pc_IsReady_16(int nSelDrive)
{
	UCHAR cState;
	UINT nErrCnt=0;
	char strErr[100];

	do{
		cState = (UCHAR)(pc_Read16(nSelDrive,STATUS_REG)>>8);
		if(cState==0x01)
		{
			nErrCnt++;
			if(nErrCnt == READY_DRQ_TIMEOUT)
			{
				pc_ErrorString(nSelDrive,strErr,0);
				TRACE(strErr);
				return FALSE;
			}
			else m_xDrive[nSelDrive].nMaxErrCnt = max(m_xDrive[nSelDrive].nMaxErrCnt,nErrCnt);
		}
	}while(cState == 0x01);


	do
	{
		cState = (UCHAR)(pc_Read16(nSelDrive,STATUS_REG)>>8);
		if(cState&0x01)
		{
			nErrCnt++;
			if(nErrCnt == READY_DRQ_TIMEOUT)
			{
				pc_ErrorString(nSelDrive,strErr,0);
				logMsg(strErr);
				return FALSE;
			}
			else m_xDrive[nSelDrive].nMaxErrCnt = max(m_xDrive[nSelDrive].nMaxErrCnt,nErrCnt);
		}
	}while((cState & 0xf0) != 0x50);
	return TRUE;
}

BOOL pc_WaitDRQ_16(int nSelDrive)
{	
	UCHAR cState;
	UCHAR bError=0,bErrorTemp;
	USHORT wErrCnt=0;
	char strErr[100];

	do{
		cState = (UCHAR)(pc_Read16(nSelDrive,STATUS_REG)>>8);
		if(cState&0x01) /* Error Detected */
		{
			bErrorTemp = (UCHAR)(pc_Read16(nSelDrive,ERR_REG)>>8);
			if(bErrorTemp != bError) bError = bErrorTemp;
			if(READY_DRQ_TIMEOUT == wErrCnt++)
			{
				pc_ErrorString(nSelDrive,strErr,bError);
				TRACE(strErr);
				return FALSE;
			}
			else m_xDrive[nSelDrive].nMaxErrCnt = max(m_xDrive[nSelDrive].nMaxErrCnt,wErrCnt);
		}
		else
		{
			if(READY_DRQ_TIMEOUT == wErrCnt++)
			{
				logMsg("TIMEOUT STATE: %x\n",cState);		
				return FALSE;
			}
			else m_xDrive[nSelDrive].nMaxErrCnt = max(m_xDrive[nSelDrive].nMaxErrCnt,wErrCnt);
		}
	}while((cState&0xf8) != 0x58);
	return TRUE;
}
BOOL pc_SetSector_16(int nSelDrive,UINT nAbsSec,UINT nCommand) /* 95 ~ 31327(32768) sector*/
{
	USHORT wTemp;
	if(!pc_IsReady_16(nSelDrive)) return FALSE;
	nAbsSec += m_xDrive[nSelDrive].nSanDiskLBAOffset;
	/********** LBA Mode *************************/
	wTemp = 0x0001|(nAbsSec<<8);	
	pc_Write16(nSelDrive,SEC_CNT_REG,wTemp);
	wTemp = (nAbsSec>>8);			
	pc_Write16(nSelDrive,LBA_ADD1_REG,wTemp);
	wTemp = (((nAbsSec>>24)&0x00ff)|0x00e0)|(nCommand<<8);
	pc_Write16(nSelDrive,LBA_ADD3_REG,wTemp);

	/*********************************************/
	return pc_WaitDRQ_16(nSelDrive);
}
BOOL pc_EraseSector_16(int nSelDrive,UINT nAbsSec,UCHAR nSize)
{
	UCHAR cbState;
	USHORT wTemp;
	if(!pc_IsReady_16(nSelDrive)){ return FALSE;}
	nAbsSec += m_xDrive[nSelDrive].nSanDiskLBAOffset;
	/********** LBA Mode *************************/
	wTemp = nSize|(nAbsSec<<8);
	pc_Write16(nSelDrive,SEC_CNT_REG,wTemp);
	wTemp = nAbsSec>>8;
	pc_Write16(nSelDrive,LBA_ADD1_REG,wTemp);
	wTemp = (((nAbsSec>>24)&0x000f)|0xe0)|(PC_COMMAND_ERASESECTOR<<8);
	pc_Write16(nSelDrive,LBA_ADD3_REG,wTemp);
	/*********************************************/
	return TRUE;
}

BOOL pc_CardRead_16(int nSelDrive,UINT nAbsSec,UCHAR cBuf[])
{
	BOOL bSuccess;
	UINT i;
	USHORT *wBuf = (USHORT *)cBuf;

	if(!cBuf)
	{
		TRACE("Usage : pc_CardRead(int nSelDrive,UINT nAbsSec,UCHAR cBuf[]) \n");
		return FALSE;
	}

	for(i=0;i<3;i++)
	{
		if(bSuccess = pc_SetSector_16(nSelDrive,nAbsSec,PC_COMMAND_READ)) break;
	}
	if(!bSuccess){ return FALSE;}


	for (i=0;i<256;i++)
	{
		wBuf[i] = pc_Read16(nSelDrive,DATA_REG);
		wBuf[i] = WBE(wBuf[i]); /* for MS Big Endian */
	}

	return TRUE;
}

BOOL pc_CardWrite_16(int nSelDrive,UINT nAbsSec,UCHAR cBuf[])
{
	BOOL bSuccess;
	UINT i;
	USHORT *wBuf = (USHORT *)cBuf;
	for(i=0;i<3;i++)
	{
		if(bSuccess = pc_SetSector_16(nSelDrive,nAbsSec,PC_COMMAND_WRITE)) break;
	}
	if(!bSuccess){ return FALSE;}

	for (i=0;i<256;i++)
	{
		pc_Write16(nSelDrive,DATA_REG,WBE(wBuf[i])); /* for MS Big Endian */
	}
	
	return TRUE;
}

BOOL pc_GetInfo_16(int nSelDrive,SanDiskInfoType *Info)
{
	int i;
	USHORT *pReg = (USHORT *)Info;
	BOOL	bNull = 0;
	USHORT wIdHeader;

	if(!Info)
	{
		pReg = (USHORT*)malloc(256);
		Info = (SanDiskInfoType *)pReg;
		bNull = 1;
	}

	pc_Write16(nSelDrive,DRV_HD_REG,(PC_COMMAND_IDENTIFY<<8));
	if(pc_WaitDRQ_16(nSelDrive))
	{
		for(i=0;i<128;i++)
		{
			pReg[i] = pc_Read16(nSelDrive,EVN_DATA_REG);
			pReg[i] = WBE(pReg[i]);
		}
		m_xDrive[nSelDrive].CHSInfo.wCylinder = WBE(Info->wCylinders);
		m_xDrive[nSelDrive].CHSInfo.wSecotrPerTrack = WBE(Info->wSectPerTrack);
		m_xDrive[nSelDrive].CHSInfo.wHeads = WBE(Info->wHeads);
		m_xDrive[nSelDrive].CHSInfo.dwTotalSector = (UINT)(WBE(Info->wTotalSectorMSW)<<16)|WBE(Info->wTotalSectorLSW);
		
		wIdHeader = WBE(Info->wIdHeader);
		if(bNull) free(pReg);
		if(wIdHeader == 0x848a); /* SANDISK DETECTED */
		else if(wIdHeader == 0x044a); /* SILICON DRIVE DETECTED */
		else 
		{
			TRACE("NOT FOUND CARD INFO![0x%x]\n",wIdHeader);
			return FALSE;
		}
		return TRUE;
	}
	return FALSE;
}
/**************************************************************************/
BOOL pc_CardRead(int nSelDrive,UINT nAbsSec,UCHAR cBuf[])
{
	return pc_IsByteAccess() ? pc_CardRead_08(nSelDrive,nAbsSec,cBuf) : pc_CardRead_16(nSelDrive,nAbsSec,cBuf);
}

BOOL pc_CardWrite(int nSelDrive,UINT nAbsSec,UCHAR cBuf[])
{
	return pc_IsByteAccess() ? pc_CardWrite_08(nSelDrive,nAbsSec,cBuf) : pc_CardWrite_16(nSelDrive,nAbsSec,cBuf);
}

BOOL pc_GetInfo(int nSelDrive,SanDiskInfoType *Info)
{
	return pc_IsByteAccess() ? pc_GetInfo_08(nSelDrive,Info) : pc_GetInfo_16(nSelDrive,Info);
}

BOOL pc_EraseSector(int nSelDrive,UINT nAbsSec,UCHAR nSize)
{
	return pc_IsByteAccess() ? pc_EraseSector_08(nSelDrive,nAbsSec,nSize) : pc_EraseSector_16(nSelDrive,nAbsSec,nSize);
}


void pc_CardInfo(int nSelDrive)
{
	SanDiskInfoType Info;
	char Buf[256];
	int i;
	USHORT wIdHeader;
	pc_GetInfo(nSelDrive,&Info);
	wIdHeader = WBE(Info.wIdHeader);
	if(wIdHeader != (USHORT)0x848a && wIdHeader != (USHORT)0x040a)
	{
		printf("IDOK(848aH)       : %04xH\n",wIdHeader);
		return ;
	}
	
	printf("IDOK(848aH, 044aH): %04xH\n",wIdHeader);
	printf("Model Number      : ");	/*---- Model Number ----*/
	for(i=0;i<40;i++) 
		printf("%c",Info.ModelNo[i^1]); /* Big Endian */
	printf("\n");

	printf("Serial Number     : "); 	/*---- Serial Number ---*/
	for(i=0;i<20;i++) 
		printf("%c",Info.SerialNum[i]); 
	printf("\n");

	printf("Firmware Revision : "); 	/*---- Firmware revision ---*/
	for(i=0;i<20;i++) 
		printf("%c",Info.FirmRev[i^1]); /* Big Endian */
	printf("\n");	
	
	printf("Total Sectors     : %d\n",(UINT)(WBE(Info.wTotalSectorMSW)<<16)|WBE(Info.wTotalSectorLSW));
	printf("Cylinders         : %d\n",WBE(Info.wCylinders));
	printf("Heads             : %d\n",WBE(Info.wHeads));
	printf("Bytes / Track     : %d\n",WBE(Info.wBytePerTrack));
	printf("Bytes / Sector    : %d\n",WBE(Info.wBytePerSect));
	printf("Sector / Track    : %d\n",WBE(Info.wSectPerTrack));
	printf("------- Currnet --------------------\n");
	printf("Cylinder          : %d\n",WBE(Info.wCurCylinder));
	printf("Header            : %d\n",WBE(Info.wCurHeader));
	printf("Sector / Track    : %d\n",WBE(Info.wCurSectPerTrack));


}

BOOL pc_SetSectorCHS_08(UINT nAbsSec,UINT nCommand,int nSelDrive) /* 95 ~ 31327(32768) sector*/
{
	UINT unHead;
	USHORT usTrack;
	UCHAR cSec;

	/***** 32 Mbyte four header ***********/
	cSec = 1 + nAbsSec % 32;
	usTrack = nAbsSec/(32*4);				
	unHead = (nAbsSec/32) % 4;            
	/**************************************/

	if(!pc_IsReady_08(nSelDrive)) return FALSE;
	/********** CHS Mode *************************/
	pc_Write_08(nSelDrive,SEC_CNT_REG,0x01);
	pc_Write_08(nSelDrive,SEC_NUM_REG,cSec);
	pc_Write_08(nSelDrive,CYL_LOW_REG,usTrack & 0xff);
	pc_Write_08(nSelDrive,CYL_HI_REG,usTrack>>8);
	pc_Write_08(nSelDrive,DRV_HD_REG,0xa0 | unHead);
	pc_Write_08(nSelDrive,COMMAND_REG,nCommand);
	/*********************************************/

	return pc_WaitDRQ_08(nSelDrive);
}







void pc_ErrorString(int nSelDrive,char strErr[],UCHAR bFlag)
{
	UCHAR bError = bFlag;
	if(bError==0) bError = pc_Read_08(nSelDrive,ERR_REG);
	if(bError==0) return;
	sprintf(strErr,"ERROR STATE[%02x]: ",bError);
	if(bError&(1<<7)) strcat(strErr,"BBK ");
	if(bError&(1<<6)) strcat(strErr,"UNC ");
	if(bError&(1<<4)) strcat(strErr,"IDNF ");
	if(bError&(1<<2)) strcat(strErr,"ABORT ");
	if(bError&(1)) strcat(strErr,"AMF ");
	strcat(strErr,"\n");
}

void pc_UnicodeToMbcs(char szMbcsName[256],char szUnicodeName[256])
{
	int i,nTop=0;
	for(i=0;i<256;i+=2)
	{
		if((!szUnicodeName[i+1] && !szUnicodeName[i]) || (0xff == szUnicodeName[i+1] && 0xff == szUnicodeName[i]))
		{
			szMbcsName[nTop] = NULL;
			return;
		}
		else
		{
			if(szUnicodeName[i+1]) szMbcsName[nTop++] = szUnicodeName[i+1];
			szMbcsName[nTop++] = szUnicodeName[i];
		}
	}
	szMbcsName[nTop] = NULL;
}

/********************************************************************/
/* DIR SUBFUNCTION													*/
/* RETURN : NEXT LINK CLUSTER                                       */
/*          0x00000001 - 0x0FFFFFEF : 사용중                        */
/*          0x0FFFFFF8 - 0x0FFFFFFF : 링크종료						*/
/*          0x0FFFFFF7 : Bad Cluster								*/
UINT pc_FileEntryDirClusterSearch(int nSelDrive,int nRootOffsetSector,UINT *pnFindFileBytes)
{
	UINT nFindFileNumber = 0,nFindFileBytes=0;
	UCHAR cBuf[512],chLFNseq;
	UINT nLFNSeqNo;
	DOS_FAT_DIR_ENT *pEntry = (DOS_FAT_DIR_ENT *)cBuf;
	DOS_FAT_LFN_ENT *pLfnEntry = (DOS_FAT_LFN_ENT *)cBuf;
	UCHAR fname[9],fext[4];
	INT i=0,j,itemp,nRootEntySize; /* Entry Number per Sector == 16 */
	fname[8] = fext[3] = 0;
	nRootEntySize = (m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32) ? m_xDrive[nSelDrive].nSecPerClust : ((nRootOffsetSector != 0) ? m_xDrive[nSelDrive].nSecPerClust : m_xDrive[nSelDrive].nRootEntCnt/16);
	/*nRootEntySize = (m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32) ? m_xDrive[nSelDrive].nSecPerClust : m_xDrive[nSelDrive].nRootEntCnt/16;*/

	/*printf("Search Cluster : %d \n",nRootOffsetSector);*/

	for(i=nRootOffsetSector;i<(nRootOffsetSector+nRootEntySize);i++)
	{
		pc_LoadFileEntry(nSelDrive,pEntry,i);
		for(j=0;j<16;j++)
		{
			switch(pEntry[j].DIR_Name[0])
			{
			case 0x00: /* Never Used  */
			case 0xE5: /* Delete file */
				break;
			case 0x2E: /* CurDir      */
				if(pEntry[j].DIR_Name[1]==0x2E)
				{
					printf("%8s%3s <UpDir>\n",pEntry[j].DIR_Name,pEntry[j].DIR_Ext);
				}
				else
				{
					printf("%8s%3s <DnDir>\n",pEntry[j].DIR_Name,pEntry[j].DIR_Ext);
				}
				break;
			default:
				if(pEntry[j].DIR_Attr&(1<<3)) break; /* <VOL> */
				
				MemCpy(fname,pEntry[j].DIR_Name,8);
				MemCpy(fext,pEntry[j].DIR_Ext,3);
				printf("%8s %3s ",fname,fext);
				
				
				if(pEntry[j].DIR_Attr&(1<<4)) printf("<DIR>            ");
				else
				{
					itemp = DWBE(pEntry[j].DIR_FileSize)/1000000000;
					itemp ? printf("%03d,",itemp) : printf("    ");			/* G byte */
					
					itemp = DWBE(pEntry[j].DIR_FileSize)/1000000;
					itemp ? printf("%03d,",itemp) : printf("    ");			/* M byte */
					
					itemp = (DWBE(pEntry[j].DIR_FileSize)%1000000)/1000;
					itemp ? printf("%03d,",itemp) : printf("    ");			/* K byte */
					
					itemp = DWBE(pEntry[j].DIR_FileSize)%1000;
					printf("%03d  ",itemp);			/*   byte */
					
				}
				
				printf("%02d-%02d-%02d ",
					FILE_YEAR(pEntry[j])%100,
					FILE_MONTH(pEntry[j]),
					FILE_DATE(pEntry[j]));
				printf("%02d:%02d%c ",
					FILE_HOUR(pEntry[j])%12,
					FILE_MIN(pEntry[j]),
					FILE_HOUR(pEntry[j])/12 ? 'p':'a');
				
				printf("SECTOR=>%d CLUSTER=>%d",m_xDrive[nSelDrive].nRootOffset+i, MK_DWORD(WBE(pEntry[j].DIR_FstClusHI),WBE(pEntry[j].DIR_FstClusLo)));
				printf("\n");
				nFindFileNumber ++;
				nFindFileBytes += DWBE(pEntry[j].DIR_FileSize);
			}
		}
	}
	if(pnFindFileBytes) *pnFindFileBytes += nFindFileBytes;
	return nFindFileNumber;
}

/**************** File Access Lib *********************************/

/******************************************************************/
/* pc_dir(char szFname[],int nSelDrive)                           */
/* szFname   : ex) "A:/Z/TEST.TXT" or "Z/TEST.TXT                 */
/*             (드라이브 지정시 nSelDrive 보다 우선)              */
/* nSelDrive : 0,1,2...                                           */
/******************************************************************/

BOOL pc_dir(int nSelDrive,char szFname[])
{
	UINT nShowFileNumber=0,nShowFileBytes=0;
	FATLINK *pNextClustLink,*pRootClustLink;
	int nRootClust;

	if(!m_xDrive[nSelDrive].nFat)pc_CardInit(TRUE,nSelDrive);

	printf(" Volume in %d Drive is %11s\n",nSelDrive,m_xDrive[nSelDrive].szVolume);
	printf(" Volume Serial Number is %02X-%02X\n",WBE(m_xDrive[nSelDrive].VolumeID[1]),WBE(m_xDrive[nSelDrive].VolumeID[0]));

	if(!szFname)
		printf(" Directory of Root %s \r\n",szFname);
	else
		printf(" Directory of %s \r\n",szFname);

	if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
	{
		if(!szFname)
			nRootClust = m_xDrive[nSelDrive].F32_nRootCluster;
		else
			nRootClust = pc_FindFolderEntry(nSelDrive,szFname);

		if(nRootClust == -1)
		{
			printf("Invalide of Directory...\n");
			return;
		}

		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nRootClust);
		nRootClust = pNextClustLink->nClust;

		if(pRootClustLink != NULL)
		{
			while(!pc_IsLastCluster(nSelDrive,nRootClust))
			{
				nShowFileNumber += pc_FileEntryDirClusterSearch(nSelDrive,(nRootClust - m_xDrive[nSelDrive].F32_nRootCluster) * m_xDrive[nSelDrive].nSecPerClust,&nShowFileBytes);

				pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
				if(!pNextClustLink) break;
				nRootClust = pNextClustLink->nClust;
			}
		}
		else
		{
			printf("Not Find\r\n");
		}
		if(pRootClustLink) pc_FreeFatList(pRootClustLink);
	}
	else
	{
		if(!szFname)
		{
			nShowFileNumber = pc_FileEntryDirClusterSearch(nSelDrive,0,&nShowFileBytes);
		}else if(nRootClust = pc_FindFolderEntry(nSelDrive,szFname))
		{
			printf("nRootClust : %d.....%d\n",nRootClust,(((nRootClust-2)*m_xDrive[nSelDrive].nSecPerClust)+(m_xDrive[nSelDrive].nDataOffset - m_xDrive[nSelDrive].nRootOffset)));
			if(nRootClust >= 0)
				nShowFileNumber = pc_FileEntryDirClusterSearch(nSelDrive,(((nRootClust-2)*m_xDrive[nSelDrive].nSecPerClust)+(m_xDrive[nSelDrive].nDataOffset - m_xDrive[nSelDrive].nRootOffset)), &nShowFileBytes);
			else
				printf("Not Find\r\n");
		}
		
	}

	printf("\n\n \t%d File(s) \t%03d,%03d,%03d bytes \n",nShowFileNumber,nShowFileBytes/1000000,(nShowFileBytes/1000)%1000,nShowFileBytes%1000);
	
	return TRUE;
}

BOOL pc_FolderCreate(char szDname[],int nSelDrive)
{
	DOS_FAT_DIR_ENT *pFindEntry=NULL, *pDirEntry = NULL;
	FATLINK *pNextClustLink,*pRootClustLink=NULL;
	UCHAR dname[DOS_NAME_LEN];

	int nStart=0;
	int nRootClust, nDirClust;
	
	if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
	{
		nDirClust = m_xDrive[nSelDrive].F32_nRootCluster;
		while(nStart = pc_SpliteDirName(szDname, dname ,nStart))
		{
			pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nDirClust);
			nRootClust = pNextClustLink->nClust;

			while(!pc_IsLastCluster(nSelDrive,nRootClust))
			{
				/*printf("=> RootCluster : %d..\n",nRootClust);*/
				pFindEntry = pc_FindFolderEntrySub(nSelDrive,(nRootClust - m_xDrive[nSelDrive].F32_nRootCluster) * m_xDrive[nSelDrive].nSecPerClust,m_xDrive[nSelDrive].nSecPerClust,dname);
				if(pFindEntry)
				{
					nDirClust = MK_DWORD(WBE(pFindEntry->DIR_FstClusHI),WBE(pFindEntry->DIR_FstClusLo));
					break;
				}

				pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
				if(!pNextClustLink)
				{
					if(pRootClustLink) pc_FreeFatList(pRootClustLink);
					pFindEntry = pc_sysDirCreateEntry(nSelDrive,nDirClust, dname);

					nDirClust = MK_DWORD(WBE(pFindEntry->DIR_FstClusHI),WBE(pFindEntry->DIR_FstClusLo));
					break;
				}

				nRootClust = pNextClustLink->nClust;
			}

		}
		if(pRootClustLink) pc_FreeFatList(pRootClustLink);
	}
	else
	{
		nDirClust = 0;
		while(nStart = pc_SpliteDirName(szDname,dname,nStart))
		{
			pFindEntry = pc_FindFolderEntrySub(nSelDrive,nDirClust,m_xDrive[nSelDrive].nRootEntCnt/16,dname);
			if(pFindEntry)
			{
				/*printf("%s find\n",dname);*/
				nDirClust = MK_DWORD(WBE(pFindEntry->DIR_FstClusHI),WBE(pFindEntry->DIR_FstClusLo)) + (m_xDrive[nSelDrive].nDataOffset - m_xDrive[nSelDrive].nRootOffset);
			}
			else
			{
				/*printf("Null %s => %d\n",dname, nDirClust);*/
				pFindEntry = pc_sysDirCreateEntry(nSelDrive,nDirClust, dname);
				nDirClust = MK_DWORD(WBE(pFindEntry->DIR_FstClusHI),WBE(pFindEntry->DIR_FstClusLo)) + (m_xDrive[nSelDrive].nDataOffset - m_xDrive[nSelDrive].nRootOffset);
			}
		}
	}

	if(!pFindEntry)
		free(pFindEntry);

	if(!pDirEntry)
		free(pFindEntry);

	return TRUE;
}

/******************************************************************/
/* pc_FolderDetete(char szFname[],int nSelDrive)                  */
/*     : sub folder까지 모두 삭제한다.                            */
/* szFname   : ex) "A:/Z/AAA" or "Z/AAA							  */
/*             (드라이브 지정시 nSelDrive 보다 우선)              */
/* nSelDrive : 0,1,2...                                           */
/******************************************************************/
BOOL pc_FolderDetete(char szDname[],int nSelDrive)
{
	int nRootClust;

	if(!szDname) return FALSE;

	if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
	{
		/* 루트 디랙토리 찾기 */
		nRootClust = pc_FindFolderEntry(nSelDrive,szDname);
		if(nRootClust >= 0)
		{
			if(pc_SubRdDir(nSelDrive,nRootClust))
			{
				printf("FAT 32 Delete TRUE\n");
				return TRUE;
			}
		}
	}
	else
	{
		nRootClust = pc_FindFolderEntry(nSelDrive,szDname);
		if(nRootClust >= 0)
		{
			if(pc_SubRdDir(nSelDrive,nRootClust))
				printf("FAT 16 Delete TRUE\n");
				return TRUE;
		}
	}

	return FALSE;
}

BOOL pc_SubRdDir(int nSelDrive,UINT nFormClu)
{
	UCHAR cBuf[512];
	DOS_FAT_DIR_ENT *pEntry = (DOS_FAT_DIR_ENT *)cBuf;
	FATLINK *pNextClustLink,*pRootClustLink=NULL;
	int nRootClust, nDirClust, nFileClust;
	int nDirSector;
	int i,j;

	if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
	{
		/* 서브 폴더 여부 확인 */
		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nFormClu);
		nRootClust = pNextClustLink->nClust;

		while(!pc_IsLastCluster(nSelDrive,nRootClust))
		{
			nDirSector = (nRootClust-m_xDrive[nSelDrive].F32_nRootCluster)*m_xDrive[nSelDrive].nSecPerClust;
			for(i=nDirSector;i < nDirSector+m_xDrive[nSelDrive].nSecPerClust;i++)
			{
				memset(&cBuf,0x00,sizeof(cBuf));
				pc_LoadFileEntry(nSelDrive,pEntry,i);
				for(j=0;j<16;j++)
				{
					if((pEntry[j].DIR_Name[0] != 0x2E) && pEntry[j].DIR_Attr&(1<<4))      
					{
						/*return FALSE;*/
						/* 서브 폴더 삭제 기능 */
						nDirClust = MK_DWORD(WBE(pEntry[j].DIR_FstClusHI),WBE(pEntry[j].DIR_FstClusLo));

						if(pc_SubRdDir(nSelDrive,nDirClust)) printf("FAT 32 Sub Dir Delete TRUE\n");
		

						/*if(pc_rdDir(nDirClust))
						{
							pEntry[j].DIR_Name[0]= 0xE5;
							pc_DelFileCluster(nSelDrive,nDirClust);
						}*/
					}
				}
			}
			pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
			if(!pNextClustLink) break;
			nRootClust = pNextClustLink->nClust;
		}
		
		/* 서브 폴더가 없으면 파일을 삭제 한다.*/
		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nFormClu);
		nRootClust = pNextClustLink->nClust;

		while(!pc_IsLastCluster(nSelDrive,nRootClust))
		{
			nDirSector = (nRootClust-m_xDrive[nSelDrive].F32_nRootCluster)*m_xDrive[nSelDrive].nSecPerClust;
			for(i=nDirSector;i < nDirSector+m_xDrive[nSelDrive].nSecPerClust;i++)
			{
				memset(&cBuf,0x00,sizeof(cBuf));
				pc_LoadFileEntry(nSelDrive,pEntry,i);
				for(j=0;j<16;j++)
				{
					if((pEntry[j].DIR_Name[0] != 0x00) && (pEntry[j].DIR_Name[0] != 0xE5) && (pEntry[j].DIR_Name[0] != 0x2E))
					{
						nFileClust = MK_DWORD(WBE(pEntry[j].DIR_FstClusHI),WBE(pEntry[j].DIR_FstClusLo));
						/*printf("File Name : %s .. Cluster : %d\n",pEntry[j].DIR_Name,nFileClust);*/
						pc_DelFileCluster(nSelDrive,nFileClust);
						pEntry[j].DIR_Name[0]= 0xE5;
					}
				}
				pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nDataOffset +i,cBuf);
			}
			pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
			if(!pNextClustLink) break;
			nRootClust = pNextClustLink->nClust;

		}

		/* 삭제 폴더 내용 삭제*/ 
		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nFormClu);
		nRootClust = pNextClustLink->nClust;

		if(!pc_IsLastCluster(nSelDrive,nRootClust))
		{
			nDirSector = (nRootClust-m_xDrive[nSelDrive].F32_nRootCluster)*m_xDrive[nSelDrive].nSecPerClust;
			memset(&cBuf,0x00,sizeof(cBuf));
			pc_LoadFileEntry(nSelDrive,pEntry,nDirSector);
			
			if((pEntry[1].DIR_Name[0] == 0x2E) && (pEntry[1].DIR_Attr & (1<<4)))
			{
				nFileClust = MK_DWORD(WBE(pEntry[1].DIR_FstClusHI),WBE(pEntry[1].DIR_FstClusLo));

				pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nFileClust);
				nRootClust = pNextClustLink->nClust;
				while(!pc_IsLastCluster(nSelDrive,nRootClust))
				{
					if(nRootClust == 0)
						nDirSector = 0;
					else
						nDirSector = (nRootClust-m_xDrive[nSelDrive].F32_nRootCluster)*m_xDrive[nSelDrive].nSecPerClust;

					for(i=nDirSector;i < nDirSector+m_xDrive[nSelDrive].nSecPerClust;i++)
					{
						memset(&cBuf,0x00,sizeof(cBuf));
						pc_LoadFileEntry(nSelDrive,pEntry,i);
						for(j=0;j<16;j++)
						{
							nFileClust = MK_DWORD(WBE(pEntry[j].DIR_FstClusHI),WBE(pEntry[j].DIR_FstClusLo));
							if((nFileClust == nFormClu) && (pEntry[j].DIR_Attr & (1<<4)))
							{
								pc_DelFileCluster(nSelDrive,nFileClust);
								pEntry[j].DIR_Name[0]= 0xE5;
								break;
							}
						}
						pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nDataOffset + i,cBuf);
					}
					pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
					if(!pNextClustLink) break;
					nRootClust = pNextClustLink->nClust;
				}
			}else
			{
			}
		}
		if(pRootClustLink) pc_FreeFatList(pRootClustLink);
	}

	/*else
	{
		nDirSector = ((nFormClu - 2)*m_xDrive[nSelDrive].nSecPerClust) + (m_xDrive[nSelDrive].nDataOffset - m_xDrive[nSelDrive].nRootOffset);
		for(i=nDirSector;i<nDirSector+m_xDrive[nSelDrive].nSecPerClust;i++)
		{
			pc_LoadFileEntry(nSelDrive,pEntry,i);
			for(j=0;j<16;i++)
			{
				if((pEntry[j].DIR_Name[0] != 0x2E) && pEntry[j].DIR_Attr&(1<<4)) /* CurDir      
				{
					return FALSE;
					/* 서브 폴더 삭제 기능 */
					/*nDirClust = MK_DWORD(WBE(pEntry[j].DIR_FstClusHI),WBE(pEntry[j].DIR_FstClusLo));
						if(pc_rdDir(nDirClust));
					{
						pEntry[j].DIR_Name[0]= 0xE5;
						pc_DelFileCluster(nSelDrive,nDirClust);
					}*/
				/*}

				if((pEntry[j].DIR_Name[0] != 0x00) || (pEntry[j].DIR_Name[0] != 0xE5))
				{
					nFileClust = MK_DWORD(WBE(pEntry[j].DIR_FstClusHI),WBE(pEntry[j].DIR_FstClusLo));
					pc_DelFileCluster(nSelDrive,nFileClust);
					pEntry[j].DIR_Name[0]= 0xE5;
				}
			}
		}
	}

	if(!pEntry)
		free(pEntry);*/

	return TRUE;
}


/********************************************************************************/
/*   BOOL pc_LoadFileEntry(nSelDrive,DOS_FAT_DIR_ENT * pEntry,UINT nSecOffset)  */
/* - 루트리렉토리의 한섹터분 16엔트리를 모두 반환합니다.                        */
/* 입력: 읽어올 버퍼공간(512) 메모리                                            */
/*     : 섹터 엔트리 Offset                                                     */
/* 출력: 영역 벗어나거나 못읽으면 FALSE, 성공하면 TRUE                          */
/********************************************************************************/
BOOL pc_LoadFileEntry(int nSelDrive,DOS_FAT_DIR_ENT * pEntry,UINT nSecOffset) 
{
	return pc_CardRead(nSelDrive,m_xDrive[nSelDrive].nRootOffset+nSecOffset,(UCHAR *)pEntry); /* 32byte fname size 512/32 = 16 */
}

DOS_FAT_DIR_ENT * pc_FindFileEntrySub(int nSelDrive,UINT nFormSec,UINT nSecSize,UCHAR fname[],UCHAR ext[])
{
	DOS_FAT_DIR_ENT *pDirEntry,*pFindEntry = NULL;
	UCHAR cBuf[512];
	int i,j;
	for(i=nFormSec;i<(nFormSec+nSecSize);i++)
	{
		pc_CardRead(nSelDrive,m_xDrive[nSelDrive].nRootOffset+i,cBuf); /* 32byte fname size 512/32 = 16 */
		pDirEntry = (DOS_FAT_DIR_ENT *)cBuf;
		for(j=0;j<16;j++)
		{
			if(!strncmp(pDirEntry[j].DIR_Name,fname,DOS_NAME_LEN) &&
				!strncmp(pDirEntry[j].DIR_Ext,ext,DOS_EXT_LEN))
			{
				pFindEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
				MemCpy(pFindEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
				return pFindEntry;
			}
			
		}
	}
	return pFindEntry;
}
/***********************************************************************************/
/*   DOS_FAT_DIR_ENT * pc_FindFileEntry(nSelDrive,char szFname[])                           */
/* - 파일이름으로 루트엔트리 포인터를 찾는다.                                      */
/* 입력: szFname  NULL 포인터 파일이름("filename.ext")스트링(8.3) 버퍼             */
/* 출력: 영역 벗어나거나 못읽으면 NULL, 성공하면 동적 엔트리 할당 포인터           */
/*       성공시 메모리 해제 의무                                                   */
/***********************************************************************************/
DOS_FAT_DIR_ENT * pc_FindFileEntry(int nSelDrive,char szFname[])
{
	DOS_FAT_DIR_ENT *pFindEntry=NULL;
	int i,j;
	UCHAR fname[DOS_NAME_LEN],ext[DOS_EXT_LEN],*pFile, dname[50];
	FATLINK *pNextClustLink,*pRootClustLink=NULL;
	UINT nRootClust;
	BOOL bRootDir;

	pFile = fname;
	/*pc_SpliteFileName(szFname,fname,ext);*/

	bRootDir = pc_SpliteDirFileName(szFname, dname, fname, ext);

	
	if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
	{
		if(bRootDir)
			nRootClust = m_xDrive[nSelDrive].F32_nRootCluster;
		else
			nRootClust = pc_FindFolderEntry(nSelDrive,dname);

		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nRootClust);
		nRootClust = pNextClustLink->nClust;

		while(!pc_IsLastCluster(nSelDrive,nRootClust))
		{
			pFindEntry = pc_FindFileEntrySub(nSelDrive,(nRootClust - m_xDrive[nSelDrive].F32_nRootCluster) * m_xDrive[nSelDrive].nSecPerClust,m_xDrive[nSelDrive].nSecPerClust,fname,ext);
			if(pFindEntry) break;

			pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
			if(!pNextClustLink) break;
			nRootClust = pNextClustLink->nClust;
		}
		if(pRootClustLink) pc_FreeFatList(pRootClustLink);
	}
	else
	{
		if(bRootDir)
		{
			pFindEntry = pc_FindFileEntrySub(nSelDrive,0,m_xDrive[nSelDrive].nRootEntCnt/16,fname,ext);
		}
		else
		{
			nRootClust = pc_FindFolderEntry(nSelDrive,dname);
			
			if(nRootClust < 0) return pFindEntry;
			
			while(!pc_IsLastCluster(nSelDrive,nRootClust))
			{
				pFindEntry = pc_FindFileEntrySub(nSelDrive,((nRootClust-2)*m_xDrive[nSelDrive].nSecPerClust)+(m_xDrive[nSelDrive].nDataOffset - m_xDrive[nSelDrive].nRootOffset),m_xDrive[nSelDrive].nSecPerClust,fname,ext);
				if(pFindEntry) break;

				nRootClust = pc_NextClust(nSelDrive,nRootClust);
				if(pc_IsLastCluster(nSelDrive,nRootClust)) break;
			}
		}
	}

	
	return pFindEntry;
}

/***********************************************************************************/
/*   INT pc_IsExistFile(char szFname[])                                            */
/* - Exist File with 파일이름[8.3] Large Char                                      */
/* 입력: szFname  NULL 포인터 파일이름("filename.ext")스트링(8.3) 버퍼             */
/* 출력: 파일이 있다면 파일의 크기[byte]를 리턴한다. 없다면 -1을 리턴한다.         */
/***********************************************************************************/
BOOL pc_IsExistFile(char szFname[])
{
	DOS_FAT_DIR_ENT *pFindEntry;
	INT nSize;
	int nSelDrive;

	nSelDrive = pc_GetDriveNameNumber(szFname);
	if(nSelDrive == -1) nSelDrive = m_nSelDrive;

	pFindEntry = pc_FindFileEntry(nSelDrive,szFname);

	if(!pFindEntry) return FALSE;
	else
	{
		free(pFindEntry);
		return TRUE;
	}
}

/***********************************************************************************/
/*   BOOL pc_IsExistFolder(char szFname[])                                         */
/* - Exist File with 폴더 이름[8] Large Char                                       */
/* 입력: szFname  NULL 포인터 파일이름("filename")스트링(8) 버퍼				   */
/* 출력: 폴더가 존재하면 True를 보낸다.											   */
/***********************************************************************************/
BOOL pc_IsExistFolder(char szFname[])
{
	int nRootClust;
	INT nSize;
	int nSelDrive;

	nSelDrive = pc_GetDriveNameNumber(szFname);
	if(nSelDrive == -1) nSelDrive = m_nSelDrive;

	nRootClust = pc_FindFolderEntry(nSelDrive,szFname);

	if(nRootClust < 0) return FALSE;
	else return TRUE;
}

void pc_SpliteFileName(char srcName[],char fname[],char ext[])
{
	int i,j;
	UCHAR *pFile;
	memset(fname,0x20,DOS_NAME_LEN);
	memset(ext,0x20,DOS_EXT_LEN);
	for(i=0,j=0,pFile = fname;srcName[i];i++)
	{
		if(srcName[i] == '.'){pFile = ext;j=0;}
		else pFile[j++] = srcName[i];
	}
}

BOOL pc_SubFileRename(int nSelDrive,UINT nFormSec,UINT nSecSize,UCHAR sfname[],UCHAR sext[],UCHAR dfname[],UCHAR dext[])
{
	DOS_FAT_DIR_ENT *pDirEntry,*pFindEntry;
	UCHAR cBuf[512],*pFindBuf=NULL,bSameFile;
	int i,j,nFindSect=0;

	bSameFile = FALSE;
	for(i=m_xDrive[nSelDrive].nRootOffset+nFormSec;i<(m_xDrive[nSelDrive].nRootOffset+nFormSec+nSecSize)&&!pFindBuf;i++)
	{
		pc_CardRead(nSelDrive,i,cBuf); /* 32byte fname size 512/32 = 16 */
		pDirEntry = (DOS_FAT_DIR_ENT *)cBuf;

		for(j=0;j<16;j++)
		{

			if(!strncmp(pDirEntry[j].DIR_Name,dfname,DOS_NAME_LEN) &&
				!strncmp(pDirEntry[j].DIR_Ext,dext,DOS_EXT_LEN))
			{
				bSameFile = TRUE;
				TRACE("SAME FILE NAME EXIST:[%d,%d]%8s.%3s\n",i,j,pDirEntry[j].DIR_Name,pDirEntry[j].DIR_Ext);
				return FALSE;
			}

			if(!strncmp(pDirEntry[j].DIR_Name,sfname,DOS_NAME_LEN) &&
				!strncmp(pDirEntry[j].DIR_Ext,sext,DOS_EXT_LEN) && !pFindBuf)
			{
				nFindSect = i;
				MemCpy(pDirEntry[j].DIR_Name,dfname,DOS_NAME_LEN);
				MemCpy(pDirEntry[j].DIR_Ext,dext,DOS_EXT_LEN);
				pFindBuf = (UCHAR*)malloc(512);
				MemCpy(pFindBuf,cBuf,512);
				break;

			}
			
		}
	}
	

	if(pFindBuf)
	{
		if(bSameFile)
		{
			TRACE("Duplicate file name or file in use\n");
			free(pFindBuf);
			return FALSE;
		}
		else
		{
			pc_CardWrite(nSelDrive,nFindSect,pFindBuf);
			free(pFindBuf);
		}
	}
	else
	{
		TRACE(("FILE NOT FOUND !!!\n"));
		return FALSE;
	}

	return TRUE;
}

/***********************************************************************/
/* 파일이름변경 srcName -> dstName으로 변경                            */
/* srcName에만 PATH를 지정한다.                                        */
/* 이름입력시에는 dstName은 PATH를 지정하지 안는다.                    */
/***********************************************************************/
BOOL pc_FileRen(char srcName[],char dstName[])
{
	return pc_FileRename(srcName,dstName);
}
BOOL pc_FileRename(char srcName[],char dstName[])
{
	int nSelDrive;
	UCHAR sfname[DOS_NAME_LEN],sext[DOS_EXT_LEN],*pFile, dname[50];
	UCHAR dfname[DOS_NAME_LEN],dext[DOS_EXT_LEN];
	BOOL bRet=FALSE;
	BOOL bRootDir;
	FATLINK *pNextClustLink,*pRootClustLink=NULL;
	UINT nRootClust;

	nSelDrive = pc_GetDriveNameNumber(srcName);
	if(nSelDrive == -1) nSelDrive = m_nSelDrive;

	/*pc_SpliteFileName(srcName,sfname,sext);*/
	bRootDir = pc_SpliteDirFileName(srcName, dname, sfname,sext);
	pc_SpliteFileName(dstName,dfname,dext);

	if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
	{
		if(bRootDir)
			nRootClust = m_xDrive[nSelDrive].F32_nRootCluster;
		else
			nRootClust = pc_FindFolderEntry(nSelDrive,dname);

		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nRootClust);
		nRootClust = pNextClustLink->nClust;

		while(!pc_IsLastCluster(nSelDrive,nRootClust))
		{
			bRet = pc_SubFileRename(nSelDrive,(nRootClust - m_xDrive[nSelDrive].F32_nRootCluster) * m_xDrive[nSelDrive].nSecPerClust,m_xDrive[nSelDrive].nSecPerClust, sfname,sext,dfname,dext);
			if(bRet) break;
			pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
			if(!pNextClustLink) break;
			nRootClust = pNextClustLink->nClust;
		}
		if(pRootClustLink) pc_FreeFatList(pRootClustLink);
	}
	else
	{
		if(bRootDir)
			bRet = pc_SubFileRename(nSelDrive,0,m_xDrive[nSelDrive].nRootEntCnt/16, sfname,sext,dfname,dext);
		else
		{
			nRootClust = pc_FindFolderEntry(nSelDrive,dname);

			if(nRootClust < 0) return FALSE;

			while(!pc_IsLastCluster(nSelDrive,nRootClust))
			{
				bRet = pc_SubFileRename(nSelDrive,(((nRootClust-2) * m_xDrive[nSelDrive].nSecPerClust)+(m_xDrive[nSelDrive].nDataOffset-m_xDrive[nSelDrive].nRootOffset)),m_xDrive[nSelDrive].nSecPerClust, sfname,sext,dfname,dext);
				if(bRet) break;

				nRootClust =  pc_NextClust(nSelDrive,nRootClust);
				if(pc_IsLastCluster(nSelDrive,nRootClust)) break;
			}
		}			
	}

	return bRet;
}

BOOL pc_DelFileCluster(int nSelDrive,UINT nFirstCluster)
{
	UCHAR cbBuf[0x600],cbPreBuf[0x600];
	USHORT *pFat16List = (USHORT *)cbBuf;
	UINT *pFat32List = (UINT *)cbBuf;
	USHORT nPreCluster,nNextCluster = nFirstCluster;
	UINT nOldSector,nClusterPos,nNewSector,nDelSectors;

	if(!m_xDrive[nSelDrive].nFat) pc_CardInit(0,nSelDrive);
	switch(m_xDrive[nSelDrive].nFat)
	{
	case DOS_PTTYPE_FAT12:
		break;
	case DOS_PTTYPE_FAT16:
		if(nNextCluster < 2 || nNextCluster== 0xFFFF) return FALSE;
		nDelSectors = 0;

		nNewSector = nOldSector = nNextCluster/256;
		nClusterPos = nNextCluster%256;
		pc_CardRead(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nOldSector,cbBuf);

		while(1)
		{
			nPreCluster = nNextCluster;
			nNextCluster = WBE(pFat16List[nClusterPos]);
			pFat16List[nClusterPos] = 0x0000;
			if(nNextCluster == 0xffff || !nNextCluster)
			{
				pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nOldSector,cbBuf);
				TRACE("FAT DELETE : END-SEC(%04X) FIND COMPLETE...(%d)\n",nNewSector,nDelSectors*m_xDrive[nSelDrive].nSecPerClust*512);
				return TRUE; /* END */
			}
			else
			{
				nNewSector = nNextCluster/256;
				nClusterPos = nNextCluster%256;
				if(nNewSector != nOldSector) 
				{
					pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nOldSector,cbBuf);
					pc_CardRead(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nNewSector,cbBuf);
					nOldSector = nNewSector;
				}
				nDelSectors++;
			}
		}

		break;
	case DOS_PTTYPE_FAT32:
		if(nNextCluster < 2 || nNextCluster== 0x0FFFFFFF) return FALSE;
		nDelSectors = 0;

		nNewSector = nOldSector = nNextCluster/128;
		nClusterPos = nNextCluster%128;
		pc_CardRead(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nOldSector,cbBuf);

		while(1)
		{
			nPreCluster = nNextCluster;
			nNextCluster = DWBE(pFat32List[nClusterPos]);
			pFat32List[nClusterPos] = 0x00000000;
			if(nNextCluster == 0x0FFFFFFF || !nNextCluster)
			{
				pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nOldSector,cbBuf);
				TRACE("FAT DELETE : END-SEC(%04X) FIND COMPLETE...(%d)\n",nNewSector,nDelSectors*m_xDrive[nSelDrive].nSecPerClust*512);
				return TRUE; /* END */
			}
			else
			{
				nNewSector = nNextCluster/128;
				nClusterPos = nNextCluster%128;
				if(nNewSector != nOldSector) 
				{
					pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nOldSector,cbBuf);
					pc_CardRead(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nNewSector,cbBuf);
					nOldSector = nNewSector;
				}
				nDelSectors++;
			}
		}

		break;
	}
	return FALSE;
}

BOOL pc_SubFileDelete(int nSelDrive,UINT nFormSec,UINT nSecSize,UCHAR sfname[],UCHAR sext[])
{
	DOS_FAT_DIR_ENT *pDirEntry,*pFindEntry=NULL;
	UCHAR cBuf[512],*pFindBuf=NULL;
	int i,j,nFindSect=0;

	for(i=m_xDrive[nSelDrive].nRootOffset+nFormSec;(i<(m_xDrive[nSelDrive].nRootOffset+nFormSec+nSecSize)) && !pFindBuf;i++)
	{
		pc_CardRead(nSelDrive,i,cBuf); /* 32byte fname size 512/32 = 16 */
		pDirEntry = (DOS_FAT_DIR_ENT *)cBuf;

		for(j=0;j<16;j++)
		{
			if(!strncmp(pDirEntry[j].DIR_Name,sfname,DOS_NAME_LEN) &&
				!strncmp(pDirEntry[j].DIR_Ext,sext,DOS_EXT_LEN) && !pFindBuf)
			{
				nFindSect = i;
				sfname[0] = 0xE5;
				MemCpy(pDirEntry[j].DIR_Name,sfname,DOS_NAME_LEN);
				MemCpy(pDirEntry[j].DIR_Ext,sext,DOS_EXT_LEN);
				pFindBuf = (UCHAR*)malloc(512);
				MemCpy(pFindBuf,cBuf,512);
				pFindEntry = pDirEntry+j;
				break;
			}
			
		}
		if(pFindBuf) break;
	}

	if(pFindBuf)
	{
		pc_CardWrite(nSelDrive,nFindSect,pFindBuf);
		pc_DelFileCluster(nSelDrive,WBE(pFindEntry->DIR_FstClusLo));
		free(pFindBuf);
	}
	else
	{
		TRACE("FILE NOT FOUND !!! \n");
		return FALSE;
	}
	return TRUE;
}

BOOL pc_FileDel(char srcName[]){return pc_FileDelete(srcName);}
BOOL pc_FileDelete(char srcName[])
{
	int nSelDrive;
	UCHAR sfname[DOS_NAME_LEN],sext[DOS_EXT_LEN],*pFile, dname[50];
	BOOL bRet=FALSE;
	BOOL bRootDir;
	FATLINK *pNextClustLink,*pRootClustLink=NULL;
	UINT nRootClust;

	if(!srcName) return FALSE;
	nSelDrive = pc_GetDriveNameNumber(srcName);
	if(nSelDrive == -1) nSelDrive = m_nSelDrive;

	bRootDir = pc_SpliteDirFileName(srcName, dname, sfname, sext);
	/*pc_SpliteFileName(srcName,sfname,sext);*/

	if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
	{
		if(bRootDir)
			nRootClust = m_xDrive[nSelDrive].F32_nRootCluster;
		else
			nRootClust = pc_FindFolderEntry(nSelDrive,dname);

		if(nRootClust < 0) return FALSE;

		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nRootClust);
		nRootClust = pNextClustLink->nClust;

		while(!pc_IsLastCluster(nSelDrive,nRootClust))
		{
			bRet = pc_SubFileDelete(nSelDrive,(nRootClust - m_xDrive[nSelDrive].F32_nRootCluster) * m_xDrive[nSelDrive].nSecPerClust,m_xDrive[nSelDrive].nSecPerClust, sfname,sext);
			if(bRet) break;
			pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
			if(!pNextClustLink) break;
			nRootClust = pNextClustLink->nClust;
		}
		if(pRootClustLink) pc_FreeFatList(pRootClustLink);
	}
	else
	{
		if(bRootDir)
			bRet = pc_SubFileDelete(nSelDrive,0,m_xDrive[nSelDrive].nRootEntCnt/16, sfname,sext);
		else
		{
			nRootClust = pc_FindFolderEntry(nSelDrive,dname);

			if(nRootClust < 0) return FALSE;

			while(!pc_IsLastCluster(nSelDrive,nRootClust))
			{
				bRet = pc_SubFileDelete(nSelDrive,(((nRootClust-2) * m_xDrive[nSelDrive].nSecPerClust)+(m_xDrive[nSelDrive].nDataOffset-m_xDrive[nSelDrive].nRootOffset)), m_xDrive[nSelDrive].nSecPerClust, sfname, sext);
				if(bRet) break;

				nRootClust =  pc_NextClust(nSelDrive,nRootClust);
				if(pc_IsLastCluster(nSelDrive,nRootClust)) break;
			}

		}
	}
	

	return bRet;
}

UINT pc_FileSize(FILEID fd)
{
	if(m_OpenFileList[fd].pFileEntry)
		return DWBE(m_OpenFileList[fd].pFileEntry->DIR_FileSize);
	return (UINT)0;
}


BOOL pc_FileCopy(char szReadFile[],char szWriteFile[])
{
	int nWFd,nRFd,nSize,i,nRet;

	UCHAR chBuffer[512];
	memset(chBuffer,0,sizeof(chBuffer));

	if(pc_IsExistFile(szWriteFile)) 
	{
		pc_FileDel(szWriteFile);
	}

	nRFd = pc_FileOpen(szReadFile,0,0);
	nSize = pc_FileSize(nRFd);
	nWFd = pc_FileOpen(szWriteFile,0x201,nSize);
	
	if(nRFd == -1 || nWFd == -1) return FALSE;
	else
	{

		for(i=0;i<nSize/512;i++)
		{
			pc_FileRead(nRFd,chBuffer);
			if(pc_FileWrite(nWFd,chBuffer) == -1) return FALSE;
		}

		if(nSize%512)
		{
			pc_FileRead(nRFd,chBuffer);
			if(pc_FileWrite(nWFd,chBuffer) == -1) return FALSE;
		}

		pc_FileClose(nRFd);
		pc_FileClose(nWFd);
	}
	return TRUE;
}

DOS_FAT_DIR_ENT * pc_sysFileCreateEntry16(int nSelDrive,char szFname[],UINT nFSize)
{
	DOS_FAT_DIR_ENT *pDirEntry,*pFindEntry=NULL;
	UCHAR cBuf[512],*cbEmptyEntryBuf = NULL;
	int i,j,nEmptyEntrySect;
	int nRootClust, nDirClust;
	BOOL bFail=FALSE;
	BOOL bRootDir;
	UCHAR fname[DOS_NAME_LEN],ext[DOS_EXT_LEN],*pFile, dname[50];
	USHORT wTemp;
	DATE_TIME_TYPE dateTime;

	pFile = fname;
	nEmptyEntrySect = 0;
	/*pc_SpliteFileName(szFname,fname,ext);*/

	pDirEntry = (DOS_FAT_DIR_ENT *)cBuf;

	bRootDir = pc_SpliteDirFileName(szFname,dname, fname,ext);

	if(bRootDir)
	{
		nRootClust = m_xDrive[nSelDrive].nRootOffset;
	}else
	{
		nDirClust = pc_FindFolderEntry(nSelDrive,dname);
		if(nDirClust < 0) return NULL;
		nRootClust = m_xDrive[nSelDrive].nDataOffset + ((nDirClust-2)*m_xDrive[nSelDrive].nSecPerClust);
	}
	
	for(i=nRootClust;i<nRootClust+32 && !bFail && !nEmptyEntrySect;i++)
	{
		pc_CardRead(nSelDrive,i,cBuf); /* 32byte fname size 512/32 = 16 */
		
		for(j=0;j<16 && !nEmptyEntrySect;j++)
		{
			if(!strncmp(pDirEntry[j].DIR_Name,fname,DOS_NAME_LEN) &&
				!strncmp(pDirEntry[j].DIR_Ext,ext,DOS_EXT_LEN))
			{
				pFindEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
				MemCpy(pFindEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
				if(cbEmptyEntryBuf) free(cbEmptyEntryBuf);
				return pFindEntry;
			}

			if((pDirEntry[j].DIR_Name[0] == 0x00 ||
				pDirEntry[j].DIR_Name[0] == 0xE5 ) && !cbEmptyEntryBuf)
			{

				nEmptyEntrySect = i;
				MemCpy(pDirEntry[j].DIR_Name,fname,DOS_NAME_LEN);
				MemCpy(pDirEntry[j].DIR_Ext,ext,DOS_EXT_LEN);
				pDirEntry[j].DIR_Attr = 0x20;	/* bit5:archive bit4:directory */
				pDirEntry[j].DIR_NTRes = 0;
				pDirEntry[j].DIR_CrtTimeTenth = 0;
	
				timeGet(&dateTime);                
				/* Bit F E D C B A 9 8 7 6 5 4 3 2 1 0 */
				/*time|  Hour   |   Min     | *2 = Sec */
				/*date| +1980=Year  |  Mon  |  Day     */				
				pDirEntry[j].DIR_CtrTime = (HEXA2BIN(dateTime.hour)<<0x0b)|(HEXA2BIN(dateTime.minute)<<5)|(HEXA2BIN(dateTime.second)>>1);/*0xc0b2;*/
				pDirEntry[j].DIR_CtrDate = ((HEXA2BIN(dateTime.year)+20)<<0x09)|(HEXA2BIN(dateTime.month )<<5)|(HEXA2BIN(dateTime.day));/*0xa526; */
				pDirEntry[j].DIR_WrtTime = pDirEntry[j].DIR_CtrTime = WBE(pDirEntry[j].DIR_CtrTime);
				pDirEntry[j].DIR_LstAccDate = pDirEntry[j].DIR_WrtDate = pDirEntry[j].DIR_CtrDate = WBE(pDirEntry[j].DIR_CtrDate);

				wTemp = pc_GetFat16ClusterForSize(nSelDrive,nFSize/(m_xDrive[nSelDrive].nSecPerClust*512)+(nFSize%(m_xDrive[nSelDrive].nSecPerClust*512)?1:0));
				if(wTemp == 0x0000)
				{
					TRACE("The Clust is not enough allocation memory!!\n");
					bFail = TRUE;
					break;
				}

				if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT12)
				{
					if(wTemp == 0x0FFF)	wTemp = 0x0000;
				}

				if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT16)
				{
					if(wTemp == 0xFFFF)	wTemp = 0x0000;
				}

				pDirEntry[j].DIR_FstClusHI = 0;
				pDirEntry[j].DIR_FstClusLo = WBE(wTemp);
				pDirEntry[j].DIR_FileSize = DWBE(nFSize);

				cbEmptyEntryBuf = (UCHAR *)malloc(512);
				MemCpy(cbEmptyEntryBuf,cBuf,512);

				pFindEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
				MemCpy(pFindEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
			}
			
		}
	}

	if(!cbEmptyEntryBuf)
	{
		if(pc_IsEnableClustSize(nSelDrive,1))
		{
			if(pc_AddRootCluster16(nRootClust))
			{
				return pc_sysFileCreateEntry16(nSelDrive,szFname, nFSize);
			}
		}
		TRACE("Disk is Full.\n"); 
		return NULL;
	}

	pc_CardWrite(nSelDrive,nEmptyEntrySect,cbEmptyEntryBuf);
	free(cbEmptyEntryBuf);

	return pFindEntry;
}

BOOL pc_AddRootCluster(int nSelDrive)
{
	UINT nRootSecoter,nFatSector,nRootCluster,nNextCluster,nAddCluster;
	UINT i,nTemp,nCurSector;
	UCHAR chBuf[512];
	/* Root Link Cluster영역을 모두 찾았는데도 없는 경우 Root Link Cluster를 새로 생성한다.*/
	nAddCluster = pc_GetFat32ClusterForSize(nSelDrive,1,TRUE);
	if(nAddCluster)
	{
		nCurSector = 0;
		nRootCluster = m_xDrive[nSelDrive].F32_nRootCluster;

		while(1)
		{
			nFatSector = nRootCluster/128;
			if(nFatSector >= m_xDrive[nSelDrive].nFatSize) break;
			if(nCurSector != m_xDrive[nSelDrive].nFat1Offset + nFatSector)
			{
				nCurSector = m_xDrive[nSelDrive].nFat1Offset + nFatSector;
				pc_CardRead(nSelDrive,nCurSector,chBuf);
			}
			nNextCluster = ((UINT*)chBuf)[nRootCluster%128];
			if(pc_IsLastCluster(nSelDrive,nNextCluster))
			{
				((UINT*)chBuf)[nRootCluster%128] = DWBE(nAddCluster);
				return pc_CardWrite(nSelDrive,nCurSector,chBuf) ? TRUE : FALSE;
			}
			nRootCluster = nNextCluster;
		}
	}
	return FALSE;
}

BOOL pc_AddRootCluster16(int nSelDrive,UINT nRootCluster)
{
	UINT nRootSecoter,nFatSector,nNextCluster,nAddCluster;
	UINT i,nTemp,nCurSector;
	UCHAR chBuf[512];
	/* Root Link Cluster영역을 모두 찾았는데도 없는 경우 Root Link Cluster를 새로 생성한다.*/
	nAddCluster = pc_GetFat16ClusterForSize(nSelDrive,1);

	/*printf("Cluster head : %d\n", nRootCluster);*/
	if(nRootCluster <= 0) return FALSE;

	if(nAddCluster)
	{
		nCurSector = 0;
		
		while(1)
		{
			nFatSector = nRootCluster/256;
			if(nFatSector >= m_xDrive[nSelDrive].nFatSize) break;
			if(nCurSector != m_xDrive[nSelDrive].nFat1Offset + nFatSector)
			{
				nCurSector = m_xDrive[nSelDrive].nFat1Offset + nFatSector;
				pc_CardRead(nSelDrive,nCurSector,chBuf);
			}
			nNextCluster = ((USHORT*)chBuf)[nRootCluster%256];
			if(pc_IsLastCluster(nSelDrive,nNextCluster))
			{
				((USHORT*)chBuf)[nRootCluster%256] = WBE(nAddCluster);
				return pc_CardWrite(nSelDrive,nCurSector,chBuf) ? TRUE : FALSE;
			}
			nRootCluster = nNextCluster;
		}
	}
	return FALSE;
}

BOOL pc_AddRootCluster32(int nSelDrive,UINT nRootCluster)
{
	UINT nRootSecoter,nFatSector,nNextCluster,nAddCluster;
	UINT i,nTemp,nCurSector;
	UCHAR chBuf[512];
	/* Root Link Cluster영역을 모두 찾았는데도 없는 경우 Root Link Cluster를 새로 생성한다.*/
	nAddCluster = pc_GetFat32ClusterForSize(nSelDrive,1,TRUE);
	if(nAddCluster)
	{
		nCurSector = 0;

		while(1)
		{
			nFatSector = nRootCluster/128;
			if(nFatSector >= m_xDrive[nSelDrive].nFatSize) break;
			if(nCurSector != m_xDrive[nSelDrive].nFat1Offset + nFatSector)
			{
				nCurSector = m_xDrive[nSelDrive].nFat1Offset + nFatSector;
				pc_CardRead(nSelDrive,nCurSector,chBuf);
			}
			nNextCluster = ((UINT*)chBuf)[nRootCluster%128];
			if(pc_IsLastCluster(nSelDrive,nNextCluster))
			{
				((UINT*)chBuf)[nRootCluster%128] = DWBE(nAddCluster);
				return pc_CardWrite(nSelDrive,nCurSector,chBuf) ? TRUE : FALSE;
			}
			nRootCluster = nNextCluster;
		}
	}
	return FALSE;
}

DOS_FAT_DIR_ENT * pc_sysFileCreateEntry32(int nSelDrive,char szFname[],UINT nFSize)
{
	DOS_FAT_DIR_ENT *pDirEntry,*pFindEntry=NULL;
	UCHAR cBuf[512],*cbEmptyEntryBuf = NULL;
	int i,j,nEmptyEntrySect,nStartSector, nDirClust;
	BOOL bFail=FALSE;
	UCHAR fname[DOS_NAME_LEN],ext[DOS_EXT_LEN],*pFile, dname[50];
	UINT nTemp,nRootCluster;
	DATE_TIME_TYPE dateTime;
	FATLINK *pNextClustLink,*pRootClustLink=NULL;

	pFile = fname;

	nEmptyEntrySect = 0;
	/*pc_SpliteFileName(szFname,fname,ext);*/

	pDirEntry = (DOS_FAT_DIR_ENT *)cBuf;

	if(pc_SpliteDirFileName(szFname, dname, fname, ext))
	{
		/*printf("ROOT CREATE\n");*/
		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,m_xDrive[nSelDrive].F32_nRootCluster);
	}
	else
	{
		nDirClust = pc_FindFolderEntry(nSelDrive,dname);
		if(nDirClust < 0) return NULL;
		/*printf("%d Cluster CREATE\n", nDirClust);*/
		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nDirClust);
	}
	
	nRootCluster = pNextClustLink->nClust;

	while(!pc_IsLastCluster(nSelDrive,nRootCluster))
	{
		nStartSector = (nRootCluster-m_xDrive[nSelDrive].F32_nRootCluster)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nRootOffset;
		
		for(i=nStartSector;i<(nStartSector+m_xDrive[nSelDrive].nSecPerClust)&& !bFail && !nEmptyEntrySect;i++)
		{
			pc_CardRead(nSelDrive,i,cBuf); /* 32byte fname size 512/32 = 16 */
			
			for(j=0;j<16 && !nEmptyEntrySect;j++)
			{
				if(!strncmp(pDirEntry[j].DIR_Name,fname,DOS_NAME_LEN) &&
					!strncmp(pDirEntry[j].DIR_Ext,ext,DOS_EXT_LEN))
				{
					pFindEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
					MemCpy(pFindEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
					if(cbEmptyEntryBuf) free(cbEmptyEntryBuf);
					return pFindEntry;
				}
				
				if((pDirEntry[j].DIR_Name[0] == 0x00 ||
					pDirEntry[j].DIR_Name[0] == 0xE5 ) && !cbEmptyEntryBuf)
				{
					
					nEmptyEntrySect = i;
					MemCpy(pDirEntry[j].DIR_Name,fname,DOS_NAME_LEN);
					MemCpy(pDirEntry[j].DIR_Ext,ext,DOS_EXT_LEN);
					pDirEntry[j].DIR_Attr = 0x20;	/* bit5:archive bit4:directory */
					pDirEntry[j].DIR_NTRes = 0;
					pDirEntry[j].DIR_CrtTimeTenth = 0;
					
					timeGet(&dateTime);                
					/* Bit F E D C B A 9 8 7 6 5 4 3 2 1 0 */
					/*time|  Hour   |   Min     | *2 = Sec */
					/*date| +1980=Year  |  Mon  |  Day     */				
					pDirEntry[j].DIR_CtrTime = (HEXA2BIN(dateTime.hour)<<0x0b)|(HEXA2BIN(dateTime.minute)<<5)|(HEXA2BIN(dateTime.second)>>1);/*0xc0b2;*/
					pDirEntry[j].DIR_CtrDate = ((HEXA2BIN(dateTime.year)+20)<<0x09)|(HEXA2BIN(dateTime.month )<<5)|(HEXA2BIN(dateTime.day));/*0xa526; */
					pDirEntry[j].DIR_WrtTime = pDirEntry[j].DIR_CtrTime = WBE(pDirEntry[j].DIR_CtrTime);
					pDirEntry[j].DIR_LstAccDate = pDirEntry[j].DIR_WrtDate = pDirEntry[j].DIR_CtrDate = WBE(pDirEntry[j].DIR_CtrDate);
					
					nTemp = pc_GetFat32ClusterForSize(nSelDrive,nFSize/(m_xDrive[nSelDrive].nSecPerClust*512)+(nFSize%(m_xDrive[nSelDrive].nSecPerClust*512)?1:0),FALSE);
					if(nTemp == 0x00000000)
					{
						TRACE("The Clust is not enough allocation memory!!\n");
						bFail = TRUE;
						break;
					}
					/* 빈 파일인 경우 Cluste를 0dmfh 해서 생성해야 Pc에서 삭제가 됨*/
					if(nTemp == 0x0FFFFFFF)	nTemp = 0x00000000;

					pDirEntry[j].DIR_FstClusHI = WBE(DWORD_H(nTemp));
					pDirEntry[j].DIR_FstClusLo = WBE(DWORD_L(nTemp));
					pDirEntry[j].DIR_FileSize = DWBE(nFSize);
					
					cbEmptyEntryBuf = (UCHAR *)malloc(512);
					MemCpy(cbEmptyEntryBuf,cBuf,512);
					
					pFindEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
					MemCpy(pFindEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
				}
				
			}
		}

		pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
		if(!pNextClustLink) break;
		nRootCluster = pNextClustLink->nClust;
	}


	if(!cbEmptyEntryBuf)
	{
		if(pc_IsEnableClustSize(nSelDrive,1))
		{
			if(pc_AddRootCluster32(nSelDrive,nRootCluster))
			{
				return pc_sysFileCreateEntry32(nSelDrive,szFname,nFSize);
			}
			
		}
		TRACE("Disk is Full.\n"); 
		return NULL;
	}

	pc_CardWrite(nSelDrive,nEmptyEntrySect,cbEmptyEntryBuf);
	free(cbEmptyEntryBuf);

	return pFindEntry;
}

DOS_FAT_DIR_ENT * pc_sysFileCreateEntry(int nSelDrive,char szFname[],UINT nFSize)
{
	return (m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32) ? pc_sysFileCreateEntry32(nSelDrive,szFname,nFSize) : pc_sysFileCreateEntry16(nSelDrive,szFname,nFSize);
}
/*********************************************************************************************************************/
/*   FILEID pc_FileCreate(char szFname[],UINT nFSize)                                                                             */
/* - 루트디렉토리의 파일을 찾아 파일을 읽기/쓰기로 연다                                                              */
/* 입력: -szFname NULL 포인터 파일이름("FILENAME.EXT") 대문자 스트링(8.3) 버퍼                                       */
/*		 -nFSize: File Size																							 */
/*		 O_WRONLY 	(1) (or WRITE) 읽기시:파일카운터 정지,쓰기시:파일카운터 증가[읽어서 몇바이트만 바꾸고 다시쓸때]  */
/* 출력: 열수 없으면 -1, 성공하면 FILEID 번호                                                                        */
/*       파일 닫기(pc_FileClose) 의무                                                                                */
/*********************************************************************************************************************/
FILEID pc_FileCreate(char szFname[],UINT nFSize)
{
	return pc_FileOpen(szFname,O_WRONLY|O_CREAT,nFSize);
}

/*********************************************************************************************************************/
/*   int pc_GetDriveNameNumber(char szFname[])                                                                       */
/* - 루트디렉토리의 파일을 찾아 파일을 읽기/쓰기로 연다                                                              */
/* 입력: -szFname NULL 포인터 파일이름("A:/Z/FILENAME.EXT") 대문자 스트링(8.3) 버퍼                                  */
/* 출력: 디렉토리 이름을 발견할 수 없으면  -1, 성공하면 0,1,2,3,4... (A,B,C,D,E....                                  */
/*********************************************************************************************************************/
int pc_GetDriveNameNumber(char szFname[])
{
	if(szFname[0] >= 'A' && szFname[0] <= 'Z' && szFname[1] == ':')
	{
		return (szFname[0]-'A');
	}

	return -1;
}

/*********************************************************************************************************************/
/*   FILEID pc_FileOpen(char szFname[],USHORT wFlag,UINT nFSize)                                                     */
/* - 루트디렉토리의 파일을 찾아 파일을 읽기/쓰기로 연다                                                              */
/* 입력: -szFname NULL 포인터 파일이름("FILENAME.EXT") 대문자 스트링(8.3) 버퍼                                       */
/*       -cbFlag: OpenFlag Combination                                                                               */
/*		 O_RDONLY 	(0) (or READ)  읽기시:파일카운터 증가,쓰기시:파일카운터 정지[쓰고나서 쓴것을 확인할때]           */
/*		 O_WRONLY 	(1) (or WRITE) 읽기시:파일카운터 정지,쓰기시:파일카운터 증가[읽어서 몇바이트만 바꾸고 다시쓸때]  */
/*		 O_RDWR 	(2) (or UPDATE)읽기시,쓰기시 모두 파일카운터 증가 [수동으로증가시 pc_FileSeek(fd,1,SEEK_CUR)]    */
/*		 O_CREAT 	(0x0200)  - create a file.                                                                       */
/* 출력: 열수 없으면 -1, 성공하면 FILEID 번호                                                                        */
/*       파일 닫기(pc_FileClose) 의무                                                                                */
/*********************************************************************************************************************/
FILEID pc_FileOpen(char szFname[],USHORT wFlag,UINT nFSize)
{
	int i;
	int nSelDrive;
	DOS_FAT_DIR_ENT *pDirEntry;

	nSelDrive = pc_GetDriveNameNumber(szFname);
	if(nSelDrive == -1) nSelDrive = m_nSelDrive;

	if(wFlag&O_CREAT) pDirEntry = pc_sysFileCreateEntry(nSelDrive,szFname,nFSize);
	else pDirEntry = pc_FindFileEntry(nSelDrive,szFname);

	if(!pDirEntry){TRACE("NOT FOUND ENTRY!!\n"); return -1;}
	wFlag &= ~O_CREAT;
	for(i=0;i<MAX_OPENFILE;i++)
	{
		if(!m_OpenFileList[i].pFileEntry)
		{
			m_OpenFileList[i].nSelDrive = nSelDrive;
			m_OpenFileList[i].pFileEntry = pDirEntry;
			m_OpenFileList[i].pNextClust = pc_GetFatList(nSelDrive,MK_DWORD(WBE(pDirEntry->DIR_FstClusHI),WBE(pDirEntry->DIR_FstClusLo)));
			m_OpenFileList[i].pCurClust = m_OpenFileList[i].pNextClust;
			m_OpenFileList[i].wFlag =wFlag;
			m_OpenFileList[i].nLinkPos = 0;
			m_OpenFileList[i].nBytePos = 0;
			strncpy(m_OpenFileList[i].szName,szFname,12);

			if(m_OpenFileList[i].pvWriteBuffer) free(m_OpenFileList[i].pvWriteBuffer);
			m_OpenFileList[i].pvWriteBuffer = (LPBYTE)malloc(1024);
			m_OpenFileList[i].nvWritePos = 0;

			memset(m_OpenFileList[i].pvWriteBuffer,0,1024);

			return i;
		}
	}
	free(pDirEntry);
	TRACE("OPEN FILELIST IS FULL\n");
	return -1;
}

FILEID pc_vFileOpen(char szFname[],USHORT wFlag,UINT nFSize)
{
	return pc_FileOpen(szFname,wFlag,nFSize);
}

/***********************************************************************************/
/*  void pc_FileClose(FILEID nFd)                                                  */
/* - pc_FileOpen으로 연 파일을 닫는다.                                             */
/* 입력: FILEID nfd                                                                */
/* 출력: 없음                                                                      */
/***********************************************************************************/
void pc_FileClose(FILEID nFd)
{
	if(m_OpenFileList[nFd].nvWritePos) 
	{
		pc_FileWrite(nFd,m_OpenFileList[nFd].pvWriteBuffer);
		m_OpenFileList[nFd].nvWritePos = 0;
	}
	if(m_OpenFileList[nFd].pvWriteBuffer) 
	{
		free(m_OpenFileList[nFd].pvWriteBuffer);
		m_OpenFileList[nFd].pvWriteBuffer = NULL;
		
	}

	if(m_OpenFileList[nFd].pNextClust) pc_FreeFatList(m_OpenFileList[nFd].pNextClust);
	if(m_OpenFileList[nFd].pFileEntry) free(m_OpenFileList[nFd].pFileEntry);
	m_OpenFileList[nFd].pFileEntry = NULL;
}

void pc_vFileClose(FILEID nFd)
{
	pc_FileClose(nFd);
}

BOOL pc_IsLastCluster(int nSelDrive,UINT nClust)
{
	switch(m_xDrive[nSelDrive].nFat)
	{
	case DOS_PTTYPE_FAT12:
		return (nClust >= 0x0ff8);
	case DOS_PTTYPE_FAT16:
		return (nClust >= 0x0fff8);
	case DOS_PTTYPE_FAT32:
		return (nClust >= 0x0ffffff8);
	}
	return TRUE;
}

/*********************************************************************/
/*   INT pc_FileRead(FILEID fd,UCHAR cBuf[512])                      */
/* 파일의 fi ID에서 현재부터 한섹터 512byte만큼을 읽어온다.          */
/* 입력: fi(pc_FileOpen에서 주워진 ID)                               */
/*     : cBuf - 512byte size 읽어올 buffer                           */
/*         O_RDONLY (0) - file counter increase                      */
/*         O_WRONLY (1) - file counter stop                          */
/*         O_RDWR   (2) - file counter increase                      */
/* 출력: ERROR = -1 , 읽은 파일의 갯수.. 512 byte가 안되면 EOF       */
/*********************************************************************/
INT pc_FileRead(FILEID nFd,UCHAR cBuf[])
{
	UINT nClustor;
	UINT nSec,size,nLastSect;
	int nSelDrive;
	if(!m_OpenFileList[nFd].pFileEntry) return -1;
	if(!m_OpenFileList[nFd].pCurClust) return -1;
	nClustor = m_OpenFileList[nFd].pCurClust->nClust;
	nSelDrive = m_OpenFileList[nFd].nSelDrive;
	if(pc_IsLastCluster(nSelDrive,nClustor)) return -1; /* End of File */

	nSec = (nClustor-2)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nDataOffset + m_OpenFileList[nFd].nLinkPos%m_xDrive[nSelDrive].nSecPerClust;


	size = DWBE(m_OpenFileList[nFd].pFileEntry->DIR_FileSize);
	nLastSect =	size/512 ; 
	nLastSect += size%512 ? 1 : 0;
	nLastSect --; /* Zero Base */

 	if(nLastSect < m_OpenFileList[nFd].nLinkPos)
	{
		TRACE("SECT POS OVERFLOWER[%d/%d]\n",nLastSect,m_OpenFileList[nFd].nLinkPos);
		return 0;
	}
	else
	{
		if(!pc_CardRead(nSelDrive,nSec,cBuf)) return -1;
		if((m_OpenFileList[nFd].wFlag==O_RDONLY) || (m_OpenFileList[nFd].wFlag==O_RDWR))
		{
			m_OpenFileList[nFd].nLinkPos++;
			if(!(m_OpenFileList[nFd].nLinkPos%m_xDrive[nSelDrive].nSecPerClust))
				m_OpenFileList[nFd].pCurClust = (FATLINK*)m_OpenFileList[nFd].pCurClust->pNextClust;
		}
		return (nLastSect == m_OpenFileList[nFd].nLinkPos) ? size%512 : 512;
	}
}

/*********************************************************************/
/*   INT pc_xFileRead(FILEID fd,UCHAR cBuf[],nSize)                  */
/* 파일의 fi ID에서 현재부터 한섹터 nSize byte만큼을 읽어온다.       */
/* 입력: fi(pc_FileOpen에서 주워진 ID)                               */
/*     : cBuf - 512byte size 읽어올 buffer                           */
/*         O_RDONLY (0) - file counter increase                      */
/*         O_WRONLY (1) - file counter stop                          */
/*         O_RDWR   (2) - file counter increase                      */
/* 출력: ERROR = -1 , 읽은 파일의 갯수.. 512 byte가 안되면 EOF       */
/*********************************************************************/
INT pc_xFileRead(FILEID nFd,UCHAR cBuf[],UINT nSize)
{
	UINT nReadSize=0;
	int i,nRecode = nSize/512 + BOOLIAN(nSize%512);
	for(i=0;i<nRecode;i++) 
	{
		if(-1==pc_FileRead(nFd,cBuf+512*i)) break;
		else nReadSize += 512;
	}
	if(nReadSize>nSize) nReadSize=nSize;
	return nReadSize;
}

/*
INT pc_xFileRead(FILEID nFd,UCHAR cBuf[],UINT nSize)
{
	UINT nClustor;
	UINT nSec,nLastSect;
	INT nFSize,nRead,i,nRemain,nTemp;
	UCHAR buf[512];
	if(!m_OpenFileList[nFd].pFileEntry) return -1;
	if(!m_OpenFileList[nFd].pCurClust) return -1;
	nClustor = m_OpenFileList[nFd].pCurClust->nClust;
	if(pc_IsLastCluster(nSelDrive,nClustor)) return -1; 
	nSec = (nClustor-2)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nDataOffset + m_OpenFileList[nFd].nLinkPos%m_xDrive[nSelDrive].nSecPerClust;

	nFSize = DWBE(m_OpenFileList[nFd].pFileEntry->DIR_FileSize);
	nLastSect =	nFSize/512 ; 
	nLastSect += nFSize%512 ? 1 : 0;
	nLastSect --; 
 	if(nLastSect < m_OpenFileList[nFd].nLinkPos)
	{
		TRACE("SECT POS OVERFLOWER[%d/%d]\n",nLastSect,m_OpenFileList[nFd].nLinkPos);
		return 0;
	}
	else
	{
		if(!pc_CardRead(nSelDrive,nSec,buf)) return -1;
		nRead = (512-m_OpenFileList[nFd].nBytePos);
		nRead = min(nRead,nSize);
		if(nLastSect == m_OpenFileList[nFd].nLinkPos)
		{
			nRemain = nFSize-m_OpenFileList[nFd].nLinkPos*512;
			nRead = min(nRead,nRemain);
		}
		
		
		for(i=0;i<nRead;i++) cBuf[i] = buf[m_OpenFileList[nFd].nBytePos+i];
		nRemain = nSize-nRead;
		m_OpenFileList[nFd].nBytePos += nRead;
		if(m_OpenFileList[nFd].nBytePos >= 512)
		{
			m_OpenFileList[nFd].nLinkPos++;
			m_OpenFileList[nFd].nBytePos = 0;
			if(!(m_OpenFileList[nFd].nLinkPos%m_xDrive[nSelDrive].nSecPerClust))
				m_OpenFileList[nFd].pCurClust = (FATLINK*)m_OpenFileList[nFd].pCurClust->pNextClust;
		}

		if(nRemain >0)
		{
			nTemp = pc_xFileRead(nFd,cBuf+nRead,nRemain);
			if(nTemp>0) nRead += nTemp;
		}
		return nRead;
	}
}
*/

/********************************************************************************/
/*   INT pc_FileWrite(FILEID fi,UCHAR cBuf[512])                                */
/* 파일의 fi ID에서 현재부터 한섹터 512byte만큼을 쓴다.                         */
/* 입력: fi(pc_FileOpen에서 주워진 ID)                                          */
/*     : cBuf - 512byte size 쓸 buffer(안쓰는 부분은 Zero로 초기화 해야함)      */
/*         O_RDONLY (0) - file counter stop                                     */
/*         O_WRONLY (1) - file counter increase                                 */
/*         O_RDWR   (2) - file counter increase                                 */
/* 출력: ERROR = -1 , EOF 이면 Zero                                             */
/********************************************************************************/
INT pc_FileWrite(FILEID nFd,UCHAR cBuf[])
{
	UINT nClustor;
	UINT nSec,size,nLastSect;
	int nSelDrive;
	if(!m_OpenFileList[nFd].pFileEntry) return -1;
	if(!m_OpenFileList[nFd].pCurClust) return -1;
	nClustor = m_OpenFileList[nFd].pCurClust->nClust;
	if(nClustor >= 0xfff8) return -1; /* End of File */

	nSelDrive = m_OpenFileList[nFd].nSelDrive;
	nSec = (nClustor-2)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nDataOffset + m_OpenFileList[nFd].nLinkPos%m_xDrive[nSelDrive].nSecPerClust;

	size = DWBE(m_OpenFileList[nFd].pFileEntry->DIR_FileSize);
	nLastSect =	size/512 ; 
	nLastSect += size%512 ? 1 : 0;
	nLastSect --; /* Zero Base */
	
 	if(nLastSect < m_OpenFileList[nFd].nLinkPos)		return 0;
	else
	{
		if(!pc_CardWrite(nSelDrive,nSec,cBuf)) return -1;
		if((m_OpenFileList[nFd].wFlag==O_WRONLY) || (m_OpenFileList[nFd].wFlag==O_RDWR))
		{
			m_OpenFileList[nFd].nLinkPos++;
			if(!(m_OpenFileList[nFd].nLinkPos%m_xDrive[nSelDrive].nSecPerClust))
			{
				m_OpenFileList[nFd].pCurClust = 
					(FATLINK*)m_OpenFileList[nFd].pCurClust->pNextClust;
			}
		}
		return 512;
	}
	
}

/********************************************************************************/
/*   INT pc_xFileWrite(FILEID fi,UCHAR cBuf[],UINT nSize)                       */
/* 파일의 fi ID에서 현재부터 한섹터 nSize byte만큼을 쓴다.                      */
/* 입력: fi(pc_FileOpen에서 주워진 ID)                                          */
/*     : cBuf - 512byte size 쓸 buffer(안쓰는 부분은 Zero로 초기화 해야함)      */
/*         O_RDONLY (0) - file counter stop                                     */
/*         O_WRONLY (1) - file counter increase                                 */
/*         O_RDWR   (2) - file counter increase                                 */
/* 출력: ERROR = -1 , EOF 이면 Zero                                             */
/********************************************************************************/
INT pc_xFileWrite(FILEID nFd,UCHAR cBuf[],UINT nSize)
{
	UINT nClustor;
	UINT nSec,nLastSect;
	INT nFSize,nWrite,i,nRemain,nTemp;
	int nSelDrive;
	UCHAR buf[512];
	if(!m_OpenFileList[nFd].pFileEntry) 
	{
		TRACE("FILE ENTRY NOT ALLOCATED...\n");
		return -1;
	}
	if(!m_OpenFileList[nFd].pCurClust) 
	{
		TRACE("FILE CLUSTER NOT ALLOCATED...[%s:(%d+%d)/%d].\n",m_OpenFileList[nFd].szName,m_OpenFileList[nFd].nBytePos,nSize,DWBE(m_OpenFileList[nFd].pFileEntry->DIR_FileSize));
		return -1;
	}
	nSelDrive = m_OpenFileList[nFd].nSelDrive;
	nClustor = m_OpenFileList[nFd].pCurClust->nClust;
	if(pc_IsLastCluster(nSelDrive,nClustor)) return -1; /* End of File */
	nSec = (nClustor-2)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nDataOffset + m_OpenFileList[nFd].nLinkPos%m_xDrive[nSelDrive].nSecPerClust;

	nFSize = DWBE(m_OpenFileList[nFd].pFileEntry->DIR_FileSize);
	nLastSect =	nFSize/512 ; 
	nLastSect += nFSize%512 ? 1 : 0;
	nLastSect --; /* Zero Base */
	
 	if(nLastSect < m_OpenFileList[nFd].nLinkPos)		return 0;
	else
	{
		nWrite = (512-m_OpenFileList[nFd].nBytePos);
		nWrite = min(nWrite,nSize);
		if(nLastSect == m_OpenFileList[nFd].nLinkPos) 
		{
			nRemain = nFSize-m_OpenFileList[nFd].nLinkPos*512;
			nWrite = min(nWrite,nRemain);
		}
		if(pc_CardRead(nSelDrive,nSec,buf)==-1) 
		{
			TRACE("Reading ERROR!!!\n");
			return -1;
		}
		for(i=0;i<nWrite;i++) buf[m_OpenFileList[nFd].nBytePos+i] = cBuf[i];
		if(!pc_CardWrite(nSelDrive,nSec,buf)) 
		{
			TRACE("WRITE ERROR!!!\n");
			return -1;
		}
		nRemain = nSize - nWrite;
		m_OpenFileList[nFd].nBytePos += nWrite;
		if(m_OpenFileList[nFd].nBytePos >= 512) 
		{
			m_OpenFileList[nFd].nLinkPos++;
			m_OpenFileList[nFd].nBytePos = 0;
			if(!(m_OpenFileList[nFd].nLinkPos%m_xDrive[nSelDrive].nSecPerClust))
			{
				m_OpenFileList[nFd].pCurClust = 
					(FATLINK*)m_OpenFileList[nFd].pCurClust->pNextClust;
			}
		}

		if(nRemain >0)
		{
			taskDelay(1);
			nTemp = pc_xFileWrite(nFd,cBuf+nWrite,nRemain);
			if(nTemp>0) nWrite += nTemp;
		}

		return nWrite;
	}
}

/********************************************************************************/
/*   INT pc_vFileWrite(FILEID fi,UCHAR cBuf[],UINT nSize)                       */
/* 파일의 fi ID에서 현재부터 한섹터 nSize byte만큼을 쓴다.                      */
/*           Buffer를 이용하여 사용되어진다.                                    */
/* 입력: fi(pc_FileOpen에서 주워진 ID)                                          */
/*     : cBuf - 512byte size 쓸 buffer(안쓰는 부분은 Zero로 초기화 해야함)      */
/*         O_RDONLY (0) - file counter stop                                     */
/*         O_WRONLY (1) - file counter increase                                 */
/*         O_RDWR   (2) - file counter increase                                 */
/* 출력: ERROR = -1 , EOF 이면 Zero                                             */
/********************************************************************************/
INT pc_vFileWrite(FILEID nFd,UCHAR cBuf[],UINT nSize)
{
	BYTE chWriteBuffer[1024];

	UINT nStartPos=0,nRemainSize;
	if(m_OpenFileList[nFd].nvWritePos+nSize >= 512)
	{
		nStartPos = 512 - m_OpenFileList[nFd].nvWritePos;
		memcpy(m_OpenFileList[nFd].pvWriteBuffer+m_OpenFileList[nFd].nvWritePos,cBuf,nStartPos);
		pc_FileWrite(nFd,m_OpenFileList[nFd].pvWriteBuffer);
		m_OpenFileList[nFd].nvWritePos = 0;
		nRemainSize = nSize-nStartPos;

		while(nRemainSize >= 512)
		{
			memset(chWriteBuffer,0,sizeof(chWriteBuffer));
			memcpy(chWriteBuffer,cBuf+nStartPos,512);
			if(pc_FileWrite(nFd,chWriteBuffer) == -1) return -1;
			nStartPos += 512;
			nRemainSize = nSize-nStartPos;
		}

		if(nRemainSize)
		{
			memcpy(m_OpenFileList[nFd].pvWriteBuffer,cBuf+nStartPos,nRemainSize);
			m_OpenFileList[nFd].nvWritePos += nRemainSize;
		}

		return nSize;
	}
	else
	{
		memcpy(m_OpenFileList[nFd].pvWriteBuffer+m_OpenFileList[nFd].nvWritePos,cBuf,nSize);
		m_OpenFileList[nFd].nvWritePos += nSize;

		return nSize;

	}
}

/*********************************************************************/
/*   INT pc_FileSeek(UINT nFd,INT nSecOffset,UCHAR nStd)             */
/* 파일의 ID에서 읽어올 현재 섹터포지션을 이동 시킨다.               */
/* 입력: fi - 파일 ID                                                */
/*     : nSecOffset - 파일 섹터포지션                                */      
/*       -nStd: Start Position                                       */
/*       SEEK_SET (0)  - set to offset                               */
/*       SEEK_CUR (1)  - set to current position plus offset         */
/*       SEEK_END (2)  - set to the size of the file plus offset     */
/* 출력: 이동 섹터 포지션, nSec보다 작으면 마지막 섹터를 가리킨다.   */
/*********************************************************************/
INT pc_FileSeek(UINT nFd,INT nSecOffset,UCHAR nStd)
{
	int nSelDrive;
	UINT size = DWBE(m_OpenFileList[nFd].pFileEntry->DIR_FileSize);
	INT LastSect =	size/512,i;
	INT nTemp;

	nSelDrive = m_OpenFileList[nFd].nSelDrive;
	LastSect += (size%512) ? 1 : 0 ;
	LastSect --;

	switch(nStd)
	{
		case SEEK_SET:
			if(nSecOffset<0) nSecOffset = 0;
			m_OpenFileList[nFd].nLinkPos = min(nSecOffset,LastSect+1);
			m_OpenFileList[nFd].pCurClust = m_OpenFileList[nFd].pNextClust;
			for(i=0;i<m_OpenFileList[nFd].nLinkPos/m_xDrive[nSelDrive].nSecPerClust;i++)
			{
				if(!m_OpenFileList[nFd].pCurClust)break;
				m_OpenFileList[nFd].pCurClust = (FATLINK*)m_OpenFileList[nFd].pCurClust->pNextClust;
			}
			break;
		case SEEK_CUR:
			if(nSecOffset<0) nSecOffset = max(nSecOffset,-m_OpenFileList[nFd].nLinkPos);
			nTemp = MIN(nSecOffset,(LastSect+1-(INT)m_OpenFileList[nFd].nLinkPos));

			if(nTemp>0)		
			{
				for(i=m_OpenFileList[nFd].nLinkPos;i<(m_OpenFileList[nFd].nLinkPos+nTemp)/m_xDrive[nSelDrive].nSecPerClust;i++)
				{
					if(!m_OpenFileList[nFd].pCurClust)break;
					m_OpenFileList[nFd].pCurClust = (FATLINK*)m_OpenFileList[nFd].pCurClust->pNextClust;
				}				
			}
			else
			{
				m_OpenFileList[nFd].pCurClust = m_OpenFileList[nFd].pNextClust;
				for(i=0;i<(m_OpenFileList[nFd].nLinkPos+nTemp)/m_xDrive[nSelDrive].nSecPerClust;i++)
				{
					if(!m_OpenFileList[nFd].pCurClust)break;
					m_OpenFileList[nFd].pCurClust = (FATLINK*)m_OpenFileList[nFd].pCurClust->pNextClust;
				}
			}
			m_OpenFileList[nFd].nLinkPos += nTemp;

			break;
		case SEEK_END:
			if(nSecOffset>0) nSecOffset = 0;
			m_OpenFileList[nFd].nLinkPos = max(LastSect+nSecOffset+1,0);
			m_OpenFileList[nFd].pCurClust = m_OpenFileList[nFd].pNextClust;
			for(i=0;i<m_OpenFileList[nFd].nLinkPos/m_xDrive[nSelDrive].nSecPerClust;i++)
			{
				if(!m_OpenFileList[nFd].pCurClust)break;
				m_OpenFileList[nFd].pCurClust = (FATLINK*)m_OpenFileList[nFd].pCurClust->pNextClust;
			}
			break;
		default:
			return -1;
	}
	
	return m_OpenFileList[nFd].nLinkPos;
}

/*********************************************************************/
/*   INT pc_FileSeek(UINT nFd,INT nByteOffset,UCHAR nStd)             */
/* 파일의 ID에서 읽어올 현재 섹터포지션을 이동 시킨다.               */
/* 입력: fi - 파일 ID                                                */
/*     : nSecOffset - 파일 바이트포지션                              */      
/*       -nStd: Start Position                                       */
/*       SEEK_SET (0)  - set to offset                               */
/*       SEEK_CUR (1)  - set to current position plus offset         */
/*       SEEK_END (2)  - set to the size of the file plus offset     */
/* 출력: 이동 섹터 포지션, nSec보다 작으면 마지막 섹터를 가리킨다.   */
/*********************************************************************/
INT pc_xFileSeek(UINT nFd,INT nByteOffset,UCHAR nStd)
{
	INT nSecOffset = nByteOffset/512,nBytePos = nByteOffset%512;
	if(pc_FileSeek(nFd,nSecOffset,nStd) != -1) m_OpenFileList[nFd].nBytePos = nBytePos;
	return m_OpenFileList[nFd].nBytePos;
}

INT pc_vFileSeek(UINT nFd,INT nByteOffset,UCHAR nStd)
{
	UINT nClustor;
	BYTE chBuffer[1024];
	INT nAbsSec,nSecOffset = nByteOffset/512,nBytePos = nByteOffset%512;
	int nSelDrive = m_OpenFileList[nFd].nSelDrive;

	if(m_OpenFileList[nFd].nvWritePos) 
	{
		pc_FileRead(nFd,chBuffer);
		memcpy(chBuffer,m_OpenFileList[nFd].pvWriteBuffer,m_OpenFileList[nFd].nvWritePos);
		pc_FileWrite(nFd,chBuffer);
		m_OpenFileList[nFd].nvWritePos = 0;
	}

	if(pc_FileSeek(nFd,nSecOffset,nStd) != -1) 
	{
		m_OpenFileList[nFd].nBytePos = nBytePos;

		if(nBytePos%512)
		{
			if(!m_OpenFileList[nFd].pCurClust) return -1;
			nClustor = m_OpenFileList[nFd].pCurClust->nClust;
			if(pc_IsLastCluster(nSelDrive,nClustor)) return -1; /* End of File */
			nAbsSec = (nClustor-2)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nDataOffset + m_OpenFileList[nFd].nLinkPos%m_xDrive[nSelDrive].nSecPerClust;
			if(!pc_CardRead(nSelDrive,nAbsSec,chBuffer)) return -1;
			memcpy(m_OpenFileList[nFd].pvWriteBuffer,chBuffer,512);
			m_OpenFileList[nFd].nvWritePos = nBytePos%512;
		}
	}

	return m_OpenFileList[nFd].nBytePos;
}

void pc_FreeFatList(FATLINK *pNextLink)
{
	FATLINK *pTempLink;
	while(pNextLink)
	{
		pTempLink = pNextLink;
		pNextLink = (FATLINK *)pNextLink->pNextClust;
		free(pTempLink);
	} 
}


UINT pc_GetUsedClust(int nSelDrive)
{
	UINT nNextClust;
	UINT i,j,k,nUsedClusters=0;
	UCHAR cbBuf[0x600];
	
	switch(m_xDrive[nSelDrive].nFat)
	{
		case DOS_PTTYPE_FAT12:
			nUsedClusters = 0;
			for(i=m_xDrive[nSelDrive].nFat1Offset;i<(m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize);i+=3)
			{
				pc_CardRead(nSelDrive,i,cbBuf);
				pc_CardRead(nSelDrive,i+1,cbBuf+0x200);
				pc_CardRead(nSelDrive,i+2,cbBuf+0x400);

				for(j=0;j<1024;j++)
				{				
					k = ((j%1024)*3)/2;
					nNextClust = *(USHORT *)(cbBuf+k);		
					nNextClust = WBE(nNextClust);
					if(j%2) nNextClust >>= 4;
					nNextClust &= 0xfff;

					if(nNextClust) nUsedClusters++;
				}
			}		
			break;
		case DOS_PTTYPE_FAT16:
			nUsedClusters = 0;
			for(i=m_xDrive[nSelDrive].nFat1Offset;i<(m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize);i++)
			{
				pc_CardRead(nSelDrive,i,cbBuf);
				for(j=0;j<256;j++)
				{				
					nNextClust = ((USHORT *)cbBuf)[j];		
					nNextClust = WBE(nNextClust);

					if(nNextClust) nUsedClusters++;
				}
			}		
			break;
		case DOS_PTTYPE_FAT32:
			nUsedClusters = 0;
			for(i=m_xDrive[nSelDrive].nFat1Offset;i<(m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize);i++)
			{
				pc_CardRead(nSelDrive,i,cbBuf);
				for(j=0;j<128;j++)
				{				
					nNextClust = ((UINT *)cbBuf)[j];		
					nNextClust = DWBE(nNextClust);

					if(nNextClust) nUsedClusters++;
				}
			}		
			break;
	}
	return nUsedClusters-2;
}


UINT pc_GetEmptyClust(int nSelDrive)
{
	USHORT nNextClust;
	UINT i,j,k,nFreeClusters=0;
	UCHAR cbBuf[0x600];
	
	switch(m_xDrive[nSelDrive].nFat)
	{
		case DOS_PTTYPE_FAT12:
			nFreeClusters = 0;
			for(i=m_xDrive[nSelDrive].nFat1Offset;i<(m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize);i+=3)
			{
				pc_CardRead(nSelDrive,i,cbBuf);
				pc_CardRead(nSelDrive,i+1,cbBuf+0x200);
				pc_CardRead(nSelDrive,i+2,cbBuf+0x400);

				for(j=0;j<1024;j++)
				{				
					k = ((j%1024)*3)/2;
					nNextClust = *(USHORT *)(cbBuf+k);		
					nNextClust = WBE(nNextClust);
					if(j%2) nNextClust >>= 4;
					nNextClust &= 0xfff;

					if(!nNextClust) nFreeClusters++;
				}
			}		
			break;
		case DOS_PTTYPE_FAT16:
			nFreeClusters = 0;
			for(i=m_xDrive[nSelDrive].nFat1Offset;i<(m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize);i++)
			{
				pc_CardRead(nSelDrive,i,cbBuf);
				for(j=0;j<256;j++)
				{				
					nNextClust = ((USHORT *)cbBuf)[j];		
					nNextClust = WBE(nNextClust);

					if(!nNextClust) nFreeClusters++;
				}
			}		
			break;
	}
	return nFreeClusters;
}

/* 32G BYTE 까지만 지원된다..					*/
/* SECTOR 이므로 512를 곱하여야 한다.           */
UINT pc_GetDiskFreeSector(int nSelDrive)
{
	UINT nFreeDiskSector = ((m_xDrive[nSelDrive].nTotalSec-m_xDrive[nSelDrive].nDataOffset)/m_xDrive[nSelDrive].nSecPerClust - pc_GetUsedClust(nSelDrive))*m_xDrive[nSelDrive].nSecPerClust;

	return nFreeDiskSector;
}

/* 2G BYTE 까지만 지원된다..					*/
/* BYTE 단위로 리턴한다.						*/
UINT pc_GetDiskFree(int nSelDrive)
{
	UINT nTotalDiskFree=0;
	UINT nFreeDiskSector;

	nFreeDiskSector = pc_GetDiskFreeSector(nSelDrive);
	nTotalDiskFree = (nFreeDiskSector < 0x800000) ? nFreeDiskSector*0x200 : 0xFFFFFFFF;

	return nTotalDiskFree;
}

/* 32G BYTE 까지만 지원된다..					*/
/* K byte 단위로 리턴한다.			           */
UINT pc_GetDiskFreeKByte(int nSelDrive)
{
	UINT nFreeDiskSector;

	nFreeDiskSector = pc_GetDiskFreeSector(nSelDrive);

	return nFreeDiskSector/2;
}

UINT pc_GetDiskFree_H(int nSelDrive)
{
	UINT nFreeDiskSector = pc_GetDiskFreeSector(nSelDrive);
	if(nFreeDiskSector < 0x800000) return 0;
	else return nFreeDiskSector/0x800000;
}

UINT pc_GetDiskFree_L(int nSelDrive)
{
	UINT nFreeDiskSector = pc_GetDiskFreeSector(nSelDrive);
	return nFreeDiskSector*0x200;
}


FATLINK *pc_GetFatList(int nSelDrive,UINT nStClust)
{
	FATLINK **ppNextLink,*pStartLink=NULL;
	UINT nTemp,nNextClust = nStClust;
	UINT nCurReadFatSec=0,k;
	UCHAR cbBuf[0x600];
	ppNextLink = &pStartLink;
	
	switch(m_xDrive[nSelDrive].nFat)
	{
		case DOS_PTTYPE_FAT12:
			if(pc_IsLastCluster(nSelDrive,nNextClust)) return NULL;
			*ppNextLink = (FATLINK*)malloc(sizeof(FATLINK));
			(*ppNextLink)->nClust = nStClust;
			(*ppNextLink)->pNextClust = NULL;
			ppNextLink = (FATLINK**)&((*ppNextLink)->pNextClust);
			while(1)
			{
				if(nCurReadFatSec != (nNextClust/1024)*3 + m_xDrive[nSelDrive].nFat1Offset)
				{
					nCurReadFatSec = (nNextClust/1024)*3 + m_xDrive[nSelDrive].nFat1Offset;
					if(nCurReadFatSec >= (m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize)) return FALSE;
					pc_CardRead(nSelDrive,nCurReadFatSec,cbBuf);
					pc_CardRead(nSelDrive,nCurReadFatSec+1,cbBuf+0x200);
					pc_CardRead(nSelDrive,nCurReadFatSec+2,cbBuf+0x400);
				}
				nTemp = nNextClust;
				k = ((nTemp%1024)*3)/2;
				nNextClust = *(USHORT *)(cbBuf+k);		
				nNextClust = WBE(nNextClust);
				if(nTemp%2) nNextClust >>= 4;
				nNextClust &= 0x0fff;

				if(pc_IsLastCluster(nSelDrive,nNextClust))
				{
					*ppNextLink = NULL;
					return pStartLink;
				}
				*ppNextLink = (FATLINK*)malloc(sizeof(FATLINK));
				if(!*ppNextLink)
				{
					pc_FreeFatList(pStartLink);
					TRACE("Memory Allocation Error\n");
					return NULL;
				}
				(*ppNextLink)->nClust = nNextClust;
				(*ppNextLink)->pNextClust = NULL;
				ppNextLink =(FATLINK**) &((*ppNextLink)->pNextClust);
		
			}		
			break;
		case DOS_PTTYPE_FAT16:
			if(pc_IsLastCluster(nSelDrive,nNextClust)) return NULL;
			*ppNextLink = (FATLINK*)malloc(sizeof(FATLINK));
			(*ppNextLink)->nClust = nStClust;
			(*ppNextLink)->pNextClust = NULL;
			ppNextLink = (FATLINK**)&((*ppNextLink)->pNextClust);
			while(1)
			{
				if(nCurReadFatSec != nNextClust/256 + m_xDrive[nSelDrive].nFat1Offset)
				{
					nCurReadFatSec = nNextClust/256 + m_xDrive[nSelDrive].nFat1Offset;
					if(nCurReadFatSec >= (m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize)) return FALSE;
					pc_CardRead(nSelDrive,nCurReadFatSec,cbBuf);
				}
				nNextClust = ((USHORT *)cbBuf)[nNextClust%256];
				nNextClust = WBE(nNextClust);

				if(pc_IsLastCluster(nSelDrive,nNextClust))
				{
					*ppNextLink = NULL;
					return pStartLink;
				}
				*ppNextLink = (FATLINK*)malloc(sizeof(FATLINK));
				if(!*ppNextLink)
				{
					pc_FreeFatList(pStartLink);
					TRACE("Memory Allocation Error\n");
					return NULL;
				}
				(*ppNextLink)->nClust = nNextClust;
				(*ppNextLink)->pNextClust = NULL;
				ppNextLink = (FATLINK**)&((*ppNextLink)->pNextClust);
			}		
			break;
		case DOS_PTTYPE_FAT32:
			if(pc_IsLastCluster(nSelDrive,nNextClust)) return NULL;
			*ppNextLink = (FATLINK*)malloc(sizeof(FATLINK));
			(*ppNextLink)->nClust = nStClust;
			(*ppNextLink)->pNextClust = NULL;
			ppNextLink = (FATLINK**)&((*ppNextLink)->pNextClust);
			while(1)
			{
				if(nCurReadFatSec != nNextClust/128 + m_xDrive[nSelDrive].nFat1Offset)
				{
					nCurReadFatSec = nNextClust/128 + m_xDrive[nSelDrive].nFat1Offset;
					if(nCurReadFatSec >= (m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize)) return FALSE;
					pc_CardRead(nSelDrive,nCurReadFatSec,cbBuf);
				}
				nNextClust = ((UINT *)cbBuf)[nNextClust%128];
				nNextClust = DWBE(nNextClust);

				if(pc_IsLastCluster(nSelDrive,nNextClust))
				{
					*ppNextLink = NULL;
					return pStartLink;
				}
				*ppNextLink = (FATLINK*)malloc(sizeof(FATLINK));
				if(!*ppNextLink)
				{
					pc_FreeFatList(pStartLink);
					TRACE("Memory Allocation Error\n");
					return NULL;
				}
				(*ppNextLink)->nClust = nNextClust;
				(*ppNextLink)->pNextClust = NULL;
				ppNextLink = (FATLINK**)&((*ppNextLink)->pNextClust);
			}		
			break;
	}
}

/*****************************************************************************************/
/*   INT pc_ClustSeekInList(int nSelDrive,UINT nStClust,UINT nClustCnt)                  */
/* 읽어올 클러스터(OPEN파일리스트에서)를 반환한다. nClustCnt는 FAT의 Offset이다.         */
/* 입력: nStClust - 시작 클러스터                                                        */
/*     : nClustCnt - 건너 뛸 클러스트                                                    */
/* 출력: nClustCnt만큼 건너뛴 클러스트,EOF시 0xffff를 반환한다.                          */
/*****************************************************************************************/
INT pc_ClustSeekInList(int nSelDrive,FATLINK *pStClust,UINT nClustCnt)
{
	int i;
	FATLINK	*pNextClust = pStClust;
	for(i=0;i<nClustCnt;i++)
	{
		pNextClust = (FATLINK*)(pNextClust->pNextClust);
		if(pc_IsLastCluster(nSelDrive,pNextClust->nClust)) return pNextClust->nClust;
	}
	return pNextClust->nClust;
}

/***********************************************************************************/
/*   INT pc_ClustSeek(int nSelDrive,UINT nStClust,UINT nClustCnt)                                */
/* 읽어올 클러스터(Card FAT에서)를 반환한다. nClustCnt는 FAT의 Offset이다.         */
/* 입력: nStClust - 시작 클러스터                                                  */
/*     : nClustCnt - 건너 뛸 클러스트                                              */
/* 출력: nClustCnt만큼 건너뛴 클러스트,EOF시 0xffff를 반환한다.                    */
/***********************************************************************************/
INT pc_ClustSeek(int nSelDrive,UINT nStClust,UINT nClustCnt)
{
	UINT nCurClust=nStClust;
	UINT nEOF = (m_xDrive[nSelDrive].nFat== DOS_PTTYPE_FAT12) ? 0x0ff8 : 0xfff8;
	INT i;
	for(i=0;i<nClustCnt;i++)
	{
		nCurClust = pc_NextClust(nSelDrive,nCurClust);
		if(nCurClust >= nEOF) return nCurClust;
	}
	return nCurClust;
}
/***********************System Function*******************************/

BOOL pc_FastFormat(int nSelDrive)
{
	int i;
	UCHAR cbBuf[512];
	UINT nClrSizeH,nClrSizeL;
	if(!pc_CardInit(FALSE,nSelDrive)) return FALSE;
	memset(cbBuf,0,512);
	switch(m_xDrive[nSelDrive].nFat)
	{
		case DOS_PTTYPE_FAT16:	
			cbBuf[0] = 0xf8;
			cbBuf[1] = 0xff;			
			cbBuf[2] = 0xff;			
			cbBuf[3] = 0xff;
			break;
		case DOS_PTTYPE_FAT12:
			cbBuf[0] = 0xf8;
			cbBuf[1] = 0xff;			
			cbBuf[2] = 0xff;
			break;
	}
	if(!pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset,cbBuf)) return FALSE;
	nClrSizeL = m_xDrive[nSelDrive].nDataOffset-m_xDrive[nSelDrive].nFat1Offset+1;
	nClrSizeH = nClrSizeL/256;
	nClrSizeL %= 256;
	for(i=0;i<nClrSizeH;i++)
		pc_EraseSector(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+1+i*256,0);
	pc_EraseSector(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+1+i*256,nClrSizeL);
	return TRUE;
}

BOOL pc_CardDetect(int nSelDrive)
{
	USHORT *pPcmciaReg = pc_GetRegAddress(nSelDrive);

	return !(*pPcmciaReg & (1<<(nSelDrive*2)));
}


BOOL pc_IsEnableClustSize(int nSelDrive,UINT nClustSize)
{
	int i,j,k;
	UINT nFindClustNum=0;
	UCHAR cbBuf[1536];
	USHORT *pFat16List = (USHORT *)cbBuf,wFatClust;
	UINT *pFat32List = (UINT *)cbBuf,nFatClust;

	if(!m_xDrive[nSelDrive].nFat) pc_CardInit(0,nSelDrive);
	if(!nClustSize) return TRUE;


	switch(m_xDrive[nSelDrive].nFat)
	{
		case DOS_PTTYPE_FAT12:
			for(i=0;i<m_xDrive[nSelDrive].nFatSize;i+=3)
			{
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i),cbBuf);
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i + 1),cbBuf+0x200);
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i + 2),cbBuf+0x400);
				for(j=0;j<1024;j++)
				{
					k = (j/2)*3;
					wFatClust = *(USHORT *)(cbBuf+k+j%2);		
					wFatClust = WBE(wFatClust);
					if(j%2) wFatClust >>= 4;
					wFatClust &= 0xfff;
					

					if(wFatClust == 0)
					{
						nFindClustNum++;
						if(nFindClustNum == nClustSize) return TRUE;
					}
					
				}
			}
			break;
		case DOS_PTTYPE_FAT16:
			for(i=0;i<m_xDrive[nSelDrive].nFatSize;i++)
			{
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i),cbBuf);
				for(j=0;j<256;j++)
				{
					if(pFat16List[j] == 0)
					{	
						nFindClustNum++;
						if(nFindClustNum == nClustSize) return TRUE;
					}
				}
			}
			break;
		case DOS_PTTYPE_FAT32:
			for(i=0;i<m_xDrive[nSelDrive].nFatSize;i++)
			{
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i),cbBuf);
				for(j=0;j<128;j++)
				{
					if(pFat32List[j] == 0)
					{	
						nFindClustNum++;
						if(nFindClustNum == nClustSize) return TRUE;
					}
				}
			}
			break;
		default:
			TRACE("UnKnown Fats\n");
			return FALSE;
	}
	TRACE("Enable Clust Size = %d\n",nFindClustNum);
	return FALSE;
}


/* 빈 파일을 만들기 위하여 FAT 에 nClustSize 만큼 클러스러를 할당한다. */
USHORT pc_GetFat16ClusterForSize(int nSelDrive,UINT nClustSize)
{
	int i,j,k;
	UINT nFindClustNum=0,nPreSecNum=0;
	USHORT wFirstClust=0,wPreClust,wFindClust=0,wClustCnt,wTemp,wFatClust;
	BOOL 	bNewClust,bPreSecEnable=FALSE;
	UCHAR cbBuf[0x600],cbPreBuf[0x600];
	USHORT *pFat16List = (USHORT *)cbBuf;

	if(!m_xDrive[nSelDrive].nFat) pc_CardInit(0,nSelDrive);
	if(!pc_IsEnableClustSize(nSelDrive,nClustSize)) return 0;

	

	switch(m_xDrive[nSelDrive].nFat)
	{
		case DOS_PTTYPE_FAT12:
			if(!nClustSize) return 0x0fff;
			for(i=0,wClustCnt=0;i<m_xDrive[nSelDrive].nFatSize;i+=3)
			{
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i),cbBuf);
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i + 1),cbBuf+0x200);
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i + 2),cbBuf+0x400);
				bNewClust = TRUE;
				for(j=0;j<1024;j++,wClustCnt++)
				{
					k = (j*3)/2;
					wFatClust = *(USHORT *)(cbBuf+k);		
					wFatClust = WBE(wFatClust);
					if(j%2) wFatClust >>= 4;
					wFatClust &= 0x0fff;
					

					if(wFatClust == 0)
					{
						if(!wFirstClust)
						{
							wFirstClust = wClustCnt;
							wFindClust = wClustCnt;
							bNewClust = FALSE;
						}
						else
						{
							wPreClust = wFindClust;
							wFindClust = wClustCnt;

							if(bNewClust)
							{
								wTemp = wFindClust;
								if(wPreClust%2) wTemp <<= 4;
								else	wTemp &= 0x0fff;
								wTemp = WBE(wTemp);
								k = ((wPreClust%1024)*3)/2;
								*(USHORT *)(cbPreBuf+k) |= wTemp;
								pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset + nPreSecNum,cbPreBuf);
								pc_CardWrite(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + nPreSecNum + 1),cbPreBuf+512);
								pc_CardWrite(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + nPreSecNum + 2),cbPreBuf+1024);
								
							}
							else
							{
								wTemp = wFindClust;
								if(wPreClust%2) wTemp <<= 4;
								else	wTemp &= 0x0fff;
								wTemp = WBE(wTemp);
								k = ((wPreClust%1024)*3)/2;
								*(USHORT *)(cbBuf+k) |= wTemp;

							}
							bNewClust = FALSE;
						}
						nFindClustNum++;
						bPreSecEnable = TRUE;

						if(nFindClustNum == nClustSize)
						{

							wTemp = (wFindClust%2) ? 0xfff0 : 0x0fff;
							wTemp = WBE(wTemp);
							k = ((wFindClust%1024)*3)/2;
							*(USHORT *)(cbBuf+k) |= wTemp;
							pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+i,cbBuf);
							pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+i+1,cbBuf+0x200);
							pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+i+2,cbBuf+0x400);
							return wFirstClust;
						}

					}
					
				}
				if(bPreSecEnable)
				{
					MemCpy(cbPreBuf,cbBuf,0x600);
					nPreSecNum = i;
					bPreSecEnable = FALSE;
				}
			}
			break;
		case DOS_PTTYPE_FAT16:
			if(!nClustSize) return 0x0ffff;
			for(i=0,wClustCnt=0;i<m_xDrive[nSelDrive].nFatSize;i++)
			{
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i),cbBuf);
				bNewClust = TRUE;
				for(j=0;j<256;j++,wClustCnt++)
				{
					if(pFat16List[j] == 0)
					{	
						if(!wFirstClust)
						{
							wFirstClust = wClustCnt;
							wFindClust = wClustCnt;
							bNewClust = FALSE;
							nFindClustNum++;
						}
						else 
						{
							wPreClust = wFindClust;
							wFindClust = wClustCnt;
							if(bNewClust)
							{
								((USHORT *)cbPreBuf)[wPreClust%256] = WBE(wFindClust);
								pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nPreSecNum,cbPreBuf);
								
							}
							else
							{
								pFat16List[wPreClust%256] = WBE(wFindClust);
							}
							bNewClust = FALSE;
							nFindClustNum++;
						}
						bPreSecEnable = TRUE;

						if(nFindClustNum == nClustSize)
						{
							pFat16List[wFindClust%256] = 0xffff;
							pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+i,cbBuf);
							return wFirstClust;
						}
					}

				}
				if(bPreSecEnable)
				{
					MemCpy(cbPreBuf,cbBuf,512);
					nPreSecNum = i;
					bPreSecEnable = FALSE;
				}
			}
			break;
		default:
			TRACE("UnKnown Fats\n");
			return 0;
	}

	TRACE("Remain Cluster = %d\n",nFindClustNum);
	return 0;
}

void pc_SectorFillZero(int nSelDrive,UINT nStartSector,UINT nSectorSize)
{
	UINT i;
	UCHAR chBuf[512];
	memset(chBuf,0,512);
	for(i=nStartSector;i<(nStartSector+nSectorSize);i++)
	{
		pc_CardWrite(nSelDrive,i,chBuf);
	}
}

/* 빈 파일을 만들기 위하여 FAT 에 nClustSize 만큼 클러스러를 할당한다. */
UINT pc_GetFat32ClusterForSize(int nSelDrive,UINT nClustSize,BOOL bFillZero)
{
	int i,j,k;
	UINT nFindClustNum=0,nPreSecNum=0;
	UINT nFirstClust=0,nPreClust,nFindClust=0,nClustCnt,nTemp,nFatClust;
	BOOL 	bNewClust,bPreSecEnable=FALSE;
	UCHAR cbBuf[0x600],cbPreBuf[0x600];
	UINT *pFat32List = (UINT *)cbBuf;

	if(!m_xDrive[nSelDrive].nFat) pc_CardInit(0,nSelDrive);
	if(!pc_IsEnableClustSize(nSelDrive,nClustSize)) return 0;

	switch(m_xDrive[nSelDrive].nFat)
	{
		case DOS_PTTYPE_FAT32:
			if(!nClustSize) return 0x0fffffff;
			for(i=0,nClustCnt=0;i<m_xDrive[nSelDrive].nFatSize;i++)
			{
				pc_CardRead(nSelDrive,(m_xDrive[nSelDrive].nFat1Offset + i),cbBuf);
				bNewClust = TRUE;
				for(j=0;j<128;j++,nClustCnt++)
				{
					if(pFat32List[j] == 0)
					{	
						if(bFillZero)
						{
							pc_SectorFillZero(nSelDrive,m_xDrive[nSelDrive].nDataOffset + (nClustCnt-2)*m_xDrive[nSelDrive].nSecPerClust,m_xDrive[nSelDrive].nSecPerClust);
						}
						if(!nFirstClust)
						{
							nFirstClust = nClustCnt;
							nFindClust = nClustCnt;
							bNewClust = FALSE;
							nFindClustNum++;
						}
						else 
						{
							nPreClust = nFindClust;
							nFindClust = nClustCnt;
							if(bNewClust)
							{
								((UINT *)cbPreBuf)[nPreClust%128] = DWBE(nFindClust);
								pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+nPreSecNum,cbPreBuf);
								
							}
							else
							{
								pFat32List[nPreClust%128] = DWBE(nFindClust);
							}
							bNewClust = FALSE;
							nFindClustNum++;
						}
						bPreSecEnable = TRUE;

						if(nFindClustNum == nClustSize)
						{
							pFat32List[nFindClust%128] = DWBE(0x0fffffff);
							pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset+i,cbBuf);
							return nFirstClust;
						}
					}

				}
				if(bPreSecEnable)
				{
					MemCpy(cbPreBuf,cbBuf,512);
					nPreSecNum = i;
					bPreSecEnable = FALSE;
				}
			}
			break;
		default:
			TRACE("UnKnown Fats\n");
			return 0;
	}

	TRACE("Remain Cluster = %d\n",nFindClustNum);
	return 0;
}

INT pc_NextClust(int nSelDrive,UINT nCurClust)
{
	INT nClust;
	switch(m_xDrive[nSelDrive].nFat)
	{
		case DOS_PTTYPE_FAT12:
			nClust = pc_Fat12NextClust(nSelDrive,nCurClust);
			if(nClust>=0xff0) nClust|=0xf000;
			return nClust;
		case DOS_PTTYPE_FAT16:
			return pc_Fat16NextClust(nCurClust);
		case 0:
			pc_CardInit(0,nSelDrive);
			return pc_NextClust(nSelDrive,nCurClust);
	}
	return -1;
}

BOOL pc_FileReset(char szFileName[])
{
	int k;
	UCHAR cbBuf[0x600];
	DOS_FAT_DIR_ENT *pFindEntry;
	USHORT nNextClust,wTemp;
	UINT nStClust,nEndClust,nCurReadFatSec=0,nTemp,nEraseSize;
	int nSelDrive;

	nSelDrive = pc_GetDriveNameNumber(szFileName);
	if(nSelDrive == -1) nSelDrive = m_nSelDrive;

	pFindEntry =  pc_FindFileEntry(nSelDrive,szFileName);

	if(!pFindEntry) return FALSE;
	nStClust = nEndClust = nNextClust = WBE(pFindEntry->DIR_FstClusLo);
	free(pFindEntry);

	switch(m_xDrive[nSelDrive].nFat)
	{
		case DOS_PTTYPE_FAT12:
			if(pc_IsLastCluster(nSelDrive,nNextClust)) return TRUE;
			while(1)
			{
				if(nCurReadFatSec != (nNextClust/1024)*3 + m_xDrive[nSelDrive].nFat1Offset)
				{
					nCurReadFatSec = (nNextClust/1024)*3 + m_xDrive[nSelDrive].nFat1Offset;
					if(nCurReadFatSec >= (m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize)) return FALSE;
					pc_CardRead(nSelDrive,nCurReadFatSec,cbBuf);
					pc_CardRead(nSelDrive,nCurReadFatSec+1,cbBuf+0x200);
					pc_CardRead(nSelDrive,nCurReadFatSec+2,cbBuf+0x400);
				}
				wTemp = nNextClust;
				k = ((wTemp%1024)*3)/2;
				nNextClust = *(USHORT *)(cbBuf+k);		
				nNextClust = WBE(nNextClust);
				if(wTemp%2) nNextClust >>= 4;
				nNextClust &= 0xfff;
				nEraseSize = (nEndClust-nStClust+1)*m_xDrive[nSelDrive].nSecPerClust;

				if(nNextClust >= 0xff8)
				{
					nTemp = m_xDrive[nSelDrive].nDataOffset + (nStClust-2)*m_xDrive[nSelDrive].nSecPerClust;
					TRACE("%d(%d) Erasing..\n",nTemp,nEraseSize);
					if(nEraseSize) pc_EraseSector(nSelDrive,nTemp,nEraseSize&0xff);
					return TRUE;
				}
				else if(nEndClust+1 == nNextClust && nEraseSize<0xff)	nEndClust++;
				else
				{
					nTemp = m_xDrive[nSelDrive].nDataOffset + (nStClust-2)*m_xDrive[nSelDrive].nSecPerClust;
					TRACE("%d(%d) Erasing..\n",nTemp,nEraseSize);
					if(nEraseSize) pc_EraseSector(nSelDrive,nTemp,nEraseSize&0xff);
					nStClust = nEndClust = nNextClust;
					nEraseSize = 0;
				}
			}
			break;
		case DOS_PTTYPE_FAT16:
			if(pc_IsLastCluster(nSelDrive,nNextClust)) return TRUE;
			while(1)
			{
				if(nCurReadFatSec != nNextClust/256 + m_xDrive[nSelDrive].nFat1Offset)
				{
					nCurReadFatSec = nNextClust/256 + m_xDrive[nSelDrive].nFat1Offset;
					if(nCurReadFatSec >= (m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize)) return FALSE;
					pc_CardRead(nSelDrive,nCurReadFatSec,cbBuf);
				}
				nNextClust = ((USHORT*)cbBuf)[nNextClust%256];
				nNextClust = WBE(nNextClust);
				nEraseSize =(nEndClust-nStClust+1)*m_xDrive[nSelDrive].nSecPerClust;
				if(nNextClust >= 0xfff8)
				{
					nTemp = m_xDrive[nSelDrive].nDataOffset + (nStClust-2)*m_xDrive[nSelDrive].nSecPerClust;
					if(nEraseSize) pc_EraseSector(nSelDrive,nTemp,nEraseSize);
					return TRUE;
				}
				else if(nEndClust+1 == nNextClust && nEraseSize<0xff)	nEndClust++;
				else
				{
					nTemp = m_xDrive[nSelDrive].nDataOffset + (nStClust-2)*m_xDrive[nSelDrive].nSecPerClust;
					if(nEraseSize) pc_EraseSector(nSelDrive,nTemp,nEraseSize);
					nStClust = nEndClust = nNextClust;
				}
			}
			break;
		case DOS_PTTYPE_FAT32:
			if(pc_IsLastCluster(nSelDrive,nNextClust)) return TRUE;
			while(1)
			{
				if(nCurReadFatSec != nNextClust/128 + m_xDrive[nSelDrive].nFat1Offset)
				{
					nCurReadFatSec = nNextClust/128 + m_xDrive[nSelDrive].nFat1Offset;
					if(nCurReadFatSec >= (m_xDrive[nSelDrive].nFat1Offset+m_xDrive[nSelDrive].nFatSize)) return FALSE;
					pc_CardRead(nSelDrive,nCurReadFatSec,cbBuf);
				}
				nNextClust = ((USHORT*)cbBuf)[nNextClust%128];
				nNextClust = DWBE(nNextClust);
				nEraseSize =(nEndClust-nStClust+1)*m_xDrive[nSelDrive].nSecPerClust;
				if(pc_IsLastCluster(nSelDrive,nNextClust))
				{
					nTemp = m_xDrive[nSelDrive].nDataOffset + (nStClust-2)*m_xDrive[nSelDrive].nSecPerClust;
					if(nEraseSize) pc_EraseSector(nSelDrive,nTemp,nEraseSize);
					return TRUE;
				}
				else if(nEndClust+1 == nNextClust && nEraseSize<0xff)	nEndClust++;
				else
				{
					nTemp = m_xDrive[nSelDrive].nDataOffset + (nStClust-2)*m_xDrive[nSelDrive].nSecPerClust;
					if(nEraseSize) pc_EraseSector(nSelDrive,nTemp,nEraseSize);
					nStClust = nEndClust = nNextClust;
				}
			}
			break;
		case 0:
			pc_CardInit(0,nSelDrive);
			return pc_FileReset(szFileName);
	}
	return FALSE;
}

INT pc_Fat12NextClust(int nSelDrive,UINT nCurClust)
{
	UINT nFatPerFSec,nFatPerTSec,nOffset;
	UCHAR *pBuf;
	USHORT nFatReturn;

	nFatPerFSec = nCurClust*3/1024 + m_xDrive[nSelDrive].nFat1Offset;    
	nFatPerTSec = (nCurClust*3+2)/1024 + m_xDrive[nSelDrive].nFat1Offset; 

	pBuf = (UCHAR *)malloc(1024);
	if(!pc_CardRead(nSelDrive,nFatPerFSec,pBuf)) return -1;
	if(nFatPerFSec != nFatPerTSec)
		if(!pc_CardRead(nSelDrive,nFatPerTSec,pBuf+512)) return -1;
	nOffset = (nCurClust*3)%((nFatPerFSec == nFatPerTSec)?1024:2048);
	if(nOffset%6)
	{
		nFatReturn = (pBuf[nOffset/2+1]<<8)|pBuf[nOffset/2];
		nFatReturn >>= 4;
		nFatReturn &= 0x0fff;
		free(pBuf);
		return nFatReturn;
	}
	else
	{
		nFatReturn = (pBuf[nOffset/2+1]<<8)|pBuf[nOffset/2];
		nFatReturn &= 0x0fff;
		free(pBuf);
		return nFatReturn;
	}
}

INT pc_Fat16NextClust(int nSelDrive,UINT nCurClust)
{
	UINT nFatPerSec = nCurClust/256 + m_xDrive[nSelDrive].nFat1Offset;
	USHORT wBuf[256];
	if(!pc_CardRead(nSelDrive,nFatPerSec,(UCHAR*)wBuf)) return -1;
	return	WBE(wBuf[nCurClust%256]);
}

INT pc_Fat32NextClust(int nSelDrive,UINT nCurClust)
{
	UINT nFatPerSec = nCurClust/128 + m_xDrive[nSelDrive].nFat1Offset;
	UINT dwBuf[128];
	if(!pc_CardRead(nSelDrive,nFatPerSec,(UCHAR*)dwBuf)) return -1;
	return	WBE(dwBuf[nCurClust%128]);
}

void pc_CardDump(int nSelDrive)
{
	char *buf;
	UINT i=0,j;
	FILE * fd;
	buf = (char*)malloc(512);
	for(j=0;j<6;j++)
	{
		sprintf(buf,"tcms:c:/z/tmread%02d.bin",j);
		printf(buf);
		printf(" file create\n");
		fd = fopen(buf,"wb");
		for(i=0;i<5*2048;i++)
		{
			if(!(i%2048)) printf("---> %d M byte \n",i/2048+j*5);
			pc_CardRead(nSelDrive,i+j*5*2048,buf);
			fwrite(buf,512,1,fd);
		}
		fclose(fd);
	}

	printf("Complete...\n");
	free(buf);
}

UINT pc_GetSanDiskType(int nSelDrive)
{
	int i;
	char szModel[40];
	SanDiskInfoType sdi;
	UINT nTotalSectors,nMBSize;
	if(!pc_GetInfo(nSelDrive,&sdi)) return FALSE;
	for(i=0;i<40;i++) szModel[i]=sdi.ModelNo[i^1]; /* Big Endian */
	sscanf(&szModel[8],"SDP3B-%d",&nMBSize);
	return nMBSize;
}

UCHAR *pc_GetPBRPtr(UINT type)
{
	UCHAR *pRet = NULL;
	switch(type)
	{
	case SANDISK_10M:pRet = m_SandDisk10PBR;break;
	case SANDISK_16M:pRet = m_SandDisk16PBR;break;
	case SANDISK_32M:pRet = m_SandDisk32PBR;break;
	case SANDISK_64M:pRet = m_SandDisk64PBR;break;
	}
	return pRet;
}
/*
	이 함수는 32MB 전용으로 포멧을 했음.
*/
BOOL pc_AllFormat(UINT type,int nSelDrive)
{
	WORD i;
	BYTE buff1[512],*pPBR = NULL;

	pPBR = pc_GetPBRPtr(type);
	if(!pPBR) return FALSE;
		
	pc_CardWrite(nSelDrive,DOS_BOOT_SEC,pPBR);

	memset(buff1,0x00,512);
	buff1[0] = 0xf8;
	buff1[1] = 0xff;
	buff1[2] = 0xff;
	buff1[3] = 0xff;
	
	pc_CardWrite(nSelDrive,m_xDrive[nSelDrive].nFat1Offset,buff1);
	memset(buff1,0x00,512);

	for(i=2;i<=61;i++) pc_CardWrite(nSelDrive,i,buff1);

	pc_CardWrite(nSelDrive,62,buff1);
	for(i=63;i<=122;i++) pc_CardWrite(nSelDrive,i,buff1);

	/* file name area */
	for(i=123;i<=154;i++) pc_CardWrite(nSelDrive,i,buff1);
	return TRUE;
}

BOOL pc_CardFormat(int nSelDrive)
{
	UINT nMBSize;
	nMBSize = pc_GetSanDiskType(nSelDrive);
	printf("=> SanDisk %dM Byte Formatting...\n",nMBSize);
	return pc_AllFormat(nMBSize,nSelDrive);

}

/* 카드가 쓰기 가능한 포멧인가? */
BOOL pc_IsCardFormat(int nSelDrive)
{
	int i;
	UINT nMBSize;
	BYTE buff1[512],*pPBR = NULL;

	nMBSize = pc_GetSanDiskType(nSelDrive);

	pPBR = pc_GetPBRPtr(nMBSize);
	if(!pPBR) return FALSE;
		
	pc_CardRead(nSelDrive,DOS_BOOT_SEC,buff1);

	for(i=0;i<512;i++)
	{
		if(buff1[i] != pPBR[i]) return FALSE;
	}
	return TRUE;
}

void pc_test()
{
	int i,fd;
	char szFileName[10];
	for(i=0;i<200;i++)
	{
		if(i==128)
		{
			sprintf(szFileName,"FILE%04d.CHK",i);
		}
		sprintf(szFileName,"FILE%04d.CHK",i);
		fd = pc_FileOpen(szFileName,0x200,0);
		if(fd >= 0)
		{
			pc_FileClose(fd);
			printf("=> %s Created...\n",szFileName);
		}
		else
		{
			printf("=> %s Create Fail...\n",szFileName);
			break;
		}
	}
}


BOOL pc_GetInfo_Test(int nSelDrive)
{
	int i;
	UCHAR pReg[512];
	BOOL	bNull = 0;
	USHORT wIdHeader;

	memset(pReg,0,512);

	pc_Write_08(nSelDrive,DRV_HD_REG,0);
	pc_Write_08(nSelDrive,COMMAND_REG,PC_COMMAND_IDENTIFY);
	/*pc_WaitDRQ_08(nSelDrive);*/
	taskDelay(100);

	for(i=0;i<256;i++)
		pReg[i] = pc_Read_08(nSelDrive,DATA_REG);

	printf("INFO: ");
	for(i=0;i<256;i++)
	{
		printf("%02X ",pReg[i]);
	}
	printf("\n");
	
	return TRUE;
}

UINT pc_SpliteDirName(char srcName[],char fname[], int nStart)
{
	int i,j;
	UCHAR *pFile;
	memset(fname,0x20,DOS_NAME_LEN);

	if(srcName[nStart] >= 'A' && srcName[nStart] <= 'Z' && srcName[nStart+1] == ':') nStart+=2;

	if(srcName[nStart] == '/') nStart+=1;
	
	for(i=nStart,j=0,pFile = fname;srcName[i];i++)
	{
		if(srcName[i] == '/')
		{
			return i+1;
		}
		else
		{
			pFile[j++] = srcName[i];
		}
	}

	if(j>0)
		return i;

	return 0;
}

BOOL pc_SpliteDirFileName(char srcName[], char dname[], char fname[], char ext[])
{
	int i,j;
	int nDirEndLine = 0;
	UCHAR *pFile;
	BOOL bSpliteDir;

	bSpliteDir = FALSE;
	memset(fname,0x20,DOS_NAME_LEN);
	memset(ext,0x20,DOS_EXT_LEN);
	/*printf("<%s || %s || %s || %s>\n", srcName, dname, fname, ext);*/
	for(i=0;srcName[i];i++)
	{
		/*printf("<%d:%c>",i,srcName[i]);*/
		if(srcName[i] == '/')
		{
			nDirEndLine = i+1;
			bSpliteDir = TRUE;
		}
	}
	if(nDirEndLine > 0)
	{
		memcpy(dname, srcName, nDirEndLine);
		/*printf("<%s><%d> =>", dname,nDirEndLine);*/
	}

	dname[nDirEndLine] = 0;
	
	/*printf("%d : %c : %s",nDirEndLine,srcName[nDirEndLine], srcName);*/
	
	for(i=nDirEndLine, j=0, pFile = fname;srcName[i];i++)
	{
		/*printf("<%c=%d>",srcName[i],i);*/
		if(srcName[i] == '.'){pFile = ext;j=0;}
		else pFile[j++] = srcName[i];
	}

	return !bSpliteDir;
}

/***********************************************************************************/
/*   int * pc_FindFolderEntry(char szFname[])                           			   */
/* - 디렉토리 이름으로 루트엔트리 포인터를 찾는다.                                 */
/* 입력: szFname  NULL 포인터 디렉토리 이름("dirname1")스트링(8) 버퍼              */
/* 출력: 찾는 Folder Entry가 없으면 -1, 성공하면 동적 엔트리 할당 포인터           */
/***********************************************************************************/
int pc_FindFolderEntry(int nSelDrive,char szFname[])
{
	DOS_FAT_DIR_ENT *pFindEntry=NULL;
	int i,j;
	UCHAR fname[DOS_NAME_LEN],ext[DOS_EXT_LEN],*pFile;
	FATLINK *pNextClustLink,*pRootClustLink=NULL;
	UINT nRootClust, nDirClust, nStart, nRootSector;
	BOOL bError=0;

	nStart = 0;
	/* FAT 32에 대한 폴더 검색*/
	if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
	{
		/* 루트 폴더 cluster 설정*/
		nDirClust = m_xDrive[nSelDrive].F32_nRootCluster;
		while(nStart = pc_SpliteDirName(szFname,fname,nStart))
		{
			pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nDirClust);
			nRootClust = pNextClustLink->nClust;
			/* 한 cluster에 대한 검색*/
			while(!pc_IsLastCluster(nSelDrive,nRootClust))
			{
				pFindEntry = pc_FindFolderEntrySub(nSelDrive,(nRootClust - m_xDrive[nSelDrive].F32_nRootCluster) * m_xDrive[nSelDrive].nSecPerClust,m_xDrive[nSelDrive].nSecPerClust,fname);
				if(pFindEntry)
				{
					nDirClust = MK_DWORD(WBE(pFindEntry->DIR_FstClusHI),WBE(pFindEntry->DIR_FstClusLo));
					break;
				}

				pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
				/* 다음 cluster가 없으면 종료*/
				if(!pNextClustLink)
				{
					bError = TRUE;
					break;
				}
				/* 다음 cluster 설정*/
				nRootClust = pNextClustLink->nClust;
			}
			
			if(bError) break;

		}
		
	}
	else  /* FAT 12, 16에 대한 폴더 검색*/
	{
		/* 루트 폴더 cluster 설정*/
		nRootSector = nDirClust = 0;
		while(nStart = pc_SpliteDirName(szFname,fname,nStart))
		{
			/* 한 cluster에 대한 검색*/
			while(!pc_IsLastCluster(nSelDrive,nDirClust))
			{
				/* 현 cluster에 폴더 여부 확인*/
				pFindEntry = pc_FindFolderEntrySub(nSelDrive,nRootSector,m_xDrive[nSelDrive].nSecPerClust,fname);
				if(pFindEntry)
				{
					/* 검색된 폴더의 cluster와 Sector를 구함*/
					nDirClust = MK_DWORD(WBE(pFindEntry->DIR_FstClusHI),WBE(pFindEntry->DIR_FstClusLo));
					nRootSector = ((nDirClust-2)*m_xDrive[nSelDrive].nSecPerClust) + (m_xDrive[nSelDrive].nDataOffset - m_xDrive[nSelDrive].nRootOffset);	
					break;
				}
				else
				{
					/* 다음 cluster 정보 얻기*/
					nDirClust = pc_NextClust(nSelDrive,nDirClust);

					/* 다음 cluster가 존재하면 다음 cluster 검색 없으면 종료*/
					if(!pc_IsLastCluster(nSelDrive,nDirClust))
					{
						nRootSector = ((nDirClust-2)*m_xDrive[nSelDrive].nSecPerClust) + (m_xDrive[nSelDrive].nDataOffset - m_xDrive[nSelDrive].nRootOffset);
					}else
					{
						bError = TRUE;
						break;
					}
				}
				
			}
			
			if(bError) break;
		}
	}
	
	if(pRootClustLink) pc_FreeFatList(pRootClustLink);
	if(pFindEntry) free(pFindEntry);

	return bError ? -1 : nDirClust;
}
/********************************************************************************/
/* 1개의 클러스터에 대하여 폴더 정보가 있는지 확인한다.                         */
/* nFormSec를 현재 클러스터의 시작 섹터이다.                                    */
/* nSecSize는 한 클러스터당 섹터 갯수이다.                                      */
/* fname는 검색할 폴더 이름이다.                                                */
/********************************************************************************/
DOS_FAT_DIR_ENT * pc_FindFolderEntrySub(int nSelDrive,UINT nFormSec,UINT nSecSize,UCHAR fname[])
{
	DOS_FAT_DIR_ENT *pDirEntry,*pFindEntry = NULL;
	UCHAR cBuf[512];
	int i,j;
	for(i=nFormSec;i<(nFormSec+nSecSize);i++)
	{
		pc_CardRead(nSelDrive,m_xDrive[nSelDrive].nRootOffset+i,cBuf); /* 32byte fname size 512/32 = 16 */
		pDirEntry = (DOS_FAT_DIR_ENT *)cBuf;
		for(j=0;j<16;j++)
		{
			if((!strncmp(pDirEntry[j].DIR_Name,fname,DOS_NAME_LEN)) &&
				(pDirEntry[j].DIR_Attr & (1<<4)))
			{
				pFindEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
				MemCpy(pFindEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
				
				return pFindEntry;
			}		
		}
	}
	
	return pFindEntry;
}

/* 폴더와 파일 분류 시험*/
/*void pc_test1(char szFname[])
{
	UCHAR dfname[DOS_NAME_LEN],dext[DOS_EXT_LEN];
	UCHAR * ddname;

	printf("< %s > =>",szFname);
	pc_SpliteDirFileName(szFname, ddname, dfname, dext);
	printf("< %s > < %s > < %s >\n", ddname, dfname, dext);

}*/

/*특정 폴더에 파일 만들기 시험*/
/*void pc_test2(char szFname[], int Pos)
{
	int i,fd;
	char szFileName[50];
	for(i=0;i<Pos;i++)
	{
		if(i==128)
		{
			sprintf(szFileName,"FILE%04d.CHK",i);
		}
		sprintf(szFileName,"%s/FILE%04d.CHK",szFname, i);
		fd = pc_FileOpen(szFileName,0x200,0);
		if(fd >= 0)
		{
			pc_FileClose(fd);
			printf("=> %s Created...\n",szFileName);
		}
		else
		{
			printf("=> %s Create Fail...\n",szFileName);
			break;
		}
	}
}*/

/* 파일 복사 시험*/
/*void pc_test3(char szFname[], char szCname[])
{
	int i, nRFd, nWFd, nSize;
	UCHAR chBuffer[512];
	
	memset(chBuffer,0,sizeof(chBuffer));
	
	nRFd = pc_FileOpen(szFname,0,0);
	nSize = pc_FileSize(nRFd);
	
	nWFd = pc_FileOpen(szCname,0x201,nSize);

	if(nRFd == -1 || nWFd == -1) 
	{
		printf("=> %s Create Fail...%d %d \n",szFname, nRFd, nWFd);
	}
	else
	{
		printf("File Read Ok\n");
		for(i=0;i<nSize/512;i++)
		{
			pc_FileRead(nRFd,chBuffer);
			printf("%s",chBuffer);
			if(pc_FileWrite(nWFd,chBuffer) == -1) return;
		}
		
		if(nSize%512)
		{
			pc_FileRead(nRFd,chBuffer);
			if(pc_FileWrite(nWFd,chBuffer) == -1) return;
		}

		pc_FileClose(nRFd);
		pc_FileClose(nWFd);
		printf("=> %s Created...\n",szFname);
	}
}*/
/* FileSeek 시험*/
/*void pc_test4(char szFname[], int Pos, int Mode)
{
	int i, nRFd, nSize;
	UCHAR chBuffer[512];
	
	memset(chBuffer,0,sizeof(chBuffer));
	
	nRFd = pc_FileOpen(szFname,0,0);
	nSize = pc_FileSize(nRFd);
	
	if(nRFd == -1) 
	{
		printf("=> %s Create Fail...%d\n",szFname, nRFd);
	}
	else
	{
		pc_FileSeek(nRFd,Pos,Mode);

		pc_FileRead(nRFd,chBuffer);
		
		for(i=0;i<20;i++)
		{
			printf("%02x ", chBuffer[i]);
		}

		printf("\n");
		
		pc_FileClose(nRFd);
		printf("=> %s Created...\n",szFname);
	}
}*/
/* xFileSeek 시험*/
/*void pc_test5(char szFname[], char szCname[], int Pos, int Mode)
{
	int i, nRFd, nWFd, nSize,aa;
	UCHAR chBuffer[512];
	
	memset(chBuffer,0,sizeof(chBuffer));
	
	nRFd = pc_FileOpen(szFname,0,0);
	nSize = pc_FileSize(nRFd);

	nWFd = pc_FileOpen(szCname,0x201,nSize);
	

	if(nRFd == -1) 
	{
		printf("=> %s Create Fail...%d\n",szFname, nRFd);
	}
	else
	{
		aa=pc_xFileSeek(nWFd,Pos,Mode);

		pc_FileRead(nRFd,chBuffer);

		pc_xFileWrite(nWFd,chBuffer,5);

		pc_FileSeek(nWFd,0,0);

		pc_FileRead(nWFd,chBuffer);
		
		for(i=0;i<20;i++)
		{
			printf("%02x ", chBuffer[i]);
		}

		printf("\n");
		
		pc_FileClose(nRFd);
		printf("=> %s Created...\n",szFname);
	}
}
void pc_test6()
{
	UCHAR sname[8];

	memset(&sname,0x20,8);
	sname[0] = 'B';
	sname[1] = 'B';

	pc_sysDirCreateEntry(2, &sname);

}*/



DOS_FAT_DIR_ENT * pc_sysDirCreateEntry32(int nSelDrive,UINT nFormSec, char szDname[])
{
	DOS_FAT_DIR_ENT *pDirEntry,*pFindEntry=NULL, *pDotEntry=NULL;
	UCHAR cBuf[512],*cbEmptyEntryBuf = NULL;
	int i,j,nEmptyEntrySect,k;
	BOOL bFail=FALSE;
	UCHAR tmpname[DOS_NAME_LEN];
	UINT nTemp,nRootCluster;
	DATE_TIME_TYPE dateTime;
	FATLINK *pNextClustLink,*pRootClustLink=NULL;

	int nStart,nStartSector;
	UINT nDirClust=0;
	
	nEmptyEntrySect = 0;

	pDirEntry = (DOS_FAT_DIR_ENT *)cBuf;

	if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32)
	{
		pNextClustLink = pRootClustLink = pc_GetFatList(nSelDrive,nFormSec);
		nRootCluster = pNextClustLink->nClust;


		while(!pc_IsLastCluster(nSelDrive,nRootCluster))
		{
			nStartSector = (nRootCluster-m_xDrive[nSelDrive].F32_nRootCluster)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nRootOffset;

			for(i=nStartSector;i<(nStartSector+m_xDrive[nSelDrive].nSecPerClust)&& !bFail && !nEmptyEntrySect;i++)
			{
				pc_CardRead(nSelDrive,i,cBuf); /* 32byte fname size 512/32 = 16 */

				for(j=0;j<16 && !nEmptyEntrySect;j++)
				{
					if((!strncmp(pDirEntry[j].DIR_Name,szDname,DOS_NAME_LEN)) &&
						(pDirEntry[j].DIR_Attr & (1<<4)))
					{
						return NULL;
					}

					if((pDirEntry[j].DIR_Name[0] == 0x00 ||
						pDirEntry[j].DIR_Name[0] == 0xE5 ) && !cbEmptyEntryBuf)
					{

						nEmptyEntrySect = i;

						memset(&tmpname,0x20,DOS_NAME_LEN);
						for(k=0;k<DOS_NAME_LEN;k++)
						{
							if((szDname[k] == '/') && (szDname[k] == 0x00))
								continue;
							tmpname[k] = szDname[k];
						}

						MemCpy(pDirEntry[j].DIR_Name,tmpname,DOS_NAME_LEN);
						MemSet(pDirEntry[j].DIR_Ext,0x20,DOS_EXT_LEN);
						pDirEntry[j].DIR_Attr = 0x10;	/* bit5:archive bit4:directory */
						pDirEntry[j].DIR_NTRes = 0;
						pDirEntry[j].DIR_CrtTimeTenth = 0;

						timeGet(&dateTime);                
						/* Bit F E D C B A 9 8 7 6 5 4 3 2 1 0 */
						/*time|  Hour   |   Min     | *2 = Sec */
						/*date| +1980=Year  |  Mon  |  Day     */			
						pDirEntry[j].DIR_CtrTime = (HEXA2BIN(dateTime.hour)<<0x0b)|(HEXA2BIN(dateTime.minute)<<5)|(HEXA2BIN(dateTime.second)>>1);
						pDirEntry[j].DIR_CtrDate = ((HEXA2BIN(dateTime.year)+20)<<0x09)|(HEXA2BIN(dateTime.month )<<5)|(HEXA2BIN(dateTime.day));
						pDirEntry[j].DIR_WrtTime = pDirEntry[j].DIR_CtrTime = WBE(pDirEntry[j].DIR_CtrTime);
						pDirEntry[j].DIR_LstAccDate = pDirEntry[j].DIR_WrtDate = pDirEntry[j].DIR_CtrDate = WBE(pDirEntry[j].DIR_CtrDate);

						nTemp = pc_GetFat32ClusterForSize(nSelDrive,(m_xDrive[nSelDrive].nSecPerClust * m_xDrive[nSelDrive].nBytePerSec)/(m_xDrive[nSelDrive].nSecPerClust*512)+((m_xDrive[nSelDrive].nSecPerClust * m_xDrive[nSelDrive].nBytePerSec)%(m_xDrive[nSelDrive].nSecPerClust*512)?1:0),FALSE);
						if(nTemp == 0x00000000)
						{
							TRACE("The Clust is not enough allocation memory!!\n");
							bFail = TRUE;
							break;
						}

						/* 빈 파일인 경우 Cluster를 0으로 해서 생성해야 PC에서 삭제가 됨 */
						if(nTemp == 0x0FFFFFFF)	nTemp = 0x00000000;

						nDirClust = nTemp;

						pDirEntry[j].DIR_FstClusHI = WBE(DWORD_H(nTemp));
						pDirEntry[j].DIR_FstClusLo = WBE(DWORD_L(nTemp));
						pDirEntry[j].DIR_FileSize = 0;

						cbEmptyEntryBuf = (UCHAR *)malloc(512);
						MemCpy(cbEmptyEntryBuf,cBuf,512);

						pFindEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
						MemCpy(pFindEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
						pDotEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
						MemCpy(pDotEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
					} /*if*/
				} /*for*/
			} /*for*/


			pNextClustLink = (FATLINK*)pNextClustLink->pNextClust;
			if(!pNextClustLink) break;
			nRootCluster = pNextClustLink->nClust;

		} /*while*/

		/*if(!cbEmptyEntryBuf)
		{
			if(pc_IsEnableClustSize(nSelDrive,1))
			{
				if(pc_AddRootCluster32(nSelDrive,nRootCluster))
				{
					return pc_sysDirCreateEntry32(nSelDrive,nFormSec, szDname);
				}
			}
			TRACE("Disk is Full.\n"); 
			return NULL;
		}*/

		pc_SectorFillZero(nSelDrive,((nDirClust-2)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nDataOffset), m_xDrive[nSelDrive].nSecPerClust);

		pc_CardWrite(nSelDrive,nEmptyEntrySect,cbEmptyEntryBuf);

		free(cbEmptyEntryBuf);
		/* 자기 자신 루트*/
		cbEmptyEntryBuf = (UCHAR *)malloc(512);
		memset(cbEmptyEntryBuf,0x00,512);

		MemSet(tmpname,0x20, DOS_NAME_LEN);
		tmpname[0] = 0x2E;
		MemCpy(pDotEntry->DIR_Name,tmpname,DOS_NAME_LEN);
		MemCpy(&cbEmptyEntryBuf[0],pDotEntry,sizeof(DOS_FAT_DIR_ENT));

		/* 상위 루트*/
		MemSet(tmpname,0x20, DOS_NAME_LEN);
		tmpname[0] = 0x2E;
		tmpname[1] = 0x2E;
		MemCpy(pDotEntry->DIR_Name,tmpname,DOS_NAME_LEN);
		pDotEntry->DIR_FstClusHI = WBE(DWORD_H(nFormSec));
		pDotEntry->DIR_FstClusLo = WBE(DWORD_L(nFormSec));

		MemCpy(&cbEmptyEntryBuf[32],pDotEntry,sizeof(DOS_FAT_DIR_ENT));

		pc_CardWrite(nSelDrive,((nDirClust-m_xDrive[nSelDrive].F32_nRootCluster)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nRootOffset), cbEmptyEntryBuf);
		free(cbEmptyEntryBuf);
		if(!pDotEntry)
			free(pDotEntry);


	}	

	return pFindEntry;

}

DOS_FAT_DIR_ENT * pc_sysDirCreateEntry16(int nSelDrive,UINT nFormSec, char szDname[])
{
	DOS_FAT_DIR_ENT *pDirEntry=NULL,*pFindEntry=NULL, *pDotEntry=NULL;
	UCHAR cBuf[512],*cbEmptyEntryBuf = NULL;
	int i,j,nEmptyEntrySect,k;
	BOOL bFail=FALSE;
	UCHAR tmpname[DOS_NAME_LEN];
	UINT nTemp,nRootCluster;
	DATE_TIME_TYPE dateTime;
	FATLINK *pNextClustLink,*pRootClustLink=NULL;

	UINT nDirClust=0;
	
	nEmptyEntrySect = 0;

	pDirEntry = (DOS_FAT_DIR_ENT *)cBuf;

	nRootCluster = m_xDrive[nSelDrive].nRootOffset + nFormSec;

	/*printf (" FAT 16\n");*/

	for(i=nRootCluster;i<nRootCluster + 32 && !bFail && !nEmptyEntrySect;i++)
	{
		pc_CardRead(nSelDrive,i,cBuf); /* 32byte fname size 512/32 = 16 */

		for(j=0;j<16 && !nEmptyEntrySect;j++)
		{
			if((!strncmp(pDirEntry[j].DIR_Name,szDname,DOS_NAME_LEN)) &&
				(pDirEntry[j].DIR_Attr & (1<<4)))
			{
				return NULL;
			}

			if((pDirEntry[j].DIR_Name[0] == 0x00 ||
				pDirEntry[j].DIR_Name[0] == 0xE5 ) && !cbEmptyEntryBuf)
			{

				nEmptyEntrySect = i;

				memset(&tmpname,0x20,DOS_NAME_LEN);
				for(k=0;k<DOS_NAME_LEN;k++)
				{
					if((szDname[k] == '/') && (szDname[k] == 0x00))
						continue;
					tmpname[k] = szDname[k];
				}

				MemCpy(pDirEntry[j].DIR_Name,tmpname,DOS_NAME_LEN);
				MemSet(pDirEntry[j].DIR_Ext,0x20,DOS_EXT_LEN);
				pDirEntry[j].DIR_Attr = 0x10;	/* bit5:archive bit4:directory */
				pDirEntry[j].DIR_NTRes = 0;
				pDirEntry[j].DIR_CrtTimeTenth = 0;

				timeGet(&dateTime);                
				/* Bit F E D C B A 9 8 7 6 5 4 3 2 1 0 */
				/*time|  Hour   |   Min     | *2 = Sec */
				/*date| +1980=Year  |  Mon  |  Day     */			
				pDirEntry[j].DIR_CtrTime = (HEXA2BIN(dateTime.hour)<<0x0b)|(HEXA2BIN(dateTime.minute)<<5)|(HEXA2BIN(dateTime.second)>>1);
				pDirEntry[j].DIR_CtrDate = ((HEXA2BIN(dateTime.year)+20)<<0x09)|(HEXA2BIN(dateTime.month )<<5)|(HEXA2BIN(dateTime.day));
				pDirEntry[j].DIR_WrtTime = pDirEntry[j].DIR_CtrTime = WBE(pDirEntry[j].DIR_CtrTime);
				pDirEntry[j].DIR_LstAccDate = pDirEntry[j].DIR_WrtDate = pDirEntry[j].DIR_CtrDate = WBE(pDirEntry[j].DIR_CtrDate);

				nTemp = pc_GetFat16ClusterForSize(nSelDrive,(m_xDrive[nSelDrive].nSecPerClust * m_xDrive[nSelDrive].nBytePerSec)/(m_xDrive[nSelDrive].nSecPerClust*512)+((m_xDrive[nSelDrive].nSecPerClust * m_xDrive[nSelDrive].nBytePerSec)%(m_xDrive[nSelDrive].nSecPerClust*512)?1:0));
				if(nTemp == 0x00000000)
				{
					TRACE("The Clust is not enough allocation memory!!\n");
					bFail = TRUE;
					break;
				}

				/* 빈 파일인 경우 Cluster를 0으로 해서 생성해야 PC에서 삭제가 됨 */
				if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT12)
				{
					if(nTemp == 0x0FFF)	nTemp = 0x0000;
				}

				if(m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT16)
				{
					if(nTemp == 0xFFFF)	nTemp = 0x0000;
				}

				nDirClust = nTemp;

				pDirEntry[j].DIR_FstClusHI = WBE(DWORD_H(nTemp));
				pDirEntry[j].DIR_FstClusLo = WBE(DWORD_L(nTemp));
				pDirEntry[j].DIR_FileSize = 0;

				cbEmptyEntryBuf = (UCHAR *)malloc(512);
				MemCpy(cbEmptyEntryBuf,cBuf,512);

				pFindEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
				MemCpy(pFindEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
				pDotEntry = (DOS_FAT_DIR_ENT *)malloc(sizeof(DOS_FAT_DIR_ENT));
				MemCpy(pDotEntry,&pDirEntry[j],sizeof(DOS_FAT_DIR_ENT));
			} /*if*/
		} /*for*/
	} /*for*/


	/*if(!cbEmptyEntryBuf)
	{
		if(pc_IsEnableClustSize(nSelDrive,1))
		{
			if(pc_AddRootCluster16(nRootCluster))
			{
				return pc_sysDirCreateEntry16(nSelDrive,nFormSec, szDname);
			}
		}
		TRACE("Disk is Full.\n"); 
		return NULL;
	}*/

	pc_SectorFillZero(nSelDrive,((nDirClust-2)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nDataOffset), m_xDrive[nSelDrive].nSecPerClust);

	pc_CardWrite(nSelDrive,nEmptyEntrySect,cbEmptyEntryBuf);

	free(cbEmptyEntryBuf);
	/* 자기 자신 루트*/
	cbEmptyEntryBuf = (UCHAR *)malloc(512);
	memset(cbEmptyEntryBuf,0x00,512);

	MemSet(tmpname,0x20, sizeof(DOS_NAME_LEN));
	tmpname[0] = 0x2E;
	MemCpy(pDotEntry->DIR_Name,tmpname,DOS_NAME_LEN);
	MemCpy(&cbEmptyEntryBuf[0],pDotEntry,sizeof(DOS_FAT_DIR_ENT));

	/* 상위 루트*/
	MemSet(tmpname,0x20, sizeof(DOS_NAME_LEN));
	tmpname[0] = 0x2E;
	tmpname[1] = 0x2E;
	MemCpy(pDotEntry->DIR_Name,tmpname,DOS_NAME_LEN);
	pDotEntry->DIR_FstClusHI = WBE(DWORD_H(((nFormSec>2) ? nFormSec : 0)));
	pDotEntry->DIR_FstClusLo = WBE(DWORD_L(((nFormSec>2) ? nFormSec : 0)));

	MemCpy(&cbEmptyEntryBuf[32],pDotEntry,sizeof(DOS_FAT_DIR_ENT));

	pc_CardWrite(nSelDrive,((nDirClust-2)*m_xDrive[nSelDrive].nSecPerClust + m_xDrive[nSelDrive].nDataOffset), cbEmptyEntryBuf);
	free(cbEmptyEntryBuf);
	if(!pDotEntry)
		free(pDotEntry);

	return pFindEntry;

}

DOS_FAT_DIR_ENT * pc_sysDirCreateEntry(int nSelDrive,UINT nFormSec, char szDname[])
{
	return (m_xDrive[nSelDrive].nFat == DOS_PTTYPE_FAT32) ? pc_sysDirCreateEntry32(nSelDrive,nFormSec, szDname) : pc_sysDirCreateEntry16(nSelDrive,nFormSec, szDname);
}


#endif /* _PCMCIA_C_ */