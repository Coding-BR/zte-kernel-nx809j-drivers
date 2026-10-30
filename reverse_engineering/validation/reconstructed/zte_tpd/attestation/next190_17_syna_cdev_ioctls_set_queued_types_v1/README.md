# Microtask 190_17: `syna_cdev_ioctls` route `0x17`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x17` as the queued-report bitmap update path. It
returns success without changing the bitmap when lifecycle state is `3`,
requires a declared capacity greater than `0xff`, accepts a non-empty bitmap
of at most `0x100` bytes, zero-fills the remaining bitmap bytes, and invokes
the data-duplicator callback once for each byte equal to `1`. Copy failures
return `-52`; callback errors are propagated. The isolated fixture is
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_17_set_queued_types.c`.

## Gates

- Joern parent scope: PASS.
- Joern route-only scope: FAIL because the inline route has no independent
  stock ELF symbol.
- Host harness: PASS, eight cases in two repetitions with Clang
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

Do not promote this fixture until parent KCFI and exact AArch64/relocation
parity are repaired, or a reproducible block-level comparator proves the
inline route against the stock range.
