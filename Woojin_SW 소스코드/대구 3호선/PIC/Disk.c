
#include "main.h"
#include "ALL_DEF.h"
#include "Disk.h"


/////////////////////////////////////////////////
WORD m_nFat; 	
WORD m_nFat1Offset;	
WORD m_nFat2Offset;
WORD m_nFatSize;
WORD m_nRootOffset;
WORD m_nDataOffset;
WORD m_nSecPerClust;	//섹터당 클러스터
WORD m_wTotalSec;
WORD m_szVolume[12];
WORD m_VolumeID[4];

UCHAR glCardInfoBuff[256]={0,0,};
WORD glHeader = 0;
WORD glSectPerTrack = 0;
WORD glDiskFail = 0;

int glSectorStartOffset = 0;

UCHAR m_FileSize = 0;



/************************************************************************************
		d_SanDisk Test
************************************************************************************/
//UCHAR SanDiskInof[1500];
UCHAR d_PassCount=0;
WORD d_GetUsedCluster_Pass=0;
/************************************************************************************/

//UCHAR NowRdBuff[512];			// 현재 섹터에 포함된 데이터의 값

UCHAR Cluster_OneFileBuf[500];		// 용량 재확인 2000*4*512 = 4096Kbyte
//UCHAR Cluster_TwoFileBuf[3000];
WORD glStartCluster=0;
WORD glTotalClusterCnt=0;
WORD glSecCnt =0;

WORD PreSector = 0;
WORD NowSector = 0;

OPEN_FILE FileList[10];

NVSRAM_VARIABLE nNvsram_Variable;	// 사용 되는 변수
STATION_NAME StationName[61];		// 한 다이아 에서 사용 가능한 역명.
STATION_NAME_ALL StationNameAll[100];//역차 역명 전체를 가지고 있다.
DISPLAY_INDEX_NAME nDisplayIndex;	//표시장치 데이타를 가지고 있다.
//STOP_PT_INFO_ITEM nStop_Pt_Info_Flag[MEMORY_RESIZE];

START_NV_ADDRESS nStart_Address_Point; //DIA  주소.

/**************************************************************
	지연시킨다.
***************************************************************/
void Delay(int nDelay)
{
	int i;
	for(i=0;i<nDelay;i++);
}

/**************************************************************
	디스크 READY. (LBA)
***************************************************************/

int SanDisk_WaitReady()
{
	unsigned char a,b;
	int j =1;

	a = STATUS_REG;
	b = a & 0xf0;

	while(a==0x01) // 이전 명령 에러인 경우,
	{
		if(FDD_STATUS_RD&0x03){j=0; break;}	// active low
		a = STATUS_REG;
	}

	while(b!=0x50) // Flash Memory 의 Ready가 1로 Set 될때까지..
	{
		if(FDD_STATUS_RD&0x03){j=0; break;}
		a = STATUS_REG;
		b = a & 0xf0;
	}
	return j;
}

/**************************************************************
	디스크 Wait. (LBA)
***************************************************************/

int Sandisk_WaitDRQ()
{
	unsigned char a,b,c;
	int j;

	a = (STATUS_REG & 0xfe);
	b = a & 0xf8;

	while(a==0x01)
	{
		if(FDD_STATUS_RD&0x03){j=0; break;}
		a = STATUS_REG;
	}

	while(b!=0x58) // Data Request 셋될때까지..
	{
		if(FDD_STATUS_RD&0x03){j=0; break;}
		a = (STATUS_REG & 0xfe);
		b = a&0xf8;
	
	}
	return j;
}

/**************************************************************
	디스크의 정보 값을 읽어 온다.
	데이터 정보 확인 //                    03-04-15 2:01오후
***************************************************************/
void SanDisk_Info_Read()
{
	WORD i;	

	COMMAND_REG= INFO_REG;	

	Sandisk_WaitDRQ();

	for(i=0;i<256;i++) glCardInfoBuff[i] = DATA_REG & 0xff;

	glHeader = (glCardInfoBuff[0]&0xff)|((glCardInfoBuff[1]<<8)& 0xff00);
	glSectPerTrack = (glCardInfoBuff[12]&0xff)|((glCardInfoBuff[13]<<8)& 0xff00);
}

/**************************************************************
	디스크로부터 데이터를 읽는다. (LBA)
***************************************************************/
int SanDisk_ABS_RD(DWORD nABSSector,UCHAR *pBuff)
{
	WORD i;
	int nTemp;
	
	SanDisk_WaitReady();

	nABSSector += glSectorStartOffset;

	SEC_CNT_REG	= 0x01;
	SEC_NUM_REG	= nABSSector & 0xff;
	CYL_LOW_REG	= nABSSector >> 8;
	CYL_HI_REG	= nABSSector >> 16;
	DRV_HD_REG	= 0xe0 | ((nABSSector >> 24)&0xf);
	
	COMMAND_REG	= RD_REG;
	
	Sandisk_WaitDRQ();
	for (i=0;i<512;i++) pBuff[i] = DATA_REG&0xff;
}

