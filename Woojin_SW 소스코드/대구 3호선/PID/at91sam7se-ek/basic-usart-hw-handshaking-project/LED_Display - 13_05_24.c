#include <stdio.h>
#include "LED_Display.h"
#include "main.h"
#include "UART.h"
#include <board.h>
#include <usart/usart.h>



extern SCC_INIT_SHAPE SCC1_Init_AChl; // 85C30의 송수신 버퍼 및 플래그
/***********************************************************
	변수 정의
************************************************************/
int gTextBitLength;			// 문자열의 길이에 대한 비트 수 [영문자 8*1, 한글 8*  2]


UCHAR gHexaSw=0x00;

UCHAR nBuff[1024];


int glTest =0;
/******************************
	패턴 TEST 변수
******************************/
	int nIsPattern=FALSE;
	int gOneSec = FALSE;
	int num=0x00;	//패턴 TEST 변수
	int numm=0x00;	//패턴 TEST 변수
	int hnum=0x00;	//패턴 TEST 변수
	int hnumm=0x00;	//패턴 TEST 변수
	int CH=1;		//패턴 TEST 변수
	int CHH=0;	//패턴 TEST 변수
	int PAT_COLOR=0;		//패턴 TEST 변수
	int Hex_Pri_T_F=1;     //PATTREN  이벤트를 발생 시킨다. T=TRUE , F=FLASE
	int Pattren_inter_time=0;   // 패턴 TEST 할 경우 표출 시간
	int Hex_Pri_Tim=0;  //패턴 TEST 할경우 HEX_SWICH 값을 print 하는 시간
/**********************
* 이미지 구성 관련 변수
***********************/
    int Dot_Video=0;		//Dot_Video 확인
    int Up_Dot_Video=0;		//UP_Dot_Video 확인
    int Left_Dot_Video=0;	        //Left_Dot_Video 확인
    int STATIC_Left_Dot_Video=0;
     

PRINT SCAN={0,0,0,0,0,0,0,0,0,0,0,0,0,0};

int Blink_Timer_Count=70;
	/*****************
	RING_BUFF 변수
	*******************/
	int FRONT=0x00;			//RING_BUFF 입력 카운트
	int B_FRONT=0x00;			//RING_BUFF 출력 카운트
	UCHAR REMEMBER_RING[50];	//RING_BUFF 입력시 입력 DATA의 길이를 가지도 있다.
	UCHAR RING_DATA[1024];


/******************************
	DCC_COUNT
******************************/
	int stop_time=0;  //화면 정지 시간이 있을 경우 TRUE 를 넘겨 준다.
	int DCC_T_C=0;  //이미지를 표출한 시간부터 1ms 마다 Count
	int BLINK_DCC_T_C=0;



FONT_VALUE DCC={0x01,0x01,0x00,0x00,0x01,224,0,6,16,0,4,10,0,0};


FONT_VALUE_CHANGE ESC={0x02,0x01,0x01,0x00,0x00};
/***********************************************************
	함수 정의
************************************************************/

unsigned int glDebugCnt = 0;
unsigned int RECEIVECnt = 0;

//unsigned int num = 16;

/***********************************************************
	메인 프로그램
************************************************************/
int CHACK_DATA=0;   //DATA가 있는지 여부를 확인


/***** 채내 =1; 노선 =2; 열번 =3;정.행 =4;측_행=5  *******/
char *gpVersion = "1Ver11"; // 버젼


void Display_Init(void)
{
	memset(DOT_VIDEO,0x0000,0xC350);

	memset(DOT_VIDEO_DATA,0x00,0x30000);
	memset(DOT_VIDEO_LO_DATA,0x00,0x30000);

	//if(STRT_DA_CHK==0) 
	HEX_SWITCH();   //읽은 DATA가 정상적이지 않다면 스위치 값을 표출

}

void Display_main(void)
{

     //i = gpVersion[0];	//컴파일시 버전 정보 표시  ->함수 선언시 위줄에 쓸것

	//while(!(SCC1_Init_AChl.RxDownloadStart))
	//{
		if(SCC1_Init_AChl.RxOK)
		{
			SCC1_Init_AChl.RxOK = FALSE;

			if((SCC1_Init_AChl.pRxBufferBackup[9]&0xff)==0x1f)
			{
				CHACK_DATA=0;
				BASIC_VALUE();

				SCC1_Init_AChl.RxDownloadStart = TRUE;

			}
			else if((SCC1_Init_AChl.pRxBufferBackup[9]&0xff)==0x0A)
			{
				SCC1_Init_AChl.RxDownloadStart = FALSE;
				CHACK_DATA=1;
				nIsPattern = FALSE;
				memcpy(&nBuff[0],0x00,1024);
				memcpy(&nBuff[0],&SCC1_Init_AChl.pRxBufferBackup[10],SCC1_Init_AChl.RxOKDataLen);
				PUSH(nBuff);
				RECEIVECnt++;

			}
			else if((SCC1_Init_AChl.pRxBufferBackup[9]&0xff)==0x1A)
			{
				CHACK_DATA=0;
				BASIC_VALUE();

				nIsPattern = FALSE;
				SCC1_Init_AChl.RxDownloadStart = FALSE;
			}
			else if((SCC1_Init_AChl.pRxBufferBackup[9]&0xff)==0x0b)
			{
				CHACK_DATA=0;
				BASIC_VALUE();
				Pattren_inter_time=0;	//패턴 초기화
				Hex_Pri_Tim=0;  		//패턴 초기화
				nIsPattern = TRUE;
				num=(-1),numm=(-16),hnum=DCC.SIZE+16,hnumm=DCC.SIZE,CH=1,CHH=0;
				SCC1_Init_AChl.RxDownloadStart = FALSE;

			}
			else if((SCC1_Init_AChl.pRxBufferBackup[9]&0xff)==0x1b)
			{
				CHACK_DATA=0;
				nIsPattern = FALSE;
				BASIC_VALUE();
				HEX_SWITCH();
				SCC1_Init_AChl.RxDownloadStart = FALSE;
				//VER_PRINT();

			}
			else if((SCC1_Init_AChl.pRxBufferBackup[9]&0xff)==0x07) //SDR
			{
				SCC1_Init_AChl.RxDownloadStart = FALSE;
				SEND_DATA();

				SCC1_Init_AChl.TxDelTime = 10;
			}

		}
		
		if(gOneSec==TRUE)
		{
			PATTREN_MOVE_VALUE();
			if(Hex_Pri_T_F==1) PATTREN();
		}

		if(CHACK_DATA == 1)
		{
			if(SCAN.Print_Clear==1)	memset(DOT_VIDEO,0x00,MODULE_48_256), memset(SCREEN_VIDEO,0x00,MODULE_48_256),SCAN.Print_Clear=0;
			if((B_FRONT!=FRONT)&&(SCAN.Video_T_F==0)) POP();

			if(SCAN.Video_T_F==1) 
			{

				if(Dot_Video==1)        		    {DOT_VIDEO_PIRNT();	        SCREEN_PRINT();}
				else if(Left_Dot_Video==1)   		{LEFT_DOT_VIDEO_PIRNT();	SCREEN_PRINT();}
				//else if(Up_Dot_Video==1)     		{UP_DOT_VIDEO_PIRNT();  	SCREEN_PRINT();}
				//else if(STATIC_Left_Dot_Video==1)	{STATIC_LEFT_VIDEO_PRINT();	SCREEN_PRINT();}

			}

			
		}

	//}
}


