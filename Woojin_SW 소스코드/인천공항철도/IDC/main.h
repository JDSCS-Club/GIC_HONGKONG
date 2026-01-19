

#ifndef _MAIN_H_
#define _MAIN_H_

////////////////////////////////////////////////////

#define ROM_VER	45	//10 -> 15 -> 17
#define ROM_VER_S "IDC45"
#define ETX		0x03
#define FDD		0xF5	// 정면
#define IDD		0xF1	// 차내
#define NDD		0xF7	// 열번
#define SDD		0xF6	// 측면
#define LDD		0xF9	// 노선
#define FSNDD		0xF8	// 정면,측면,열번 
#define ILDD		0xFA	// 정면,측면,열번 
#define TURNOFFTIME	5*180	// 180sec
#define SCC2B_CNT	2
#define SELF_TEST_ALLCNT 10

void c_int01(void);
void c_int02(void);
void c_int03(void);
void c_int09(void);
void c_int10(void);

void SCC_A1_Tx();
void SCC_A1_Rx();
void SCC_B2_RX();
void DSP_Init(void);
void nDisplay_Pro();
void M_Scc1_Rx();
void M_Scc2_RX();

#endif