/**************************************************************
	Name	: Sandisk_Init()
	Purpose : Boot Sector로 부터 디스트 정보를 읽어온다.
	Date	: 2003-10-30
***************************************************************/
UCHAR dSanDiskInfBuf[512];
int Sandisk_Init()
{	
	UCHAR nBuff[512];
	UCHAR nTemp;
	
	SanDisk_Info_Read(); 			
	SanDisk_ABS_RD(0,nBuff);	

	memcpy(dSanDiskInfBuf,nBuff,512);

	if(nBuff[0] == 0xeb)
	{
		glSectorStartOffset = 0;
		glDiskFail = 0;
	}	
	else 
	{
		SanDisk_ABS_RD(glSectPerTrack,nBuff);	
	
		if(nBuff[0] == 0xeb) 
		{
			glSectorStartOffset = glSectPerTrack;
			glDiskFail = 0;
		}	
		else glDiskFail = 1;
	} // if end 
	



	if(!glDiskFail)
	{
		m_nFat1Offset = ((nBuff[DOS_BOOT_NRESRVD_SECS+1]<<8)|nBuff[DOS_BOOT_NRESRVD_SECS]);
		m_nFatSize = ((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|nBuff[DOS_BOOT_SEC_PER_FAT]);
		m_nFat2Offset = (nBuff[DOS_BOOT_NFATS]==1)? m_nFat1Offset : m_nFat1Offset+m_nFatSize;
		//m_nRootOffset = m_nFat2Offset + ((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|nBuff[DOS_BOOT_SEC_PER_FAT]);
		
		m_nRootOffset=((nBuff[DOS_BOOT_NRESRVD_SECS+1]<<8)|nBuff[DOS_BOOT_NRESRVD_SECS])+(nBuff[DOS_BOOT_NFATS]*m_nFatSize);
		m_nDataOffset = m_nRootOffset  + ((nBuff[DOS_BOOT_MAX_ROOT_ENTS+1]<<8)|nBuff[DOS_BOOT_MAX_ROOT_ENTS])/16; /* 16 EntryPerSector */;
		m_nSecPerClust= nBuff[DOS_BOOT_SEC_PER_CLUST];
		m_wTotalSec   = *(WORD*)(&nBuff[DOS_BOOT_NSECTORS]);
		m_wTotalSec   = ((m_wTotalSec<<8)&0xff00)|((m_wTotalSec>>8)&0x00ff); 
		memcpy(m_VolumeID,&nBuff[DOS_BOOT_VOL_ID],4);
		memcpy(m_szVolume,&nBuff[DOS_BOOT_VOL_LABEL],11);
		m_szVolume[11] = 0;
	
		if(!strncmp((char *)&nBuff[DOS_BOOT_FAT_LABEL],(char *)"FAT12   ",8))m_nFat = 1;
		else if(!strncmp((char *)&nBuff[DOS_BOOT_FAT_LABEL],(char *)"FAT16   ",8))m_nFat = 2;
		else m_nFat=0;
	} // if end 
}

/**************************************************************
	Name	: FileEntry()
	Purpose : Root Sector의 전영역에서 저장된 화일을 읽는다.
		: 최대 100개 저장 가능하다. 
	Date	: 2003-10-30
***************************************************************/
UCHAR nFileEntryCnt = 0;
int FileEntry()
{
	UCHAR nBuff[512];
	int i,k,j=0,m =0;
	UCHAR *nSanDiskBuf;
	nSanDiskBuf=nBuff;
	for(k=0;k<(m_nDataOffset-m_nRootOffset);k++)
	{
		if(m) break;
		SanDisk_ABS_RD(m_nRootOffset+k,nBuff);
		
		for(i=0;i<16;i++) // 512byte 내용 검색 
		{
			if(nBuff[i*32]==NULL) {m=1; break;}
		
			if((nBuff[i*32]==0xE5)||!(nBuff[i*32+26]||nBuff[i*32+27])); 			//지운파일, 클러스터 0
			else if(!(nBuff[i*32+28]||nBuff[i*32+29]||nBuff[i*32+30]||nBuff[i*32+31])); 	// recycled 파일 
			else 
			{
				memcpy(FileList[j].FileName,&nBuff[i*32],8);
				memcpy(FileList[j].ExtName,&nBuff[i*32+8],3);
				FileList[j].StartCluster = (nBuff[i*32+27]<<8)|nBuff[i*32+26];
				FileList[j].FileSize = (nBuff[i*32+31]<<24)|(nBuff[i*32+30]<<16)|(nBuff[i*32+29]<<8)|nBuff[i*32+28];

				j++;
			} // else end
		} // for end 	
	}
	return j;
} 

/**************************************************************
	Name	: FileCompare()
	Purpose : Root Sector의 저장된 화일에서 "PATTEN.BIN"
		: 파일을 찾는다. 
	Date	: 2003-10-30
***************************************************************/
int FileCompare1()
{
	int i,j=-1;

	nFileEntryCnt = FileEntry();
	
	for(i=0;i<nFileEntryCnt;i++)
	{
		if(!strncmp((char *)FileList[i].FileName,(char *)"PATTERN",7) && !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}
	}
	return j;
}	

int FileCompare2()
{
	int i,j=-1;
	
	for(i=0;i<nFileEntryCnt;i++)
	{
		if(!strncmp((char *)FileList[i].FileName,(char *)"IDC_SW",6) && !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}
	}
	return j;

}


int RND_SWFind()
{
	int i,j=-1;
	
	for(i=0;i<nFileEntryCnt;i++)
	{
		if(!strncmp((char *)FileList[i].FileName,(char *)"RND_SW",6) && !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}
	}
	return j;
}

int FDD_SWFind()
{
	int i,j=-1;
	
	for(i=0;i<nFileEntryCnt;i++)
	{
		if(!strncmp((char *)FileList[i].FileName,(char *)"FDD_SW",6) && !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}
	}
	return j;
}

int IDD_SWFind()
{
	int i,j=-1;
	
	for(i=0;i<nFileEntryCnt;i++)
	{
		if(!strncmp((char *)FileList[i].FileName,(char *)"IDD_SW",6) && !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}
	}
	return j;
}

int TND_SWFind()
{
	int i,j=-1;
	
	for(i=0;i<nFileEntryCnt;i++)
	{
		if(!strncmp((char *)FileList[i].FileName,(char *)"TND_SW",6) && !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}
	}
	return j;
}


int FDD_DATAFind()
{
	int i,j=-1;
	
	for(i=0;i<nFileEntryCnt;i++)
	{
		if(!strncmp((char *)FileList[i].FileName,(char *)"FDD_DA",6) && !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}
	}
	return j;
}
/*******************************************************
	Name 	: GetUsedCluster(WORD nSize)
	Output  : NextCluster(Address),Cluster total count
	Description:
	"Pattern.bin" 화일에서 사용된 클러스터를 넘겨준다.
********************************************************/
WORD GetUsedCluster(WORD nSize,UCHAR *pNextCluster) 
{
	WORD i,k,j;
	int PreRDSector = 0;
	int FATOffset;
	int nTemp;
	UCHAR nBuff[0x600];
	
	UCHAR *nSanDiskBuf;
	nSanDiskBuf=nBuff;
	//memset(SanDiskInof,0,300);
	d_GetUsedCluster_Pass=0;
	switch(m_nFat)
	{
		case DOS_PTYPE_FAT12:

			FATOffset = glStartCluster/1024 +1; 		// FAT sector Offset
			pNextCluster[0] = glStartCluster;
						
			for(i=1;i<nSize/512/m_nSecPerClust+1;i++)  	// 클러스터의 옵셋과 결과 값이 다른경우 에러처리 필요
			{
				if(PreRDSector != FATOffset)
				{				
					SanDisk_ABS_RD(FATOffset,nBuff);
					SanDisk_ABS_RD(FATOffset+1,nBuff+0x200);
					SanDisk_ABS_RD(FATOffset+2,nBuff+0x400);
				}
				PreRDSector= FATOffset;			// 이전 FAT 섹터 읽기 백업		

				k = ((pNextCluster[i-1]%1024)*3)/2;	// 클러스터 시작 어드레스 (하위)
				pNextCluster[i] = ((nBuff[k+1]<<8)&0xff00)|nBuff[k];
				
				if(pNextCluster[i-1]%2) pNextCluster[i] >>= 4;
				pNextCluster[i] &= 0xfff;		

				if(pNextCluster[i]>= 0xff8) break; 
				FATOffset = pNextCluster[i]/1024 +1;
			}		
			break;
			
		case DOS_PTYPE_FAT16:
			
			FATOffset = glStartCluster/256 +m_nFat1Offset;		// "+1" Boot Sector를 의미한다.
			pNextCluster[0] = glStartCluster;
			d_GetUsedCluster_Pass=(nSize/512/m_nSecPerClust);

			for(i=1;i<(nSize/512/m_nSecPerClust)+2;i++) 
			{
				if(PreRDSector != FATOffset)
				{
					//d_GetUsedCluster_Pass=FATOffset;
					SanDisk_ABS_RD(FATOffset,nBuff);

					/*
					d_GetUsedCluster_Pass=2;
					memcpy(SanDiskInof,nBuff,512);
					for(j=0;j<256;j++)
					{
						SanDiskInof[j]=((nSanDiskBuf[0]&0x0ff)|(nSanDiskBuf[1]<<8));
						nSanDiskBuf+=2;
					}
					*/

				}
				PreRDSector= FATOffset;			// 이전 FAT 섹터 읽기 백업		
				pNextCluster[i] =nBuff[(pNextCluster[i-1]%256)*2+1]<<8|nBuff[(pNextCluster[i-1]%256)*2];
				if((pNextCluster[i]&0xffff) >= 0xfff8) break; 
				
				FATOffset = pNextCluster[i]/256 +m_nFat1Offset; 	// "1" Boot Sector를 의미한다.
			}// FAT의 Cluster Read Complete!	
			break;
			//d_GetUsedCluster_Pass=i;
	}
	
//	nTemp = (nSize/512/m_nSecPerClust)+1;
//	if(nTemp!=i) i=0;  // 파일이 디스크 공간이 부족한때 저장할때 DOS상에서의 에러가 발생됨	
	return i;
}

/*******************************************************
	Name 	: Seek_File
	
	Output  : glTotal_File (저장된 화일 읽기)
		  glStartCluster (매치 화일의 시작 클러스터)
		  glSecCnt (매치 화일의 총 섹터 수)
		  glTotalClusterCnt (매치 화일의 총 클러스터수) 
		  
	Description: 산디스크에서 매치 화일을 찾는다.
********************************************************/

int Seek_File()
{
	int j=0;
	int nTemp1;
	
	nTemp1 = FileCompare1();
	if(nTemp1!=-1) 
	{
		glStartCluster = FileList[nTemp1].StartCluster;
		glSecCnt = FileList[nTemp1].FileSize/512 ;

		m_FileSize = FileList[nTemp1].FileSize;

		glTotalClusterCnt = GetUsedCluster(FileList[nTemp1].FileSize,Cluster_OneFileBuf);
		j=1;
	}	
	return j;
}
/********** 설정기 파일 로드 한다.******************
	sKindUnit = 1 설정기
				2 노선
				3 정면
				4 차내
				5 열번
****************************************************/

int Seek_File_UNIT(UCHAR sKindUnit)
{	  
	int j=0;
	int nTemp1=0;
	
	if(sKindUnit == 1)     {nTemp1 = FileCompare2();}
	else if(sKindUnit == 2) {nTemp1 = RND_SWFind();}
	else if(sKindUnit == 3) {nTemp1 = FDD_SWFind();}
	else if(sKindUnit == 4) {nTemp1 = IDD_SWFind();}
	else if(sKindUnit == 5) {nTemp1 = TND_SWFind();}
	else if(sKindUnit == 6) {nTemp1 = FDD_DATAFind();}
	else {nTemp1 = -1;}

	if(nTemp1!=-1) 
	{
		
		glStartCluster = FileList[nTemp1].StartCluster;
		glSecCnt = FileList[nTemp1].FileSize/512 ;

		m_FileSize = FileList[nTemp1].FileSize;

		glTotalClusterCnt = GetUsedCluster(FileList[nTemp1].FileSize,Cluster_OneFileBuf);
		
		j=1;
	}	
	return j;
}

/******************************************************
/****************** 메모리 내용 찾기 ******************
/******************************************************

/******************************************************
	Name 	: Check_Header(WORD nOffset)
	Output  : nOffset메모리의 내용 (UCHAR)
	Description: 메모리의 내용을 읽는다. 	
*******************************************************/
UCHAR Check_Header(WORD nOffset,UCHAR *pNextCluster,UCHAR *pData)
{
	int SectorOffset;
	UCHAR sDAtaBuf[512];
	
	SectorOffset = nOffset/512;   				
	NowSector = m_nDataOffset+(pNextCluster[SectorOffset/m_nSecPerClust]-2)*m_nSecPerClust;
	NowSector+= SectorOffset%m_nSecPerClust;

	if(PreSector!=NowSector) SanDisk_ABS_RD(NowSector,sDAtaBuf);
	PreSector = NowSector;

	//SanDisk_ABS_RD(NowSector,sDAtaBuf);

	memcpy(pData,sDAtaBuf,512);

	return sDAtaBuf[nOffset%512];
}

/***************************************************************
       Nvsram_IDC_UpLoad_CK 설정기 S/W  판단한다.
**************************************************************/

UCHAR Nvsram_IDC_UpLoad_CK(UCHAR *pData,UCHAR sKIndCode)
{
	int i,j=0;
	int sPoBlk_Ck = 0;
	int sData = 0;
	int sIdc_Ver_Ck[30];
	int sVerCf = 0;
	int sVerRom = 0;
	int sTestData = 0;
	UCHAR sDataBuf[512];

	memset(sDataBuf,0x00,512);
	memset(sIdc_Ver_Ck,0x00,30);
	
	if(Seek_File_UNIT(sKIndCode) && glTotalClusterCnt)	// Match File 확인 
	{
		PreSector = 0;	//같은 곳을 읽어도 가능하도록 Flag 초기화 한다.

		if(WORD_L(sKIndCode) == 0x01){
			sPoBlk_Ck+= m_FileSize-196;}
		else{sPoBlk_Ck+= m_FileSize-32;}

		for(i=0;i<32;i++)
		{
			sTestData = WORD_L(Check_Header((sPoBlk_Ck+i),Cluster_OneFileBuf,sDataBuf));
			if(sTestData)
			{
				sIdc_Ver_Ck[j++] = sTestData;
				sTestData = 0;
			}
		}

		memcpy(pData,sIdc_Ver_Ck,j);

		if(WORD_L(sKIndCode) == 1)
		{
			sVerCf = MAKE_BYTE( WORD_L(sIdc_Ver_Ck[3])-0x30, WORD_L(sIdc_Ver_Ck[4]) - 0x30);

			sVerRom = MAKE_BYTE( WORD_L(ROM_VER_S[3])-0x30, WORD_L(ROM_VER_S[4]) - 0x30);

			if(!strncmp((char *)sIdc_Ver_Ck,(char *)ROM_VER_S,5))	// 같은 버전.
			{
				return 2;
			}
			else
			{
				if(sVerCf > sVerRom) {return 1;}	//NEW 업로드 필요 한다.
				else if(sVerCf < sVerRom) {return 3;}//올드 버전 발견
			}
		}
		else
		{
			return 1;
		}
	}
	else
	{
		return 0;
	}
}
/***************************************************************
   Nvsram_IDC_UpLoad_Da 설정기 데이타를 Nvsram 에 로드 한다.
**************************************************************/
UCHAR Nvsram_IDC_UpLoad_Da()
{
	int i;
	UCHAR sDataBuf[512];

	memset((UCHAR *)ADD_NVSRAM_STATION_NAME,0x00,(m_FileSize+512));

	for(i=0;i<m_FileSize; )
	{

		if(!(i%512)&& m_FileSize >=(i+512))
		{
			Check_Header(i,Cluster_OneFileBuf,sDataBuf);
			memcpy(&NVSRAM(i),sDataBuf,512);
			i = i+512;
		}
		else
		{
			NVSRAM(i) = Check_Header(i,Cluster_OneFileBuf,sDataBuf);
			i++;
		}
	}

	return m_FileSize;
}

//설정기 스케줄러 데이타를 화일 길이 만큼 메모리에 올린다. 2010_03_16
UCHAR Nvsram_EditerData()
{
	int i;
	UCHAR sDataBuf[512];

	memset((UCHAR *)ADD_NVSRAM_STATION_NAME,0x00,(m_FileSize+512));

	for(i=0;i<m_FileSize; )
	{

		if(!(i%512)&& m_FileSize >=(i+512))
		{
			Check_Header(i,Cluster_OneFileBuf,sDataBuf);
			memcpy(&NVSRAM(i),sDataBuf,512);
			i = i+512;
		}
		else
		{
			NVSRAM(i) = Check_Header(i,Cluster_OneFileBuf,sDataBuf);
			i++;
		}
	}

	return m_FileSize;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
//	Name 	: Nvsram_Load()
//	Purpose : San Disk -> Nvsram (Station Name Load)
/////////////////////////////////////////////////////////
UCHAR d_Pat_ReCnt = 0;
void Nvsram_Load()
{
	int i,j,k,dd;
	int sJump_Cnt = 0;
	int Offset1 =0;
	int Offset2 =0;
	int Offset3 =0;
	int Offset4 =0;
	UCHAR sDataBuf[512];
	UCHAR nDATA = 0;
	UCHAR Cnt=0;
	UCHAR ReCnt=10;
	UCHAR OffSet=0;
	for(i=0;i<NVSRAM_END_OFFST;i++) NVSRAM(i) = 0x00;// Memory Clear

	Cnt=0,ReCnt=10,OffSet=0;
	if(Check_Header(DISK_DIA_OFFST,Cluster_OneFileBuf,sDataBuf)==50)
	{
		for(i=0;i<SIZE_DIA; )
		{
			Cnt = (DISK_DIA_OFFST+i);

			if(!(Cnt%512)&& SIZE_DIA >=(i+512))
			{
				Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				//memcpy(&NVSRAM(NVSRAM_DIA_OFFST+i),pCfData->nNowRdBuff,512);
				NVSRAM_MEMCPY(&NVSRAM(NVSRAM_DIA_OFFST+i),sDataBuf,512);
				i = i+512;
			}
			else
			{
				NVSRAM(NVSRAM_DIA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				i++;
			}
			//NVSRAM(NVSRAM_DIA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);
		}

	}

	Cnt=0,ReCnt=10,OffSet=0;
	if(Check_Header(DISK_STATION_NAME_OFFST,Cluster_OneFileBuf,sDataBuf)==80)
	{

		for(i=0;i<SIZE_STATION_NAME; )
		{
			Cnt = (DISK_STATION_NAME_OFFST+i);

			if(!(Cnt%512)&& SIZE_STATION_NAME >=(i+512))
			{
				Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				//memcpy(&NVSRAM(NVSRAM_STATION_NAME_OFFST+i),pCfData->nNowRdBuff,512);
				NVSRAM_MEMCPY(&NVSRAM(NVSRAM_STATION_NAME_OFFST+i),sDataBuf,512);
				i = i+512;
			}
			else
			{
				NVSRAM(NVSRAM_STATION_NAME_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				i++;
			}

			//NVSRAM(NVSRAM_STATION_NAME_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);
		}

	}

	
	Cnt=0,ReCnt=10,OffSet=0;
	if(Check_Header(DISK_STOP_PAT_OFFST,Cluster_OneFileBuf,sDataBuf)==60)
	{
		for(i=0;i<2;i++) NVSRAM(NVSRAM_STOP_PAT_OFFST+i)= Check_Header(DISK_STOP_PAT_OFFST+i,Cluster_OneFileBuf,sDataBuf);	
		
		Offset1 = NVSRAM_STOP_PAT_OFFST+2; 	// Nvsram Offset 
		Offset2 = DISK_STOP_PAT_OFFST+2;	// SanDisk Offset

		for(i=0;i<MAX_STOP_PAT;i++) 			
		{
			Cnt = Check_Header(Offset2+3,Cluster_OneFileBuf,sDataBuf);	// Station Count Offset 

			if(!Cnt){break;}	// 부하량을 최소화 한다.
			
			//for(j=0;j<4;j++) NVSRAM(Offset1++)= Check_Header(Offset2++,Cluster_OneFileBuf);	
			for(j=0;j<6;j++) NVSRAM(Offset1++)= Check_Header((Offset2++),Cluster_OneFileBuf,sDataBuf);	 //이란

	
			for(j=0;j<Cnt;j++)
			{
				NVSRAM(Offset1++) = Check_Header(Offset2+j*8+0,Cluster_OneFileBuf,sDataBuf);
				//NVSRAM(Offset1++) = Check_Header(Offset2+j*8+7,Cluster_OneFileBuf);
				NVSRAM(Offset1++) = 0x00;//Check_Header(Offset2+j*8+7,Cluster_OneFileBuf);
			}	
			
			
			for(j=0;j<(120-(Cnt*2));j++)
			{
				NVSRAM(Offset1++) = 0x00;
			}
			Offset2+=60*8;  	
		}
	}
	
	
	Cnt=0,ReCnt=0,OffSet=0,Offset1 =0,Offset2 =0;
	if(Check_Header(DISK_DEST_CODE_OFFST,Cluster_OneFileBuf,sDataBuf)==70)
	{
		for(i=0;i<2;i++) NVSRAM(NVSRAM_DEST_CODE_OFFST+i)= Check_Header(DISK_DEST_CODE_OFFST+i,Cluster_OneFileBuf,sDataBuf);	
		
		Offset3 = NVSRAM_DEST_CODE_OFFST+2; // Nvsram Offset 
		Offset4 = DISK_DEST_CODE_OFFST+2;	// SanDisk Offset
	
		for(i=0;i<80;i++)
		{
			NVSRAM(Offset3+(i*2)+0) = Check_Header(Offset4+(i*18)+0,Cluster_OneFileBuf,sDataBuf);
			NVSRAM(Offset3+(i*2)+1) = Check_Header(Offset4+(i*18)+1,Cluster_OneFileBuf,sDataBuf);
		}
	}
	

	
	Cnt=0,ReCnt=0,OffSet=0;
	if(Check_Header(DISK_DISPLAY_DATA_OFFST,Cluster_OneFileBuf,sDataBuf)==100)
	{
		for(i=0;i<SIZE_DISPLAY_DATA; )
		{

			Cnt = (DISK_DISPLAY_DATA_OFFST+i);

			if(!(Cnt%512)&& SIZE_DISPLAY_DATA >=(i+512))
			{

				Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				//memcpy(&NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i),pCfData->nNowRdBuff,512);
				NVSRAM_MEMCPY(&NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i),sDataBuf,512);
				i = i+512;
			}
			else
			{
				NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				i++;
			}
			//NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);
		}
	}

	Cnt=0,ReCnt=0,OffSet=0;
	if(Check_Header(DISK_IM_TEXT_OFFST,Cluster_OneFileBuf,sDataBuf)==110)
	{
		for(i=0;i<SIZE_IM_TEXT; )
		{
			Cnt = (DISK_IM_TEXT_OFFST+i);

			if(!(Cnt%512)&& SIZE_IM_TEXT >=(i+512))
			{
				Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				//memcpy(&NVSRAM(NVSRAM_IM_TEXT_OFFST+i),pCfData->nNowRdBuff,512);
				NVSRAM_MEMCPY(&NVSRAM(NVSRAM_IM_TEXT_OFFST+i),sDataBuf,512);
				i = i+512;
			}
			else
			{
				NVSRAM(NVSRAM_IM_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				i++;
			}

			//NVSRAM(NVSRAM_IM_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);
		}
	}


	Cnt=0,ReCnt=0,OffSet=0;
	if(Check_Header(DISK_PR_TEXT_OFFST,Cluster_OneFileBuf,sDataBuf)==120)
	{
		for(i=0;i<SIZE_PR_TEXT;i++)
		{
			Cnt = (DISK_PR_TEXT_OFFST+i);

			if(!(Cnt%512)&& SIZE_PR_TEXT >=(i+512))
			{
				Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				//memcpy(&NVSRAM(NVSRAM_PR_TEXT_OFFST+i),pCfData->nNowRdBuff,512);
				NVSRAM_MEMCPY(&NVSRAM(NVSRAM_PR_TEXT_OFFST+i),sDataBuf,512);
				i = i+512;
			}
			else
			{
				NVSRAM(NVSRAM_PR_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
				i++;
			}


			//NVSRAM(NVSRAM_PR_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);
		}
	}

	Cnt=0,ReCnt=0,OffSet=0;

	for(i=0;i<SIZE_VER; ) 
	{
		Cnt = (DISK_VER_OFFST+i);

		if(!(Cnt%512) && SIZE_VER >=(i+512) )
		{
			Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
			//memcpy(&NVSRAM(NVSRAM_VER_OFFST+i),pCfData->nNowRdBuff,512);
			NVSRAM_MEMCPY(&NVSRAM(NVSRAM_VER_OFFST+i),sDataBuf,512);
			i = i+512;
		}
		else
		{
			NVSRAM(NVSRAM_VER_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);
			i++;
		}

		//NVSRAM(NVSRAM_VER_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);

	}
}

/////////////////////////////////////////////////////////
//	Name 	: NVSRAM_Display_Schedule(UCHAR Now, UCHAR Next, UCHAR Info)
//	Purpose : 
// 현재역/다음역/ 역 정보를 통해 역간 표출 문장을 검색한다.
// 2010_05_12 수정
/////////////////////////////////////////////////////////

int d_abcdefg[20];
UCHAR NVSRAM_Display_Schedule(UCHAR Now, UCHAR Next, UCHAR Info)
{
	int i,l,j=0,nBreakFlag = 0;
	int sDis_G_Cnt = 0;
	int sDis_G_Index_Now = 0;
	int sDis_G_Index_Nex = 0;
	int sSt_St_Cnt = 0;
	int sDispayCntLen = 0;		 //Display 그룹에서 카운터를 알아 낸다
	 
	STOP_PT_G_I_HAP pSt_Pt_G_I;
	DISPLAY_G_I_H pDisplay_G_I;

	DP_STOP_PT_INFO_G_FUNCT(&pSt_Pt_G_I);
	DP_DISP_G__HAP(&pDisplay_G_I);

	
	sDis_G_Cnt = MAKE_WORD(pSt_Pt_G_I.nHeader.nSt_P_G_Cnt_b[0],pSt_Pt_G_I.nHeader.nSt_P_G_Cnt_b[1]); //정차 그룹 ITEM 개수

	memset(d_abcdefg,0xff,sizeof(d_abcdefg));

	for(i=0;i<sDis_G_Cnt;i++)
	{
		d_abcdefg[i] = sDis_G_Index_Now = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Index_b[0],
			                                        pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Index_b[1]);

		sDis_G_Index_Nex = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b[0],
			                         pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b[1]);

		if(WORD_L(StationNameAll[sDis_G_Index_Now].StationCode) == WORD_L(Now) && 
		   WORD_L(StationNameAll[sDis_G_Index_Nex].StationCode) == WORD_L(Next))
		{//현재역,다음역과 정차 패턴 그룹 Index -> 전체 역명 구조랑 비교 한다.

			sDispayCntLen = MAKE_WORD(pDisplay_G_I.nCnt.nNum_b[0],pDisplay_G_I.nCnt.nNum_b[1]);
			
			for(l = 0; l< sDispayCntLen;l++)
			{//DIA 에서 알아낸 Display 그룹에서 카운터를 알아 낸다.(정차 패턴 그룹이랑 같은 내용)

				if(MAKE_WORD(pDisplay_G_I.pBody[l].nSt_Cnt_b[0],pDisplay_G_I.pBody[l].nSt_Cnt_b[1]) == i)
				{ //Display 그룹에서 역 카운터 와 정차패턴 Index 순서와 비교하여 같은 역을 알아 낸다.
					

					nDisplayIndex.nDisplay_str[sSt_St_Cnt].nDis_Point = MAKE_WORD(pDisplay_G_I.pBody[l].nGuri_b[0],pDisplay_G_I.pBody[l].nGuri_b[1]);
					nDisplayIndex.nDisplay_str[sSt_St_Cnt].Number = MAKE_WORD(pDisplay_G_I.pBody[l].nItem_Index_Flag.nText_Index[0],
																			  pDisplay_G_I.pBody[l].nItem_Index_Flag.nText_Index[1]);

					nDisplayIndex.nDisplay_str[sSt_St_Cnt].Type = MAKE_WORD(pDisplay_G_I.pBody[l].nItem_Index_Flag.nText_Kind_b[0],
																			pDisplay_G_I.pBody[l].nItem_Index_Flag.nText_Kind_b[1]);

					nDisplayIndex.nDoor = (pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nDoor_Info)+1;
					nDisplayIndex.nCnt = sSt_St_Cnt;

					sSt_St_Cnt++;
				}
			}
			break;
		}
	}

	//free(pDisplay_G_I.pBody);
	//free(pSt_Pt_G_I.nSt_Pt_G_I_Flage);
	
	return sSt_St_Cnt;

	
}

/********************************************************
	표출 스케쥴 확인 
	- 역과 역사이 전체 표출 정보중에서 현재 거리 값에 해당하는 표출 부분을 검색한다.
	1 2  3  4  5  6  7  8  9 
	- -  -  - |<------>|-  - 
*********************************************************/

UCHAR NVSRAM_Find_Schedule_Cnt(UCHAR *pData,UCHAR Display_Cnt,DWORD StartDistance,DWORD EndDistance)
{
	UCHAR i;
	UCHAR nCnt=0;
	
	for(i=0;i<Display_Cnt;i++)
	{	
		if((nDisplayIndex.nDisplay_str[i].Type==0)||(nDisplayIndex.nDisplay_str[i].Type==1)||(nDisplayIndex.nDisplay_str[i].Type==3)) //Point-9_29 시발역에서 거리값이 0일경우 계속같은문장 전송하는문재 해결
		{
			if(!DWORD_MASKING(EndDistance) && !DWORD_MASKING(nDisplayIndex.nDisplay_str[i].nDis_Point))
			{
				pData[nCnt++] = i;	
			}
			else if((DWORD_MASKING(StartDistance) < DWORD_MASKING(nDisplayIndex.nDisplay_str[i].nDis_Point))
				  &&(DWORD_MASKING(nDisplayIndex.nDisplay_str[i].nDis_Point) <= DWORD_MASKING(EndDistance)))
			{
				pData[nCnt++] = i;
			}

		}	
	}
	return nCnt;
}

/********************************************************
	Name  :	 	NVSRAM_Find_IM
	Input :  	nCnt(IM 번호)
	Output:  	pData(IM 문장)
	Description : 	IM 표출문을 찾는다. (299BYTE)
*********************************************************/
UCHAR d_IM_sned_cnt = 0;
UCHAR d_IM_sendBuf[20];
UCHAR NVSRAM_Find_IM(UCHAR nCnt,UCHAR *pData) 	
{

	int i,l,j=0,nReturnFlag = 0;

	pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //프로그램 시작한때 전체 주소 리스트

	pTEXT_BLOCK pImPmText = (TEXT_BLOCK *)NVSRAM_ADD(MAKE_DWORD(pDest_s->nAdd10_Text_Info_b[0],pDest_s->nAdd10_Text_Info_b[1],
															  pDest_s->nAdd10_Text_Info_b[2],pDest_s->nAdd10_Text_Info_b[3]));

	

	for(i=0;i<MAX_IM_TEXT;i++)
	{
		if(WORD_L(pImPmText->nImBlock.nBody[i].nImNum) == WORD_L(nCnt))
		{
			d_IM_sned_cnt = d_IM_sned_cnt%20;
			d_IM_sendBuf[d_IM_sned_cnt++] =WORD_L(pImPmText->nImBlock.nBody[i].nImNum);
			memcpy(pData,&pImPmText->nImBlock.nBody[i].nImCheck,300);
			nReturnFlag = TRUE;
			break;
		}
	}

	return nReturnFlag;
}

/********************************************************
	Name  :	 	Find_PR
	Input :  	nCnt(PR 번호)
	Output:  	pData(PR 문장)
	Description : 	PR 표출문을 찾는다. (499BYTE)
*********************************************************/	
UCHAR NVSRAM_Find_PR(UCHAR nCnt,UCHAR *pData) 		// No째의 역명 읽기 
{
	int i,l,j=0,nReturnFlag = 0;

	pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //프로그램 시작한때 전체 주소 리스트

	pTEXT_BLOCK pImPmText = (TEXT_BLOCK *)NVSRAM_ADD(MAKE_DWORD(pDest_s->nAdd10_Text_Info_b[0],pDest_s->nAdd10_Text_Info_b[1],
															  pDest_s->nAdd10_Text_Info_b[2],pDest_s->nAdd10_Text_Info_b[3]));

	for(i=0;i<MAX_PR_TEXT;i++)
	{
		if(WORD_L(pImPmText->nPrBlock.nBody[i].nPrNum) == WORD_L(nCnt))
		{
			memcpy(pData,&pImPmText->nPrBlock.nBody[i].nPrCheck,500);
			nReturnFlag = TRUE;
			break;
		}
	}


	return nReturnFlag;
}

/******************************************************
   	Name :	 NVSRAM_Get_StopP
	Input:   Now,Dest Station Code 
	Output:  pData Buf(역    명), StationNo(역의 갯수)
		 glStopNo (정차패턴)
	Description : 
      	입력된 현재역, 종착역 ,데이터를 통해 정차패턴을 얻는다.
*******************************************************/
UCHAR d_NVSRAM_Get_StopP_Buf[20];
WORD NVSRAM_Get_StopP(UCHAR *pData)
{
	int i;
	int sCnt = 0;
	int sNumCnt = 0;

	STOP_PT_G_I_HAP pSt_Pt_G_I;
	DP_STOP_PT_INFO_G_FUNCT(&pSt_Pt_G_I);

	memset(d_NVSRAM_Get_StopP_Buf,0x00,20);

	sCnt = MAKE_WORD(pSt_Pt_G_I.nHeader.nSt_P_G_Cnt_b[0],pSt_Pt_G_I.nHeader.nSt_P_G_Cnt_b[1]);

	for(i=0;i<60;i++)
	{
		pData[i] = 0xFF;
	}

	for(i=0;i<sCnt;i++)
	{
		d_NVSRAM_Get_StopP_Buf[i] = pData[i] = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Index_b[0],
			                                             pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Index_b[1]);

		 
		if(i == (sCnt-1))
		{
			d_NVSRAM_Get_StopP_Buf[(i+1)] = pData[(i+1)] = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b[0],
			                                                         pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b[1]);

		}
	}

	free(pSt_Pt_G_I.nSt_Pt_G_I_Flage);

	return (sCnt+1);


}

/******************************************************
	Name :	NVSRAM_Rd_StationName 
	Input:  Maximum Station Count (최대넣을 수 있는 갯수),pData(역코드)
	Output: TrainNumber[i].KorName
		TrainNumber[i].EngName
	Description : 
	 	역명을 실시간으로 검색하여 얻어낸다.
	        Header와 일치하지 않는경우 루틴을 벗어난다.	 
*******************************************************/
WORD NVSRAM_Rd_StationName(WORD nCnt,UCHAR *pData)// nCnt개의 역명을 버퍼에 저장한다.
{
	int i,j;

	for(i=0;i<WORD_L(nCnt);i++)
	{
		if(WORD_L(StationNameAll[pData[i]].StationCode) == WORD_L(pData[i]))
		{
			for(j=0;j<15;j++)
			{
				StationName[i].EngName[j] = StationNameAll[pData[i]].EngName[j];
			}
			for(j=0;j<30;j++)
			{
				StationName[i].IranName[j] = StationNameAll[pData[i]].IranName[j];
			}
		}	
		else 
		{
			memset(StationName[i].EngName,0,15);
			memset(StationName[i].IranName,0,30);
		}	
	}
}

/******************************************************
	Name 	: NVSRAM_Rd_StationName_Total //2003-12-23 4:16오후
	Purpose : 전체 역명을 얻어낸다. //전체 역코드
*******************************************************/
UCHAR nStCodeList[5][4] = {2,2,2,2,
						  10,12,16,10, //검암
						  24,26,24,24, //DMC
						  30,32,30,30, //공덕
						  34,36,34,34};//서울


WORD NVSRAM_Rd_StationName_Total() 
{
	int sAdd_Point = 0;
	int sCnt = 0;
	int i,l,j=0,k;
	UCHAR nData = 0; 
	WORD nCodeData = 0;
	int sBreak = 0;

	pST_NAME pSt_NameAll;
	pST_NAME_B pSt_NameAll_b;

	pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);
	sAdd_Point = MAKE_DWORD( pDest_s->nAdd1_St_Name_b[0],pDest_s->nAdd1_St_Name_b[1],pDest_s->nAdd1_St_Name_b[2],pDest_s->nAdd1_St_Name_b[3]);

	pSt_NameAll = (ST_NAME *)NVSRAM_ADD(sAdd_Point);
	sCnt = MAKE_WORD(pSt_NameAll->nCnt.nNum_b[0],pSt_NameAll->nCnt.nNum_b[1]);

	//동적배열
	pSt_NameAll_b = (ST_NAME_B *)calloc(sCnt,sizeof(ST_NAME_B));
	pSt_NameAll_b = (ST_NAME_B *)NVSRAM_ADD(sAdd_Point+2);
	
	for(i=0;i<sCnt;i++)
	{
		nData = MAKE_WORD(pSt_NameAll_b[i].nCode_b[0],pSt_NameAll_b[i].nCode_b[1]);
	
		nNvsram_Variable.nMatchCode[nData] = nCodeData;


		//역코드가 중복해서 있는 역에 대하여 해결한다.
		for(l=0;l<5;l++)
		{
			for(j=0;j<4;j++)
			{
				if(WORD_L(nStCodeList[l][j]) ==  WORD_L(nData))
				{
					sBreak = TRUE;
					for(k=0;k<4;k++) {nNvsram_Variable.nMatchCode[WORD_L(nStCodeList[l][k])] = WORD_L(nCodeData); }
				}

				if(sBreak){break; }
			}
			if(sBreak){break; }
		}

		sBreak = 0;

		StationNameAll[i].StationCode = nCodeData;

		memcpy(StationNameAll[i].EngName,pSt_NameAll_b[i].nKorName_b ,15);
		memcpy(StationNameAll[i].IranName ,pSt_NameAll_b[i].nEngName_b ,30);

		nCodeData++;
		
	}

	free(pSt_NameAll_b);

	return nCodeData;
}


