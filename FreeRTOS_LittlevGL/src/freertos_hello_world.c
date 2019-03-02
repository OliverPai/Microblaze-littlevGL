/*----------------------------------------------------------------*/
/*----Operation System:FreeRTOS--*/
/*----GUI:LittlevGL--------------*/
/*----Language:C-----------------*/
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
#include "DELAY/delay.h"
/*	GUI includes					*/
#include "GUI/ui.h"
#include "lvgl/lv_porting/lv_port_disp.h"
#include "lvgl/lv_porting/lv_port_indev.h"
#include "lvgl/lvgl.h"
/*	Example includes			*/
#include "GUI/Example.h"

/*	Macro definition.		*/
#define TOUCH_DELAY	30UL
#define TASK_PRIORITY	5//数值越小，优先级越低


/* Tasks names					  */
static void Task_GL_Tick( void *pvParameters );
static void Task_GL_Handler( void *pvParameters );

/*	Handles names					*/
static TaskHandle_t xTask_GL_Tick;
static TaskHandle_t xTask_GL_Handler;


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
		lv_init();								//图形库初始化
		lv_port_disp_init();	//显示
		lv_port_indev_init();//触摸
	/************ board init end ********/

	/************ GUI init **************/
		//ui();
		lv_test_theme_2();
	/************ GUI init end***********/


	/************ tasks creating ********/
	xTaskCreate( Task_GL_Tick,
					 ( const char * ) "tick_for_GL",
					 1000,//stack size
					 NULL,
					 TASK_PRIORITY,
					 &xTask_GL_Tick );

	xTaskCreate( Task_GL_Handler,
					 ( const char * ) "Handler_for_GL",
					 1000,//stack size
					 NULL,
					 TASK_PRIORITY,
					 &xTask_GL_Handler );
	/************ tasks creating end********/

	/* Start the tasks running. */
	vTaskStartScheduler();

	/*	loop*/
	for( ;; );
}
/*---------------------------main end-------------------------*/


/*---------------------------w为图形库提供节拍w--------------------------------*/
static void Task_GL_Tick( void *pvParameters )
{
	const TickType_t x1ms = pdMS_TO_TICKS( 1 );

		for( ;; )
		{
			/* Delay for 1 ms. */
			vTaskDelay( x1ms );
			lv_tick_inc(1);
		}
}

/*---------------------------w图形库中断处理函数w--------------------------------*/
static void Task_GL_Handler( void *pvParameters )
{
	const TickType_t x5ms = pdMS_TO_TICKS( 5 );

		for( ;; )
		{
			/* Delay for 5 ms. */
			vTaskDelay( x5ms );
			lv_task_handler();
		}
}
