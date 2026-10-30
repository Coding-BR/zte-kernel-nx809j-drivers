# `syna_dev_set_up_input_device` — offline-exact revalidation

This package records microtask `157` for stock entry `001136c4`.

The candidate matches the stock AArch64 body at 245 instructions/980 bytes,
including 38 relocations, symbol size and the observed printk-format surface.
KCFI is a deliberate negative-evidence match: both stock and candidate expose
the same `NO_VALID_KCFI_PREAMBLE` condition caused by adjacent-symbol overlap;
neither side has a type ID to compare.

The direct host harness covers 10 setup, replacement, parameter and failure
contracts. Validation gates passed:

- canonical Docker build, two cycles;
- AArch64 opcode, relocation and symbol-size comparison;
- KCFI absence/surface comparison;
- ASan/UBSan direct-source host harness, two cycles and ten cases;
- strict Joern function gate.

Hardware validation remains deferred. Input-core, managed-device, dispatcher
and mutex APIs are represented by deterministic host stubs.