/************************************************************/
//	Name	: StationCode_Definite 
//	Purpose : 수신 Code 를 검사하는 루틴
//   Date    : 2004.7.5일 무효코드 5회이상 수신 하였을 경우 수동 조작 가능
/************************************************************/
UCHAR StationCode_Definite(UCHAR Now,UCHAR Next)
{
	UCHAR Re_Data1=0;
	UCHAR Re_Data2=0;
	int Code;
	
	for(Code=0;Code<256;Code++)
	{
		if((WORD_L(Now) != WORD_L(Next)) && WORD_L(Now) && WORD_L(Next))
		{
			if(WORD_L(nNvsram_Variable.nMatchCode[Now])==WORD_L(nNvsram_Variable.nMatchCode[Code]) && (WORD_L(nNvsram_Variable.nMatchCode[Now]) != 0xFF)){Re_Data1 = 1;}
			if(WORD_L(nNvsram_Variable.nMatchCode[Next])==WORD_L(nNvsram_Variable.nMatchCode[Code])&& (WORD_L(nNvsram_Variable.nMatchCode[Next]) != 0xFF)){Re_Data2 = 1;}
		}
	}
	
	return (Re_Data1 + Re_Data2);
}

/************************************************************/
//	Name	: NVSRAM_Find_RootAllNo 
//	Purpose : Flash Memory -> Sram Loading
//  행선역 코드를 넘겨 준다.
/************************************************************/

