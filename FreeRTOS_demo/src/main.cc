/*----------------------------------------------------------------*/
/*----Operation System:FreeRTOS--*/
/*----GUI:None-------------------*/
/*----Language:C++---------------*/
/*----Author:Oliver--------------*/
 /*---------------------------------------------------------------*/

/* FreeRTOS includes. 	*/
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
/* Xilinx includes. 		*/
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_cache.h"
/*	Board includes				*/
#include "LCD/lcd.h"
#include "TOUCH/touch.h"
#include "DELAY/delay.h"
/*	GUI includes					*/


/*	Macro definition.		*/
#define TOUCH_DELAY	30UL
#define TASK_PRIORITY	5//数值越小，优先级越低


/* Tasks names					  */
static void Task_show( void *pvParameters );
static void Task_touch( void *pvParameters );

/*	Handles names					*/
static TaskHandle_t xTask_show;
static TaskHandle_t xTask_touch;

/*	与触摸相关的四个引脚			*/
XGpio gpio_sda;
XGpio gpio_intc;
XGpio gpio_rst;
XGpio gpio_scl;

/*---------------------------main----------------------------*/
int main( void )
{
	/************ init cache ************/
		#ifdef XPAR_MICROBLAZE_USE_ICACHE
			Xil_ICacheEnable();
		#endif
		#ifdef XPAR_MICROBLAZE_USE_DCACHE
			Xil_DCacheEnable();
		#endif
	/************ init cache end ********/


	/************ board init ************/
	LCD_Init();
	TP_Init();
	extern _m_tp_dev tp_dev;
	/************ board init end ********/


	/************ tasks creating ********/
	xTaskCreate( 	Task_show,
					( const char * ) "task_show",
					1000,//stack size
					NULL,
					TASK_PRIORITY,
					&xTask_show );

	xTaskCreate( Task_touch,
				 ( const char * ) "task_touch",
				 1000,//stack size
				 NULL,
				 TASK_PRIORITY,
				 &xTask_touch );
	/************ tasks creating end********/

	/* Start the tasks running. */
	vTaskStartScheduler();

	/*	loop*/
	for( ;; );
}


/*---------------------------w显示功能任务w--------------------------------*/
static void Task_show( void *pvParameters )
{
LCD_Clear(BLACK);

	for( ;; )
	{
		//do nothing
	}
}

/*---------------------------w触摸功能任务w--------------------------------*/
static void Task_touch( void *pvParameters )
{
	touch_iic = new iic_class(gpio_sda,gpio_scl);//定义touch对象
	const TickType_t x30ms = pdMS_TO_TICKS( TOUCH_DELAY );
	u16 x = 0,y = 0;
		for( ;; )
		{
			/* Delay for 30 ms. */
			vTaskDelay( x30ms );
			if(GT9147_Scan(0)){
				x = tp_dev.y[0];
				y = 480-tp_dev.x[0];
			}
		}
}
