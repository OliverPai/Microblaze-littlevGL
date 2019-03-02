#include <xgpio.h>
#include "../../DELAY/delay.h"
#include "class_IIC.h"
//////////////////////////////////////////////////////////////////////////////////

//构造函数：初始化sda,scl
iic_class::iic_class(XGpio SDA,XGpio SCL)
{
	sda = &SDA;
	scl = &SCL;
}

iic_class::~iic_class(){
	//do nothing
}

void iic_class::iic_init(){
	XGpio_SetDataDirection(sda, 1, 0);
	XGpio_SetDataDirection(scl, 1, 0);

	XGpio_DiscreteWrite(scl, 1, 1);
	XGpio_DiscreteWrite(sda, 1, 1);
}

//设置sda线为输入状态
void iic_class::SDA_in(void)
{
	XGpio_SetDataDirection(sda, 1, 1);
}
//设置sda线为输出状态
void iic_class::SDA_out(void)
{
	XGpio_SetDataDirection(sda, 1, 0);
}
//延时
void iic_class::iic_delay(void)
{
	delay_us(5);
}

void iic_class::iic_start(void)
{
	SDA_out();
	XGpio_DiscreteWrite(sda, 1, 1);
	XGpio_DiscreteWrite(scl, 1, 1);
	delay_us(30);
	XGpio_DiscreteWrite(sda, 1, 0);//START:when CLK is high,DATA change form high to low
 	iic_delay();
 	XGpio_DiscreteWrite(scl, 1, 0);
}

void iic_class::iic_stop(void)
{
	SDA_out();
	XGpio_DiscreteWrite(scl, 1, 1);
	delay_us(30);
	XGpio_DiscreteWrite(sda, 1, 0);//STOP:when CLK is high DATA change form low to high
	iic_delay();
	XGpio_DiscreteWrite(sda, 1, 1);
}

u8 iic_class::iic_Wait_Ack(void)
{
	u8 ucErrTime=0;
	SDA_in();
	XGpio_DiscreteWrite(sda, 1, 1);
	XGpio_DiscreteWrite(scl, 1, 1);
	iic_delay();
	while(XGpio_DiscreteRead(this->sda, 1))
	{
		ucErrTime++;
		if(ucErrTime>250)
		{
			iic_stop();
			return 1;
		}
		iic_delay();
	}
	XGpio_DiscreteWrite(scl, 1, 0);
	return 0;
}

void iic_class::iic_Ack(void)
{
	XGpio_DiscreteWrite(scl, 1, 0);
	SDA_out();
	iic_delay();
	XGpio_DiscreteWrite(sda, 1, 0);
	iic_delay();
	XGpio_DiscreteWrite(scl, 1, 1);
	iic_delay();
	XGpio_DiscreteWrite(scl, 1, 0);
}

void iic_class::iic_NAck(void)
{
	XGpio_DiscreteWrite(scl, 1, 0);
	SDA_out();
	iic_delay();
	XGpio_DiscreteWrite(sda, 1, 1);
	iic_delay();
	XGpio_DiscreteWrite(scl, 1, 1);
	iic_delay();
	XGpio_DiscreteWrite(scl, 1, 0);
}

void iic_class::iic_Send_Byte(u8 txd)
{
	u8 t;
	SDA_out();
	XGpio_DiscreteWrite(scl, 1, 0);
	iic_delay();
	for(t=0;t<8;t++)
    {
		XGpio_DiscreteWrite (sda, 1, (txd&0x80)>>7);
		txd<<=1;
		XGpio_DiscreteWrite(scl, 1, 1);
		iic_delay();
		XGpio_DiscreteWrite(scl, 1, 0);
		iic_delay();
    }
}

u8 iic_class::iic_Read_Byte(unsigned char ack)
{
	u8 i,receive=0;
 	SDA_in();
	delay_us(30);
	for(i=0;i<8;i++ )
	{
		XGpio_DiscreteWrite(scl, 1, 0);
		iic_delay();
		XGpio_DiscreteWrite(scl, 1, 1);
		receive<<=1;
		if(XGpio_DiscreteRead(this->sda, 1))receive++;
	}
	if (!ack)iic_NAck();
	else iic_Ack();
 	return receive;
}