WORD d_DestBuf[20];

UCHAR NVSRAM_Find_RootAllNo(WORD nLen,UCHAR *pData)
{
	int sAdd_Point = 0;
	int i,l,j=0,nReturnFlag = 0;
	int sDestAllCntNum = 0;

	pDEST_INFO pDest_D;
	pDEST_INFO_B pDest_infoB;


	pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);
	sAdd_Point = MAKE_DWORD( pDest_s->nAdd3_Dest_Info_b[0],pDest_s->nAdd3_Dest_Info_b[1],pDest_s->nAdd3_Dest_Info_b[2],pDest_s->nAdd3_Dest_Info_b[3]);

	pDest_D = (DEST_INFO *)NVSRAM_ADD(sAdd_Point);

	sDestAllCntNum = MAKE_WORD(pDest_D->nCnt.nNum_b[0],pDest_D->nCnt.nNum_b[1]); //카운터

	//동적 메모리 할당
	pDest_infoB = (DEST_INFO_B *)calloc(sDestAllCntNum, sizeof(DEST_INFO_B));
	pDest_infoB = (DEST_INFO_B *)NVSRAM_ADD((sAdd_Point+2));


	for(i=0;i<sDestAllCntNum;i++)
	{
		pData[i] = 0xFF;
	}

	memset(d_DestBuf,0x00,sizeof(d_DestBuf));

	for(i=0;i<sDestAllCntNum;i++)
	{
		d_DestBuf[i] = pData[i] = MAKE_WORD(pDest_infoB[i].nName_Index_b[0],pDest_infoB[i].nName_Index_b[1]);	
	}
	
	free(pDest_infoB);
	

	return sDestAllCntNum;

}

