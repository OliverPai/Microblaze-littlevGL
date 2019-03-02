#include "ui.h"
#include "../lvgl/lvgl.h"
#include "xil_printf.h"

/*****************************button********************************/
static lv_res_t btn_action(lv_obj_t * btn)
{
    //xil_printf("Clicked\n");
    return LV_RES_OK;
}
static void button_example(){
		lv_obj_t * btn = lv_btn_create(lv_scr_act(), NULL);     /*Add a button the current screen*/
		lv_obj_set_pos(btn, 350, 215);                            /*Set its position*/
		lv_obj_set_size(btn, 100, 50);                          /*Set its size*/

		lv_btn_set_action(btn, LV_BTN_ACTION_CLICK, btn_action);/*Assign a callback to the button*/
		lv_obj_t * label = lv_label_create(btn, NULL);          /*Add a label to the button*/
		lv_label_set_text(label, "Button");                     /*Set the labels text*/
}

/*****************************ComboBox********************************/


/*****************************ui********************************/
void ui(){
		button_example();
}
