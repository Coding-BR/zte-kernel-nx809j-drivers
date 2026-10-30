# Exact attestation: `gf_probe`

Target: `gf_probe@0x00101554`. The stock body is 1040 bytes and 260 AArch64 instructions.

The reconstruction preserves the stock global `gf` object layout, delayed-workqueue format and delay, minor allocation/device creation flow, input capability order, rollback, cleanup, and version/error logging. Ghidra stock pseudocode and P-Code were used to recover the overlapping 64-bit initialization stores and the `device_create` parent loaded from `gf->pdev`.

Validation result: `CORE_GATES_PASS`. AArch64 instructions and relocations, input identity, Joern, KCFI handling, two clean Docker builds, and the host harness passed reproducibly. The host stubs retain a separate three-argument `alloc_workqueue` adapter only for the unit-test build; the kernel path uses the stock four-argument format call.

This is offline/static evidence only. The Docker adapter retains its independent acquisition-chain limitation when stock/Ghidra inputs are not copied into the run root. No hardware-execution or 100% equivalence claim is made.
