#include "def.h"
#include "cf.h"
#include "main.h"

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

WORD glHeader = 0;
WORD glSectPerTrack = 0;
WORD glDiskFail = 0;
int glSectorStartOffset = 0;

UCHAR m_FileSize = 0;

/************************************************************************************/

//UCHAR NowRdBuff[512];			// 현재 섹터에 포함된 데이터의 값
UCHAR Cluster_OneFileBuf[500];		// 용량 재확인 2000*4*512 = 4096Kbyte
WORD glStartCluster=0;
WORD glTotalClusterCnt=0;
WORD glSecCnt =0;

WORD PreSector = 0;
WORD NowSector = 0;

OPEN_FILE FileList[10];

NVSRAM_VARIABLE nNvsram_Variable;	// 사용 되는 변수
STATION_NAME StationName[61];		// 한 다이아 에서 사용 가능한 역명.
//STATION_NAME_ALL StationNameAll[100];//역차 역명 전체를 가지고 있다.
DISPLAY_INDEX_NAME nDisplayIndex;	//표시장치 데이타를 가지고 있다.

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
		//if(FDD_STATUS_RD&0x03){j=0; break;}	// active low
		a = STATUS_REG;
	}

	while(b!=0x50) // Flash Memory 의 Ready가 1로 Set 될때까지..
	{
		//if(FDD_STATUS_RD&0x03){j=0; break;}
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
		//if(FDD_STATUS_RD&0x03){j=0; break;}
		a = STATUS_REG;
	}

	while(b!=0x58) // Data Request 셋될때까지..
	{
		//if(FDD_STATUS_RD&0x03){j=0; break;}
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
	UCHAR glCardInfoBuff[256]={0,0,};

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
	for (i=0;i<512;i++) pBuff[i] = WORD_L(DATA_REG);
}

/**************************************************************
	Name	: Sandisk_Init()
	Purpose : Boot Sector로 부터 디스트 정보를 읽어온다.
	Date	: 2003-10-30
***************************************************************/
int Sandisk_Init()
{	
	UCHAR nBuff[512];
	UCHAR nTemp;
	
	SanDisk_Info_Read(); 			
	SanDisk_ABS_RD(0,nBuff);	
	
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
	
		if(!strncmp(&nBuff[DOS_BOOT_FAT_LABEL],"FAT12   ",8))m_nFat = 1;
		else if(!strncmp(&nBuff[DOS_BOOT_FAT_LABEL],"FAT16   ",8))m_nFat = 2;
		else m_nFat=0;
	} // if end 

	return !glDiskFail;
}

/**************************************************************
	Name	: FileEntry()
	Purpose : Root Sector의 전영역에서 저장된 화일을 읽는다.
		: 최대 100개 저장 가능하다. 
	Date	: 2003-10-30
***************************************************************/
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
UCHAR nFileKindCnt = 0; //파일 총 겟수.
int FileCompare1()
{
	int i,j=-1;

	nFileKindCnt = FileEntry();
	
	for(i=0;i<nFileKindCnt;i++)
	{
		if(!strncmp(FileList[i].FileName,(UCHAR *)"PATTERN ",8) && !strncmp(FileList[i].ExtName,(UCHAR *)"BIN",3)){j=i;break;}
	}
	return j;
}	

int FileCompare2()
{
	int i,j=-1;
	
	for(i=0;i<nFileKindCnt;i++)
	{
		if(!strncmp(FileList[i].FileName,(UCHAR *)"IDC_SW",6) && !strncmp(FileList[i].ExtName,(UCHAR *)"BIN",3)){j=i;break;}
	}
	return j;

}

int SDD_SWFind()
{
	int i,j=-1;
	
	for(i=0;i<nFileKindCnt;i++)
	{
		if(!strncmp(FileList[i].FileName,(UCHAR *)"SDD_SW",6) && !strncmp(FileList[i].ExtName,(UCHAR *)"BIN",3)){j=i;break;}
	}
	return j;
}

