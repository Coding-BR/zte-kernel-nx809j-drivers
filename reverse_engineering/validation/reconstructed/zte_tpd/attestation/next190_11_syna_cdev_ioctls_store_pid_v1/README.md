# Microtask 190_11: `syna_cdev_ioctls` route `0x11`

Status: **PARTIAL / NOT PROMOTED**.

## Evidence-derived contract

The stock Ghidra pseudocode and P-Code identify `0x11` as the
`syna_cdev_ioctl_store_pid` route. The route emits that log message and then
enters the shared 16-byte ABI reply path. No additional write of a PID into
driver state is present in the recovered route. The shared path:

1. selects the tagged-address mask when the observed status bits require it;
2. rejects destinations above `0x7ffffffff0` with `-52`;
3. copies exactly 16 bytes to userspace;
4. returns `0` on a complete copy and `-52` when the copy reports failure.

The isolated candidate is
`kernel_development/drivers/reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_11_store_pid.c`.
It is a validation fixture and has not been promoted into the parent
dispatcher because the route has no independent stock ELF symbol.

## Gates

- Host harness: PASS, 4 cases, Clang `clang-r536225`, ASan and UBSan enabled,
  executed twice.
- Canonical Docker build: PASS, two cycles, identical module SHA-256
  `2317f773f2a28d35c1b164cac6f00d8d432941cc67f3b78687681dcd24e55e77`.
- Joern: the parent dispatcher scope passes; a route-only strict Joern scope
  is intentionally recorded as unresolved because `0x11` is a basic block,
  not a stock function symbol. This is a scope limitation, not a PASS claim.
- KCFI: BLOCKED at the parent symbol. Stock `syna_cdev_ioctls` is
  `0x2af6cdbb`; the current candidate is `0xe513074c`.
- AArch64 function comparison: BLOCKED at the parent symbol. Stock is 8,584
  bytes and the candidate is 7,872 bytes; instruction and relocation parity
  therefore fail for the parent.
- Smartphone: NOT RUN by design.

## Promotion rule

This route must remain `PARTIAL` until the parent dispatcher is reconstructed
with matching KCFI and exact AArch64 instruction/relocation evidence, or until
the stock block is isolated by a reproducible block-level comparator that
proves the same contract without inventing a function boundary.