/**********************************************************
		DATA_FONT_POSITION
***********************************************************/

UCHAR Font_Data[1024];	     //Font 이미지 DATA 저장
UCHAR nBB[1024];		     //이미지 저장

UCHAR LINE_BUFF[3000];      //문장안에 24가 있으면 1 로 표현 (기록한다)

UCHAR Arrow_R[10]="@[R)Arrow]";
UCHAR Arrow_L[10]="@[L)Arrow]";
UCHAR Compari_Arrow_R[10];
UCHAR Compari_Arrow_L[10];
UCHAR ITEM[6]="@[ITEM";
UCHAR Compari_ITEM[6];






void FONT_POSITION(UCHAR *Posi)
{
     int i,j,k;
     
     int Jump=0;		     //폰트 주소
     int now_font_Len = 0;        //BUFF 에서 넘겨 받은 DATA의 길이정보를 가지도 있다.
     int L_BUFF=0;           //한 화면(160)문장안에 24폰트가 있는지 확인
    
     int Font_DATA_Cont = 0;
     
     int ITEM_val[4];
     int ITEM_DATA=0;
     UCHAR *pMem;
     UCHAR *DpMem;
     UCHAR *nOR = (UCHAR *)BOARD_NORFLASH_ADDR;
	
     memset(&SCAN,0x00,sizeof(SCAN));//구조체 초기화
     memset(DOT_VIDEO,0x00,MODULE_16_256);
     memset(DOT_VIDEO_DATA,0x00,0x186A0);
     memset(DOT_VIDEO_LO_DATA,0x00,0x186A0);
     
     memset(&Font_Data[0],0x00,1024);
     memset(&nBB[0],0x00,1024);
     memset(&LINE_BUFF[0],0x00,3000);

	mFont_Save_posi = 0;

     now_font_Len=REMEMBER_RING[B_FRONT];
	
	
     for(i=14;i<=now_font_Len; )		//문자 DATA 길이를 구한다.
     {
          if((Posi[i]&0xff)==0x1b){i+=3;}
          else {SCAN.String_Count++;i++;}
     }
     SCAN.String_Count=((SCAN.String_Count)/2)+1;
     
     DpMem=(UCHAR*)&DCC;//DCC 설정
     for(i=0;i<14;i++){DpMem[i]=(Posi[i]&0xff);}
     
     
     DCC.SIZE= 224;//(DCC.SIZE)*8;	// 항상 160 이어야 하무로 160으로 고정
     DCC.STATE=((DCC.STATE)>0x03) ? 0x00 : (DCC.STATE); 
     DCC.DELAY=((DCC.DELAY)==0x00) ? 0x05 :((DCC.DELAY)*5);  //speed  Scroll시 속도를 표시
     DCC.STOP=((DCC.STOP)==0x00) ? 0x00 : (DCC.STOP)*100;  //stop 정지시간
     
     DCC.LINE_POSI = 16;
     

     pMem=(UCHAR*)&ESC;			//ESC 설정
     pMem[3]=0x00;
     
     if(DCC.STATE==0x02||DCC.STATE==0x00){L_BUFF=(L_BUFF==0) ? DCC.SIZE: L_BUFF;}
     else if(DCC.STATE==0x01)			 {L_BUFF=(L_BUFF==0) ? (DCC.SIZE/2) : L_BUFF;}

     for(Font_DATA_Cont=14;Font_DATA_Cont<now_font_Len; )
     {
     	if(DCC.STATE==0x03){L_BUFF= ((L_BUFF>=(DCC.SIZE/2))&&(L_BUFF<DCC.SIZE)) ? (L_BUFF+(DCC.SIZE/2)) : L_BUFF;}
     	
          if((Posi[Font_DATA_Cont]&0xff)==0x1b)
          {
               Font_DATA_Cont++;
               if((Posi[Font_DATA_Cont]&0xff)==0x01) {Font_DATA_Cont++; pMem[0]=((Posi[Font_DATA_Cont++]&0xff)>0x03) ? 0x02 : (Posi[(Font_DATA_Cont-0x01)]&0xff);}     //color
               else if((Posi[Font_DATA_Cont]&0xff)==0x02) {Font_DATA_Cont++; pMem[1]=((Posi[Font_DATA_Cont++]&0xff)==0x01) ? 1048576 : 0;}   //글자체
               else if((Posi[Font_DATA_Cont]&0xff)==0x03) {Font_DATA_Cont++; pMem[2]=((Posi[Font_DATA_Cont++]&0xff)==0x01) ? 0 : 307200;}    //size
               else if((Posi[Font_DATA_Cont]&0xff)==0x04) {Font_DATA_Cont++; pMem[3]=((Posi[Font_DATA_Cont++]&0xff)>0x03) ? 0x00 : (Posi[(Font_DATA_Cont-0x1)]&0xff);}   //글자 속성
          }
          else if((Posi[Font_DATA_Cont]&0xff)<0xa1 && (Posi[Font_DATA_Cont]&0xff))	// 16 영숫자
          {
               SCAN.Font_24_T_F= 0;//(ESC.SIZE==0) ? 0 : 1;
               
               memcpy(&Compari_Arrow_R[0],&Posi[Font_DATA_Cont],10);
               memcpy(&Compari_Arrow_L[0],&Posi[Font_DATA_Cont],10);
               memcpy(&Compari_ITEM[0], &Posi[Font_DATA_Cont],6);
	         
               if((((strncmp(&Compari_Arrow_R[0],&Arrow_R[0],10))&0xff)==0x00)||(((strncmp(&Compari_Arrow_L[0],&Arrow_L[0],10))&0xff)==0x00))
			{ 	//화살표
                    if(SCAN.Font_24_T_F==0)
                    {
                    	
                         if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
                    	{
                    		Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (270848+ESC.SHAPE) : (270720+ESC.SHAPE);//바뀜 0x52 오른쪽
                    	}
                    	else
                    	{
                    		Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (270720+ESC.SHAPE) : (270848+ESC.SHAPE);	
                    	}
                         for(j=0;j<128;j++) nBB[j]=nOR[Jump+j];
                         for(j=0;j<32;j++)  LINE_BUFF[L_BUFF++]=0;
                    }
                    else
                    {
                         if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
                    	{
                    		Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (609408+ESC.SHAPE)+ESC.SIZE : (609120+ESC.SHAPE)+ESC.SIZE;//반대로
                    	}
                    	else
                    	{
                         	Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (609120+ESC.SHAPE)+ESC.SIZE : (609408+ESC.SHAPE)+ESC.SIZE;
                         }
                          for(j=0;j<288;j++) nBB[j]=nOR[Jump+j];
                          for(j=0;j<48;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;
                    }

                    Imag_Screen_door(nBB);
                    SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 64 : 96 ;
                    Font_DATA_Cont+=10;
               }
               else if(((strncmp(&Compari_ITEM[0],&ITEM[0],6))==0x00)&&(Posi[Font_DATA_Cont+10]==0x5d))
               {	//ITEM
                    for(k=0;k<4;k++)
                    {
                         if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x30)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x3A))   ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x30);
                         else if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x41)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x47))  ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x37);
                         else ITEM_val[k]=0x00;
                    }

                    ITEM_DATA=ITEM_HAP(ITEM_val[0],ITEM_val[1],ITEM_val[2],ITEM_val[3]);

                    if(SCAN.Font_24_T_F==0)
                    {
                         Jump=(ITEM_DATA*32) + (270720+ESC.SHAPE);
                         for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
                         for(j=0;j<8;j++)  LINE_BUFF[L_BUFF++]=0;
                    }
                    else
                    {
                         Jump=(ITEM_DATA*72) + (609120+ESC.SHAPE)+ESC.SIZE;
                         for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
                         for(j=0;j<12;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;
                    }

                    Imag_Screen(nBB);
                    SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
                    Font_DATA_Cont+=11;
               }
               else
               {     //영숫자

                    if(SCAN.Font_24_T_F==0)
                    {
                         Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*16)+ESC.SHAPE;
                         for(j=0;j<16;j++) nBB[j]=nOR[Jump+j];
                         for(j=0;j<4;j++)  LINE_BUFF[L_BUFF++]=0;

                    }
                    else
                    {
                         Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*48)+ESC.SHAPE+ESC.SIZE;
                         for(j=0;j<48;j++) nBB[j]=nOR[Jump+j];
                         for(j=0;j<6;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;;

                    }
                   Imag_Screen_8(nBB);
                   SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 8 : 12 ;
                   Font_DATA_Cont++;
               }
          }
          else if((Posi[Font_DATA_Cont]&0xff))
          {
                SCAN.Font_24_T_F= 0;// (ESC.SIZE==0) ? 0 : 1;

               if(SCAN.Font_24_T_F==0)		//16폰트
               {
                    if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0) 
                    {
                            Jump=((Posi[Font_DATA_Cont]&0xff)-0xa1)*3008+((Posi[Font_DATA_Cont+1]&0xff)-0xa1)*32+3008+ESC.SIZE+ESC.SHAPE;
                    }
                    else if((Posi[Font_DATA_Cont]&0xff)>=0xb0&&(Posi[Font_DATA_Cont]&0xff)<0xca)
                    {
                            Jump=((Posi[Font_DATA_Cont]&0xff)-0xb0)*3008+((Posi[Font_DATA_Cont+1]&0xff)-0xa1)*32+39104+ESC.SIZE+ESC.SHAPE;
                    }
                    else if((Posi[Font_DATA_Cont]&0xff)>=0xca)
                    {
                            Jump=((Posi[Font_DATA_Cont]&0xff)-0xca)*3008+((Posi[Font_DATA_Cont+1]&0xff)-0xa1)*32+114304+ESC.SIZE+ESC.SHAPE;
                    }


					Font_DATA_Cont += 2;

                    for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
                    for(j=0;j<8;j++)  LINE_BUFF[L_BUFF++]=0;
                    Imag_Screen(nBB);
                    SCAN.Font_Pr_P+=16;
                    
               }
               else				//24폰트
               {
                    if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0)
                    {
                            Jump=((Posi[Font_DATA_Cont]&0xff)-0xa1)*6768+((Posi[Font_DATA_Cont+1]&0xff)-0xa1)*72+6768+ESC.SIZE+ESC.SHAPE;
                    }
                    else if((Posi[Font_DATA_Cont]&0xff)>=0xb0&&(Posi[Font_DATA_Cont]&0xff)<0xca)
                    {
                            Jump=((Posi[Font_DATA_Cont]&0xff)-0xb0)*6768+((Posi[Font_DATA_Cont+1]&0xff)-0xa1)*72+87984+ESC.SIZE+ESC.SHAPE;
                    }
                    else if((Posi[Font_DATA_Cont]&0xff)>=0xca) 
                    {
                            Jump=((Posi[Font_DATA_Cont]&0xff)-0xca)*6768+((Posi[Font_DATA_Cont+1]&0xff)-0xa1)*72+257184+ESC.SIZE+ESC.SHAPE;
                    }

	            Font_DATA_Cont += 2;

                    for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
                    for(j=0;j<12;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;
                    Imag_Screen(nBB);
                    SCAN.Font_Pr_P+=24;
               }

          }
          else { Font_DATA_Cont++;}
          
          if((SCAN.Font_24_T_F)==1)  SCAN.Font_24_T=TRUE;

	}

     SCAN.Video_T_F=1;
  	
     if(DCC.STATE==0x01) memset(SCREEN_VIDEO,0x00,MODULE_48_256);//LEFT 시 화면을 지운다.

     if(DCC.STATE==0x00){DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=1;Left_Dot_Video=0;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;}
     else if(DCC.STATE) 
     {
     	SCAN.Move_Size=SCAN.Font_Pr_P+DCC.SIZE;
     	SCAN.All_Move_Size=SCAN.Move_Size*(DCC.COUNT);
     	
     	LEFT_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=1;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;
     }
	 /*
     else if(DCC.STATE==0x02)	
     {
     	SCAN.Move_Size=(((SCAN.Font_Pr_P/DCC.SIZE)+3)*16);
     	SCAN.All_Move_Size=(DCC.COUNT);
     	UP_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=0;Up_Dot_Video=1;STATIC_Left_Dot_Video=0;
     }
     else if(DCC.STATE==0x03)	
     {
     	SCAN.Move_Size=SCAN.Font_Pr_P;
     	SCAN.All_Move_Size= SCAN.Move_Size*(DCC.COUNT); 
     	STATIC_LEFT_VIDEO_PRINT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=0;Up_Dot_Video=0;STATIC_Left_Dot_Video=1;
     }*/
     

}
/*************************************
 이미지 표출 함수
**************************************/
void IMAG_POINT_VALUE(int Img)
{
     UP_DATA_LEN=((SCAN.Font_Pr_P)%DCC.SIZE);

     LEF_Font_posi=(((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count*24)))+SCAN.Font_Pr_P;

     STATIC_LEF_Posi=(SCAN.Font_Pr_P < DCC.SIZE) ? (((Img)*DCC.SIZE)+(Img*(SCAN.String_Count*24+DCC.SIZE))+SCAN.Font_Pr_P) : (((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count*24+DCC.SIZE))+SCAN.Font_Pr_P) ;
     //UP_Font_posi=((Img*DCC.SIZE)+UP_DATA_LEN+7680)+(((SCAN.Font_Pr_P)/DCC.SIZE)*3840);
     UP_Font_posi=((Img*DCC.SIZE)+UP_DATA_LEN+FONT_48_256)+(((SCAN.Font_Pr_P)/DCC.SIZE)*FONT_24_256);
     mFont_Save_posi=(DCC.STATE==0x01) ? (LEF_Font_posi) :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
}
/**********************************************************
		Imag_ Screen_16
		DOT_VIDEO_DATA = Font 이미지 시작 위치
          5120 = 160*32 : DATA를 33번줄부터 쓰기 위하여
          2560 = 160*16 : DATA를 메머리에 쓸때 화면 Size만큼 쓰기 위하여
          3840 = 160*24 : DATA를 24폰트로 무조건 사용한다.(455자 까지 사용가능)
***********************************************************/

