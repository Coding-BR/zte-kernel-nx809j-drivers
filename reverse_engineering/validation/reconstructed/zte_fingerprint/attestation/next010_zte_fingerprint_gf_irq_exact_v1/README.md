# Exact attestation: `gf_irq`

Target: `gf_irq@0x001014d8`, the threaded fingerprint IRQ callback. The stock body is 120 bytes and 30 AArch64 instructions.

The reconstruction preserves the callback ABI, wakeup event, stack-canary path, constant message `zte_fingerprint: gf_kernel, sendnlmsg\n`, `sendnlmsg` call, and `IRQ_HANDLED` return. The constant message was restored after the initial candidate used a formatted `__func__` string and produced a different body.

Validation result: `CORE_GATES_PASS`. Assembly, relocations, input identity, map identity, two clean Docker builds, Joern scoped analysis, Joern usage slices and KCFI comparison passed. The 30-function host harness passed reproducibly.

The independent Docker evidence adapter still reports its separate acquisition-chain limitation because the stock module/Ghidra export and transition document were not copied into that run root. This is offline/static evidence only and makes no hardware-execution or 100% equivalence claim.
