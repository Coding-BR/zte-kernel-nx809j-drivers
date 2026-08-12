# Target 305: `syna_tcm_update_lockdown_config`

This attestation records the isolated offline reconstruction of stock entry
`0x00126aec` from the NX809J ZTE TPD module.

## Scope

- Preserves validation of the TCM pointer, configuration word, lockdown
  partition enable byte, data pointer, length and partition ID at the stock
  descriptor offsets beginning at `config + 0x270`.
- Preserves the delay-dependent reads at `tcm + 0x20c` and `tcm + 0x1e8`,
  local mutex initialization, and the in-progress flag at `tcm + 0x388`.
- Preserves flash setup, boot-config read, signed status-byte gate, flash-block
  check, and the successful write of the final eight lockdown bytes.
- Preserves the stock scratch word read at access context `+0x38`, including
  the recovered `page_size + lockdown_length - 8` write-size expression.
- Preserves firmware-mode recovery, managed-device cleanup for both buffers,
  and error propagation. Safe byte-wise reads and an explicit short-buffer
  guard avoid host undefined behavior without changing valid-input behavior.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped-call deltas, zero unresolved calls and zero parser problems. The four
   small helpers and kernel cleanup stubs are listed explicitly as extra
   source methods.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `7845ee9e751b72594f0f220a5f72475ba89ec1b352cd0ddad7e47164038ee832`.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   **PASS**.
4. Repository regression suite and diff checks remain required before merge.

## Promotion status

This target is **not promoted as hardware-equivalent**. A canonical GKI module
build, KCFI/relocation review, independent review and controlled smartphone
validation remain required. No smartphone test was run in this cycle.
