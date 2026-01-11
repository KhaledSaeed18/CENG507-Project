# FreeRTOS on RISC-V: QEMU Implementation

**Course:** CENG507 - Embedded Systems  
**Project Type:** Practical Implementation - Real-Time Operating System Porting  
**Target Architecture:** RISC-V (RV64)  
**Emulation Environment:** QEMU (virt machine)

---

## Project Overview

This project implements a practical, hands-on port of **FreeRTOS** to the **RISC-V** architecture, running on the **QEMU** emulator. The implementation demonstrates core embedded systems concepts including operating system porting, interrupt handling, context switching, and multi-tasking on a real-time kernel.

### Key Objectives

1. **Understand OS Porting:** Gain practical experience porting a real-time operating system to a specific target architecture
2. **RISC-V Architecture:** Work with RISC-V instruction set, privileged modes, and hardware timer integration
3. **Real-Time Systems:** Implement and validate multi-tasking with FreeRTOS scheduler
4. **Embedded Development:** Use industry-standard tools (GNU toolchain, QEMU) in an embedded systems workflow

---

## Project Structure

```bash
freertos_riscv_port/
├── main.c                          # Application entry point with two example tasks
├── FreeRTOSConfig.h               # FreeRTOS kernel configuration
├── Makefile                        # Build configuration
├── riscv.ld                       # RISC-V linker script
├── start.S                        # RISC-V startup/bootstrap code
├── run.sh                         # QEMU execution script
│
├── Source/                        # FreeRTOS kernel source code
│   ├── tasks.c                   # Task management
│   ├── queue.c                   # Queue implementation
│   ├── list.c                    # Linked list utilities
│   ├── timers.c                  # Software timer support
│   ├── portable/                 # Architecture-specific code
│   │   ├── MemMang/heap_4.c     # Memory allocator
│   │   └── GCC/RISCV/           # (Other RISC-V ports)
│   └── include/                  # FreeRTOS public headers
│
└── portable/                      # Project-specific RISC-V port
    ├── port.c                    # RISC-V port implementation
    ├── portASM.S                 # RISC-V assembly routines
    ├── portmacro.h               # Architecture macros
    ├── portContext.h             # Context structure definitions
    └── chip_specific_extensions/ # Chip-specific headers
        └── RISCV_MTIME_CLINT_no_extensions/
            └── freertos_risc_v_chip_specific_extensions.h
```

---

## Requirements & Prerequisites

### Software Requirements

- **RISC-V GNU Toolchain:**
  - `riscv64-unknown-elf-gcc` - C compiler
  - `riscv64-unknown-elf-as` - Assembler
  - `riscv64-unknown-elf-ld` - Linker
  - `riscv64-unknown-elf-objcopy` - Binary utilities

- **QEMU:** RISC-V 64-bit system emulator (`qemu-system-riscv64`)

- **Build Tools:** GNU Make

---

## Building the Project

### Clean Build

```bash
make clean
make all
```

### Build Output

The build process produces:

- **`freertos_riscv.elf`** - ELF executable (with debug symbols)
- **`freertos_riscv.bin`** - Raw binary image
- **`freertos_riscv.asm`** - Disassembly listing for debugging
- **`*.o`** - Object files

### Compiler Flags

The Makefile uses the following key flags:

```makefile
CFLAGS = -march=rv64imac_zicsr -mabi=lp64 -mcmodel=medany
```

- `rv64imac_zicsr`: RV64 with M (multiply), A (atomic), C (compressed), Zicsr (CSR) extensions
- `lp64`: Long pointer, 64-bit integer ABI
- `mcmodel=medany`: Medium code model for larger projects

---

## Running the Project

### Quick Start

```bash
# Option 1: Using the provided script
./run.sh

# Option 2: Manual QEMU invocation
qemu-system-riscv64 \
    -machine virt \
    -cpu rv64 \
    -smp 1 \
    -m 128M \
    -nographic \
    -bios none \
    -kernel freertos_riscv.elf
```

### Expected Output

```bash
Starting FreeRTOS on RISC-V in QEMU...

--- FreeRTOS on RISC-V Starting ---
Tasks created, starting scheduler...
Task 1 is running
Task 2 is running
Task 2 is running
Task 1 is running
...
```

### Stopping Execution

Press `Ctrl+A` then `X` to exit QEMU.

---

## Architecture & Design

### System Architecture

```bash
┌─────────────────────────────────────────┐
│        Application (main.c)             │
│   - Task 1: 1000ms period               │
│   - Task 2: 500ms period                │
└────────────────┬────────────────────────┘
                 │
┌────────────────┴────────────────────────┐
│     FreeRTOS Kernel (Source/)           │
│   - Task scheduler                      │
│   - Queue management                    │
│   - Timer services                      │
└────────────────┬────────────────────────┘
                 │
┌────────────────┴────────────────────────┐
│   RISC-V Port (portable/)               │
│   - Context switching                   │
│   - Interrupt handling                  │
│   - Machine timer (mtime/mtimecmp)      │
└────────────────┬────────────────────────┘
                 │
┌────────────────┴────────────────────────┐
│   Hardware (QEMU RISC-V virt machine)   │
│   - CLINT: Core Local Interrupt Timer   │
│   - UART: Serial I/O (0x10000000)       │
└─────────────────────────────────────────┘
```

### Memory Layout

Defined in [riscv.ld](riscv.ld):

```bash
Address             Section         Size
─────────────────────────────────────────
0x80000000         .text            ~
                   .rodata
                   .data
                   .bss
                   + Stack          4KB + 64KB stack
```

- **Origin:** `0x80000000` (QEMU virt RAM base)
- **Total Size:** 128 MB
- **Stack Size:** 64 KB

