# Target 297: `syna_tcm_read_flash`

This attestation records the isolated reconstruction of stock entry `0x001247c8` from the NX809J ZTE TPD module.

## Scope

- The candidate preserves destination/address/length validation, the six-byte flash command payload, delay selection, typed `write_message` callback invocation, response-length checks, response-buffer checks, and response copying.
- The unusual stock branch where `detection_state == 2`, `max_write_size < length`, and `max_write_size == 6` produces a zero chunk is retained exactly as observed in the Assembly and P-Code. It is not normalized by assumption.
- Callback errors remain returned to the caller; the response-length and buffer failures retain the observed `-241` and `-22` results.

## Evidence

1. Joern v4.0.548 strict gate: `PASS`, with no mapped call deltas and no unresolved calls.
2. Host contract harness: two identical ASan/UBSan runs: `PASS`.
3. Clang AArch64 Assembly artifact: generated successfully from the candidate source.
4. The stock Ghidra C export, P-Code, and Assembly are hash-recorded in the JSON evidence.

## Promotion status

This target is **not promoted as hardware-equivalent**. A full canonical module build, KCFI verification, independent review, and device validation remain required. The typed callback contract is checked by the host fixture, but this does not prove stock PAC/type-ID opcode identity, MMIO behavior, or runtime behavior on the phone.
