# Microtask 190_18: `syna_cdev_ioctls` route `0x18`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x18` as the inline check-frame path. It validates
feature and lifecycle state, requires both request lengths to be at least four,
copies a timeout from userspace, waits for a pending frame condition, and
copies the pending-frame count back to userspace. The fixture
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_18_check_frame.c`
models these observable effects with typed callbacks. TTBR/DAIF and hardened
user-copy instructions remain architecture-specific evidence outside the host
model.

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

Do not promote this fixture until parent KCFI and exact AArch64/relocation
parity are repaired, or a reproducible block-level comparator proves the
inline route against the stock range.