void Imag_Screen(UCHAR *Imag)
{
     int i,j;
     int Font_16_24=0;
	int Lint_sort=0;
     UCHAR *pVd = (UCHAR *)DOT_VIDEO_DATA;     //0x11ffff
     UCHAR *L_pVd=(UCHAR *)DOT_VIDEO_LO_DATA;  //0x14ffff
     
     Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
     Font_16_24=(24-Font_16_24);
    
	for(i=Font_16_24;i<24;i++)
	{
          IMAG_POINT_VALUE(i);
               if(SCAN.Font_24_T_F==0)
               {
                    for(j=7;j>=0;j--)
                    pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0x03)? ESC.COLOR : 0x00);
                    for(j=7;j>=0;j--)
                    pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*2)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
               }
               else
               {
                    for(j=7;j>=0;j--)	pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*3)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                    for(j=7;j>=0;j--)	pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*3)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                    for(j=7;j>=0;j--)	pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*3)+2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
               }

		if(ESC.TEMPER != 0x01&&ESC.TEMPER != 0x03 )	//BLINK 기능 01=이면 찍지를 않는다.
		{
               mFont_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;

                    if(SCAN.Font_24_T_F==0)
                    {
                         for(j=7;j>=0;j--)
                         L_pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0x03)? ESC.COLOR : 0x00);
                         for(j=7;j>=0;j--)
                         L_pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*2)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                    }
                    else
                    {
                         for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*3)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                         for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*3)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                         for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*3)+2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                    }

		}
          Lint_sort++;
	}
}
/**********************************************************
		Imag_ Screen_door ->
***********************************************************/

