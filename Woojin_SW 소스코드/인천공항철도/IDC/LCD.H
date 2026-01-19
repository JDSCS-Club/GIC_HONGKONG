#ifndef _LCD_H_
#define _LCD_H_

BYTE SIZE_OF(BYTE *Size);

/********************************************************
	Name 	: 232 Data 전송 Define
	Purpose : 
*********************************************************/
BYTE glTxBufA3[500];
BYTE glTxBufA2_Back[500];

BYTE DEST_STATION_LIST[15][20];/*={"                   ",
								"Ramal de Santa Cruz",
                                "Japeri             ",
                                "Santa Cruz         ",
                                "Belford Roxo       ",
                                "Saracuruna         ",
						        "Gramacho           ",
						        "Dom Pedro Ⅱ       ",
						        "Deodoro            ",
						        "Barao de Maua      "};*/

int A3Len=0;
		
void Load_TxCommand(BYTE a,BYTE b)
{
	glTxBufA2_Back[A3Len++] = a;
	glTxBufA2_Back[A3Len++] = b;	
}

void Load_TxString(BYTE nLen,BYTE *pSData)
{
	int i;
	glTxBufA2_Back[A3Len++] = 0xA2;
	for(i=0;i<nLen;i++) glTxBufA2_Back[A3Len++] = pSData[i];
	glTxBufA2_Back[A3Len++] = 0x00;	
}

void Load_TxData(BYTE nLen,BYTE Data)
{
	int i;
	glTxBufA2_Back[A3Len++] = 0xA2;
	glTxBufA2_Back[A3Len++] = Data&0xff;
	glTxBufA2_Back[A3Len++] = 0x00;	
}

void Point_X_Y(BYTE x,BYTE y)
{
	glTxBufA2_Back[A3Len++] = 0xA1;
	glTxBufA2_Back[A3Len++] = x;		
	glTxBufA2_Back[A3Len++] = y;		
}	

void Load_Bitmap(BYTE nLen,BYTE Num,BYTE *pSData)
{
	int i;
	glTxBufA2_Back[A3Len++]=0xA4;
	glTxBufA2_Back[A3Len++]=Num;	//0x01~0x08까지 가능 (Bitmap)
	for(i=0;i<nLen;i++) glTxBufA2_Back[A3Len++] = pSData[i];
	glTxBufA2_Back[A3Len++] = 0x00;
}
/********************************************************
	LCD_DisplaySpot
*********************************************************/

void LCD_DisplaySpot(BYTE x,BYTE y,BYTE Len,BYTE *pBuf)
{
	Point_X_Y(x,y);		
	Load_TxString(Len,pBuf);
}

void LCD_DisplayData(BYTE x,BYTE y,BYTE Len,BYTE Data)
{
	Point_X_Y(x,y);		
	Load_TxData(Len,Data);
}

/********************************************************
	Name 	: LCD Initialize 
	Purpose : 
*********************************************************/

void LCD_INIT()
{
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	//Load_TxCommand(0xB0,0x00);			// 9X16 폰트 
	Load_TxCommand(0xA6,0x00);			//편집 모드를 overwrite mode로 설정	 
	Load_TxCommand(0xA3,0x0E);			//커서 보이기	
	Load_TxCommand(0xA3,0x0B);			//커서 깜박임
}

void State_Screen(BYTE *Dest,BYTE *Now,BYTE *Next,BYTE *Time)	//상태화면
{
	BYTE Len=0;
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	
	Len=SIZE_OF(Dest);
	Len=(Len>10) ? 10 : Len;
	LCD_DisplaySpot(0,0,Len,Dest);
	LCD_DisplaySpot(11,0,2,&Time[0]);
	LCD_DisplaySpot(13,0,1,(BYTE *)":");
	LCD_DisplaySpot(14,0,2,&Time[2]);
	
	LCD_DisplayData(0,1,1,0x3C);
	LCD_DisplayData(1,1,1,0x3A);
	
	Len=SIZE_OF(Now);
	LCD_DisplaySpot(2,1,Len,Now);
	
	
	LCD_DisplayData(0,2,1,0x3E);
	LCD_DisplayData(1,2,1,0x3A);
	
	Len=SIZE_OF(Next);
	LCD_DisplaySpot(2,2,Len,Next);
	
	LCD_DisplaySpot(0,3,16,(BYTE *)"IM:Next station ");
}

