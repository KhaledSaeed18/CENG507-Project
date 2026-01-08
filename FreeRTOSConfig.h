#ifndef FREERTOS_CONFIG_H
#define FREERTOS_CONFIG_H

/* Hardware specific definitions */
#define configCPU_CLOCK_HZ                      ( ( unsigned long ) 10000000 )
#define configTICK_RATE_HZ                      ( ( TickType_t ) 1000 )

/* RISC-V CLINT (mtime) timer base addresses (QEMU virt) */
#define configMTIMECMP_BASE_ADDRESS             ( 0x02004000UL )
#define configMTIME_BASE_ADDRESS                ( 0x0200BFF8UL )

/* Memory allocation */
#define configTOTAL_HEAP_SIZE                   ( ( size_t ) ( 16 * 1024 ) )
#define configMINIMAL_STACK_SIZE                ( ( unsigned short ) 128 )

/* Task settings */
#define configMAX_PRIORITIES                    ( 7 )
#define configMAX_TASK_NAME_LEN                 ( 16 )
#define configUSE_16_BIT_TICKS                  0

/* Features */
#define configUSE_PREEMPTION                    1
#define configUSE_IDLE_HOOK                     0
#define configUSE_TICK_HOOK                     0
#define configUSE_MUTEXES                       1
#define configUSE_RECURSIVE_MUTEXES             1
#define configUSE_COUNTING_SEMAPHORES           1
#define configUSE_TIMERS                        1
#define configTIMER_TASK_PRIORITY               ( configMAX_PRIORITIES - 1 )
#define configTIMER_QUEUE_LENGTH                10
#define configTIMER_TASK_STACK_DEPTH            configMINIMAL_STACK_SIZE

/* Debug features */
#define configCHECK_FOR_STACK_OVERFLOW          2
#define configASSERT( x )                       if( ( x ) == 0 ) { taskDISABLE_INTERRUPTS(); for( ;; ); }

/* API includes */
#define INCLUDE_vTaskPrioritySet                1
#define INCLUDE_uxTaskPriorityGet               1
#define INCLUDE_vTaskDelete                     1
#define INCLUDE_vTaskSuspend                    1
#define INCLUDE_xTaskDelayUntil                 1
#define INCLUDE_vTaskDelay                      1

#endif /* FREERTOS_CONFIG_H */