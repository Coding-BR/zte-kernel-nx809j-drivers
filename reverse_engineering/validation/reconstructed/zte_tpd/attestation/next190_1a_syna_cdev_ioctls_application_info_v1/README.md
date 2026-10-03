# Microtask 190_1a: `syna_cdev_ioctls` route `0x1a`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x1a` as the inline application-info path. It allows
the operation when the feature bit is enabled or the device state is `3`,
requires a non-zero capacity and a requested size no larger than that
capacity, releases the previous managed buffer, allocates a new buffer with
the requested size, clears it, and copies application data from the user
pointer. A partial user copy clears the uncopied tail and returns the stock
error observed in the decomposition (`-52`).

The isolated fixture
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_1a_application_info.c`
models this ownership and error contract with typed callbacks. It does not
claim exact Linux `devm_*`, arm64 user-pointer masking, fortify-panic, or CFI
implementation; those remain target/block-level evidence requirements.

## Gates

- Joern parent scope: **PASS**, with zero parse problems.
- Joern route-only scope: **FAIL/BLOCKED** because this route is an inline
  block and has no independent stock ELF symbol.
- Host harness: **PASS**, seven cases in two repetitions with Clang
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