int FDD_SWFind()
{
	int i,j=-1;
	
	for(i=0;i<nFileKindCnt;i++)
	{
		if(!strncmp(FileList[i].FileName,(UCHAR *)"FDD_SW",6) && !strncmp(FileList[i].ExtName,(UCHAR *)"BIN",3)){j=i;break;}
	}
	return j;
}

/*******************************************************
	Name 	: GetUsedCluster(WORD nSize)
	Output  : NextCluster(Address),Cluster total count
	Description:
	"Pattern.bin" 화일에서 사용된 클러스터를 넘겨준다.
********************************************************/
UCHAR d_Sector_Cnt = 0;
WORD GetUsedCluster(WORD nSize,UCHAR *pNextCluster) 
{
	WORD i,k,j;
	int PreRDSector = 0;
	int FATOffset;
	int nTemp;
	UCHAR nBuff[0x600];
	
	UCHAR *nSanDiskBuf;
	nSanDiskBuf=nBuff;
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

			for(i=1;i<(nSize/512/m_nSecPerClust)+2;i++) 
			{
				if(PreRDSector != FATOffset)
				{
					SanDisk_ABS_RD(FATOffset,nBuff);
				}
				PreRDSector= FATOffset;			// 이전 FAT 섹터 읽기 백업		
				pNextCluster[i] =nBuff[(pNextCluster[i-1]%256)*2+1]<<8|nBuff[(pNextCluster[i-1]%256)*2];
				if((pNextCluster[i]&0xffff) >= 0xfff8) break; 

				d_Sector_Cnt++;
				
				FATOffset = pNextCluster[i]/256 +m_nFat1Offset; 	// "1" Boot Sector를 의미한다.
			}// FAT의 Cluster Read Complete!	
			break;
			
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
		glTotalClusterCnt = GetUsedCluster(FileList[nTemp1].FileSize,Cluster_OneFileBuf);
		j=1;
	}	
	return j;
}

