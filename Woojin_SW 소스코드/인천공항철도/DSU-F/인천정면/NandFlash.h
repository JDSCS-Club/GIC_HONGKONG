#ifndef _NANDFLASH_H_
#define _NANDFLASH_H_

#define FLASH_CTRL_CS (*(BYTE *)(0x820000))
#define FLASH_DATA_CS (*(BYTE *)(0x824000))

/*******************************************************
	함수 정의
********************************************************/
void FlashBusyWait();
void GetFlashId(BYTE *pId1,BYTE *pId2);
void FlashPageRead(WORD nAdr,BYTE *pBuf);
void FlashPageWrite(WORD nAdr,BYTE *pBuf);
int FlashErase(WORD nBlkAdr);
void GetLirAdrImg(WORD nAddr,BYTE *pBuf,int nLen);


/*************************************************
	데이타버스와 제어버스들과의 관계
	ce  <= data(0); chip enable
	cle <= data(1); command , high active
	ale <= data(2); address enable
	wp  <= data(3); write protect
*************************************************/

/**********************************************************************************
	Busy일동안 계속하여 중지
***********************************************************************************/
void FlashBusyWait()
{
	while(!(FLASH_CTRL_CS & 0x01));
}

/**********************************************************************************
	플래쉬 메모리 ID읽기
	pId1 : 0x74
	pId2 : 0xEC
***********************************************************************************/
void GetFlashId(BYTE *pId1,BYTE *pId2)
{
	FLASH_CTRL_CS = 0xfa;
	FLASH_DATA_CS = 0x90;
	
	FLASH_CTRL_CS = 0xfc;
	FLASH_DATA_CS = 0x00;
	
	FlashBusyWait();
	
	FLASH_CTRL_CS = 0xf8;
	*pId1 = FLASH_DATA_CS;
	*pId2 = FLASH_DATA_CS;
	
	FLASH_CTRL_CS = 0xff;
}


/**********************************************************************************
	플래쉬 메모리 읽기
	(528 = 512+16)바이트씩
	
	nAdr : 528B씩의 주소
***********************************************************************************/
void FlashPageRead(WORD nAdr,BYTE *pBuf)
{
	int i;
	
	FLASH_CTRL_CS = 0xfa;
	FLASH_DATA_CS = 0x00;
	
	FLASH_CTRL_CS = 0xfc;
	FLASH_DATA_CS = 0x00;
	FLASH_DATA_CS = WORD_L(nAdr);
	FLASH_DATA_CS = WORD_H(nAdr);
	
	FlashBusyWait();
	
	FLASH_CTRL_CS = 0xf8;
	for(i=0;i<512;i++) pBuf[i] = (FLASH_DATA_CS&0xff);
	
	FLASH_CTRL_CS = 0xff;
}

void GetLirAdrImg(WORD nAddr,BYTE *pBuf,int nLen)
{
	int i;
	
	int nOffset;
	int nModOff;
	int nSecCnt;
	BYTE nBuff[8][512];
	
	nOffset = nAddr >> 9; // <-- / 512
	nModOff = nAddr % 512;
	nSecCnt = (int)((WORD)(nModOff + nLen) >> 9); // <-- / 512
	
	for(i=0;i<((nSecCnt+1)%8);i++)
	{		
		FlashPageRead((WORD)(nOffset+i),&nBuff[i][0]);		
	}
	
	memcpy(pBuf,((&nBuff[0][0])+nModOff),nLen);
}

/**********************************************************************************
	플래쉬 메모리 쓰기
	(528 = 512+16)바이트씩
	
	
	nAdr : 528B씩의 주소
***********************************************************************************/
void FlashPageWrite(WORD nAdr,BYTE *pBuf)
{
	int i;
	
	FLASH_CTRL_CS = 0xfa;
	FLASH_DATA_CS = 0x80;
	
	FLASH_CTRL_CS = 0xfc;
	FLASH_DATA_CS = 0x00; // Column Address
	FLASH_DATA_CS = WORD_L(nAdr); // Page(Row) - Low
	FLASH_DATA_CS = WORD_H(nAdr); // Page(Row) - High
	
	FlashBusyWait();
	
	FLASH_CTRL_CS = 0xf8;
	for(i=0;i<512;i++) FLASH_DATA_CS = pBuf[i];
	
	FLASH_CTRL_CS = 0xff;
	
	FLASH_CTRL_CS = 0xfa;
	FLASH_DATA_CS = 0x10;
	
	FlashBusyWait();
	
	// status read
	FLASH_CTRL_CS = 0xfa;
	FLASH_DATA_CS = 0x70;
	
	FLASH_CTRL_CS = 0xf8;
	
	for(i<0;i<0xffffff;i++)
	{
	 if(!(FLASH_DATA_CS & 0x01)) {FLASH_CTRL_CS = 0xff; return;}
	}
	
	FLASH_CTRL_CS = 0xff;
}


/**********************************************************************************
	플래쉬 메모리 지우기
	(16KB + 512B) 씩
	
	nBlkAdr : Block Address
***********************************************************************************/
int qqqq=0;
int FlashErase(WORD nBlkAdr)
{
	int i;
	
	// Command Data
	FLASH_CTRL_CS = 0xfa;
	FLASH_DATA_CS = 0x60;
	
	nBlkAdr *= 32;
	
	// Page(Row) Address
	FLASH_CTRL_CS = 0xfc;
	FLASH_DATA_CS = WORD_L(nBlkAdr);
	FLASH_DATA_CS = WORD_H(nBlkAdr);
	
	qqqq = nBlkAdr;
	
	// Command
	FLASH_CTRL_CS = 0xfa;
	FLASH_DATA_CS = 0xd0;
	
	FLASH_CTRL_CS = 0xff;
	
	// 상태 읽기
	FLASH_CTRL_CS = 0xfa;
	FLASH_DATA_CS = 0x70;
	
	FLASH_CTRL_CS = 0xf8;
	
	for(i<0;i<0xffffff;i++)
	{
		if(!(FLASH_DATA_CS & 0x01)) {FLASH_CTRL_CS = 0xff;return FALSE;}
	}

	FLASH_CTRL_CS = 0xff;
	
	return TRUE;
}

#endif