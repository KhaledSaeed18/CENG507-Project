OUTPUT_ARCH("riscv")
ENTRY(_start)

MEMORY
{
    RAM (rwx) : ORIGIN = 0x80000000, LENGTH = 128M
}

SECTIONS
{
    .text : {
        *(.init)
        *(.text*)
    } > RAM
    
    .rodata : {
        *(.rodata*)
        *(.srodata*)
    } > RAM

    .data : {
        *(.data*)
        *(.sdata*)
    } > RAM

    /* GCC places small variables in .sbss, so it must sit between _bss_start
     * and _bss_end to be zeroed by start.S. */
    .bss : {
        _bss_start = .;
        *(.sbss*)
        *(.bss*)
        *(COMMON)
        . = ALIGN(8);
        _bss_end = .;
    } > RAM
    
    /* The RV64 port asserts that the interrupt stack is 16-byte aligned. */
    . = ALIGN(16);
    . = . + 0x10000; /* 64KB stack */
    _stack_top = .;
    __freertos_irq_stack_top = _stack_top;
}