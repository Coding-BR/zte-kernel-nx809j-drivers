# Microtask 190_16: `syna_cdev_ioctls` route `0x16`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x16` as the inline send-message path. It validates
feature/lifecycle and request bounds, allocates the managed message buffer,
copies the command from userspace, invokes `syna_tcm_send_command`, builds the
response, copies it back to userspace, and cleans up the response buffer and
lock state on every path. The fixture
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_16_send_message.c`
models those observable effects with typed callbacks. Architecture-specific
TTBR/DAIF and hardened user-copy instructions remain outside the host model.

## Gates

- Joern parent scope: PASS.
- Joern route-only scope: FAIL because the inline route has no independent
  stock ELF symbol.
- Host harness: PASS, ten cases in two repetitions with Clang
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
