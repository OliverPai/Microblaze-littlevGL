/*
 * touch.h
 *
 *  Created on: 2017年11月4日
 *      Author: 81967
 */

#ifndef SRC_TOUCH_TOUCH_H_
#define SRC_TOUCH_TOUCH_H_

#include "gt9147.h"
#include "xil_types.h"


#define TP_PRES_DOWN 0x80  //触屏被按下
#define TP_CATH_PRES 0x40  //有按键按下了
#define CT_MAX_TOUCH  5    //电容屏支持的点数,固定为5点

//触摸屏控制器
typedef struct
{
	u8 (*init)(void);			//初始化触摸屏控制器
	u8 (*scan)(u8);				//扫描触摸屏.0,屏幕扫描;1,物理坐标;
	//void (*adjust)(void);		//触摸屏校准
	u16 x[CT_MAX_TOUCH]; 		//当前坐标
	u16 y[CT_MAX_TOUCH];		//电容屏有最多5组坐标,电阻屏则用x[0],y[0]代表:此次扫描时,触屏的坐标,用
								//x[4],y[4]存储第一次按下时的坐标.
	u8  sta;					//笔的状态
								//b7:按下1/松开0;
	                            //b6:0,没有按键按下;1,有按键按下.
								//b5:保留
								//b4~b0:电容触摸屏按下的点数(0,表示未按下,1表示按下)
/////////////////////触摸屏校准参数(电容屏不需要校准)//////////////////////
	float xfac;
	float yfac;
	short xoff;
	short yoff;
//新增的参数,当触摸屏的左右上下完全颠倒时需要用到.
//b0:0,竖屏(适合左右为X坐标,上下为Y坐标的TP)
//   1,横屏(适合左右为Y坐标,上下为X坐标的TP)
//b1~6:保留.
//b7:0,电阻屏
//   1,电容屏
	u8 touchtype;
}_m_tp_dev;

extern _m_tp_dev tp_dev;	 	//触屏控制器在touch.c里面定义

u8 TP_Init(void);								//初始化

//测试函数
void Load_Drow_Dialog(void);   //清空屏幕并在右上角显示"RST"
void gui_draw_hline(u16 x0,u16 y0,u16 len,u16 color); //画水平线  x0,y0:坐标  len:线长度  color:颜色
void gui_fill_circle(u16 x0,u16 y0,u16 r,u16 color); //画实心圆  x0,y0:坐标  r:半径  color:颜色
u16 my_abs(u16 x1,u16 x2); //两个数之差的绝对值  x1,x2：需取差值的两个数  返回值：|x1-x2|
void lcd_draw_bline(u16 x1, u16 y1, u16 x2, u16 y2,u8 size,u16 color);//画一条粗线  (x1,y1),(x2,y2):线条的起始坐标  size：线条的粗细程度  color：线条的颜色
void ctp_test(void);//电容触摸屏测试函数


#endif /* SRC_TOUCH_TOUCH_H_ */
