# syna_tcm_read_flash_address — offline exact revalidation

Target `295_syna_tcm_read_flash_address`, stock entry `0x00124208`, body `732` bytes.

This package records a function-level offline exact promotion using the Docker
engineering environment and the curated candidate snapshot. The materialization
preserves parameter validation, firmware-mode setup, managed buffer resize and
cleanup, flash read, application-mode restoration, error propagation and the
stock logging branches.

Gates passed:

- canonical Docker build: two accepted cycles, reproducible module SHA-256
  `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`;
- AArch64 opcode/relocation/ELF comparison: `183` instructions and `732` bytes;
- KCFI: stock and candidate both `.text`, `732` bytes, type ID `0xaa5cbef1`;
- Docker ASan/UBSan host contract: `8` cases in `2` repetitions, reproducible;
- strict Joern: `96` calls, `21` control structures, zero unresolved calls and zero parser errors.

The original host report is retained verbatim. The companion
`host_harness_attestation_report.json` adds only explicit function/source linkage
fields required by the attestation tool, with the same passing cycles and hashes.

The promotion is offline exact at function level. Android runtime, transport,
IRQ, MMIO, managed-device behavior and NX809J hardware remain deferred.
