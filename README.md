# FreeRTOS on RISC-V (QEMU)

A port of the FreeRTOS kernel to a 64-bit RISC-V target, running bare metal on the QEMU `virt` machine. The project boots from its own startup code, installs the FreeRTOS trap handler, drives the scheduler tick from the CLINT machine timer, and runs two periodic tasks at different priorities that print to the emulated UART.

| | |
|---|---|
| **Course** | CENG507 Embedded Systems |
| **Target** | RV64IMAC (`rv64imac_zicsr`, ABI `lp64`), machine mode |
| **Platform** | QEMU `virt` machine, 1 hart, 128 MB RAM |
| **Kernel** | FreeRTOS, `heap_4` allocator, preemptive scheduler at 1 kHz |
| **Tested on** | macOS; Fedora 44 with xPack GCC 15.2.0 and QEMU 10.2 |

## Sample output

```text
$ make PREFIX=riscv-none-elf-
$ ./run.sh
Starting FreeRTOS on RISC-V in QEMU...


--- FreeRTOS on RISC-V Starting ---
Tasks created, starting scheduler...
Task 2 is running
Task 1 is running
Task 2 is running
Task 2 is running
Task 1 is running
Task 2 is running
Task 2 is running
Task 1 is running
Task 2 is running
...
```

Task 2 prints every 500 ms and Task 1 every 1000 ms, so Task 2 appears twice as often. When both wake on the same tick, Task 2 prints first because it has the higher priority. See [Scheduling behaviour](#scheduling-behaviour) for the full timeline.

Image size of the built firmware:

```text
$ riscv-none-elf-size freertos_riscv.elf
   text    data     bss     dec     hex filename
  13014      24   17208   30246    7626 freertos_riscv.elf
```

Most of `.bss` is the 16 KB FreeRTOS heap.

## Contents

- [Repository layout](#repository-layout)
- [Requirements](#requirements)
- [Setup](#setup)
  - [Linux](#linux)
  - [macOS](#macos)
  - [Windows](#windows)
- [Building](#building)
- [Running](#running)
- [How it works](#how-it-works)
- [Configuration](#configuration)
- [Debugging with GDB](#debugging-with-gdb)
- [Troubleshooting](#troubleshooting)
- [References](#references)
- [License](#license)

## Repository layout

```text
CENG507-Project/
├── main.c                 Application: UART output, two tasks, hooks
├── FreeRTOSConfig.h       Kernel configuration (tick rate, heap, timer addresses)
├── start.S                Reset entry: stack, .bss clear, mtvec, jump to main
├── riscv.ld               Linker script for RAM at 0x80000000
├── Makefile               Cross-compilation rules
├── run.sh                 Launches the firmware in QEMU
├── portable/              RISC-V port used by this project
│   ├── port.c             Timer setup, scheduler start, ISR stack
│   ├── portASM.S          Trap handler and context switch
│   ├── portContext.h      Register save and restore macros
│   ├── portmacro.h        Port types and critical section macros
│   └── chip_specific_extensions/
│       └── RISCV_MTIME_CLINT_no_extensions/   Selected by the Makefile
└── Source/                Upstream FreeRTOS kernel
    ├── tasks.c, queue.c, list.c, timers.c     Compiled into the image
    ├── portable/MemMang/heap_4.c              Compiled into the image
    └── include/                               Kernel headers
```

Only the files listed in the `Makefile` are compiled. The rest of `Source/` is the unmodified upstream kernel tree, kept for reference.

## Requirements

| Tool | Purpose |
|---|---|
| RISC-V bare-metal GCC with newlib | Cross compiler, assembler, linker, `objcopy`, `objdump` |
| `qemu-system-riscv64` | Emulates the `virt` board |
| GNU Make | Runs the build |
| Bash | Runs `run.sh` (optional, the QEMU command can be typed directly) |

The toolchain must ship newlib, because the link step uses `-lc -lgcc -lnosys`. Two toolchains are known to work:

| Toolchain | Command prefix | How to build with it |
|---|---|---|
| RISC-V GNU toolchain (Homebrew, source builds) | `riscv64-unknown-elf-` | `make` |
| [xPack GNU RISC-V Embedded GCC](https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack) | `riscv-none-elf-` | `make PREFIX=riscv-none-elf-` |

xPack provides prebuilt archives for Linux, macOS and Windows, installs without administrator rights, and is the simplest choice on Linux and Windows.

> The `gcc-riscv64-linux-gnu` packages found in Fedora, Ubuntu and Debian do not work. They are Linux cross compilers without a C library for bare-metal targets, so linking fails on `-lc` and `-lnosys`.

## Setup

### Linux

**1. Install QEMU and Make**

Fedora:

```bash
sudo dnf install qemu-system-riscv make
```

Ubuntu or Debian:

```bash
sudo apt install qemu-system-misc make
```

**2. Install the xPack toolchain**

```bash
mkdir -p ~/.local/opt && cd ~/.local/opt
curl -LO https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack/releases/download/v15.2.0-1/xpack-riscv-none-elf-gcc-15.2.0-1-linux-x64.tar.gz
tar xzf xpack-riscv-none-elf-gcc-15.2.0-1-linux-x64.tar.gz
rm xpack-riscv-none-elf-gcc-15.2.0-1-linux-x64.tar.gz
echo 'export PATH="$HOME/.local/opt/xpack-riscv-none-elf-gcc-15.2.0-1/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

For ARM64 hosts, download the `linux-arm64` archive from the [releases page](https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack/releases) instead.

**3. Verify**

```bash
riscv-none-elf-gcc --version
qemu-system-riscv64 --version
```

### macOS

Install QEMU and the RISC-V GNU toolchain with Homebrew:

```bash
brew install qemu
brew tap riscv-software-src/riscv
brew install riscv-tools
```

This provides the `riscv64-unknown-elf-` tools, so plain `make` works. The xPack toolchain is also available for macOS (`darwin-arm64` and `darwin-x64` archives) if you prefer it.

### Windows

Two options. WSL2 is recommended because it behaves exactly like the Linux setup.

#### Option A: WSL2 (recommended)

1. Open PowerShell as administrator and install WSL with Ubuntu, then restart:

   ```powershell
   wsl --install
   ```

2. Open the Ubuntu terminal and follow the [Linux](#linux) steps using the Ubuntu or Debian commands.

3. Clone the repository inside the WSL file system (for example `~/projects`), not under `/mnt/c/`. Builds are much faster there and line endings stay intact.

#### Option B: Native Windows

1. Install [MSYS2](https://www.msys2.org/) and, from the MSYS2 terminal, install Make:

   ```bash
   pacman -S make
   ```

2. Download `xpack-riscv-none-elf-gcc-<version>-win32-x64.zip` from the [xPack releases page](https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack/releases) and extract it, for example to `C:\xpack`.

3. Install QEMU for Windows from [qemu.weilnetz.de](https://qemu.weilnetz.de/w64/). The default location is `C:\Program Files\qemu`.

4. Add both to `PATH` in the MSYS2 terminal (add the line to `~/.bashrc` to keep it):

   ```bash
   export PATH="/c/xpack/xpack-riscv-none-elf-gcc-15.2.0-1/bin:/c/Program Files/qemu:$PATH"
   ```

5. Stop Git from converting line endings before cloning, otherwise `run.sh` fails with `$'\r': command not found`:

   ```bash
   git config --global core.autocrlf input
   ```

Run every build and run command from the MSYS2 terminal. `make clean` uses `rm -f`, which is not available in Command Prompt or PowerShell.

## Building

From the repository root:

```bash
make PREFIX=riscv-none-elf-        # xPack toolchain
make                               # riscv64-unknown-elf- toolchain
```

Build artifacts:

| File | Description |
|---|---|
| `freertos_riscv.elf` | Executable with debug symbols, loaded by QEMU |
| `freertos_riscv.bin` | Raw binary image |
| `freertos_riscv.asm` | Full disassembly listing |
| `*.o` | Object files next to their sources |

Remove all artifacts with:

```bash
make clean
```

Key compiler flags:

| Flag | Meaning |
|---|---|
| `-march=rv64imac_zicsr` | RV64 base with multiply, atomics, compressed instructions and CSR access |
| `-mabi=lp64` | 64-bit `long` and pointers, no hardware floating point |
| `-mcmodel=medany` | Code can be placed anywhere, required for the `0x80000000` load address |
| `-ffunction-sections -fdata-sections` with `--gc-sections` | Removes unused code and data from the image |

## Running

```bash
./run.sh
```

Or call QEMU directly, which also works from PowerShell or Command Prompt on Windows:

```bash
qemu-system-riscv64 -machine virt -cpu rv64 -smp 1 -m 128M -nographic -bios none -kernel freertos_riscv.elf
```

`-bios none` skips OpenSBI so the firmware starts directly in machine mode at `0x80000000`. `-nographic` connects the UART to the terminal.

To quit QEMU, press `Ctrl+A`, release, then press `X`.

## How it works

### Boot sequence

1. QEMU loads the ELF at `0x80000000` and jumps to `_start` in [start.S](start.S).
2. `_start` sets the stack pointer to a 4 KB boot stack, clears `.bss`, writes `freertos_risc_v_trap_handler` to `mtvec`, sets `mstatus.MIE`, and calls `main`.
3. `main` creates both tasks and calls `vTaskStartScheduler()`.
4. The port programs `mtimecmp` for the first tick, enables the machine timer interrupt and restores the context of the highest priority ready task. From this point the kernel owns the CPU.

### Memory map

| Address | Region |
|---|---|
| `0x02004000` | CLINT `mtimecmp` (hart 0) |
| `0x0200BFF8` | CLINT `mtime` |
| `0x10000000` | NS16550A UART transmit register |
| `0x80000000` | Start of RAM: `.text`, `.rodata`, `.data`, `.bss` |
| after `.bss` | 64 KB region reserved by [riscv.ld](riscv.ld), used as the interrupt stack (`__freertos_irq_stack_top`) |

Task stacks are allocated from the 16 KB `heap_4` pool inside `.bss`.

### Tick and context switch

The tick comes from the CLINT machine timer. QEMU's `mtime` runs at 10 MHz, which matches `configCPU_CLOCK_HZ`, so each 1 ms tick is 10,000 timer counts. On every timer interrupt, the trap handler in [portable/portASM.S](portable/portASM.S) saves the running task's registers, switches to the interrupt stack, advances `mtimecmp`, increments the tick count, and restores whichever task the scheduler selects.

### Scheduling behaviour

| Task | Priority | Period | Stack |
|---|---|---|---|
| Task 1 | 1 | 1000 ms | 128 words (1 KB) |
| Task 2 | 2 | 500 ms | 128 words (1 KB) |
| Timer service task | 6 | on demand | 128 words |
| Idle task | 0 | runs when nothing else is ready | 128 words |

Both tasks use `vTaskDelayUntil()`, which wakes them at fixed points in time, so their periods do not drift. Timeline of the first second:

| Time | Tasks woken | Output |
|---|---|---|
| 0 ms | Task 1, Task 2 | `Task 2 is running`, then `Task 1 is running` |
| 500 ms | Task 2 | `Task 2 is running` |
| 1000 ms | Task 1, Task 2 | `Task 2 is running`, then `Task 1 is running` |

The pattern then repeats every second.

## Configuration

Main settings in [FreeRTOSConfig.h](FreeRTOSConfig.h):

| Setting | Value | Purpose |
|---|---|---|
| `configCPU_CLOCK_HZ` | 10,000,000 | `mtime` frequency on QEMU `virt`, used for tick timing |
| `configTICK_RATE_HZ` | 1000 | 1 ms tick |
| `configMTIME_BASE_ADDRESS` | `0x0200BFF8` | CLINT `mtime` register |
| `configMTIMECMP_BASE_ADDRESS` | `0x02004000` | CLINT `mtimecmp` register |
| `configTOTAL_HEAP_SIZE` | 16 KB | Pool for task stacks and kernel objects |
| `configMINIMAL_STACK_SIZE` | 128 words | Stack depth for the idle and timer tasks |
| `configMAX_PRIORITIES` | 7 | Priority levels 0 to 6 |
| `configUSE_PREEMPTION` | 1 | Higher priority tasks preempt lower ones |
| `configUSE_TIMERS` | 1 | Enables software timers and the timer service task |
| `configCHECK_FOR_STACK_OVERFLOW` | 2 | Pattern check, reported through `vApplicationStackOverflowHook` |

If you add tasks or larger stacks, increase `configTOTAL_HEAP_SIZE` first. When the heap runs out, `xTaskCreate()` returns an error, and `main.c` does not check it, so the task is simply missing from the output.

## Debugging with GDB

Start QEMU halted, with a GDB server on port 1234:

```bash
qemu-system-riscv64 -machine virt -cpu rv64 -smp 1 -m 128M -nographic -bios none \
    -kernel freertos_riscv.elf -s -S
```

In a second terminal, connect GDB from the same toolchain:

```bash
riscv-none-elf-gdb freertos_riscv.elf      # or riscv64-unknown-elf-gdb
(gdb) target remote :1234
(gdb) break main
(gdb) continue
```

Useful breakpoints are `vTask1`, `vTask2`, `freertos_risc_v_trap_handler` and `vApplicationStackOverflowHook`. The globals `task1_counter` and `task2_counter` count how many times each task has run.

The generated `freertos_riscv.asm` is also useful for checking what the compiler produced.

## Troubleshooting

| Problem | Cause | Fix |
|---|---|---|
| `riscv64-unknown-elf-gcc: No such file or directory` | Toolchain uses a different prefix, or is not on `PATH` | Build with `make PREFIX=riscv-none-elf-` and check `PATH` |
| `cannot find -lc` or `cannot find -lnosys` | Toolchain has no newlib, for example `gcc-riscv64-linux-gnu` | Use the xPack toolchain |
| `qemu-system-riscv64: command not found` | QEMU RISC-V emulator not installed | Install `qemu-system-riscv` (Fedora) or `qemu-system-misc` (Ubuntu, Debian) |
| `could not load kernel 'freertos_riscv.elf'` | Firmware not built, or QEMU started from another directory | Run `make` first and start QEMU from the repository root |
| `$'\r': command not found` when running `run.sh` | Windows line endings | Set `git config core.autocrlf input` and clone again, or run `sed -i 's/\r$//' run.sh` |
| QEMU starts but prints nothing | Wrong machine options or UART address | Use `-machine virt -bios none` and keep the UART at `0x10000000` |
| Output stops after `STACK OVERFLOW: <name>` | A task used more stack than it was given | Increase that task's stack depth in `xTaskCreate()` |
| Linker warning: `LOAD segment with RWX permissions` | All sections share one RWX memory region | Harmless for this target, can be ignored |

## References

- [FreeRTOS documentation](https://www.freertos.org/Documentation/00-Overview)
- [FreeRTOS RISC-V port notes](https://www.freertos.org/Using-FreeRTOS-on-RISC-V.html)
- [RISC-V specifications](https://riscv.org/specifications/)
- [QEMU RISC-V `virt` machine](https://www.qemu.org/docs/master/system/riscv/virt.html)
- [xPack GNU RISC-V Embedded GCC](https://xpack-dev-tools.github.io/riscv-none-elf-gcc-xpack/)

## License

The FreeRTOS kernel in `Source/` and the port in `portable/` are distributed under the MIT License. See [Source/LICENSE.md](Source/LICENSE.md).