void Imag_Screen_door(UCHAR *Imag)
{
     int i,j,k;
     int Font_16_24=0;
     int Lint_sort=0;
     UCHAR *pVd = (UCHAR *)DOT_VIDEO_DATA;     //0x11ffff
     UCHAR *L_pVd=(UCHAR *)DOT_VIDEO_LO_DATA;  //0x14ffff
     
	Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
     Font_16_24=(24-Font_16_24);
     
	for(i=Font_16_24;i<24;i++)
	{
		IMAG_POINT_VALUE(i);
          
          if(SCAN.Font_24_T_F==0)
          {
		for(k=0;k<4;k++)
		{
			for(j=7;j>=0;j--)
                              pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*2)+(k*32)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
			for(j=7;j>=0;j--)
                              pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*2)+1+(k*32))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
		}
          }
          else
          {
               for(k=0;k<4;k++)
              {
                   for(j=7;j>=0;j--)	pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*3)+(k*72)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                   for(j=7;j>=0;j--)	pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*3)+1+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                   for(j=7;j>=0;j--)	pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*3)+2+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
              }

          }

		if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
		{
                mFont_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
                if(SCAN.Font_24_T_F==0)
               {
                    for(k=0;k<4;k++)
                    {
                         for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*2)+(k*32)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                         for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*2)+1+(k*32))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                    }
               }
               else
               {
                    for(k=0;k<4;k++)
                   {
                        for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*3)+(k*72)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                        for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*3)+1+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                        for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[((Lint_sort*3)+2+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                   }

               }

		}
     Lint_sort++;
	}
}

/**********************************************************
		Imag_Screen_8
***********************************************************/

