# zlog_common registration serialization — 2026-11-10

## Finding

Stock `zlog_register_client` checks for an existing registration and then searches for an unused slot. Those checks lock one client at a time and release the lock before the next phase. After finding a free slot, the function reacquires that slot and publishes a new buffer and identity without checking `registered` again. Two callers can therefore select the same slot; the later caller can overwrite the first allocation and identity. This is a Ghidra/P-Code/assembly-derived possible race, not a runtime-reproduced failure.

The full stock identity, evidence hashes, interleaving and limits are in `register_race_review.json`.

## Correction

The public C `zlog_register_client` wrapper holds `zlog_lifetime_lock` across the original registration routine. The unchanged 207-instruction, 828-byte stock body is retained as `zlog_register_client_stock`. The wrapper serializes duplicate detection, slot selection, allocation and publication against other registrations, unregister and report work. Lock order remains `zlog_lifetime_lock` then `client_lock`, consistent with the existing worker and unregister hardening.

The public wrapper is a declared hardening deviation. The internal stock helper compares exactly with the stock function. The wrapper has 19 instructions and 76 bytes; its KCFI type ID is `0x09fbc74f`, matching stock.

## Validation

- Two clean builds in the canonical NX809J Docker environment produced the same module: SHA-256 `717730eb013be53ebeef1f8cc4a4be473c5c0e52f4efd2bac352179eaac69119`, 247,056 bytes.
- Final validator status is `static_verified`, with candidate hash binding, kernel source identity, target vermagic, imports and traceability passing in `docker_validation_final.json`. The earlier `docker_validation_rebuild.json` is retained as the pre-promotion run; it reports the old candidate hash because it was captured before the fresh module was copied into the repository and curated snapshot.
- The renamed internal registration helper matched all 207 stock instructions and relocations in `assembly_stock-helper.json`.
- Whole-module assembly comparison checks all 13 Ghidra identities: 7 are stock-exact and 6 are declared hardening deviations. The public wrapper comparison is expected to differ; the report is preserved in `assembly_public-wrapper.json`.
- The public wrapper KCFI type ID matches stock in `kcfi_comparison.json`.
- The five required repository files and candidate module match the canonical curated snapshot by SHA-256. The generic sync dry run reports only three pre-existing unversioned `tests/out` files in the curated tree; those generated outputs were preserved.

## Limits

No host concurrency harness, module load, or NX809J runtime test was run for this change. The interleaving remains statically established but unobserved at runtime. Independent review and controlled hardware validation remain pending. The broader `zlog_common` reconstruction remains **INCOMPLETE**; this batch does not authorize a 100% equivalence claim.
