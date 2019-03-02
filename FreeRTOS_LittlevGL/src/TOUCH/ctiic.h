/*
 * ctiic.h
 *
 *  Created on: 2017年11月4日
 *      Author: 81967
 */

#ifndef SRC_TOUCH_CTIIC_H_
#define SRC_TOUCH_CTIIC_H_
#include "xbasic_types.h"
#include <xgpio.h>
//////////////////////////////////////////////////////////////////////////////////
//本程序只供学习使用，未经作者许可，不得用于其它任何用途
//ALIENTEK STM32开发板
//4.3寸/7寸电容触摸屏驱动-IIC通信部分
//正点原子@ALIENTEK
//技术论坛:www.openedv.com
//创建日期:2015/1/15
//版本：V1.0
//版权所有，盗版必究。
//Copyright(C) 广州市星翼电子科技有限公司 2009-2019
//All rights reserved
//////////////////////////////////////////////////////////////////////////////////

XGpio gpio_sda;
XGpio gpio_intc;
XGpio gpio_rst;
XGpio gpio_scl;

//IO操作函数
#define CT_IIC_SCL_1    XGpio_DiscreteWrite (&gpio_scl, 1, 1)
#define CT_IIC_SCL_0    XGpio_DiscreteWrite (&gpio_scl, 1, 0)
#define CT_IIC_SDA_1    XGpio_DiscreteWrite (&gpio_sda, 1, 1)
#define CT_IIC_SDA_0    XGpio_DiscreteWrite (&gpio_sda, 1, 0)
#define CT_READ_SDA     XGpio_DiscreteRead (&gpio_sda, 1)  			//输入SDA
void GPIO_Init(void);

//IO方向设置
void CT_SDA_IN(void);
void CT_SDA_OUT(void);

//IIC所有操作函数
void CT_IIC_Init(void);                	//初始化IIC的IO口
void CT_IIC_Start(void);				//发送IIC开始信号
void CT_IIC_Stop(void);	  				//发送IIC停止信号
void CT_IIC_Send_Byte(u8 txd);			//IIC发送一个字节
u8 CT_IIC_Read_Byte(unsigned char ack);	//IIC读取一个字节
u8 CT_IIC_Wait_Ack(void); 				//IIC等待ACK信号
void CT_IIC_Ack(void);					//IIC发送ACK信号
void CT_IIC_NAck(void);					//IIC不发送ACK信号

#endif /* SRC_TOUCH_CTIIC_H_ */
