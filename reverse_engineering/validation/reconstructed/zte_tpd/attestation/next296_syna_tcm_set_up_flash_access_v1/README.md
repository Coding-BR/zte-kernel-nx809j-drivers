# Target 296: `syna_tcm_set_up_flash_access`

This attestation records the isolated reconstruction of stock entry `0x001244e4` from the NX809J ZTE TPD module.

## Scope

- The raw Ghidra C export was converted into a typed AArch64-oriented implementation.
- The shared scratch overlay now records the observed offsets at `0x20`, `0x28`, `0x2c`, `0x30`, `0x3c`, `0x40`, `0x80`, and `0x88` with compile-time layout assertions.
- The candidate preserves context validation, identification, application-to-bootloader switching, protocol-marker scanning, boot-info retrieval, geometry conversion, read-size capping, version-3 page geometry, and raw error behavior.

## Evidence

1. Joern v4.0.548 strict gate: `PASS`, with no mapped call deltas and no unresolved calls.
2. Host contract harness: two identical ASan/UBSan runs: `PASS`.
3. Clang AArch64 assembly artifact: generated successfully from the candidate source.
4. Target 295's flash-read host harness was rerun after the shared layout change and still passed.

## Promotion status

This target is **not promoted as hardware-equivalent**. A full canonical module build, KCFI verification, independent review, and device validation remain required. The evidence proves the recorded software contracts only; it does not prove opcode identity, PAC/relocation identity, MMIO behavior, or runtime behavior on the phone.