void Imag_Screen_8(UCHAR *Imag)
{
     int i,j;
     int Font_16_24=0;
      int Lint_sort=0;
      UCHAR *pVd = (UCHAR *)DOT_VIDEO_DATA;     //0x11ffff
      UCHAR *L_pVd=(UCHAR *)DOT_VIDEO_LO_DATA;  //0x14ffff

      Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
     Font_16_24=(24-Font_16_24);
     
	for(i=Font_16_24;i<24;i++)
	{
		IMAG_POINT_VALUE(i);
		
          if(SCAN.Font_24_T_F==0)
          {
               for(j=7;j>=0;j--)    pVd[mFont_Save_posi++]=(((Imag[Lint_sort]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
          }
          else {
               for(j=7;j>=0;j--)	 pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
               for(j=7;j>=4;j--)	 pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*2)+1]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
          }

		if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
		{
               mFont_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
               if(SCAN.Font_24_T_F==0)
               {
                    for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[Lint_sort]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
               }
               else 
               {
                    for(j=7;j>=0;j--)	L_pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
                    for(j=7;j>=4;j--)	L_pVd[mFont_Save_posi++]=(((Imag[(Lint_sort*2)+1]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00);
               }

		}
     Lint_sort++;
	}
}

/**********************************************************
		DOT_VIDEO_PIRNT (NORMAL)
***********************************************************/

void DOT_VIDEO_PIRNT(void)
{
     int i,j,k;
     int Font_Save_posi=0;
     signed int U_pso=0,U_pso_Vel=0;
     int blink_video_normal=0;
     int F_24_Chack=0;
     
     UCHAR *pVd_D = (UCHAR *)DOT_VIDEO_DATA;
     UCHAR *pVd = (UCHAR *)SCREEN_VIDEO;
	
     Dot_Video=0;
     blink_video_normal=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
     U_pso=(DCC.LINE_POSI-0x01);

     memset(SCREEN_VIDEO,0x00,MODULE_48_256);

     for(i=23;i>0;i--)
     {
          Font_Save_posi=(((i)*DCC.SIZE)+blink_video_normal+FONT_48_256+(SCAN.NorMal_Page_Count*FONT_72_256));
          U_pso_Vel=U_pso*DCC.SIZE;

          if(U_pso >= 0x00)
          {
             for(j=0;j<DCC.SIZE;j++)
             {
               pVd[U_pso_Vel+j] = pVd_D[Font_Save_posi + j];
             }
          }
          
          U_pso--;
    }
	
}

/**********************************************************
		UP_DOT_VIDEO_PIRNT
***********************************************************/
void UP_DOT_VIDEO_PIRNT(void)
{
     int Font_Save_posi=0;
     int i,j,k,m,n;
     int blink_video_up=0;
     int jump_16=0;
     int jump_16_value=0;
     int jump_count=0;   //Jump 해야할 시작 값
     int jump_24=0;      //16폰트와 16폰트 사이의 Jump 값을 계산
     int print_24=0;     //24 폰트와 24폰트 사이의 Jump 값을 계산
     int F_24_Chack=0;   //24폰트 체크 버퍼의 값을 읽기 취한 위치 계산
     int UP_sam_increase=0;

 	UCHAR *pVd_D = (UCHAR *)DOT_VIDEO_DATA;
     UCHAR *pVd = (UCHAR *)SCREEN_VIDEO;
     
     Up_Dot_Video=0;
     
     UP_sam_increase=(SCAN.Move_Point*DCC.SIZE);//%(SCAN.Move_Size);

     blink_video_up=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	 jump_count=(SCAN.Move_Point%16);
	 jump_16=(16-jump_count);
	 jump_24=(UP_sam_increase/MODULE_16_256)*MODULE_8_256+MODULE_8_256;
     print_24=(UP_sam_increase/MODULE_16_256)*FONT_24_256;      //24문자 jump 계산
     F_24_Chack=((UP_sam_increase/MODULE_16_256)*(DCC.SIZE/2));

    for(i=0;i<16;i++)
     {
          if(i>=jump_16) jump_16_value=MODULE_8_256;
          Font_Save_posi=((i*DCC.SIZE)+UP_sam_increase+blink_video_up+jump_16_value+jump_24);
          memcpy(&pVd[(i*DCC.SIZE)],&pVd_D[Font_Save_posi],DCC.SIZE);
          memcpy(&pVd[(i*DCC.SIZE)+MODULE_16_256],&pVd_D[Font_Save_posi+FONT_24_256],DCC.SIZE);
     }

    if(SCAN.Font_24_T==TRUE)
    {
          for(i=0;i<8;i++)
          {
	        for(j=0;j<(DCC.SIZE/2);j++)
	        {
                   if((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)]==0x01)||((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)]==0x02)&&((SCAN.Blink_Count%12)<7)))
                   {
                   		Font_Save_posi=((i*DCC.SIZE)+blink_video_up+print_24+FONT_24_256);
                        for(m=0;m<2;m++)
                        {
                            pVd[(i*DCC.SIZE)+(MODULE_8_256-(jump_count*DCC.SIZE))+(j*2)+m]=pVd_D[Font_Save_posi+(j*2)+m];
                        }
                   }

              }
               for(j=0;j<(DCC.SIZE/2);j++)
          	{
                   if((LINE_BUFF[(F_24_Chack)+(j)+DCC.SIZE]==0x01)||((LINE_BUFF[(F_24_Chack)+(j)+DCC.SIZE]==0x02)&&((SCAN.Blink_Count%12)<7)))
                   {
                   		Font_Save_posi=((i*DCC.SIZE)+blink_video_up+print_24+FONT_48_256);
                        for(m=0;m<2;m++)
                        {
                            pVd[(i*DCC.SIZE)+(FONT_24_256-(jump_count*DCC.SIZE))+(j*2)+m]=pVd_D[Font_Save_posi+(j*2)+m];
                        }
                   }

              	}
             	 for(j=0;j<(DCC.SIZE/2);j++)
          	{
                   if((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)+DCC.SIZE]==0x01)||((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)+DCC.SIZE]==0x02)&&((SCAN.Blink_Count%12)<7)))
                   {
                   		Font_Save_posi=((i*DCC.SIZE)+blink_video_up+print_24+FONT_72_256);
                        for(m=0;m<2;m++)
                        {
                            pVd[(i*DCC.SIZE)+(MODULE_40_256-(jump_count*DCC.SIZE))+(j*2)+m]=pVd_D[Font_Save_posi+(j*2)+m];
                        }
                   }
               }
     	}

	}
}

/**********************************************************
		LEFT_DOT_VIDEO_PIRNT
***********************************************************/

