.section .init
.globl _start
.type _start, @function

_start:
    /* Setup stack pointer */
    la sp, _stack_top
    
    /* Clear BSS */
    la a0, _bss_start
    la a1, _bss_end
    bgeu a0, a1, 2f
1:
    sw zero, (a0)
    addi a0, a0, 4
    bltu a0, a1, 1b
2:
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