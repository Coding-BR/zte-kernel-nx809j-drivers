# Target 295: `syna_tcm_read_flash_address`

This attestation records the isolated reconstruction of stock entry `0x00124208` from the NX809J ZTE TPD module.

## Scope

- The raw Ghidra C export was converted into a typed AArch64-oriented C candidate while preserving the observed ABI shape.
- The candidate preserves validation, firmware-mode branching, flash-access setup, managed buffer resize, flash read, application-mode restoration, cleanup, and raw error returns.
- The scratch flash-access context uses explicit offsets from the related Ghidra evidence; its dependency implementations are not silently claimed equivalent by this target.

## Evidence

1. Joern v4.0.548 strict gate: `PASS`.
2. Host contract harness: two identical ASan/UBSan runs: `PASS`.
3. Clang AArch64 assembly artifact: generated successfully from the candidate source.
4. Stock C, P-Code, and Assembly remain available beside the attestation and are hash-recorded in the JSON evidence.

## Reproduce

Run from the repository root with the pinned builder image:

```powershell
python -m pytest -q
```

The isolated harness is built and run inside `nubia-sm8850-kernel-builder:latest` using the command recorded in the task log. The Joern command is the strict `run_joern_reconstruction_gate.py` invocation with the pinned `reproducible_environment/.tools/joern-v4.0.548` installation and Ghidra export directory.

## Promotion status

This target is **not promoted as hardware-equivalent**. A full canonical module build, KCFI verification, independent review, and device validation remain required. The host and Joern results prove the recorded software contracts only; they do not prove opcode identity, MMIO behavior, PAC/relocation identity, or runtime behavior on the phone.
