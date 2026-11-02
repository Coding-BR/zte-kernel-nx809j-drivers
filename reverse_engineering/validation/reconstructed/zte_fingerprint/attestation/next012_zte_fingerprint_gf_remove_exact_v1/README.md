# Exact attestation: `gf_remove`

Target: `gf_remove@0x00101968`. The stock body is 340 bytes and 85 AArch64 instructions.

The reconstruction preserves the stock global `gf` teardown, fixed remove log, input unregister/free sequence, list unlink and poison stores, device/minor cleanup, notifier cancellation, delayed-work cancellation, workqueue destruction, and mutex lifetime. Ghidra stock pseudocode and P-Code were used to recover the direct global-object path and cleanup ordering.

Validation result: `CORE_GATES_PASS`. AArch64 instructions and relocations, input identity, Joern, KCFI, two clean Docker builds, and the host harness passed reproducibly.

This is offline/static evidence only. The Docker adapter retains its independent acquisition-chain limitation when stock/Ghidra inputs are not copied into the run root. No hardware-execution or 100% equivalence claim is made.
