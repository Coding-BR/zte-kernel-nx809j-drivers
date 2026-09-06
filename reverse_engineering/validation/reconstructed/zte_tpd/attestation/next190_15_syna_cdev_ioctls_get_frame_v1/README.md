# Microtask 190_15: `syna_cdev_ioctls` route `0x15`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x15` as an inline get-frame path: it checks feature
and lifecycle state, copies a timeout from userspace, waits for a queued touch
frame, validates the destination capacity, copies the frame, and releases the
queue entry. The fixture
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_15_get_frame.c`
models the observed queue/copy contract with explicit callbacks. It does not
pretend to emulate the stock TTBR0/TTBR1, DAIF, or `__arch_copy_*_user`
assembly sequences.

## Gates

- Joern parent scope: PASS.
- Joern route-only scope: FAIL because the inline route has no independent
  stock ELF symbol.
- Host harness: PASS, nine cases in two repetitions with Clang
  `clang-r536225`, ASan and UBSan.
- Canonical Docker build: PASS in two cycles with identical SHA-256
  `2317f773f2a28d35c1b164cac6f00d8d432941cc67f3b78687681dcd24e55e77` and
  size `30037472` bytes.
- Parent KCFI: BLOCKED. Stock `0x2af6cdbb`/`8584` bytes versus candidate
  `0xe513074c`/`7872` bytes.
- Parent AArch64 comparison: BLOCKED for symbol size, instructions, and
  relocations; stock has 2146 instructions and candidate 1968.
- Smartphone: NOT RUN by design.

## Promotion rule

Do not promote this fixture until the parent dispatcher reaches KCFI and exact
AArch64/relocation parity, or a reproducible block-level comparator proves the
route against the stock inline range.
