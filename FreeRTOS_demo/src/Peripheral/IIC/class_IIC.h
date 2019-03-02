/*
 * 				class_IIC:IIC总线类
 *      	Author: oliver
 */

#ifndef SRC_PERIPHERAL_IIC_CLASS_IIC_H_
#define SRC_PERIPHERAL_IIC_CLASS_IIC_H_

#include "xbasic_types.h"
#include <xgpio.h>
//////////////////////////////////////////////////////////////////////////////////

class iic_class{
private:
	XGpio *sda;
	XGpio *scl;	//iic总线引脚
	void SDA_in();
	void SDA_out();
	void iic_delay();

public:
	iic_class(XGpio SDA,XGpio SCL);
	~iic_class();
	void iic_init();
	void iic_start();
	void iic_stop();
	void iic_Send_Byte(u8 txd);
	u8 iic_Read_Byte(u8 ack);
	u8 iic_Wait_Ack();
	void iic_Ack();
	void iic_NAck();
};


#endif /* SRC_PERIPHERAL_IIC_CLASS_IIC_H_ */
