# Microtask 190_1b: `syna_cdev_ioctls` route `0x1b`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x1b` as the inline hardware-reset path. It requires
the feature bit or device state `3`, validates both ioctl size fields for at
least five bytes, requires the reset callback, copies a five-byte request,
temporarily applies non-zero timing overrides, invokes reset, and restores the
original timing values. When the request flag is not `1`, it may read event
data and invoke the post-reset reinitialization callback; its error is
propagated when that callback runs.

The isolated fixture
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_1b_do_hw_reset.c`
models the validation, callback order, temporary override and restoration
contract with typed callbacks. It does not claim exact arm64 user-pointer
masking, CFI checks or target hardware effects; those remain block-level and
target validation requirements.

## Gates

- Joern parent scope: **PASS**, with zero parse problems.
- Joern route-only scope: **FAIL/BLOCKED** because this route is an inline
  block and has no independent stock ELF symbol.
- Host harness: **PASS**, nine cases in two repetitions with Clang
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

Do not promote this route as reconstructed or behaviorally equivalent until
parent KCFI and exact AArch64/relocation parity are repaired, or a reproducible
block-level comparator proves the route against the stock decomposition.
