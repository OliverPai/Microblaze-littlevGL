/*
 * ctiic.c
 *
 *  Created on: 2017年11月4日
 *      Author: 81967
 */

#include "ctiic.h"
#include <xgpio.h>
#include <xparameters.h>
#include "../DELAY/delay.h"
#include "stdlib.h"
#include "stdio.h"
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


//IO方向设置
void CT_SDA_IN(void)
{
	XGpio_SetDataDirection (&gpio_sda, 1, 1);
}
void CT_SDA_OUT(void)
{
	XGpio_SetDataDirection (&gpio_sda, 1, 0);
}

//控制I2C速度的延时
void CT_Delay(void)
{
	delay_us(5);
}

//GPIO初始化
void GPIO_Init(void)
{
	int sts;
    sts = XGpio_Initialize (&gpio_sda, XPAR_GPIO_SDA_DEVICE_ID);
	if(sts!=XST_SUCCESS) printf("gpio sda init err!\n");
    sts = XGpio_Initialize (&gpio_intc, XPAR_GPIO_INTC_DEVICE_ID);
	if(sts!=XST_SUCCESS) printf("gpio intc init err!\n");
    sts = XGpio_Initialize (&gpio_rst, XPAR_GPIO_RST_DEVICE_ID);
	if(sts!=XST_SUCCESS) printf("gpio rst init err!\n");
    sts = XGpio_Initialize (&gpio_scl, XPAR_GPIO_SCK_DEVICE_ID);
	if(sts!=XST_SUCCESS) printf("gpio scl init err!\n");
}

//电容触摸芯片IIC接口初始化
void CT_IIC_Init(void)
{
	XGpio_SetDataDirection (&gpio_sda, 1, 0);
	XGpio_SetDataDirection (&gpio_scl, 1, 0);
	CT_IIC_SCL_1;
	CT_IIC_SDA_1;
}
//产生IIC起始信号
void CT_IIC_Start(void)
{
	CT_SDA_OUT();     //sda线输出
	CT_IIC_SDA_1;
	CT_IIC_SCL_1;
	delay_us(30);
 	CT_IIC_SDA_0;//START:when CLK is high,DATA change form high to low
	CT_Delay();
	CT_IIC_SCL_0;//钳住I2C总线，准备发送或接收数据
}
//产生IIC停止信号
void CT_IIC_Stop(void)
{
	CT_SDA_OUT();//sda线输出
	CT_IIC_SCL_1;
	delay_us(30);
	CT_IIC_SDA_0;//STOP:when CLK is high DATA change form low to high
	CT_Delay();
	CT_IIC_SDA_1;//发送I2C总线结束信号
}
//等待应答信号到来
//返回值：1，接收应答失败
//        0，接收应答成功
u8 CT_IIC_Wait_Ack(void)
{
	u8 ucErrTime=0;
	CT_SDA_IN();      //SDA设置为输入
	CT_IIC_SDA_1;
	CT_IIC_SCL_1;
	CT_Delay();
	while(CT_READ_SDA)
	{
		ucErrTime++;
		if(ucErrTime>250)
		{
			CT_IIC_Stop();
			return 1;
		}
		CT_Delay();
	}
	CT_IIC_SCL_0;//时钟输出0
	return 0;
}
//产生ACK应答
void CT_IIC_Ack(void)
{
	CT_IIC_SCL_0;
	CT_SDA_OUT();
	CT_Delay();
	CT_IIC_SDA_0;
	CT_Delay();
	CT_IIC_SCL_1;
	CT_Delay();
	CT_IIC_SCL_0;
}
//不产生ACK应答
void CT_IIC_NAck(void)
{
	CT_IIC_SCL_0;
	CT_SDA_OUT();
	CT_Delay();
	CT_IIC_SDA_1;
	CT_Delay();
	CT_IIC_SCL_1;
	CT_Delay();
	CT_IIC_SCL_0;
}
//IIC发送一个字节
//返回从机有无应答
//1，有应答
//0，无应答
void CT_IIC_Send_Byte(u8 txd)
{
    u8 t;
	CT_SDA_OUT();
    CT_IIC_SCL_0;//拉低时钟开始数据传输
	CT_Delay();
	for(t=0;t<8;t++)
    {
		XGpio_DiscreteWrite (&gpio_sda, 1, (txd&0x80)>>7);
        txd<<=1;
		CT_IIC_SCL_1;
		CT_Delay();
		CT_IIC_SCL_0;
		CT_Delay();
    }
}
//读1个字节，ack=1时，发送ACK，ack=0，发送nACK
u8 CT_IIC_Read_Byte(unsigned char ack)
{
	u8 i,receive=0;
 	CT_SDA_IN();//SDA设置为输入
	delay_us(30);
	for(i=0;i<8;i++ )
	{
		CT_IIC_SCL_0;
		CT_Delay();
		CT_IIC_SCL_1;
		receive<<=1;
		if(CT_READ_SDA)receive++;
	}
	if (!ack)CT_IIC_NAck();//发送nACK
	else CT_IIC_Ack(); //发送ACK
 	return receive;
}





























