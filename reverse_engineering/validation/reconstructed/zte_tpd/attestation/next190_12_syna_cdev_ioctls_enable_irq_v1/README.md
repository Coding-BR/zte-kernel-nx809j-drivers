# Microtask 190_12: `syna_cdev_ioctls` route `0x12`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x12` as `syna_cdev_ioctl_enable_irq`. The recovered
logic validates the feature bit, rejects lifecycle state `3`, requires both
request fields to be at least four, rejects a missing callback, and refuses a
copy length above four. The copied control word then follows three paths:

- `1`: enable unless the IRQ state already has bit zero set; successful enable
  resets the shared IRQ value to zero;
- `0`: disable only when the IRQ state is exactly one; successful disable
  stores the recovered maximum IRQ value;
- any other value: invoke enable and store the control value clamped upward to
  the recovered maximum.

Negative callback results are returned unchanged. The isolated candidate is
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_12_enable_irq.c`.

## Gates

- Host harness: PASS, four test groups, Clang `clang-r536225`, ASan and UBSan.
- Canonical Docker build: recorded separately in this directory after two
  independent cycles.
- Joern: the parent dispatcher scope is the valid mapped scope. A route-only
  strict scope is not promoted because the stock ELF has no independent symbol
  for this basic block.
- KCFI and exact AArch64 comparison: inherited blocker from the parent
  dispatcher; they are not claimed for the route fixture.
- Smartphone: NOT RUN by design.

## Promotion rule

Do not merge this fixture into `syna_cdev_ioctls` or mark it PASS until the
parent KCFI/Assembly mismatch is repaired or a reproducible block-level
comparator proves the route against the stock basic block.
