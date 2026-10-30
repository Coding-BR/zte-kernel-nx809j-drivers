# Microtask 190_19: `syna_cdev_ioctls` route `0x19`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

Ghidra identifies route `0x19` as the inline clear-frames path. It takes the
queue lock, walks all queued nodes, validates and unlinks each node, poisons
its links, frees the payload and node, decrements the pending count, unlocks,
and may invoke the restore callback when the count is below the configured
threshold unless the block bit is set.

The isolated fixture
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_19_clear_frames.c`
models the ownership, cleanup order, lock order and restore callback with
typed callbacks. It is a contract fixture, not a claim of exact Linux list
implementation: list validation, pointer poisoning and target AArch64
behavior still require a block-level comparator or target validation.

## Gates

- Joern parent scope: **PASS**, with zero parse problems and audited fallback
  evidence for mapped calls.
- Joern route-only scope: **FAIL/BLOCKED** because this route is an inline
  block and has no independent stock ELF symbol.
- Host harness: **PASS**, six cases in two repetitions with Clang
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
