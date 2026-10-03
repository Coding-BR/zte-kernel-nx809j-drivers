# Microtask 190_14: `syna_cdev_ioctls` route `0x14`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra maps route `0x14` to `syna_cdev_ioctl_raw_write` at stock entry
`001178d8`. The callsite forwards `tcm_hcd`, `buffer`, `request`, and the
32-bit `length` in that order. The isolated fixture is
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_14_raw_write_dispatch.c`.
It models only this forwarding contract; the raw-write body remains the
separate microtask 194.

## Gates

- Joern parent scope: PASS with the full reconstructed dispatcher tree.
- Joern route-only scope: FAIL because route `0x14` is a basic block without
  an independent stock ELF symbol.
- Host harness: PASS, two cases in two repetitions with Clang `clang-r536225`,
  ASan and UBSan.
- Canonical Docker build: PASS in two cycles. Both artifacts are SHA-256
  `2317f773f2a28d35c1b164cac6f00d8d432941cc67f3b78687681dcd24e55e77`,
  size `30037472` bytes. KCFI and Assembly evidence in this directory is
  valid for that exact candidate SHA.
- Parent KCFI: BLOCKED. Stock `0x2af6cdbb`/`8584` bytes versus candidate
  `0xe513074c`/`7872` bytes.
- Parent AArch64 comparison: BLOCKED for symbol size, instructions, and
  relocations; stock has 2146 instructions and candidate 1968.
- Smartphone: NOT RUN by design.

## Promotion rule

Do not promote this route or merge it into `syna_cdev_ioctls` until parent
KCFI and exact AArch64/relocation parity are repaired, or a reproducible
basic-block comparator proves route `0x14` against its stock callsite.
