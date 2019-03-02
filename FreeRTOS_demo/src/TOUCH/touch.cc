#include "touch.h"
#include "../LCD/lcd.h"
#include "gt9147.h"
//////////////////////////////////////////////////////////////////////////////////
iic_class *touch_iic;

_m_tp_dev tp_dev=
{
	TP_Init,
	GT9147_Scan,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
};

u8 TP_Init(void)
{
	GPIO_Init();
	touch_iic = new iic_class(gpio_sda,gpio_scl);
	GT9147_Init();			//��GT9147
	GT9147_Scan;	//GT9147������ɨ��
	tp_dev.touchtype|=0X80;			//������
	tp_dev.touchtype|=lcddev.dir&0X01;//������������
	delete touch_iic;
	touch_iic = NULL;
	return 0;
}
