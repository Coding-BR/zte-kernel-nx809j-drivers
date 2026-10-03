# Target 298: `syna_tcm_read_flash_area`

This attestation records the isolated offline reconstruction of stock entry
`0x00124ab4` from the NX809J ZTE TPD module.

## Scope

- Preserves the five observed partition routes: app configuration (`3`), boot
  configuration (`6`), boot customer configuration (`0x15`), lockdown (`0x16`),
  and MTP configuration (`0x17`).
- Preserves setup ordering, delay/timeout selection, return propagation, the
  outer firmware-mode restoration, managed-allocation cleanup, and the
  lockdown eight-byte selection ladder recovered from Ghidra P-Code and
  AArch64 Assembly.
- Uses the already attested flash-access overlay. The lockdown path rejects a
  source buffer shorter than `0x88` bytes before applying the stock negative
  offset ladder; this is an explicit memory-safety guard for the reconstructed
  out-of-tree source.

## Evidence

1. Joern v4.0.548 strict gate: `PASS`; one mapped function, 334 calls, 86
   control structures, zero unresolved calls, and no mapped-call deltas.
2. Host contract harness: two identical ASan/UBSan runs: `PASS`.
3. AArch64 cross-compiler syntax check: `PASS` with
   `aarch64-linux-gnu-gcc`.
4. Candidate AArch64 Assembly was emitted for semantic review. It is not an
   opcode-identity claim.
5. Repository regression suite: `272 passed`.

## Joern findings

Joern reported six high-severity lifetime review findings at the observed
`devm_kmalloc`/`devm_kfree` sites. They are recorded rather than suppressed.
The calls mirror the stock ownership pattern, but final lifetime equivalence
still requires canonical module build, independent review, and later runtime
validation.

## Promotion status

This target is **not promoted as hardware-equivalent**. Canonical module build,
KCFI/relocation comparison, independent review, and controlled smartphone
validation remain required. No smartphone test was run in this cycle.
