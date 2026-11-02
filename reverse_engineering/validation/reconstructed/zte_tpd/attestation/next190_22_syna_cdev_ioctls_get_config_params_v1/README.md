# Microtask 190_22: `syna_cdev_ioctls` route `0x22`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x22` as the mutex-protected readback of a shared
20-byte configuration buffer. It rejects output sizes below 20, creates or
reuses the managed buffer, clears it, writes device values at offsets `2` and
`4`, encodes the feature/state bits at offset `0`, optionally writes byte `1`,
encodes predictive-reading and the global high byte at offset `8`, and scales
the global value into byte `10`. It copies all 20 bytes to the user buffer and
returns `20` on success or `-52` on a partial copy. All return paths release
the shared lock depth.

The isolated fixture
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_22_get_config_params.c`
models these offsets and the ABI return values byte-by-byte. It does not claim
exact Linux `devm_*`, arm64 user-pointer masking, CFI checks, logging, or
hardware state effects; those remain block-level and target validation
requirements.

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
