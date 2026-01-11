#!/bin/bash

# Launch the built FreeRTOS ELF in QEMU. Run `make all` first to build
# `freertos_riscv.elf` if it does not already exist.

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