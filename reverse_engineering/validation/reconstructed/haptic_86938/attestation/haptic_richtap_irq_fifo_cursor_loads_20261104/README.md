# Richtap IRQ FIFO cursor state loads — 2026-11-04

## Finding

The C6 exact IRQ body retains two ordinary byte loads of the current FIFO cursor state. The stock Ghidra decompilation and stock AArch64 assembly show the same accesses. The current candidate disassembly generated from the repository module with the canonical Docker toolchain confirms them at VMA `0xafe8` (test for `0xff`) and `0xb1f4` (test for `U`).

The candidate `richtap_update_fifo_data` helper separately uses `LDARB` at `0x8300`. That acquire covers the helper's state read and the associated payload copy. It does not cover the two additional loads in `irq_handle_stock_exact`, which remain byte-for-byte stock instructions.

## Control-flow role

- The `0xff` test can enter the stock path that disables RTP AEI and clears the loop flag.
- The `U` test decides whether the IRQ loop calls the FIFO helper again.
- The direct loads select control flow only. If the `U` check succeeds, the path re-enters `richtap_update_fifo_data`, which checks state again with `LDARB` before copying payload. A stale `U` can skip one additional helper iteration; a stale `0xff` can select the AEI-disable/loop-clear path. No runtime stall or lost stream has been observed.

The candidate's global IRQ/stop mutex serializes kernel IRQ, worker, and reset paths. The mapped HAL producer does not take that mutex. Its analyzed `U` publication is an ordinary `STRB`, and its `AA`/`FF` observations are ordinary `LDRB`; therefore the full shared-memory protocol remains unproven. These IRQ loads are inherited stock behavior, not a candidate-only regression.

## Disposition

No source or map status changed, and no rebuild was needed. Keep `irq_handle_stock_exact` aligned with stock until producer-side ordering evidence or a controlled protocol test justifies a deviation. If these loads are hardened later, mark the IRQ mapping as a reviewed deviation and validate the module in the canonical Docker environment.

The machine-readable review binds the current C6 candidate, map, stock module, Ghidra output, HAL writer review, and Docker-generated disassembly.