void LEFT_DOT_VIDEO_PIRNT(void)
{
	int i=0,j=0,k=0;
	int Font_Save_posi=0;
	int move_data=0;   //이동 포인트 지정
	int blink_video_left=0;  //7:3 으로 찍을경우 2번째 DATA ADDRESS를 가르킨다.
	int U_pso=0; //U_pso=상단 LED 위치를 가르킨다. D_pso=하단 LED 위치를 가르킨다.
	int U_pso_Vel=0; //상단 DATA 시작 위치를, 하단 DATA 시작 위치를 가르킨다.
	
	UCHAR *pVd_D = (UCHAR *)DOT_VIDEO_DATA;
	UCHAR *pVd_S = (UCHAR *)SCREEN_VIDEO;
	
	Left_Dot_Video=0; //  main loop 상에서 갑이 변호 할결우만 표출 하기 위하여 거짓으로 만들어 준다.

	
	U_pso=(DCC.LINE_POSI-0x01);
	move_data=SCAN.Move_Point%SCAN.Move_Size;
	blink_video_left=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;

	memset(SCREEN_VIDEO,0x00,MODULE_48_256);

     for(i=23;i>0;i--)
     {
         
		 if(U_pso < 0) break;
		 Font_Save_posi=((i*DCC.SIZE)+i*(SCAN.String_Count*24)+blink_video_left+move_data);

		 U_pso_Vel=U_pso*DCC.SIZE;
		 for(j=0;j<DCC.SIZE;j++)
		 {
			 pVd_S[U_pso_Vel+j] = pVd_D[Font_Save_posi+j];

		 }


		 U_pso--;
        
     		
     }
}

/**********************************************************
               STATIC_LEFT_VIDEO_PRINT
***********************************************************/

void STATIC_LEFT_VIDEO_PRINT(void)
{
     int i,k,j;
     int HAP;
     int Font_Save_posi=0;
     int blink_video_sta_lef=0;
     int static_sam_left_value=0;
     
     UCHAR *pVd_D = (UCHAR *)DOT_VIDEO_DATA;
     UCHAR *pVd = (UCHAR *)SCREEN_VIDEO;
     
     STATIC_Left_Dot_Video=0;
     
     memset(SCREEN_VIDEO,0x00,MODULE_48_256);
     static_sam_left_value=SCAN.Move_Point%SCAN.Move_Size;
     blink_video_sta_lef=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
     
	HAP=blink_video_sta_lef+static_sam_left_value;
	
     for(i=8;i<24;i++)
     {
          Font_Save_posi=(((i)*DCC.SIZE)+i*(SCAN.String_Count*24+DCC.SIZE)+blink_video_sta_lef);
          memcpy(&pVd[((i-8)*DCC.SIZE)],&pVd_D[Font_Save_posi],DCC.SIZE);
     }
     if(SCAN.Font_Pr_P > DCC.SIZE)
     {
          for(i=23;i>7;i--)
          {
               Font_Save_posi=(((i+1)*DCC.SIZE)+i*(SCAN.String_Count*24+DCC.SIZE)+HAP);
               memcpy(&pVd[((i-8)*DCC.SIZE)+MODULE_16_256],&pVd_D[Font_Save_posi],DCC.SIZE);
                if((i<=15)&&(SCAN.Font_24_T==TRUE))
                {
                	Font_Save_posi=(((i-7)*(DCC.SIZE))+(i-8)*((SCAN.String_Count)*24+DCC.SIZE)+HAP);
                    for(j=0;j<DCC.SIZE;j++)
                     {
                     	 if((LINE_BUFF[(((static_sam_left_value+j)/2)+(DCC.SIZE/2))]!=0x00))
                     	 {
	                          if(((LINE_BUFF[(((static_sam_left_value+j)/2)+(DCC.SIZE/2))]==0x02)&&((SCAN.Blink_Count%12)>7))){ }
	                          else {pVd[(i*(DCC.SIZE))+j]=pVd_D[Font_Save_posi+j];}
	                      }
                     }
                }
          }
     }
}
/**********************************************************
          SCREEN_PRINT
***********************************************************/

void SCREEN_PRINT(void)
{
     UCHAR *pVd_D = (UCHAR *)SCREEN_VIDEO;
     UCHAR *pVd = (UCHAR *)DOT_VIDEO;
     int STATR_POSI=0;
     int i,j;
	int Dcc=0;	
	
     for(i=0;i<16;i++)
     {
     	Dcc=((i)*DCC.SIZE);
		
          for(j=0;j<DCC.SIZE;j++)
          {
               pVd[STATR_POSI]=pVd_D[j+(Dcc)]&0x03;//|((pVd_D[(j+FONT_24_256)+(Dcc)])<<2)&0x0c;
				STATR_POSI++;
          }
     } 
}
/**********************************************************
		DATA_PUSH
***********************************************************/
void PUSH(UCHAR *push)
{
	
	UCHAR *PU_DATA=(UCHAR *)RING_BUFF;
	int ring_data=0;
	int i;
	FRONT=(FRONT+1)%RING_BUFF_SIZE;
	if(B_FRONT!= FRONT)
	{
		REMEMBER_RING[FRONT]=SCC1_Init_AChl.RxOKDataLen;
		ring_data=FRONT*550;
		//for(i=0;i<SCC1_Init_AChl.RxOKDataLen;i++)	(PU_DATA[ring_data+i])=(push[i]&0xff);
		memcpy(&PU_DATA[ring_data],&push[0],SCC1_Init_AChl.RxOKDataLen);	//8월 23일 수정
		
	}
	else
	{
		REMEMBER_RING[FRONT]=SCC1_Init_AChl.RxOKDataLen;
		ring_data=FRONT*550;
		memset(&PU_DATA[ring_data],0x00,550);

		B_FRONT=(B_FRONT+1)%RING_BUFF_SIZE;
		//for(i=0;i<SCC1_Init_AChl.RxOKDataLen;i++)	(PU_DATA[ring_data+i])=(push[i]&0xff);
		memcpy(&PU_DATA[ring_data],&push[0],SCC1_Init_AChl.RxOKDataLen);	//8월 23일 수정
	}
}

/**********************************************************
		DATA_POP
***********************************************************/

void POP(void)
{
	UCHAR *PO_DATA=(UCHAR *)RING_BUFF;
	int pop_data=0;
	int ring_pop_d=0;
	int i;
	if(B_FRONT!= FRONT)
	{
		B_FRONT=(B_FRONT+1)%RING_BUFF_SIZE;

		pop_data=REMEMBER_RING[B_FRONT];
		ring_pop_d=B_FRONT*550;
		memset(&RING_DATA[0],0x00,550);
		for(i=0;i<pop_data;i++)	RING_DATA[i]=(PO_DATA[ring_pop_d+i]&0xff);

		FONT_POSITION(RING_DATA);
	}
}

