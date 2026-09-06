# `tpd_sysfs_fwimage_show` — offline-exact revalidation

This package records microtask `093` for stock entry `0010dedc`.

The candidate matches the stock AArch64 body at 68 instructions/272 bytes,
the eight normalized relocations, the ELF symbol size, and KCFI type
`0x30c400c0`. The Docker source snapshot was synchronized with the readable
source before the final two-cycle canonical build; the exact `.ko` body is
provided by the preserved `.S` implementation.

Validation gates passed:

- canonical Docker build, two cycles;
- AArch64 opcode, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan direct-source host harness, two cycles and four cases;
- strict Joern function gate.

Hardware validation remains deferred. Kernel sysfs, cdev state, `printk`,
allocator and mutex behavior are represented by deterministic host stubs.