/*////////////////////////////////////////////////////////

	Name :	Rd_StationName_Code
	Input:   Station Code 
	Output:  pData (차내표시기로 전송할 데이터)
		 pDData(Gp 화면으로 전송할 데이터)		 
	Description : 
	         통신으로 입력받은 역코드를 사용하여 역이름을 검색
/////////////////////////////////////////////////////////*/
WORD NVSRAM_Rd_StationName_Code(UCHAR Code,UCHAR *pDataKr,UCHAR *pDataEn,UCHAR *pGpData) 
{
	int i=0,k=0,e=0, n=0;
	
	memset(pDataKr,0,15);							// 차내 버퍼 영역 초기화 
	memset(pDataEn,0,30);							// 차내 버퍼 영역 초기화 
	memset(pGpData,0,15);							// Gp 버터 영역 초기화

	//if(Code && WORD_L(Code) == WORD_L(StationNameAll[Code].StationCode))
	if(WORD_L(Code) == WORD_L(StationNameAll[Code].StationCode))
	{
		for(i=0;i<15;i++)
		{ 
			if(WORD_L(StationNameAll[Code].EngName[i]) != 0x00) 
			{
				pDataKr[k++] =WORD_L(StationNameAll[Code].EngName[i]);

			}
		}

		for(i=0;i<30;i++)
		{ 
			if(WORD_L(StationNameAll[Code].IranName[i]) != 0x00) 
			{
				pDataEn[e++] =WORD_L(StationNameAll[Code].IranName[i]);

			}
		}


		for(i=0;i<15;i++)
		{
			if(WORD_L(StationNameAll[Code].EngName[i]) != 0x00) 
			{
				pGpData[n++] =WORD_L(StationNameAll[Code].EngName[i]);

			}

		}

	}
}

