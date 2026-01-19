/******************************************************************************
	헤더를 include한다.
******************************************************************************/
#include "JOHAP_TABLE.h"


/******************************************************************************
	매크로 상수를 정의한다.
******************************************************************************/
/* 색상 정의 */ 
#define BLACK	0x00					// 검은색[GREEN,RED,YELLOW OFF]
#define GREEN	0x01					// 녹색
#define RED		0x02					// 빨간색
#define YELLOW	0x03					// 노란색[GREEN+RED]


#define DOT_WIDTH 96					// 너비의 총 도트 수
#define DOT_VIDEO 0x100000			// 화면에 담을 메모리 번지(데이터)

#define TOTAL_SCREEN_DOT_SIZE 96*48	// 표시기의 총 도트 수 [가로*세로]


/******************************************************************************
	전역 변수를 선언한다.
******************************************************************************/
/* 조합형 한글 관련 위치 */
int glChosungOffset;						// 초성
int glJungsungOffset;						// 중성
int glJongsungOffset;						// 종성
int glASCOffset;							// 아스키

extern unsigned KStbl[2350];			// KS 완성형 2350자의 조합형 코드
extern unsigned Single[51];				// 한글 낱자 51자의 조합형 코드

int gHanHzBit;							// 한글 가로 비트

extern int gTextBitLength;				// Main.c에서 선언


/*****************************************************************
	완성형 한글을 조합형 한글로 변환
	code	: 완성형 한글
****************************************************************/
unsigned int KS2TG(unsigned int code)  
{  
	int   index;
	int   c1, c2;  
	
	c1 = code >> 8;						// 넘어온 코드의 상위 1비트를 저장
	c2 = code & 0x00ff;  				// 나머지 비트를 저장
	
	if (c1 == 0xa4)
		return (c2 >= 0xa1 && c2 <= 0xd3) ? Single[c2 - 0xa1] : 0;  
	else if (c1 < 0xb0 || c1 > 0xc8 || c2 < 0xa1 || c2 > 0xfe)  
		return 0;  
	
	index = ((code >> 8) - 0xb0) * 94 + (code & 0x00ff) - 0xa1;  
	return KStbl[index];				// 완성형 테이블에 해당하는 값을 리턴
}  


/*****************************************************************
	각각의 한글 낱자들(초성/중성/종성)의 위치를 지정한다.
*****************************************************************/
const char font_8_1[2][22] =
			{{0,0,0,0,0,0,0,0,0,1,
			  3,3,3,1,2,4,4,4,2,1,
			  3,0},
			 {0,5,5,5,5,5,5,5,5,6,
			  7,7,7,6,6,7,7,7,6,6,
			  7,5}};
 
const char font_8_2[2][20] =
			 {{0,0,1,1,1,1,1,1,1,1,
			   1,1,1,1,1,0,1,1,1},
			  {0,2,3,3,3,3,3,3,3,3,
			   3,3,3,3,3,3,2,3,3,3}};

const char font_8_3[22] =
			{0,0,2,0,2,1,2,1,2,3,0,
			 2,1,3,3,1,2,1,3,3,1,1};

const char JI_JONG[3][32] =
		     {{  0, 0, 1, 2, 3, 4, 5, 6,
			 7, 8, 9,10,11,12,13,14,
			15,16,17,18,19, 0, 0, 0,
			 0, 0, 0, 0, 0, 0, 0, 0 },

		      {  0, 0, 0, 1, 2, 3, 4, 5,
			 0, 0, 6, 7, 8, 9,10,11,
			 0, 0,12,13,14,15,16,17,
			 0, 0,18,19,20,21, 0, 0 },

		      {  0, 0, 1, 2, 3, 4, 5, 6,
			 7, 8, 9,10,11,12,13,14,
			15,16, 0,17,18,19,20,21,
			22,23,24,25,26,27, 0, 0 }};


/*****************************************************************
	한글 출력의 초기화
*****************************************************************/
void Han_Init()
{
	glChosungOffset = 0;
	glJungsungOffset = 20*72*8;
	glJongsungOffset = 20*72*8+22*72*4;
	glASCOffset = 20*72*8+22*72*4+28*72*4;
}

