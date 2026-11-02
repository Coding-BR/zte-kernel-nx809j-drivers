# Microtask 190_13: `syna_cdev_ioctls` route `0x13`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

The stock Ghidra decompilation maps route `0x13` to
`syna_cdev_ioctl_raw_read`. The callsite forwards the arguments in this exact
order: `tcm_hcd`, `buffer`, `request`, and a 32-bit `length`. The isolated
fixture is
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_13_raw_read_dispatch.c`.
It models only that forwarding contract; it does not claim to reconstruct the
body of `syna_cdev_ioctl_raw_read` (tracked separately as microtask 193).

## Gates

- Joern parent scope: PASS with the full reconstructed `syna_cdev_ioctls`
  source tree.
- Joern route-only scope: FAIL by design because route `0x13` is a basic block
  inside the stock ELF and has no independent stock symbol.
- Host harness: PASS, two cases in two repetitions, Clang `clang-r536225`,
  AddressSanitizer and UndefinedBehaviorSanitizer.
- Canonical Docker build: PASS in two cycles with identical SHA-256
  `2317f773f2a28d35c1b164cac6f00d8d432941cc67f3b78687681dcd24e55e77` and
  size `30037472` bytes.
- Parent KCFI: BLOCKED. Stock type ID is `0x2af6cdbb` and size is `8584`;
  candidate type ID is `0xe513074c` and size is `7872`.
- Parent AArch64 comparison: BLOCKED for symbol size, instructions, and
  relocations. Stock has 2146 instructions; candidate has 1968.
- Smartphone: NOT RUN by design.

## Promotion rule

Do not merge this fixture into `syna_cdev_ioctls` or mark the route PASS until
the parent dispatcher reaches KCFI and exact AArch64/relocation parity, or a
reproducible basic-block comparator proves route `0x13` against the stock
callsite. The full raw-read implementation remains an independent target.