/********** 설정기 파일 로드 한다.******************
	sKindUnit = 1 설정기
				2 측면
				3 정면
****************************************************/
int Seek_File_UNIT(UCHAR sKindUnit)
{	  
	int j=0;
	int nTemp1;
	
	if(sKindUnit == 1)		{nTemp1 = FileCompare2();}
	else if(sKindUnit == 2) {nTemp1 = SDD_SWFind();}
	else if(sKindUnit == 3) {nTemp1 = FDD_SWFind();}

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

	//if(PreSector!=NowSector) SanDisk_ABS_RD(NowSector,pCfData->nNowRdBuff);
	//PreSector = NowSector;

	if(PreSector!=NowSector) SanDisk_ABS_RD(NowSector,sDAtaBuf);
	PreSector = NowSector;

	memcpy(pData,sDAtaBuf,512);

	//return pCfData->nNowRdBuff[nOffset%512];
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
	UCHAR sDataBuf[512];
	
	if(Seek_File_UNIT(sKIndCode) && glTotalClusterCnt)	// Match File 확인 
	{
		sPoBlk_Ck+= m_FileSize-32;

		for(i=0;i<32;i++)
		{
			sData = WORD_L(Check_Header(sPoBlk_Ck,Cluster_OneFileBuf,sDataBuf));
			if(sData)
			{
				sIdc_Ver_Ck[j++] = sData;
			}
			sPoBlk_Ck++;
		}

		memcpy(pData,sIdc_Ver_Ck,j);

		if(WORD_L(sKIndCode) == 1)
		{
			sVerCf = MAKE_BYTE( WORD_L(sIdc_Ver_Ck[3])-0x30, WORD_L(sIdc_Ver_Ck[4]) - 0x30);

			sVerRom = MAKE_BYTE( WORD_L(ROM_VER_S[3])-0x30, WORD_L(ROM_VER_S[4]) - 0x30);

			if(!strncmp(sIdc_Ver_Ck,ROM_VER_S,5))	// 같은 버전.
			{
				return 2;	//업로드 할 필요가 없다.
			}
			else
			{
				if(sVerCf > sVerRom) {return 1;}	//업로드 필요 한다.
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

	memset(ADD_NVSRAM_STATION_NAME,0x00,(m_FileSize+512));

	for(i=0;i<m_FileSize; )
	{

		if(!(i%512)&& m_FileSize >=(i+512)) //512바이크씩 저장 한다.
		{
			Check_Header(i,Cluster_OneFileBuf,sDataBuf);

			NVSRAM_MEMCPY(&NVSRAM(i),sDataBuf,512);
			i = i+512;
		}
		else	// 너머지 짜투리 저장한다.
		{
			NVSRAM(i) = Check_Header(i,Cluster_OneFileBuf,sDataBuf);
			i++;
		}
	}

	return m_FileSize;
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
//	Name 	: NVSRAM_Display_Schedule(UCHAR Now, UCHAR Next, UCHAR Info)
//	Purpose : 
// 현재역/다음역/ 역 정보를 통해 역간 표출 문장을 검색한다.
/////////////////////////////////////////////////////////
UCHAR NVSRAM_Display_Schedule(UCHAR Now, UCHAR Next, UCHAR Info)
{
	int i,l,j=0,nBreakFlag = 0;

	PDISP pDisp = (DISP *)ADD_NVSRAM_DISPLAY_DATA;


	if(WORD_L(pDisp->nHead.nData_Type) == 100)
	{
		for(i=0;i<MAX_DISPLAY_DATA;i++)
		{
			if(WORD_L(pDisp->nBody[i].nCurrStation_Code) == WORD_L(Now) 
		    && WORD_L(pDisp->nBody[i].nNextStation_Code) == WORD_L(Next)
			&& WORD_L(pDisp->nBody[i].nBetween_Code) == WORD_L(Info))
			{
				
				if(WORD_L(pDisp->nBody[i].nDoor_RL) == 0x10 || WORD_L(pDisp->nBody[i].nDoor_RL) == 0x20 ) {nDisplayIndex.nDoor = 1; }
				else if(WORD_L(pDisp->nBody[i].nDoor_RL) == 0x11 || WORD_L(pDisp->nBody[i].nDoor_RL) == 0x21 ) {nDisplayIndex.nDoor = 2; }
				else {nDisplayIndex.nDoor = 0;}

				for(j=0;j<20;j++)
				{
					if(WORD_L(pDisp->nBody[i].nText[j].nTable_Type) == 0x00 ){ nBreakFlag = 1; break; }

					//nDisplayIndex.nDisplay_str[j].nDis_Point = MAKE_WORD(pDisp->nBody[i].nText[j].nDisPoint[1],pDisp->nBody[i].nText[j].nDisPoint[0]);
					
					nDisplayIndex.nDisplay_str[j].nDis_Point = 
					MAKE_DWORD(pDisp->nBody[i].nText[j].nDisPoint[3],pDisp->nBody[i].nText[j].nDisPoint[2],pDisp->nBody[i].nText[j].nDisPoint[1],pDisp->nBody[i].nText[j].nDisPoint[0]);



					nDisplayIndex.nDisplay_str[j].Type = WORD_L(pDisp->nBody[i].nText[j].nTable_Type);
					nDisplayIndex.nDisplay_str[j].Number = WORD_L(pDisp->nBody[i].nText[j].nTable_Num);
				}
			}

			if(nBreakFlag) {break;} 
		}
	}

	return j;

}

/********************************************************
	표출 스케쥴 확인 
	- 역과 역사이 전체 표출 정보중에서 현재 거리 값에 해당하는 표출 부분을 검색한다.
*********************************************************/

UCHAR NVSRAM_Find_Schedule_Cnt(UCHAR *pData,UCHAR Display_Cnt,DWORD StartDistance,DWORD EndDistance)
{
	UCHAR i;
	UCHAR nCnt=0;
	
	for(i=0;i<Display_Cnt;i++)
	{	
		if((nDisplayIndex.nDisplay_str[i].Type==1)||(nDisplayIndex.nDisplay_str[i].Type==4)||(nDisplayIndex.nDisplay_str[i].Type==3)) //Point-9_29 시발역에서 거리값이 0일경우 계속같은문장 전송하는문재 해결
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
UCHAR NVSRAM_Find_IM(UCHAR nCnt,UCHAR *pData) 	
{

	int i,l,j=0,nReturnFlag = 0;

	PIMTEXT pImText = (IMTEXT *)ADD_NVSRAM_IM_TEXT;

	if(WORD_L(pImText->nHead.nData_Type)== 110)
	{
		for(i=0;i<MAX_IM_TEXT;i++)
		{
			if(WORD_L(pImText->nBody[i].nImNum) == WORD_L(nCnt))
			{
				memcpy(pData,&pImText->nBody[i].nImCheck,300);
				nReturnFlag = TRUE;
				break;
			}
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

	PPRTEXT pPrText = (PRTEXT *)ADD_NVSRAM_PR_TEXT;

	if(WORD_L(pPrText->nHead.nData_Type)== 120)
	{
		for(i=0;i<MAX_PR_TEXT;i++)
		{
			if(WORD_L(pPrText->nBody[i].nPrNum) == WORD_L(nCnt))
			{
				memcpy(pData,&pPrText->nBody[i].nPrCheck,500);
				nReturnFlag = TRUE;
				break;
			}
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
WORD NVSRAM_Get_StopP(WORD Now,WORD Dest,UCHAR *pData)
{

	int i,l,j=0,nStopPatReturn = 0;

	PSTOPPATTERN pStopPat = (STOPPATTERN *)ADD_NVSRAM_STOP_PAT;

	if(WORD_L(pStopPat->nHead.nData_Type) == 60)
	{
		for(i=0;i<MAX_STOP_PAT;i++)
		{
			if(WORD_L(pStopPat->nBody[i].nDeparture_Code) == Now && WORD_L(pStopPat->nBody[i].nArrive_Code) == Dest)
			{
				nNvsram_Variable.nStop_Patten_Num = pStopPat->nBody[i].nStopPatNum;

				for(j=0;j<pStopPat->nBody[i].nStation_Count;j++)
				{
					pData[j] = pStopPat->nBody[i].nStopPatIndex[j].nStationCode;

				}
			}
		}
	}

	return pStopPat->nBody[i].nStation_Count;
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
	STATION_NAME_ALL sStationNameAll[100];
	NVSRAM_Rd_StationName_Total(sStationNameAll);

	for(i=0;i<WORD_L(nCnt);i++)
	{
		if(WORD_L(sStationNameAll[pData[i]-1].StationCode) == WORD_L(pData[i]))
		{
			for(j=0;j<15;j++)
			{
				StationName[i].EngName[j] = sStationNameAll[pData[i]-1].EngName[j];
			}
			for(j=0;j<30;j++)
			{
				StationName[i].IranName[j] = sStationNameAll[pData[i]-1].IranName[j];
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
WORD NVSRAM_Rd_StationName_Total(STATION_NAME_ALL *pStationNameAll) 
{
	int i,l,j=0;
	UCHAR nData = 0; 
	WORD nCodeData = 1;

	PSTATIONNAME pStationName = (STATIONNAME *)ADD_NVSRAM_STATION_NAME;

	if(WORD_L(pStationName->nHead.nData_Type) == 80)
	{
		for(i=0;i<MAX_STATION_NAME;i++)
		{
			if(!WORD_L(pStationName->nBody[i].nStationCode) || WORD_L(pStationName->nBody[i].nStationCode) != nCodeData ) 
			{
				break; 
			}
			else if(WORD_L(pStationName->nBody[i].nStationCode)==WORD_L(nCodeData))
			{
				for(j=0;j<4;j++)
				{
					nData = WORD_L(pStationName->nBody[i].nRxStationCode[j]);
					nNvsram_Variable.nMatchCode[nData] = nCodeData;
				}

				pStationNameAll[i].StationCode = WORD_L(pStationName->nBody[i].nStationCode);
				memcpy(pStationNameAll[i].EngName, pStationName->nBody[i].nStation_EngName,15);
				memcpy(pStationNameAll[i].IranName ,pStationName->nBody[i].nStation_IranName,30);

				nCodeData++;
			}

		}
	}

	return nCodeData;
}
/************************************************************/
//	Name	: StationCode_Definite 
//	Purpose : 수신 Code 를 검사하는 루틴
//   Date    : 2004.7.5일 무효코드 5회이상 수신 하였을 경우 수동 조작 가능
/************************************************************/
UCHAR StationCode_Definite(UCHAR Now,UCHAR Next)
{
	UCHAR Re_Data=0;
	int Code;
	
	for(Code=0;Code<256;Code++)
	{
		if(WORD_L(nNvsram_Variable.nMatchCode[Now])==WORD_L(nNvsram_Variable.nMatchCode[Code])&&WORD_L(nNvsram_Variable.nMatchCode[Now]!=0x00)) {Re_Data++;}
		if(WORD_L(nNvsram_Variable.nMatchCode[Next])==WORD_L(nNvsram_Variable.nMatchCode[Code])&&WORD_L(nNvsram_Variable.nMatchCode[Next]!=0x00)){Re_Data++;}
	}
	
	return Re_Data;
}

/************************************************************/
//	Name	: NVSRAM_Find_RootAllNo 
//	Purpose : Flash Memory -> Sram Loading
//  행선역 코드를 넘겨 준다.
/************************************************************/
UCHAR NVSRAM_Find_RootAllNo(WORD nLen,UCHAR *pData)
{

	int i,l,j=0,nReturnFlag = 0;

	PDESTCODE pDestCode = (DESTCODE *)ADD_NVSRAM_DEST_CODE;

	if(WORD_L(pDestCode->nHead.nData_Type) == 70)
	{
		for(i=0;i<nLen;i++)
		{
			if(WORD_L(pDestCode->nBody[i].nStation_Code))
			{
				pData[i] = WORD_L(pDestCode->nBody[i].nStation_Code);

			}
			else break;
		}
	}
	return i;
}

/*////////////////////////////////////////////////////////

	Name :	Rd_StationName_Code
	Input:   Station Code 
	Output:  pData (차내표시기로 전송할 데이터)
		 pDData(Gp 화면으로 전송할 데이터)		 
	Description : 
	         통신으로 입력받은 역코드를 사용하여 역이름을 검색
/////////////////////////////////////////////////////////*/
WORD NVSRAM_Rd_StationName_Code(UCHAR Code,UCHAR *pData,UCHAR *pGpData) 
{
	int i=0,k=0,n=0;

	STATION_NAME_ALL sStationNameAll[100];
	
	memset(pData,0,30);							// 차내 버퍼 영역 초기화 
	memset(pGpData,0,15);							// Gp 버터 영역 초기화
	NVSRAM_Rd_StationName_Total(sStationNameAll);

	if(Code && WORD_L(Code) == WORD_L(sStationNameAll[Code-1].StationCode))
	{
		for(i=0;i<30;i++)
		{ 
			if(WORD_L(sStationNameAll[Code-1].IranName[i]) != 0x20) 
			{
				pData[k++] =WORD_L(sStationNameAll[Code-1].IranName[i]);

			}
		}

		for(i=0;i<15;i++)
		{
			if(WORD_L(sStationNameAll[Code-1].IranName[i]) != 0x20) 
			{
				pGpData[n++] =WORD_L(sStationNameAll[Code-1].IranName[i]);

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
UCHAR NVSRAM_Comp_StopP(WORD No,UCHAR *pData)
{
	int i,l,j=0,nStaNumReturn = 0;

	PSTOPPATTERN pStopPat = (STOPPATTERN *)ADD_NVSRAM_STOP_PAT;

	if(WORD_L(pStopPat->nHead.nData_Type) == 60)
	{
		for(i=0;i<MAX_STOP_PAT;i++)
		{
			if(WORD_L(No) == WORD_L(pStopPat->nBody[i].nStopPatNum))
			{
				nStaNumReturn = WORD_L(pStopPat->nBody[i].nStation_Count);
				for(j=0;j<WORD_L(pStopPat->nBody[i].nStation_Count);j++)
				{
					pData[j] = WORD_L(pStopPat->nBody[i].nStopPatIndex[j].nStationCode);
				}

				break;
			}
		}
	}
	return nStaNumReturn;
}

/******************************************************
	Name :	NVSRAM_Comp_TrainNo

	Input:   열차번호
	Output:  pData Buf(열차번호), StopPatternNo(정차패턴)
		 
	Description : 
	Dia를 통해 열차 번호를 검색하고 정차패턴을 리턴한다.
*******************************************************/

WORD NVSRAM_Comp_TrainNo(UCHAR *pData) // No : 열차번호
{

	int i,l,j=0,nStaNumReturn = 0;
	UCHAR nData = 0;
	UCHAR nTrainNumData[5];
	UCHAR sTrainFlag = 0;

	PDIA_LIST pDiaList = (DIA_LIST *) ADD_NVSRAM_DIA;

	for(l=0;l<10;l++)
	{

		if(WORD_L(pDiaList->nDiaList[l].nHead.nData_Type) == 50)
		{
			//nData = MAKE_WORD(pDiaList->nHead.nTrain_Num_Cnt[1],pDiaList->nHead.nTrain_Num_Cnt[0]);
			nData = WORD_L(pDiaList->nDiaList[l].nHead.nTrain_Num_Cnt);
			nNvsram_Variable.nStop_Patten_Num = 0;	//확인 하기전에 초기화 한다.
			nNvsram_Variable.nTrainClass_Num =0;	//확인 하기전에 초기화 한다.

			for(i=0;i<nData;i++)
			{
				for(j=0;j<5;j++) { nTrainNumData[j] = WORD_L(pDiaList->nDiaList[l].nBody[i].nTrain_Num[j]);}

				if(!memcmp(nTrainNumData,&pData[1],4))
				{
					nNvsram_Variable.nStop_Patten_Num = pDiaList->nDiaList[l].nBody[i].nStop_Pat_Num;
					nNvsram_Variable.nTrainClass_Num =  pDiaList->nDiaList[l].nBody[i].nTrain_Class;
					sTrainFlag = 1;
					break;
				}
			}

			if(sTrainFlag) {break;}
		}
		
	}

	return nNvsram_Variable.nStop_Patten_Num;
}
/**********************************************************************
		행선 설정에서 선택된 스크린에 해당하는 역명 10개 읽어서 전송.
************************************************************************/
UCHAR NVSRAM_Find_StationRoot(WORD ScreenNo,WORD nLen) 	// No 역명 읽기 
{
	UCHAR nTemp[20];
	int i,k,l,j=0;
	int Data;
	
	STATION_NAME_ALL sStationNameAll[100];
	NVSRAM_Rd_StationName_Total(sStationNameAll);

	for(i=ScreenNo*10;i<ScreenNo*10+nLen;i++)			// i = 1이상일것 
	{
		Data = WORD_L(nNvsram_Variable.nDestCodeList[i]);
		nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationCode = Data;

		if(WORD_L(Data) == WORD_L(sStationNameAll[Data-1].StationCode))
		{
			l=0;
			memcpy(nTemp,sStationNameAll[Data-1].IranName,15);
			for(k=0;k<15;k++)
			{
				if(WORD_L(nTemp[k])!=0x20) 
				{
					nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationName[l++]=WORD_L(nTemp[k]);
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