/******************************************************
	Name :	 NVSRAM_Comp_StopP
	Input:   No(정차패턴)
	Output:  pData Buf(역    명), StationNo(역의 갯수)

	Description : 
		정차패턴을 통해 역코드를 검색한다. 
		pData Buffer Data 는 최대 60개
		정차 패턴 넘버의 기록 수 (최대 300 개)
*******************************************************/
UCHAR d_NVSRAM_Cnt = 0;
UCHAR NVSRAM_Comp_StopP(WORD No,UCHAR *pData)
{

	/*
	int i,l,j=0,nStaNumReturn = 0;

	PSTOPPATTERN pStopPat = (STOPPATTERN *)ADD_NVSRAM_STOP_PAT;

	if(WORD_L(pStopPat->nHead.nData_Type) == 60)
	{
		for(i=0;i<MAX_STOP_PAT;i++)
		{
			if(WORD_L(No) == WORD_L(pStopPat->nBody[i].nStopPatNum))
			{
				d_NVSRAM_Cnt = nStaNumReturn = WORD_L(pStopPat->nBody[i].nStation_Count);
				for(j=0;j<WORD_L(pStopPat->nBody[i].nStation_Count);j++)
				{
					pData[j] = WORD_L(pStopPat->nBody[i].nStopPatIndex[j].nStationCode);
				}

				break;
			}
		}
	}
	return nStaNumReturn;
	*/
}

