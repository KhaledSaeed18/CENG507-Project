#include <stdio.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"

/* Task priorities
 * - TASK_PRIORITY_2 is higher and will be scheduled more often than TASK_PRIORITY_1. */
#define TASK_PRIORITY_1    ( tskIDLE_PRIORITY + 1 )
#define TASK_PRIORITY_2    ( tskIDLE_PRIORITY + 2 )

/* Task handles (optional, kept for potential runtime introspection) */
TaskHandle_t xTask1Handle = NULL;
TaskHandle_t xTask2Handle = NULL;

/* Simple counters updated by each task - useful for tests or host readout. */
volatile uint32_t task1_counter = 0;
volatile uint32_t task2_counter = 0;

/* Simple print function for QEMU - writes bytes to the virt UART MMIO.
 * Using a `volatile` pointer ensures each write is emitted and not optimized
 * away by the compiler. The address 0x10000000 is the UART for the QEMU
 * `virt` machine used by the run script. */
void print_uart(const char *s) {
    while(*s) {
        /* UART address for QEMU virt machine */
        *((volatile char *)0x10000000) = *s++;
    }
} 

/* Task 1 - Prints periodic messages
 * This task demonstrates a stable periodic delay using vTaskDelayUntil().
 * vTaskDelayUntil() keeps the task on a fixed cadence (prevents drift) even
 * if the task's execution time varies. */
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

/* Task 2 - Prints periodic messages
 * This task runs at a higher priority than Task 1 and therefore will preempt
 * Task 1 when both are ready to run. It uses the same vTaskDelayUntil() API
 * to establish a 500ms periodic cadence. */
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

/* Main function
 * Responsibilities:
 *  - Create the application tasks
 *  - Start the FreeRTOS scheduler (vTaskStartScheduler)
 * Once the scheduler is started the application should not return to main. */
int main(void) {
    print_uart("\r\n--- FreeRTOS on RISC-V Starting ---\r\n");
    
    /* Create tasks */
    xTaskCreate(vTask1, "Task1", configMINIMAL_STACK_SIZE, NULL, 
                TASK_PRIORITY_1, &xTask1Handle);
    xTaskCreate(vTask2, "Task2", configMINIMAL_STACK_SIZE, NULL, 
                TASK_PRIORITY_2, &xTask2Handle);
    
    print_uart("Tasks created, starting scheduler...\r\n");
    
    /* Start the scheduler. After calling this function the RTOS takes control
     * and the function does not (should not) return. */
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