/*****************************************************************
	완성형을 조합형으로 바꾼 후 이미지로 저장
*****************************************************************/
void Han_GetHanImage(WORD wHanWord,BYTE *pHanimg)
{
	BYTE pBuff[72];
	WORD han1,han2,han3,ht1,ht2,ht3;
	WORD chopoint,jungpoint,jongpoint;
	int i;
	
	
	han1 = (wHanWord >> 10) & 0x001f;		// 초성 추출

	han2 = (wHanWord >> 5) & 0x001f;		// 중성 추출
	
	han3 = wHanWord & 0x001f;				// 종성 추출
	
	
	han1 = JI_JONG[0][han1];
	han2 = JI_JONG[1][han2];
	han3 = JI_JONG[2][han3];
	
	ht3 = font_8_3[han2];

	if(!han3)
	{
		ht1 = font_8_1[0][han2];
		ht2 = font_8_2[0][han1];
	}
	
    else
    {
		ht1 = font_8_1[1][han2];
		ht2 = font_8_2[1][han1];
	}

	chopoint = (ht1*20+han1)*72;
	jungpoint = (ht2*22+han2)*72;
	jongpoint = (ht3*28+han3)*72;
	
	memset(pHanimg,0,72);
	
	
	// 추출한 초성,중성,종성을 결합
	if(han1) 
	{
		GetLirAdrImg(glChosungOffset+chopoint,pBuff,72);
		for(i=0;i<72;i++) pHanimg[i] = pHanimg[i] | pBuff[i];
	}
	
	if(han2)
	{
		GetLirAdrImg(glJungsungOffset+jungpoint,pBuff,72);
		for(i=0;i<72;i++) pHanimg[i] = pHanimg[i] | pBuff[+i];
	}
	
	if(han3)
	{
		GetLirAdrImg(glJongsungOffset+jongpoint,pBuff,72);
		for(i=0;i<72;i++) pHanimg[i] = pHanimg[i] | pBuff[+i];
	}
}

/*****************************************************************
	영문을 이미지로 저장
*****************************************************************/
	BYTE Buf[528];
void Han_GetEngImage(BYTE nHanByte,BYTE *pEngImg)
{
	GetLirAdrImg(glASCOffset + (nHanByte*48),pEngImg,48);
}

/*****************************************************************
	글자 출력에서 비트의 시작 위치
	sStBit		: 시작위치
******************************************************************/	
void Han_SetResetBit()
{
	gHanHzBit = 0;
}

/************************************************************************
	한글 이미지를 표출(메모리에 저장)
	*pImg     	: 이미지 데이터
	bFColor		: 전경색
	bBColor		: 배경색
*************************************************************************/
void Han_HanMakeImage(BYTE *pImg,BYTE bFColor,BYTE bBColor)
{
	register int i,j,k;
	WORD nTemp,nTemp1;
	int nImgIdx;
	BYTE *pVdo = (BYTE *)(DOT_VIDEO);		// 2번째줄 위치
	BYTE *pVdoBuf;
	
	for(i=0;i<24;i++)						// 세로
	{
		nImgIdx = i * 3;
		nTemp = MAKE_DWORD(0,pImg[nImgIdx],pImg[nImgIdx+1],pImg[nImgIdx+2]);
		
		nTemp1 = i*gTextBitLength;
		
		for(j=23;j>=0;j--)
		{
				pVdoBuf = &pVdo[nTemp1 + gHanHzBit + j];
				*pVdoBuf = (*pVdoBuf&0xf3) | (BitGet(nTemp,23-j) ? bFColor<<2 : bBColor<<2);
		}
		
	}
	
	gHanHzBit += 24;
}