/******************************************************
	Name :	NVSRAM_Comp_TrainNo

	Input:   열차번호
	Output:  pData Buf(열차번호), StopPatternNo(정차패턴)
		 
	Description : 
	Dia를 통해 열차 번호를 검색하고 정차패턴을 리턴한다.
*******************************************************/
DWORD d_abcd = 0;
WORD NVSRAM_Comp_TrainNo(UCHAR sData) // No : 열차번호
{

	int sAdd_Point = 0;
	int sAdd_Point_2 = 0;
	int sCnt = 0;
	int sCnt_2 = 0;
	WORD sDiaCodeNum = 0;
	int i,l,j=0,nStaNumReturn = 0;
	UCHAR nData = 0;
	UCHAR nTrainNumData[5];
	UCHAR sTrainFlag = 0;

	pDIA_GROUP pDia_g;
	pDIA_GROUP_B pDia_g_b;

	pDIA_G_ITEM pDia_g_i;
	pDIA_G_ITEM_B pDia_g_i_b;

	pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);
	sAdd_Point = MAKE_DWORD( pDest_s->nAdd9_Dia_G_b[0],pDest_s->nAdd9_Dia_G_b[1],pDest_s->nAdd9_Dia_G_b[2],pDest_s->nAdd9_Dia_G_b[3]);

	pDia_g = (DIA_GROUP *) NVSRAM_ADD(sAdd_Point);
	sCnt = MAKE_WORD(pDia_g->nCnt.nNum_b[0],pDia_g->nCnt.nNum_b[1]);

	//동적 배열
	pDia_g_b =(DIA_GROUP_B *) calloc(sCnt,sizeof(DIA_GROUP_B));
	pDia_g_b =(DIA_GROUP_B *) NVSRAM_ADD(sAdd_Point+2);

	nNvsram_Variable.nStop_Patten_Num = 0;

	for(i=0;i<sCnt;i++){
		sDiaCodeNum = MAKE_WORD(pDia_g_b[i].nCode_b[0],pDia_g_b[i].nCode_b[1]);
		if(DWORD_L(sData/1000) == DWORD_L(sDiaCodeNum/1000)){
			sAdd_Point_2 = MAKE_DWORD(pDia_g_b[i].nAddress_b[0],pDia_g_b[i].nAddress_b[1],pDia_g_b[i].nAddress_b[2],pDia_g_b[i].nAddress_b[3]);

			pDia_g_i = (DIA_G_ITEM *)NVSRAM_ADD(sAdd_Point_2); //DIA 그룹 ITEM
			sCnt_2 = MAKE_WORD(pDia_g_i->nCnt.nNum_b[0],pDia_g_i->nCnt.nNum_b[1]);

			//동적 배열
			pDia_g_i_b = (DIA_G_ITEM_B *) calloc(sCnt_2,sizeof(DIA_G_ITEM_B));
			pDia_g_i_b = (DIA_G_ITEM_B *)NVSRAM_ADD(sAdd_Point_2+2); //DIA 그룹 ITEM

			for(l =0;l<sCnt_2;l++){
				if(MAKE_WORD(pDia_g_i_b[l].nCode_b[0],pDia_g_i_b[l].nCode_b[1]) == DWORD_L(sData)) //열차 번호 비교.
				{
					nStart_Address_Point.nDisp_G_Address = MAKE_DWORD(pDia_g_i_b[l].nDispG_Addres_b[0],pDia_g_i_b[l].nDispG_Addres_b[1],
						                                              pDia_g_i_b[l].nDispG_Addres_b[2],pDia_g_i_b[l].nDispG_Addres_b[3]);

					d_abcd = nStart_Address_Point.nSt_Pt_G_Address = MAKE_DWORD(pDia_g_i_b[l].nStopPtG_Addres_b[0],pDia_g_i_b[l].nStopPtG_Addres_b[1],
																	            pDia_g_i_b[l].nStopPtG_Addres_b[2],pDia_g_i_b[l].nStopPtG_Addres_b[3]);

					nNvsram_Variable.nStop_Patten_Num = 1;
					break;
				}
				
			}

			/**************************************100902 추가*******************************************************/
			if(!WORD_L(nNvsram_Variable.nStop_Patten_Num))//열번이 없으면 그룹에서 가장 먼저 입력되어 있는 홀/짝을 사용 한다.
			{
				for(l =0;l<2;l++){
					if((MAKE_WORD(pDia_g_i_b[l].nCode_b[0],pDia_g_i_b[l].nCode_b[1])%2) == (DWORD_L(sData)%2)) //열차 번호 비교.
					{
						nStart_Address_Point.nDisp_G_Address = MAKE_DWORD(pDia_g_i_b[l].nDispG_Addres_b[0],pDia_g_i_b[l].nDispG_Addres_b[1],
																		  pDia_g_i_b[l].nDispG_Addres_b[2],pDia_g_i_b[l].nDispG_Addres_b[3]);

						d_abcd = nStart_Address_Point.nSt_Pt_G_Address = MAKE_DWORD(pDia_g_i_b[l].nStopPtG_Addres_b[0],pDia_g_i_b[l].nStopPtG_Addres_b[1],
																					pDia_g_i_b[l].nStopPtG_Addres_b[2],pDia_g_i_b[l].nStopPtG_Addres_b[3]);

						nNvsram_Variable.nStop_Patten_Num = 1;
						break;
					}
				
				}

			}

			free(pDia_g_i_b);

			break;
		}
	}

	free(pDia_g_b);
	
	return WORD_L(nNvsram_Variable.nStop_Patten_Num);

	
}
/**********************************************************************
		행선 설정에서 선택된 스크린에 해당하는 역명 10개 읽어서 전송.
************************************************************************/