void Menu(BYTE Page_Count)		//Menu
{
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	if(Page_Count==0x01)
	{
		LCD_DisplaySpot(0,0,16,(BYTE *)"MENU            ");
		LCD_DisplaySpot(0,1,16,(BYTE *)"1:STATUS TELA   ");
		LCD_DisplaySpot(0,2,16,(BYTE *)"2:NUMERO-CURSO  ");	
		LCD_DisplaySpot(0,3,16,(BYTE *)"3:PONTO AJUSTE  ");
		
		
	}
	else if(Page_Count==0x02)
	{
		LCD_DisplaySpot(0,0,16,(BYTE *)"MENU            ");
		LCD_DisplaySpot(0,1,16,(BYTE *)"4:ESTACAO DESTIN");
		LCD_DisplaySpot(0,2,16,(BYTE *)"5:HORA-AJUSTE   ");	
		LCD_DisplaySpot(0,3,16,(BYTE *)"6:INFO-PUBLICA  ");
		
	}
	else if(Page_Count==0x03)
	{
		LCD_DisplaySpot(0,0,16,(BYTE *)"MENU            ");
		LCD_DisplaySpot(0,1,16,(BYTE *)"7:LED TESTE     ");
		LCD_DisplaySpot(0,2,16,(BYTE *)"8:AUTO TESTE    ");	
		LCD_DisplaySpot(0,3,16,(BYTE *)"9:ESTACAO-MANUAL");		
	}
}

void Course(BYTE *Stat,BYTE *Dest,BYTE *Num) 		//운행설정
{
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	LCD_DisplaySpot(0,0,12,(BYTE *)"NUMERO-CURSO      ");
	LCD_DisplaySpot(13,0,3,Num);
	
	LCD_DisplaySpot(0,1,11,(BYTE *)"NUM-ENTRADA");
	
	
	LCD_DisplaySpot(0,2,16,Stat);
	LCD_DisplaySpot(0,3,16,Dest);
	Point_X_Y(11,1);
	
}

void Public_Info(BYTE Pu_pe) 	//홍보안내
{
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	LCD_DisplaySpot(0,0,16,(BYTE *)"INFO-PUBLICA    ");
	if(Pu_pe==1){
		LCD_DisplaySpot(0,1,16,(BYTE *)"1:Transfer Line ");
		LCD_DisplaySpot(0,2,16,(BYTE *)"2:VIAGEM        ");	
		LCD_DisplaySpot(0,3,16,(BYTE *)"3:AVISO DE INCENDIO");
	}else if(Pu_pe==2){
		LCD_DisplaySpot(0,1,16,(BYTE *)"4:IMAGEM GRAFICA");
	}
	
	
	Point_X_Y(0,1);
}

void Time(BYTE *Tim) 		//시각보정
{
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	LCD_DisplaySpot(0,0,16,(BYTE *)"HORA-AJUSTE     ");
	
	LCD_DisplaySpot(0,2,2,&Tim[0]);
	LCD_DisplaySpot(2,2,1,(BYTE*)"Y");
	
	LCD_DisplaySpot(3,2,2,&Tim[2]);
	LCD_DisplaySpot(5,2,1,(BYTE*)"M");
	
	LCD_DisplaySpot(6,2,2,&Tim[4]);
	LCD_DisplaySpot(8,2,1,(BYTE*)"D");
	
	LCD_DisplaySpot(10,2,2,&Tim[6]);
	LCD_DisplaySpot(12,2,1,(BYTE*)":");
	LCD_DisplaySpot(13,2,2,&Tim[8]);
	
	LCD_DisplaySpot(14,3,2,&Tim[10]);
}
 
void Manual(BYTE *Man_now,BYTE *Man_next)  	//수동설정
{
	BYTE Len=0;
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	LCD_DisplaySpot(0,0,16,(BYTE *)"ESTACAO-MANUAL");
	
	LCD_DisplaySpot(0,1,2,(BYTE *)"<:");
	
	Len=SIZE_OF(Man_now);
	LCD_DisplaySpot(2,1,Len,Man_now);
	
	LCD_DisplaySpot(0,2,2,(BYTE *)">:");
	
	Len=SIZE_OF(Man_next);
	LCD_DisplaySpot(2,2,Len,Man_next);	
	
	LCD_DisplaySpot(0,3,16,(BYTE *)"IM:PROXIMA ESTA");
}

