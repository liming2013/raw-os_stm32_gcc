#include <raw_api.h>
#include <stdint.h>
#include "stm32f10x_conf.h"

void delay(unsigned int val)
{
	while(val--)
	{
		asm("nop");
		asm("nop");
	}
}

void test_task1(void * pParam)
{
	while(1)
	{
		raw_sleep(50);
		PDout(11) = 1;
		raw_sleep(50);
		PDout(11) = 0;
	}
}

#define  TEST_TASK_STK_SIZE 256
PORT_STACK test_task_stack1[TEST_TASK_STK_SIZE];
RAW_TASK_OBJ 		test_task_obj[10];

void task_test(void)
{
	raw_task_create(&test_task_obj[1], (RAW_U8  *)"task1", 0,
		4, 0,  test_task_stack1,
		TEST_TASK_STK_SIZE ,  test_task1, 1);
}

void sys_init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x0);
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | RCC_APB2Periph_USART1 | RCC_APB2Periph_AFIO,ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3,ENABLE);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(GPIOD,&GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(GPIOC,&GPIO_InitStructure);

	PCout(11) = 0;
}

int main(void)
{
		raw_os_init();
		sys_init();
		sys_tick_init();
		task_test();
		raw_os_start();
		return 0;
}

