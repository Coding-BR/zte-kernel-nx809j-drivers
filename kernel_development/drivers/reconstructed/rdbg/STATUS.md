# rdbg — reconstruction in progress

Status: INCOMPLETE.

- Stock analysis covers 8/8 functions. One function, on_interrupt_from at 00101600, has a C microtask candidate.
- That function passed Docker reproducible build, exact assembly, KCFI type-ID, Ghidra decompiled/P-Code, and strict scoped Joern gates. Evidence is under reverse_engineering/validation/reconstructed/rdbg/attestation/on_interrupt_from_microtask_20261028.
- The Docker-built partial test module contains a test-only callback anchor. It is not a canonical module and must not be promoted or loaded on a device.
- Seven stock functions remain unmapped: rdbg_probe, rdbg_read, rdbg_write, rdbg_open, rdbg_release, init_module, cleanup_module.
- Independent review, full-module parity, device-tree variant selection, and hardware validation remain pending. No hardware validation has been performed.