void Self_Test(BYTE IS_DD,BYTE *SDR)	//자기 진단
{
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	if(IS_DD)
	{
		LCD_DisplaySpot(0,0,16,(BYTE *)"AUTO TESTE   IDD");
		LCD_DisplaySpot(0,1,16,(BYTE *)"  1234    1234  ");
		
		LCD_DisplaySpot(0,2,2,(BYTE *)"M1");
		LCD_DisplaySpot(2,2,4,&SDR[0]);
		LCD_DisplaySpot(8,2,2,(BYTE *)"T1");
		LCD_DisplaySpot(10,2,4,&SDR[4]);
		
		LCD_DisplaySpot(0,3,2,(BYTE *)"M2");
		LCD_DisplaySpot(2,3,4,&SDR[8]);
		LCD_DisplaySpot(8,3,2,(BYTE *)"T2");
		LCD_DisplaySpot(10,3,4,&SDR[12]);
	}
	else if(!IS_DD)
	{
		LCD_DisplaySpot(0,0,16,(BYTE *)"AUTO TESTE   SDD");
		LCD_DisplaySpot(0,1,16,(BYTE *)"  FSS     SS    ");
		
		LCD_DisplaySpot(0,2,2,(BYTE *)"M1");
		LCD_DisplaySpot(2,2,3,&SDR[0]);
		LCD_DisplaySpot(8,2,2,(BYTE *)"T1");
		LCD_DisplaySpot(10,2,2,&SDR[3]);
		
		LCD_DisplaySpot(0,3,2,(BYTE *)"M2");
		LCD_DisplaySpot(2,3,3,&SDR[5]);
		LCD_DisplaySpot(8,3,2,(BYTE *)"T2");
		LCD_DisplaySpot(10,3,2,&SDR[8]);
	}
	Point_X_Y(15,0);
}

BYTE Dest_Num=0;
void Dest_Stat(BYTE De,BYTE Cou)	//행선 설정
{
	BYTE BB=0;
	BYTE AA[20]={0x30,0x30};
	//if(De>9) {(Dest_Num++); De=De-9;}  
	Dest_Num=De/10;
	BB=(De%10);
	AA[0]=Dest_Num+0x30;
	AA[1]=BB+0x30;
	
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	LCD_DisplaySpot(0,0,14,(BYTE *)"ESTACAO DESTIN");
	LCD_DisplaySpot(14,0,2,&AA[0]);
	
	if(De <= Cou)
	{
		LCD_DisplaySpot(0,1,2,&AA[0]);
		LCD_DisplaySpot(2,1,1,(BYTE *)":");
		LCD_DisplaySpot(3,1,13,&DEST_STATION_LIST[De][0]);
	}
	
	De=De+1;
	Dest_Num=De/10;
	BB=(De%10);
	AA[0]=Dest_Num+0x30;
	AA[1]=BB+0x30;
	
	if(De <= Cou)
	{
		LCD_DisplaySpot(0,2,2,&AA[0]);
		LCD_DisplaySpot(2,2,1,(BYTE *)":");
		LCD_DisplaySpot(3,2,13,&DEST_STATION_LIST[De][0]);
	}
	
	De=De+1;
	Dest_Num=De/10;
	BB=(De%10);
	AA[0]=Dest_Num+0x30;
	AA[1]=BB+0x30;
	
	if(De <= Cou)
	{
		LCD_DisplaySpot(0,3,2,&AA[0]);
		LCD_DisplaySpot(2,3,1,(BYTE *)":");
		LCD_DisplaySpot(3,3,13,&DEST_STATION_LIST[De][0]);
		Point_X_Y(0,1);
	}
}

void Point_Adjust(BYTE * Po_now,BYTE *Po_next)	//지점보정
{
	BYTE Len=0;
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	LCD_DisplaySpot(0,0,16,(BYTE *)"PONTO AJUSTE    ");
	LCD_DisplaySpot(0,1,2,(BYTE *)"<:");
	
	Len=SIZE_OF(Po_now);
	LCD_DisplaySpot(2,1,Len,Po_now);
	LCD_DisplaySpot(0,2,2,(BYTE *)">:");
	
	Len=SIZE_OF(Po_next);
	LCD_DisplaySpot(2,2,Len,Po_next);	
	Point_X_Y(0,2);
}

void LED_Test(BYTE ISDD,BYTE *P)  	//패턴 TEST
{
	Load_TxCommand(0xA3,0x01); 			// 화면 클리어
	
	LCD_DisplaySpot(0,0,12,(BYTE *)"LED TESTE   ");
	LCD_DisplaySpot(12,0,4,P);
	
	LCD_DisplaySpot(0,2,12,(BYTE *)" ITEM-TESTE ");
	
	if(ISDD){LCD_DisplaySpot(12,2,3,(BYTE *)"IDD");}
	else{LCD_DisplaySpot(12,2,3,(BYTE *)"SDD");}
		
	LCD_DisplaySpot(0,3,16,(BYTE *)" TESTE PADRAO  ");
	Point_X_Y(15,2);
}


BYTE SIZE_OF(BYTE *Size)
{
	BYTE i;
	for(i=0;i<=16;i++)
	{
		if((Size[i]&0xff)==0x20&&(Size[i+1]&0xff)==0x20) break;
	}
	return i;
}

#endif