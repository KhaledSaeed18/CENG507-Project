#include <stdio.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"

/* Task priorities */
#define TASK_PRIORITY_1    ( tskIDLE_PRIORITY + 1 )
#define TASK_PRIORITY_2    ( tskIDLE_PRIORITY + 2 )

/* Task handles */
TaskHandle_t xTask1Handle = NULL;
TaskHandle_t xTask2Handle = NULL;

/* Test counters */
volatile uint32_t task1_counter = 0;
volatile uint32_t task2_counter = 0;

/* Simple print function for QEMU */
void print_uart(const char *s) {
    while(*s) {
        /* UART address for QEMU virt machine */
        *((volatile char *)0x10000000) = *s++;
    }
}

/* Task 1 - Prints periodic messages */
void vTask1(void *pvParameters) {
    TickType_t xLastWakeTime;
    const TickType_t xFrequency = pdMS_TO_TICKS(1000);
    
    xLastWakeTime = xTaskGetTickCount();
    
    for(;;) {
        task1_counter++;
        print_uart("Task 1 is running\r\n");
        vTaskDelayUntil(&xLastWakeTime, xFrequency);
    }
}

/* Task 2 - Prints periodic messages */
void vTask2(void *pvParameters) {
    TickType_t xLastWakeTime;
    const TickType_t xFrequency = pdMS_TO_TICKS(500);
    
    xLastWakeTime = xTaskGetTickCount();
    
    for(;;) {
        task2_counter++;
        print_uart("Task 2 is running\r\n");
        vTaskDelayUntil(&xLastWakeTime, xFrequency);
    }
}

/* Main function */
int main(void) {
    print_uart("\r\n--- FreeRTOS on RISC-V Starting ---\r\n");
    
    /* Create tasks */
    xTaskCreate(vTask1, "Task1", configMINIMAL_STACK_SIZE, NULL, 
                TASK_PRIORITY_1, &xTask1Handle);
    xTaskCreate(vTask2, "Task2", configMINIMAL_STACK_SIZE, NULL, 
                TASK_PRIORITY_2, &xTask2Handle);
    
    print_uart("Tasks created, starting scheduler...\r\n");
    
    /* Start the scheduler */
    vTaskStartScheduler();
    
    /* Should never reach here */
    print_uart("ERROR: Scheduler returned!\r\n");
    for(;;);
    
    return 0;
}

/* Idle hook (optional) */
void vApplicationIdleHook(void) {
    /* Called when idle task runs */
}

/* Stack overflow hook */
void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName) {
    print_uart("STACK OVERFLOW: ");
    print_uart(pcTaskName);
    print_uart("\r\n");
    for(;;);
}