UCHAR NVSRAM_Find_StationRoot(WORD ScreenNo,WORD nLen) 	// No 역명 읽기 
{
	UCHAR nTemp[20];
	int i,k,l,j=0;
	int Data;
	
	for(i=ScreenNo*10;i<ScreenNo*10+nLen;i++)			// i = 1이상일것 
	{
		Data = WORD_L(nNvsram_Variable.nDestCodeList[i]);
		nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationCode = Data;

		if(WORD_L(Data) != 0xFF)
		{
			if(WORD_L(Data) == WORD_L(StationNameAll[Data].StationCode) )
			{
				l=0;
				memcpy(nTemp,StationNameAll[Data].EngName,15);

				for(k=0;k<15;k++)
				{
					//if(WORD_L(nTemp[k])!=0x20) 
					//{
						nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationName[l++]=WORD_L(nTemp[k]);
					//}
				}
			}
		}
		else 
		{
			Data=0;
			nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationCode = Data;
			memset(nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationName,0x20,15);
		}	
	}
}	
/**********************************************************************
		NVSRAM_MEMCPY 
************************************************************************/
void NVSRAM_MEMCPY(UCHAR *pAData,UCHAR *pBData,UCHAR nLen)
{
	int i;
	for(i=0;i<nLen;i++)
	{
		pAData[i] = WORD_L(pBData[i]);
	}
}

