#ifndef SRC_TOUCH_GT9147_H_
#define SRC_TOUCH_GT9147_H_

#include "xil_types.h"
#include <xgpio.h>
#include "../Peripheral/IIC/class_IIC.h"

extern XGpio gpio_sda;
extern XGpio gpio_intc;
extern XGpio gpio_rst;
extern XGpio gpio_scl;

extern iic_class *touch_iic;

#define GT_RST_1    	XGpio_DiscreteWrite (&gpio_rst, 1, 1)
#define GT_RST_0    	XGpio_DiscreteWrite (&gpio_rst, 1, 0)
#define GT_INT_1    	XGpio_DiscreteWrite (&gpio_intc, 1, 1)
#define GT_INT_0    	XGpio_DiscreteWrite (&gpio_intc, 1, 0)

//I2C��д����
#define GT_CMD_WR 		0X28     	//д����
#define GT_CMD_RD 		0X29		//������

//GT9147 ���ּĴ�������
#define GT_CTRL_REG 	0X8040   	//GT9147���ƼĴ���
#define GT_CFGS_REG 	0X8047   	//GT9147������ʼ��ַ�Ĵ���
#define GT_CHECK_REG 	0X80FF   	//GT9147У��ͼĴ���
#define GT_PID_REG 		0X8140   	//GT9147��ƷID�Ĵ���

#define GT_GSTID_REG 	0X814E   	//GT9147��ǰ��⵽�Ĵ������
#define GT_TP1_REG 		0X8150  	//��һ�����������ݵ�ַ
#define GT_TP2_REG 		0X8158		//�ڶ������������ݵ�ַ
#define GT_TP3_REG 		0X8160		//���������������ݵ�ַ
#define GT_TP4_REG 		0X8168		//���ĸ����������ݵ�ַ
#define GT_TP5_REG 		0X8170		//��������������ݵ�ַ

void GPIO_Init(void);
u8 GT9147_Init(void);
u8 GT9147_Scan(u8 mode);

#endif /* SRC_TOUCH_GT9147_H_ */