/**********************************************************
		BASIC_VALUE	//값을 초기화 한다.
***********************************************************/
void BASIC_VALUE(void)
{
	B_FRONT=0x00,FRONT=0x00;
	SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//,SCAN.Print_Clear=1;
	Dot_Video=0,Left_Dot_Video=0,Up_Dot_Video=0,STATIC_Left_Dot_Video=0;

	UP_DATA_LEN=0;
	LEF_Font_posi=0;
	STATIC_LEF_Posi=0;
	UP_Font_posi=0;
	mFont_Save_posi=0;	//0x100000 기록 위치를 Count
	
	memset(DOT_VIDEO,0x00,(DCC.SIZE*70));
	memset(RING_BUFF,0x00,(550*50));
}
/***************************************************************************
					SEND_DATA
***************************************************************************/

void SEND_DATA(void)
{
	int i;
	UINT SEND_CRC;
	for(i=0;i<25;i++)	SCC1_Init_AChl.pTxBuffer[i]=(SCC1_Init_AChl.pRxBufferBackup[i]&0xff);


	SCC1_Init_AChl.pTxBuffer[7]=(SCC1_Init_AChl.pRxBufferBackup[8]&0xff);
	SCC1_Init_AChl.pTxBuffer[8]=(gHexaSw&0xff);
	SCC1_Init_AChl.pTxBuffer[9]=0x08;
	SCC1_Init_AChl.pTxBuffer[10]=0x00;	//ID
	SCC1_Init_AChl.pTxBuffer[11]=0x00;	
	SCC1_Init_AChl.pTxBuffer[12]=(RECEIVECnt&0xff);
	SCC1_Init_AChl.pTxBuffer[13]=((glDebugCnt&0xff000000)>>24);
	SCC1_Init_AChl.pTxBuffer[14]=((glDebugCnt&0x00ff0000)>>16);
	SCC1_Init_AChl.pTxBuffer[15]=((glDebugCnt&0x0000ff00)>>8);
	SCC1_Init_AChl.pTxBuffer[16]=(glDebugCnt&0x000000ff);
	SEND_CRC=cal_CRC16(15,(UCHAR *)&SCC1_Init_AChl.pTxBuffer[3]);
	SCC1_Init_AChl.pTxBuffer[18]=((SEND_CRC)>>8)&0xFF;
	SCC1_Init_AChl.pTxBuffer[19]=(SEND_CRC)&0x00ff;
        
}

/**********************************************************
		HEX_SWITCH
***********************************************************/