/**********************************************************************
	영문 이미지를 표출(메모리에 저장)
	*pImg		: 이미지 데이터
	bFColor		: 전경색
	bBcolor		: 배경색
***********************************************************************/
void Han_EngMakeImage(BYTE *pImg,BYTE bFColor,BYTE bBColor)
{
	int i,j;
	int nPos = 0;
	WORD nTemp;
	WORD nTemp1;
	int nImgIdx;
	BYTE *pVdo = (BYTE *)(DOT_VIDEO);
	BYTE *pVdoBuf;
	
	for(i=0;i<24;i++)
	{
		nImgIdx = i * 2;
		nTemp = MAKE_WORD(pImg[nImgIdx],pImg[nImgIdx+1]);

		nTemp1 = i*gTextBitLength;
		for(j=15;j>=0;j--)
		{
				pVdoBuf = &pVdo[nTemp1 + gHanHzBit + j];
				*pVdoBuf = (*pVdoBuf&0xf3) | (BitGet(nTemp,15-j) ? bFColor<<2 : bBColor<<2);		
		}
	}

	gHanHzBit += 16;
}


/**********************************************************************
	그래픽 이미지 생성
	*pDat		: 페이지0의 데이터
***********************************************************************/
//extern unsigned char pagezero[180*16];				// Logo.h에 위치
int CRC_DATA=0;	//합을 구함
int CC=0;	//CRC_DATA 의  보스를 취한 연산 결과값
int CRC=0;	//메모리에 입력되어 있는 체크썸 값

int UP_DATA=0;
int UP_DATA1=0;
int CHANG=TRUE;

int glEqual = 0;	//DATA 사이의 쓰레기 값이 5이상이면 break
int Offset = 0;		//DATA 사이의 쓰레기 값을 가지고 있는다.

BYTE glTempBuf[50];	//CC 의값을 확인하기 위하여 만든 임시 배열
BYTE RCV_DATA[22];	// 2자리씩 묷어서 하나의 바이트를 만들어 준다.

int nBitPos=0;		//pVd(메모리) 값을 증가
int nBPos=0;		//넘겨 받은 값을 증가...

void ImageMake(BYTE *pDat)
{
	int i=0,j=0;
	int nTemp;
	int BIT=0;
	
	BYTE *pVd = (BYTE *)DOT_VIDEO;	

	nBitPos=0;
	nBPos = 0;
	Offset = 0;
	//UP_DATA = 0;
	CRC_DATA=0;
	CC=CRC=0;

	for(i=0; i<194; i++)		// 표시기의 dot수만큼 반복
	{
		if(BIT==32)
		{
			CHANG=!CHANG;
			nBitPos=0;
		}
		if((pDat[BIT*43+Offset]&0xff)==0x3A)
		{
			nBPos=BIT*43+Offset+1;
			for(j=0;j<43;j++)
			{
				if((pDat[nBPos+j]&0xf0)==0x30)  pDat[nBPos+j]-=0x30;
				if((pDat[nBPos+j]&0xf0)==0x40)	pDat[nBPos+j]=(pDat[nBPos+j]-0x41)+0x0a;
				if((pDat[nBPos+j]&0xf0)==0x60)	pDat[nBPos+j]=(pDat[nBPos+j]-0x61)+0x0a; 
			}
			for(j=0;j<22;j++)
			{	
				RCV_DATA[j]=ASC_DAT(pDat[nBPos++],pDat[nBPos++]);
				if(j<20)   CRC_DATA+=(RCV_DATA[j]&0xff);

			}
			CC=(~CRC_DATA+1)&0x00ff;
			CRC=RCV_DATA[20];
			//if(BIT>=32)glTempBuf[BIT-32]=CC;
			if(CRC== CC)
			{
				if(CHANG)
				{
					for(j=4;j<20;j++)	
					{
						UP_DATA1++;
						pVd[nBitPos++] = BitGet(RCV_DATA[j],4) | (BitGet(RCV_DATA[j],0)<<1);
						pVd[nBitPos++] = BitGet(RCV_DATA[j],5) | (BitGet(RCV_DATA[j],1)<<1);
						pVd[nBitPos++] = BitGet(RCV_DATA[j],6) | (BitGet(RCV_DATA[j],2)<<1);
						pVd[nBitPos++] = BitGet(RCV_DATA[j],7) | (BitGet(RCV_DATA[j],3)<<1);
					}
				}
				else
				{
					for(j=4;j<20;j++)
					{
						UP_DATA++;
						pVd[nBitPos++] |= (BitGet(RCV_DATA[j],4) | (BitGet(RCV_DATA[j],0)<<1))<<2;
						pVd[nBitPos++] |= (BitGet(RCV_DATA[j],5) | (BitGet(RCV_DATA[j],1)<<1))<<2;
						pVd[nBitPos++] |= (BitGet(RCV_DATA[j],6) | (BitGet(RCV_DATA[j],2)<<1))<<2;
						pVd[nBitPos++] |= (BitGet(RCV_DATA[j],7) | (BitGet(RCV_DATA[j],3)<<1))<<2;
					}
				}
				BIT++;
				
			}
			else
			{
				for(j=0;j<64;j++)	pVd[nBitPos++]=0x00;
				BIT++;
			}
			glEqual=0;
		}
		else if(glEqual>10) break;
		else
		{ 
		Offset++;
		glEqual++;
		}
		
		nBPos = 0;
		CRC_DATA=0;
	}
	//UP_DATA+=((BIT*43)+Offset);
}





