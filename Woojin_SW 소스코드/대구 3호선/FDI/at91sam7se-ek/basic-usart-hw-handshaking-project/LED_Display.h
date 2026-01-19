#ifndef LED_Display_H 
#define LED_Display_H

#include <stdio.h>
#include "main.h"
#include "UART.h"

#define HEX_SW_NUM 0x34560		//HEX_SW_NUM는 이미지 ADDRES를 가르키고이 있다.
#define DOT_VIDEO (volatile unsigned char *)0x20000000		// 화면에 담을 메모리 번지(데이터)
#define SCREEN_VIDEO (volatile unsigned char *)0x20003010      // LED 표출 이미지를 하기전 스크린 이미지 구성 부분 3000번지
#define RING_BUFF (volatile unsigned char *)0x2001942f 		//링 버퍼 시작 위치 20000 번지 (160*16=2560)
#define DOT_VIDEO_DATA (volatile unsigned char *)0x2001ffff  	//FONT이미지  시작 위치 10000번지(550*10=5500)
#define DOT_VIDEO_LO_DATA (volatile unsigned char *)0x2004ffff //FONT이미지 LO 시작 위치
#define BLINK 0x30000 			//BLINK JUMP ADDRESS
#define RING_BUFF_SIZE 0x32;	//RING_BUFF COUNT MAX(50)값

#define INT_TO_BOOT ((*(int *)0x82c000)=0) //Int를 Boot Mode바꿈

#define MODULE_8_256	0x500 //0x800	//8*256  (1280)    8*160    0x500 
#define MODULE_16_256	0xA00 //0x1000	//16*256 (2560)    16*160   0xA00 
#define MODULE_32_256	0x1400//0x2000	//32*256 (5120)    32*160   0x1400 
#define MODULE_40_256 	0x1900//0x2800	//40*256 (6400)    40*160   0x1900
#define MODULE_48_256	0x1E00//0x3000	//48*256 (7680)    48*160   0x1E00

#define FONT_24_256		0xF00 //0x1800	//24*256  (3840)   24*160   0xF00
#define FONT_48_256		0x1E00//0x3000	//24*256*2(7680)   24*160*2 0x1E00
#define FONT_72_256		0x2D00//0x4800	//24*256*3(11520)  24*160*3 0x2D00



typedef struct{
	int Move_Point;	//전체 이동 COUNT
	int Move_Size;		//문장 길이(한 Page)
	int All_Move_Size;  //전체 문장 길이 (반복회수를 곱한다)
	int Blink_Count;	//블링크 카운트
	int Video_T_F;		//Print할 이미지가 있는지 확인	
	int Print_Clear;	//화면을 지운다.
	int NorMal_Page_Count;	//NorMal시 한화면 카운트
	int NorMal_Count;	//NorMal 반복회수
	int Page_Point;	//해당 Page 이동 COUNT
	int Page_Up_Point;	//UP스크롤시 해당 Page Count
	int String_Count;	//실제 문자 수				Org_count
	int Font_Pr_P;		//지금까지 읽은 DATA 길이
	int Font_24_T_F;	//24폰트가 있는지 확인
	int Font_24_T;		//문장 않에 24폰트가 한번이라도 나왔는지 확인
}PRINT;

typedef struct {
	UCHAR SCC_CODE;
	UCHAR SCC_KIND;
	UCHAR LEN_HI;
	UCHAR LEN_LOW;
	UCHAR TXT;
	UCHAR SIZE;
	UCHAR COUNT;
	UCHAR LINE_POSI;
	UCHAR INTERVERL ;
	UCHAR STATE;
	UCHAR DELAY;
	UCHAR STOP;
	UCHAR SP_A;
	UCHAR SP_B;
}FONT_VALUE;


typedef struct{
	int COLOR;	//글자색
	int D_SHAPE;
	int SHAPE;	//글자체
	int D_SIZE;	//
	int SIZE;	//폰트크기
	int TEMPER;//글자 속성
	int POSI_REM;	//문자 배경색
	int nChar_SizeUp;	//문자 확대
	int nCountry_Code;	//국가 코드
} FONT_VALUE_CHANGE;



extern void Display_Init(void);

extern void c_int01(void); //
extern void c_int02(void); // SCC Interrupt
extern void c_int03(void); //
extern void c_int04(void); // UART Interrupt
extern void c_int06(void); // Serial Interrupt
extern void c_int09(void); // Timer 0
extern void LED_Display_c_int10(void); // Timer 1

extern void DSP_INIT(void); // DSP의 초기화
extern void Display_main(void);



extern void PATTREN(void);
extern void RTS(void);
extern void HEX_SWITCH(void);
extern void FONT_POSITION(UCHAR *Posi);	        //이미지를 만들어 주는 부분
extern void Imag_Screen(UCHAR *Imag);		//16폰트 이미지 만들기
extern void Imag_Screen_door(UCHAR *Imag);	//화살표 이미지 만들기
extern void Imag_Screen_8(UCHAR *Imag);	        //영숫자 이미지 만들기
extern void DOT_VIDEO_PIRNT(void);		//Scroll Normal 이미지 만들기
extern void UP_DOT_VIDEO_PIRNT(void);	        //Scroll UP 이미지 만들기
extern void LEFT_DOT_VIDEO_PIRNT(void);	//Scroll Left 이미지 만들기
extern void STATIC_LEFT_VIDEO_PRINT(void);     //앞부분의 한화면 싸이즈 만큼은 NORMAL로 표출하고  나머지는 LEFT한다.
extern void PUSH(UCHAR *push);		//링 버퍼 삽입 함수
extern void POP(void);			//링 버퍼 OUT 함수
extern void PATTREN_MOVE_VALUE(void);
extern void DCC_CONTROL(void);
extern void NORMAL_DCC_COUNT(void);
extern void STOP_DCC_COUNT(void);
extern void BASIC_VALUE(void);
extern void START_CHAK_DATA(void);        //내 프로그램이 구동하기전에 비디오 메모리 값이 맞는지 확인
extern void VER_PRINT(void);              //버전 정보를 표출하는 곳
extern void SCREEN_PRINT(void);           //스크린 메모리에 만들어진 이미지를 비디오 메모리에 표출하는 부분

extern void SEND_DATA(void);
extern void IMAG_POINT_VALUE(int Img);


#endif