void HEX_SWITCH(void)
{
	UCHAR SW_BUF_1[16];
	UCHAR SW_BUF_2[16];
	UCHAR *SW_BUF;
	UCHAR *pVd = (UCHAR *)DOT_VIDEO;
	UCHAR *nOR = (UCHAR *)BOARD_NORFLASH_ADDR;

	int SW_START=0;
	int SW_RCV;
	int i,sw_num=0,j;
    int sHexa = 0;
    
	memset(DOT_VIDEO,0,MODULE_48_256);

	for(i=0;i<2;i++)
	{
		SW_RCV= (i==0) ? (ChackHexa()>>4) : (ChackHexa()&0x0f);
		SW_RCV+=(SW_RCV<0x0a) ? (0x30) : (0x41-0x0a);
		SW_START=(SW_RCV-0x20)*16;
		SW_BUF = (i==0) ? SW_BUF_1 : SW_BUF_2;

		for(j=0;j<16;j++) SW_BUF[j]=nOR[SW_START+j];
	}

	for(i=0;i<16;i++)
	{
		
            sw_num=((i)*DCC.SIZE)+((DCC.SIZE/2)-8)+i;
            for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_1[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;
            sw_num+=2;
            for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_2[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;

		
	}
}

/**********************************************************
		VER_PRINT
***********************************************************/

void VER_PRINT()
{
	int i,j,k,pos;
	UCHAR Ver[10]="Ver 1.0";
	UCHAR Ver_Data[120];
	UCHAR *pVd = (UCHAR *)DOT_VIDEO;
	UCHAR *nOR = (UCHAR *)BOARD_NORFLASH_ADDR;
	for(i=0;i<7;i++)
	{
		for(j=0;j<16;j++)	Ver_Data[(i*16)+j]=nOR[(((Ver[i]&0xff)-0x20)*16)+j];
	}

	for(i=0;i<16;i++)
	{
		pos=(i*DCC.SIZE);
		for(j=0;j<7;j++)
		{
			for(k=7;k>0;k--) pVd[pos++]=(Ver_Data[(i)+(j*16)]>>k)&0x01==0x01 ? 0x02 : 0x00;
		}
	}
}

/**********************************************************
		PATTERN TEST
***********************************************************/

void PATTREN(void)
{
	int i,j;
	UCHAR *pVd = (UCHAR *)DOT_VIDEO;
	for(i=0;i<16;i++)
	{
		for(j=0;j<DCC.SIZE;j++)
		{
			if(j>=numm&&j<=num)
			{
			 	pVd[j+(i*DCC.SIZE)]=PAT_COLOR;
			 	pVd[j+(i*DCC.SIZE)]|=(PAT_COLOR<<2);
			}
			else if(j>=hnumm&&j<hnum)
			{
				  pVd[j+(i*DCC.SIZE)]=PAT_COLOR;
				  pVd[j+(i*DCC.SIZE)]|=(PAT_COLOR<<2);
			}
			//else 	pVd[j+(i*DCC.SIZE)]=0x00;
		}
	}

}

/***********************************************************
	 	PATTREN_VALUE
************************************************************/

void PATTREN_MOVE_VALUE(void)
{
	gOneSec = FALSE;
	if(nIsPattern)
	{
		if(num>112||numm<(-16))
		{

			CHH=(CH%3);
			CH++;
		}

		if(CHH==0)
		{
			Hex_Pri_T_F=1;
			PAT_COLOR=0x01;
			hnum-=16;
			hnumm-=16;
			num+=16;
			numm+=16;
		}
		else if(CHH==1)
		{
			Hex_Pri_T_F=1;
			PAT_COLOR=0x02;
			hnum+=16;
			hnumm+=16;
			num-=16;
			numm-=16;

		}
		else if(CHH==2)
		{
			Hex_Pri_T_F=0;
			numm=0;
			Hex_Pri_Tim++;
			if(Hex_Pri_Tim>=2) CHH=(CH%3),Hex_Pri_Tim=0,numm=(-32);
			if(numm<(-16)) memset(DOT_VIDEO,0,MODULE_48_256);
			HEX_SWITCH();
		}

	}
}

/***********************************************************
	 	DCC_CONTROL
************************************************************/

void DCC_CONTROL(void)
{
     if(DCC.STATE==0x01)  //LEFT
     {
     	SCAN.Page_Point=SCAN.Move_Point%SCAN.Move_Size;
          if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=(SCAN.All_Move_Size)))||(((DCC.COUNT)==0x00)&&(SCAN.Move_Size==(SCAN.Page_Point+1))))
          {
               if(DCC.COUNT==0x00)
               {
                    if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
                    else SCAN.Move_Point++;
               }
               else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
          }
          else if(!(SCAN.Page_Point%DCC.SIZE))
          {
               if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
               else  SCAN.Move_Point++;
          }
          else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
          Left_Dot_Video=1;
     }
     else if(DCC.STATE==0x02) //UP
     {
          if((SCAN.Move_Point)>=(SCAN.Move_Size))
          {
            SCAN.Page_Up_Point++;
            
               if(DCC.COUNT==0x00)
               {
                    if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
                    else SCAN.Move_Point=0;
               }
               else if(DCC.COUNT!=0x00)
               {
                    if(SCAN.Page_Up_Point>=SCAN.All_Move_Size) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;
                    else  SCAN.Move_Point=0;
               }
          }
          else if(!(SCAN.Move_Point%16))
          {
               if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
               else SCAN.Move_Point++;
          }
          else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
          Up_Dot_Video=1;
     }
     else if(DCC.STATE==0x03)//STATIC
     {
     	SCAN.Page_Point=SCAN.Move_Point%SCAN.Move_Size;
           if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=SCAN.All_Move_Size))||(((DCC.COUNT)==0x00)&&((SCAN.Page_Point+1)==SCAN.Move_Size)))
           {
                if(DCC.COUNT==0x00)
               {
                    if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
                    else SCAN.Move_Point++;
               }
               else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0,SCAN.Print_Clear=1;
           }
           else if(!(SCAN.Page_Point%DCC.SIZE))
           {
                if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
                else  SCAN.Move_Point ++;
           }
           else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
           STATIC_Left_Dot_Video=1;
     }
      
}
/***********************************************************
	 	NORMAL_DCC
************************************************************/
void NORMAL_DCC_COUNT(void)
{	

     if(!(DCC_T_C%DCC.STOP)||(DCC.STOP)==0x00)
     {
     	 if((DCC.STOP)==0x00&&B_FRONT!=FRONT)
          {
                SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;
          }
          else if(((SCAN.NorMal_Page_Count*2+2) < (SCAN.Font_Pr_P/DCC.SIZE)+1)
			     &&(DCC.STOP!=0x00))	//4월 9일 수정 (길이 계산 착오)
          {

               SCAN.NorMal_Page_Count++;
          }
          else if(((SCAN.NorMal_Page_Count*2+2)>(SCAN.Font_Pr_P/DCC.SIZE)+1)
			     &&(DCC.STOP!=0x00)
				 &&(((DCC.COUNT-1)>SCAN.NorMal_Count)||DCC.COUNT==0x00))
          {
          	SCAN.Print_Clear=1;
          	if(DCC.COUNT==0x00&&B_FRONT!=FRONT)
          	{
          		SCAN.Video_T_F=0;DCC_T_C=0;SCAN.Blink_Count=0;BLINK_DCC_T_C=0;
          	}
          	else {SCAN.NorMal_Page_Count=0;SCAN.NorMal_Count++;}
          }
          else if(DCC.STOP==0x00)
          {
          	SCAN.NorMal_Page_Count=0;
          }
          else{SCAN.Video_T_F=0;SCAN.Print_Clear=1;DCC_T_C=0;SCAN.Blink_Count=0;BLINK_DCC_T_C=0;}
     }
    Dot_Video=1;
}

/***********************************************************
	 	STOP_DCC_COUNT
************************************************************/
void STOP_DCC_COUNT(void)
{
	if(DCC.STATE==0x01)SCAN.Move_Point++,Left_Dot_Video=1;
     else if(DCC.STATE==0x02) SCAN.Move_Point++,Up_Dot_Video=1;
     else if(DCC.STATE==0x03)SCAN.Move_Point++,STATIC_Left_Dot_Video=1;
     stop_time=0x00,DCC_T_C=0x00;
}

/***********************************************************
	Timer1 - Interrupt Routine
************************************************************/

void LED_Display_c_int10(void)		// Timer 1
{
	if(SCAN.Video_T_F==1)
	{
		DCC_T_C++;
		BLINK_DCC_T_C++;
     	if(!(BLINK_DCC_T_C%Blink_Timer_Count)) SCAN.Blink_Count++;

		if((DCC.STATE)!=0x00)
	     {
	     	if((stop_time&0xff)==0x00)
	          {
	          	if(!(DCC_T_C%(DCC.DELAY&0xff))||(DCC.DELAY)==0x00) //스크롤 속도
	               {
	               	DCC_CONTROL();
	               }
	          }
	          else if((stop_time&0xff)==0x01)
	     	{
	     		if(!(DCC_T_C%DCC.STOP))
	               {
	               		STOP_DCC_COUNT();
	               }
	               if((SCAN.Blink_Count%12)<7)
	               {
		               if(DCC.STATE==0x01)Left_Dot_Video=1;
				     else if(DCC.STATE==0x03)STATIC_Left_Dot_Video=1;
				}
				if(DCC.STATE==0x02)Up_Dot_Video=1;
	          }
		}
		else
	     {
	     	NORMAL_DCC_COUNT();
	     }
	}
	
	if(nIsPattern==TRUE)
	{
		if(!(Pattren_inter_time%500))
		{
			gOneSec = TRUE;
			Pattren_inter_time=0;
		}
		Pattren_inter_time++;
	}

        
	//WDI_CS;
	glDebugCnt++;	//상태 DATA 를 요청하였을 겨우 지금 까지의 Count를 같이 전송
}