### Interrupt & Timer Handling

The port uses RISC-V's machine-mode timer:

- **MTIME Address:** `0x0200BFF8` (read-only counter)
- **MTIMECMP Address:** `0x02004000` (timer compare register)
- **Interrupt Vector:** `freertos_risc_v_trap_handler` (set in mtvec)

---

## Configuration

### FreeRTOS Configuration ([FreeRTOSConfig.h](FreeRTOSConfig.h))

| Setting | Value | Purpose |
|---------|-------|---------|
| `configCPU_CLOCK_HZ` | 10,000,000 | CPU frequency for timing calculations |
| `configTICK_RATE_HZ` | 1,000 | FreeRTOS tick rate (1000 ticks/second) |
| `configTOTAL_HEAP_SIZE` | 16 KB | Dynamic memory pool size |
| `configMINIMAL_STACK_SIZE` | 128 words | Minimum task stack size |
| `configMAX_PRIORITIES` | 7 | Maximum priority levels |
| `configUSE_PREEMPTION` | 1 (enabled) | Preemptive multitasking |
| `configCHECK_FOR_STACK_OVERFLOW` | 2 | Stack overflow detection level |

### Adding Your Own Configuration

Edit [FreeRTOSConfig.h](FreeRTOSConfig.h) to:

- Adjust heap size for more tasks
- Change tick rate for different timing granularity
- Enable additional FreeRTOS features (queues, semaphores, etc.)

---

## Application Example: Multi-tasking

The provided [main.c](main.c) implements two concurrent tasks:

```c
// Task 1: Runs every 1000ms
void vTask1(void *pvParameters) {
    TickType_t xLastWakeTime = xTaskGetTickCount();
    for(;;) {
        print_uart("Task 1 is running\r\n");
        vTaskDelayUntil(&xLastWakeTime, pdMS_TO_TICKS(1000));
    }
}

// Task 2: Runs every 500ms (higher priority)
void vTask2(void *pvParameters) {
    TickType_t xLastWakeTime = xTaskGetTickCount();
    for(;;) {
        print_uart("Task 2 is running\r\n");
        vTaskDelayUntil(&xLastWakeTime, pdMS_TO_TICKS(500));
    }
}
```

Both tasks use `vTaskDelayUntil()` for precise periodic execution, demonstrating:

- **Context Switching:** The scheduler switches between tasks
- **Preemption:** Task 2 (higher priority) can interrupt Task 1
- **Time Management:** FreeRTOS tracks and enforces timing constraints

### Validation Observations

When running, you should observe:

1. Both tasks print at their respective intervals
2. Task 2 output appears more frequently (every 500ms vs 1000ms)
3. Output continues indefinitely until QEMU is stopped
4. No crashes or assertion failures

---

## Debugging

### Disassembly Inspection

View the generated assembly code:

```bash
riscv64-unknown-elf-objdump -d freertos_riscv.elf | less
```

Or use the generated disassembly file:

```bash
less freertos_riscv.asm
```

### GDB Debugging (Advanced)

```bash
# Terminal 1: Start QEMU with GDB server
qemu-system-riscv64 -machine virt -cpu rv64 -kernel freertos_riscv.elf -S -gdb tcp::1234

# Terminal 2: Connect with GDB
riscv64-unknown-elf-gdb freertos_riscv.elf
(gdb) target remote :1234
(gdb) break main
(gdb) continue
```

### Common Issues

| Issue | Cause | Solution |
|-------|-------|----------|
| "Command not found: riscv64-unknown-elf-gcc" | Toolchain not installed | Install RISC-V toolchain |
| "qemu-system-riscv64: could not load kernel" | Wrong ELF file path | Use `make all` first |
| No output in QEMU | UART address incorrect | Verify `0x10000000` in main.c |
| Crash at startup | Stack overflow or mem error | Increase heap size in FreeRTOSConfig.h |

---

## Key Components Explained

### Startup Code ([start.S](start.S))

- Sets up the stack pointer
- Clears BSS (uninitialized data)
- Configures trap vector for FreeRTOS handler
- Enables machine-mode interrupts globally
- Jumps to `main()`

### RISC-V Port ([portable/port.c](portable/port.c))

- Implements context structure for task state
- Defines tick ISR and context switching
- Manages machine timer (mtime/mtimecmp)
- Provides critical section entry/exit

### Linker Script ([riscv.ld](riscv.ld))

- Maps sections (.text, .data, .bss) to RAM
- Defines stack and heap regions
- Sets FreeRTOS-specific symbols for interrupt stack

---

## Learning Outcomes

Upon completing this project, you will understand:

**OS Porting Concepts**

- Adapting kernel code to new architectures
- Architecture-specific interrupt and context handling

**RISC-V Architecture**

- Instruction set and privilege modes
- CSR (Control/Status Registers) manipulation
- Machine mode timer and interrupt handling

**Real-Time Systems**

- Task scheduling and preemption
- Context switching mechanisms
- Timing and synchronization primitives

**Embedded Development Workflow**

- Cross-compilation for target architectures
- Linker scripts and memory layout
- Hardware abstraction and device simulation

---

## References

- [FreeRTOS Official Documentation](https://www.freertos.org/)
- [RISC-V Instruction Set Manual](https://riscv.org/technical/specifications/)
- [QEMU RISC-V Documentation](https://wiki.qemu.org/Documentation/Platforms/RISC-V)
- Course Lecture Materials (06, 07, 08 - Parts 2)

---

## License

This project uses **FreeRTOS**, which is provided under the MIT License. See [Source/LICENSE.md](Source/LICENSE.md) for details.
