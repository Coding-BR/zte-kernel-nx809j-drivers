# Microtask 190_21: `syna_cdev_ioctls` route `0x21`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x21` as a mutex-protected update of a shared
20-byte configuration buffer. The route rejects input sizes below 20, acquires
the shared-buffer lock, creates or reuses the managed buffer, zeroes it, and
copies 20 bytes from the user pointer. A partial copy zeroes the uncopied tail
and returns `-52`. When the feature is active, the fields at offsets `2` and
`4` select reset behavior, the low bit of the word at offset `8` controls
predictive reading, its high byte updates a global value, and byte `10` is
scaled by four into another global value. The lock depth is released on every
return path.

The isolated fixture
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_21_set_config.c`
models those offsets and callbacks byte-by-byte. It does not claim exact
Linux `devm_*`, arm64 user-pointer masking, CFI checks, logging, or hardware
side effects; those remain block-level and target validation requirements.

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
