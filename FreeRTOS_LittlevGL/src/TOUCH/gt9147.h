/*
 * gt9147.h
 *
 *  Created on: 2017年11月4日
 *      Author: 81967
 */

#ifndef SRC_TOUCH_GT9147_H_
#define SRC_TOUCH_GT9147_H_

#include "xil_types.h"

//IO操作函数
#define GT_RST_1    	XGpio_DiscreteWrite (&gpio_rst, 1, 1)
#define GT_RST_0    	XGpio_DiscreteWrite (&gpio_rst, 1, 0)
#define GT_INT_1    	XGpio_DiscreteWrite (&gpio_intc, 1, 1)
#define GT_INT_0    	XGpio_DiscreteWrite (&gpio_intc, 1, 0)

//IO方向设置
void CT_RST_OUT(void);
void CT_INT_IN(void);
void CT_INT_OUT(void);


//I2C读写命令
#define GT_CMD_WR 		0X28     	//写命令
#define GT_CMD_RD 		0X29		//读命令

//GT9147 部分寄存器定义
#define GT_CTRL_REG 	0X8040   	//GT9147控制寄存器
#define GT_CFGS_REG 	0X8047   	//GT9147配置起始地址寄存器
#define GT_CHECK_REG 	0X80FF   	//GT9147校验和寄存器
#define GT_PID_REG 		0X8140   	//GT9147产品ID寄存器

#define GT_GSTID_REG 	0X814E   	//GT9147当前检测到的触摸情况
#define GT_TP1_REG 		0X8150  	//第一个触摸点数据地址
#define GT_TP2_REG 		0X8158		//第二个触摸点数据地址
#define GT_TP3_REG 		0X8160		//第三个触摸点数据地址
#define GT_TP4_REG 		0X8168		//第四个触摸点数据地址
#define GT_TP5_REG 		0X8170		//第五个触摸点数据地址


u8 GT9147_Send_Cfg(u8 mode);
u8 GT9147_WR_Reg(u16 reg,u8 *buf,u8 len);
void GT9147_RD_Reg(u16 reg,u8 *buf,u8 len);
u8 GT9147_Init(void);
u8 GT9147_Scan(u8 mode);

#endif /* SRC_TOUCH_GT9147_H_ */
