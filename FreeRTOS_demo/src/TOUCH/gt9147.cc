#include "gt9147.h"
#include "touch.h"
#include "../DELAY/delay.h"
#include "stdio.h"
//////////////////////////////////////////////////////////////////////////////////

void GPIO_Init(void)
{
    XGpio_Initialize (&gpio_sda, XPAR_GPIO_SDA_DEVICE_ID);
    XGpio_Initialize (&gpio_intc, XPAR_GPIO_INTC_DEVICE_ID);
    XGpio_Initialize (&gpio_rst, XPAR_GPIO_RST_DEVICE_ID);
    XGpio_Initialize (&gpio_scl, XPAR_GPIO_SCK_DEVICE_ID);
}

void CT_RST_OUT(void)
{
	XGpio_SetDataDirection (&gpio_rst, 1, 0);
}

void CT_INT_IN(void)
{
	XGpio_SetDataDirection (&gpio_intc, 1, 1);
}
void CT_INT_OUT(void)
{
	XGpio_SetDataDirection (&gpio_intc, 1, 0);
}

//GT9147配置参数表
//第一个字节为版本号(0X60),必须保证新的版本号大于等于GT9147内部
//flash原有版本号,才会更新配置.
const u8 GT9147_CFG_TBL[]=
{
	0X60,0XE0,0X01,0X20,0X03,0X05,0X35,0X00,0X02,0X08,
	0X1E,0X08,0X50,0X3C,0X0F,0X05,0X00,0X00,0XFF,0X67,
	0X50,0X00,0X00,0X18,0X1A,0X1E,0X14,0X89,0X28,0X0A,
	0X30,0X2E,0XBB,0X0A,0X03,0X00,0X00,0X02,0X33,0X1D,
	0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X32,0X00,0X00,
	0X2A,0X1C,0X5A,0X94,0XC5,0X02,0X07,0X00,0X00,0X00,
	0XB5,0X1F,0X00,0X90,0X28,0X00,0X77,0X32,0X00,0X62,
	0X3F,0X00,0X52,0X50,0X00,0X52,0X00,0X00,0X00,0X00,
	0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
	0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X0F,
	0X0F,0X03,0X06,0X10,0X42,0XF8,0X0F,0X14,0X00,0X00,
	0X00,0X00,0X1A,0X18,0X16,0X14,0X12,0X10,0X0E,0X0C,
	0X0A,0X08,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
	0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
	0X00,0X00,0X29,0X28,0X24,0X22,0X20,0X1F,0X1E,0X1D,
	0X0E,0X0C,0X0A,0X08,0X06,0X05,0X04,0X02,0X00,0XFF,
	0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
	0X00,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,
	0XFF,0XFF,0XFF,0XFF,
};

u8 GT9147_WR_Reg(u16 reg,u8 *buf,u8 len)
{
	u8 i;
	u8 ret=0;
	touch_iic->iic_start();
 	touch_iic->iic_Send_Byte(GT_CMD_WR);
 	touch_iic->iic_Wait_Ack();
	touch_iic->iic_Send_Byte(reg>>8);   	//���͸�8λ��ַ
	touch_iic->iic_Wait_Ack();
	touch_iic->iic_Send_Byte(reg&0XFF);   	//���͵�8λ��ַ
	touch_iic->iic_Wait_Ack();
	for(i=0;i<len;i++)
	{
		touch_iic->iic_Send_Byte(buf[i]);  	//������
		ret=touch_iic->iic_Wait_Ack();
		if(ret)break;
	}
	touch_iic->iic_stop();
	return ret;
}
//发送GT9147配置参数
//mode:0,参数不保存到flash
//     1,参数保存到flash
u8 GT9147_Send_Cfg(u8 mode)
{
	u8 buf[2];
	u8 i=0;
	buf[0]=0;
	buf[1]=mode;	//�Ƿ�д�뵽GT9147 FLASH?  ���Ƿ���籣��
	for(i=0;i<sizeof(GT9147_CFG_TBL);i++)buf[0]+=GT9147_CFG_TBL[i];//����У���
    buf[0]=(~buf[0])+1;
	GT9147_WR_Reg(GT_CFGS_REG,(u8*)GT9147_CFG_TBL,sizeof(GT9147_CFG_TBL));//���ͼĴ�������
	GT9147_WR_Reg(GT_CHECK_REG,buf,2);//д��У���,�����ø��±��
	return 0;
}


