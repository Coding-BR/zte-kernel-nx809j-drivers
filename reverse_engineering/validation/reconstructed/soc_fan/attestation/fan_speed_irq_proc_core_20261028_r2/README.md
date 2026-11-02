# `fan_speed_irq_proc` method checkpoint

## Result

The hard driver protocol returned `CORE_GATES_PASS` for `fan_speed_irq_proc`, `fan_enable_show` and `fan_level_show`. All eight automated gates passed: input identity, map identity, scoped Joern analysis, Joern usage slice, reproducible Docker build, assembly and relocation comparison, candidate Ghidra P-Code comparison, and KCFI. The reconstruction map records these three method results and leaves the other twelve stock functions pending.

Two clean Docker builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225` produced byte-identical modules with SHA-256 `7726e79967243b5ca90e45b8e1d2e947a36085fb1d31466b8afa8586f5cfd8c2` (183,768 bytes). The full gate output, build outputs, logs, and comparisons are in this directory. The candidate Ghidra export is in `../fan_speed_irq_proc_candidate_ghidra_20261028_r2/exports/soc_fan.ko/`.

## Reconstructed behavior

The handler loads the state pointer from `dev_id + 0x08`, increments the 32-bit counter at state offset `0x04` atomically, and returns `IRQ_HANDLED`. KCFI reports the stock callback type ID `0xd2f00be1`, matching `irqreturn_t (int, void *)`. The source uses the kernel `atomic_inc` primitive; an extra explicit `prefetchw` initially emitted an instruction absent from stock, so it was removed. The resulting function body matches the stock 60-byte AArch64 assembly, including its LSE and LL/SC paths, and the candidate Ghidra body was extended to the independently verified ELF symbol extent before comparison.

The typed `fan_speed_irq_proc_kcfi_anchor` remains temporary scaffolding until the stock IRQ registration and callback table are reconstructed. It preserves the callback type but does not claim that the surrounding registration objects match.

## Remaining work

This is a method-level checkpoint, not a complete `soc_fan` reconstruction. The protocol's promotion decision is `NOT_AUTHORIZED`. Callback-table recovery, a direct host harness, independent review, KMI type review, LLVM IR diagnosis, and a semantic-counterexample search remain outstanding; hardware validation is out of scope for this static checkpoint. Twelve of the driver's fifteen stock functions remain pending in the method map, and the other difficult drivers still need reconstruction.

The job definition is `workspace_tools/reconstruction_pipeline/hard_driver_job.soc_fan_fan_speed_irq_proc_20261028.json`; the method map is `../soc_fan_method_map_20261028_fan_speed_irq_proc.json`.
