# Exact attestation: `goodixfp_init_drm_notifier`

Target: `goodixfp_init_drm_notifier@0x00101ac0`. The stock body is 312 bytes and 78 AArch64 instructions.

The reconstruction preserves the stock callback ABI and `container_of` offset, the 25-iteration panel retry loop, `usleep_range_state(1000000, 1001000, 2)`, fixed log strings, panel lookup argument, notifier arguments `1, 3`, callback context, cookie store, and failure logging. Ghidra stock pseudocode and P-Code were used to recover the control-flow shape and observable constants.

Validation result: `CORE_GATES_PASS`. AArch64 instructions and relocations, input identity, Joern, KCFI type ID `0xa607748c`, two clean Docker builds, and the host harness passed reproducibly.

This is offline/static evidence only. The Docker adapter retains its independent acquisition-chain limitation when stock/Ghidra inputs are not copied into the run root. No hardware-execution or 100% equivalence claim is made.