//��GT9147����һ������
//reg:��ʼ�Ĵ�����ַ
//buf:���ݻ�������
//len:�����ݳ���
void GT9147_RD_Reg(u16 reg,u8 *buf,u8 len)
{
	u8 i;
	touch_iic->iic_start();
	touch_iic->iic_Send_Byte(GT_CMD_WR);   //����д����
	touch_iic->iic_Wait_Ack();
	touch_iic->iic_Send_Byte(reg>>8);   	//���͸�8λ��ַ
	touch_iic->iic_Wait_Ack();
	touch_iic->iic_Send_Byte(reg&0XFF);   	//���͵�8λ��ַ
	touch_iic->iic_Wait_Ack();
	touch_iic->iic_start();
	touch_iic->iic_Send_Byte(GT_CMD_RD);   //���Ͷ�����
	touch_iic->iic_Wait_Ack();
	for(i=0;i<len;i++)
	{
    	buf[i]=touch_iic->iic_Read_Byte(i==(len-1)?0:1); //������
	}
	touch_iic->iic_stop();//����һ��ֹͣ����
}
//��ʼ��GT9147������
//����ֵ:0,��ʼ���ɹ�;1,��ʼ��ʧ��
u8 GT9147_Init(void)
{
	u8 temp[5];
	CT_INT_OUT();
	GT_INT_1;
	CT_RST_OUT();
	GT_RST_1;
	//touch_iic = new iic_class(gpio_sda,gpio_scl);
	touch_iic->iic_init();
	GT_RST_0;				//��λ
	delay_ms(10);
	GT_RST_1;				//�ͷŸ�λ
 	delay_ms(10);
 	CT_INT_IN();          //INT��������
 	GT_INT_0;	//INT ����
 	delay_ms(100);
	GT9147_RD_Reg(GT_PID_REG,temp,4);//��ȡ��ƷID
	temp[4]=0;
	printf("CTP ID:%s\r\n",temp);	//��ӡID
	if(strcmp((char*)temp,"9147")==0)//ID==9147
	{
		temp[0]=0X02;
		GT9147_WR_Reg(GT_CTRL_REG,temp,1);//��λGT9147
		GT9147_RD_Reg(GT_CFGS_REG,temp,1);//��ȡGT_CFGS_REG�Ĵ���
		if(temp[0]<0X60)//Ĭ�ϰ汾�Ƚϵ�,��Ҫ����flash����
		{
			printf("Default Ver:%d\r\n",temp[0]);
			GT9147_Send_Cfg(1);//���²���������
		}
		delay_ms(10);
		temp[0]=0X00;
		GT9147_WR_Reg(GT_CTRL_REG,temp,1);//������λ
		return 0;
	}
	return 1;
}
const u16 GT9147_TPX_TBL[5]={GT_TP1_REG,GT_TP2_REG,GT_TP3_REG,GT_TP4_REG,GT_TP5_REG};
//ɨ�败����(���ò�ѯ��ʽ)
//mode:0,����ɨ��.
//����ֵ:��ǰ����״̬.
//0,�����޴���;1,�����д���
u8 GT9147_Scan(u8 mode)
{
	u8 buf[4];
	u8 i=0;
	u8 res=0;
	u8 temp;
	static u8 t=0;//���Ʋ�ѯ���,�Ӷ�����CPUռ����
	t++;
	if((t%10)==0||t<10)//����ʱ,ÿ����10��CTP_Scan�����ż��1��,�Ӷ���ʡCPUʹ����
	{
		GT9147_RD_Reg(GT_GSTID_REG,&mode,1);//��ȡ�������״̬
		if((mode&0XF)&&((mode&0XF)<6))
		{
			temp=0XFF<<(mode&0XF);//����ĸ���ת��Ϊ1��λ��,ƥ��tp_dev.sta����
			tp_dev.sta=(~temp)|TP_PRES_DOWN|TP_CATH_PRES;
			for(i=0;i<5;i++)
			{
				if(tp_dev.sta&(1<<i))	//������Ч?
				{
					GT9147_RD_Reg(GT9147_TPX_TBL[i],buf,4);	//��ȡXY����ֵ
					if(tp_dev.touchtype&0X01)//����
					{
						tp_dev.x[i]=((u16)buf[1]<<8)+buf[0];
						tp_dev.y[i]=((u16)buf[3]<<8)+buf[2];
					}else
					{
						tp_dev.x[i]=800-(((u16)buf[3]<<8)+buf[2]);
						tp_dev.y[i]=((u16)buf[1]<<8)+buf[0];
					}
					//printf("x[%d]:%d,y[%d]:%d\r\n",i,tp_dev.x[i],i,tp_dev.y[i]);
				}
			}
			res=1;
			if(tp_dev.x[0]==0 && tp_dev.y[0]==0)mode=0;	//���������ݶ���0,����Դ˴�����
			t=0;		//����һ��,��������������10��,�Ӷ����������
		}
 		if(mode&0X80&&((mode&0XF)<6))
		{
			temp=0;
			GT9147_WR_Reg(GT_GSTID_REG,&temp,1);//���־
		}
	}
	if((mode&0X8F)==0X80)//�޴����㰴��
	{
		if(tp_dev.sta&TP_PRES_DOWN)	//֮ǰ�Ǳ����µ�
		{
			tp_dev.sta&=~(1<<7);	//��ǰ����ɿ�
		}else						//֮ǰ��û�б�����
		{
			tp_dev.x[0]=0xffff;
			tp_dev.y[0]=0xffff;
			tp_dev.sta&=0XE0;	//�������Ч���
		}
	}
	if(t>240)t=10;//���´�10��ʼ����
	return res;
}
