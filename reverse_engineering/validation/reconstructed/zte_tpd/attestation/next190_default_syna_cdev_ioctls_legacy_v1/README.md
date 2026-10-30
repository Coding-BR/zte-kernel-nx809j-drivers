# Microtask 190_default: `syna_cdev_ioctls` legacy fallback

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra shows that an opcode outside the supported dispatcher map reaches
`syna_cdev_ioctl_dispatch`, emits the dispatcher diagnostic and returns
`-22` (`EINVAL`). There is no legacy operation or callback in this path.

The isolated fixture
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_default_legacy.c`
models the return contract. Logging is intentionally outside the host fixture;
the stock log string and surrounding lock/return path remain represented in
the parent Ghidra evidence.

## Gates

- Joern parent scope: **PASS**, with zero parse problems.
- Joern route-only scope: **FAIL/BLOCKED** because this route is an inline
  default block and has no independent stock ELF symbol.
- Host harness: **PASS**, three cases in two repetitions with Clang
  `clang-r536225`, AddressSanitizer and UndefinedBehaviorSanitizer.
- Canonical Docker build: **PASS** in two cycles. Artifact SHA-256:
  `2317f773f2a28d35c1b164cac6f00d8d432941cc67f3b78687681dcd24e55e77`;
  size `30037472` bytes.
- Parent KCFI: **BLOCKED**: stock `0x2af6cdbb`/8584 versus candidate
  `0xe513074c`/7872.
- Parent AArch64 comparison: **BLOCKED** on `symbol_size`, `instructions` and
  `relocations`; stock instruction count 2146, candidate 1968.
- Smartphone: **NOT RUN**, by design for this offline stage.

## Promotion rule

Do not promote this fallback as a complete dispatcher reconstruction until the
parent KCFI and exact AArch64/relocation gates are repaired. The host proof
only establishes the constant invalid-opcode contract.
