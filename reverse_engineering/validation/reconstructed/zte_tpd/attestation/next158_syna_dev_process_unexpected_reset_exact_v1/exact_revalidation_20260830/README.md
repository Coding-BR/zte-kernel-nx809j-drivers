# `syna_dev_process_unexpected_reset` — offline-exact revalidation

This package records microtask `158` for stock entry `00113a9c`.

The candidate matches the stock AArch64 body at 40 instructions/160 bytes,
including 10 relocations and ELF symbol size, and matches KCFI type
`0x9f93c40a`. The direct harness covers null context, inactive mode,
missing workqueue, first-reset queuing and duplicate-reset suppression.

Validation gates passed:

- canonical Docker build, two cycles;
- AArch64 opcode, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan direct-source host harness, two cycles and ten cases;
- strict Joern function gate.

Hardware and real workqueue execution remain deferred; queueing and logging
are represented by deterministic host stubs.
