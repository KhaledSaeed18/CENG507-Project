#!/bin/bash

echo "Starting FreeRTOS on RISC-V in QEMU..."
echo ""

qemu-system-riscv64 \
    -machine virt \
    -cpu rv64 \
    -smp 1 \
    -m 128M \
    -nographic \
    -bios none \
    -kernel freertos_riscv.elf