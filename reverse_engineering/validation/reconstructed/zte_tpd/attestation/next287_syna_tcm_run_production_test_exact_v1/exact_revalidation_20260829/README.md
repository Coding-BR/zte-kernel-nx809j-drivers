# `syna_tcm_run_production_test` exact revalidation

This package records the Docker-backed revalidation of microtask `287_syna_tcm_run_production_test`.

## Gates

- Canonical AArch64 kernel-module build: PASS, two independent cycles.
- Candidate module: 6,307,336 bytes, SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 function comparison: PASS; 98 instructions, 392-byte symbol, and relocations equivalent to stock entry `0x00123c34`.
- KCFI: PASS; type ID `0x0b6a0563`, `.text`, 392 bytes.
- Host direct tests: PASS; 9 cases × 2 Docker cycles with AddressSanitizer and UndefinedBehaviorSanitizer.
- Joern strict gate: PASS; one requested function, zero parse problems, zero unresolved calls.

The exact assembly uses the stock relocation target `syna_tcm_buf_copy`. The earlier `_2` target produced identical opcode count and size but was correctly rejected because the relocation symbol differed from stock.

## Reproduction

The module was built from the synchronized Docker snapshot under `.tmp_next287_current_snapshot_v1\engineering\curated\zte_tpd` with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two canonical build cycles. The temporary snapshot is not part of the promoted source tree.

## Limitations

This is an offline/static promotion. No device, ADB, `insmod`, firmware interaction, or hardware behavior was available. The canonical build proves the synchronized Docker source snapshot; it does not claim that an untouched `git archive HEAD` is a clean build baseline while unrelated exact-source WIPs remain in the repository.