/**********************************************************************
	문자(영/한) 판별
	*pstr		: 표출문자열 값
	wLen		: 표출문자열 길이[비트단위]
***********************************************************************/
void Han_ImgPrintf(char *pStr,WORD wLen)
{
	register int nTxtPos;		// 문자열 위치
	BYTE bImg[72];				// 글자 이미지를 저장
	WORD nTemp;					// 글자를 합해서 완성형을 조합형으로 저장
	
	Han_SetResetBit();			
	
	nTxtPos = 0;	
	for(nTxtPos=0;nTxtPos<wLen;)			// 넘겨받은 문자열 길이 만큼 반복
	{	
		if((((BYTE)(pStr[nTxtPos])&0xff) & 0x80) == 0x80)		// 한글이면...
		{			
			// 2바이트를 합한 글자를 완성형->조합형으로 변환
			nTemp = KS2TG(MAKE_WORD((WORD)pStr[nTxtPos],(WORD)pStr[nTxtPos+1]&0xff));
			//nTemp = MAKE_WORD((WORD)pStr[nTxtPos],(WORD)pStr[nTxtPos+1]);
			
			Han_GetHanImage(nTemp,bImg);				// 변환된 한글(조합형)을 이미지로 저장
			Han_HanMakeImage(bImg,GREEN,BLACK);			// 저장된 이미지를 표출
			nTxtPos+=2;									// 2바이트[한글 1자] 뒤로 이동
		}
		else													// 영문이면...
		{
			Han_GetEngImage(pStr[nTxtPos],bImg);		// 영문을 이미지로 저장
			Han_EngMakeImage(bImg,GREEN,BLACK);			// 저장된 이미지를 표출
			nTxtPos++;									// 1바이트[영문 1자] 뒤로 이동
		}
	}
}


/**********************************************************************
	문자(영/한) 판별해서 비트의 수를 구한다.
	*pTxt		: 비트의 수를 구할 문자열
***********************************************************************/
int Han_GetTextBitCnt(char *pTxt)
{
	register int nTxtPos;		// 문자열 위치
	WORD nTemp;					// 글자를 합해서 완성형을 조합형으로 저장
	
	nTxtPos = 0;	
	nTemp = 0;
	for(nTxtPos=0;nTxtPos<strlen(pTxt);) // 넘겨받은 문자열 길이 만큼 반복
	{	
		if((((BYTE)(pTxt[nTxtPos])&0xff) & 0x80) == 0x80)		// 한글이면...
		{			
			nTxtPos+=2; // 2바이트[한글 1자] 뒤로 이동
			nTemp += 24;
		}
		else													// 영문이면...
		{
			nTxtPos++; // 1바이트[영문 1자] 뒤로 이동
			nTemp += 16;
		}
	}
	
	return nTemp;
}