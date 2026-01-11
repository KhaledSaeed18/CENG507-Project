.section .init
.globl _start
.type _start, @function

_start:
    /* Setup stack pointer to the top of the stack as defined by the linker script. */
    la sp, _stack_top
    
    /* Zero the .bss section: ensures uninitialized globals start at 0 as C requires. */
    la a0, _bss_start
    la a1, _bss_end
    bgeu a0, a1, 2f
1:
    sw zero, (a0)
    addi a0, a0, 4
    bltu a0, a1, 1b
2:
    /* Set trap vector to the FreeRTOS trap handler implemented by the port.
     * This directs all exceptions and interrupts to the kernel-provided handler. */
    la t0, freertos_risc_v_trap_handler
    csrw mtvec, t0
    
    /* Enable machine-mode interrupts globally by setting the MIE bit in
     * mstatus. Individual interrupt sources (e.g. the machine timer) are
     * enabled by the port code later when appropriate. */
    li t0, 0x8
    csrs mstatus, t0
    
    /* Jump to main */
    call main
    
    /* Infinite loop if main returns */
1:
    j 1b

.size _start, .-_start
    
.align 8
_stack_bottom:
    .space 4096
_stack_top: