# zte_tpd current-surface revalidation — 2026-11-02

## Result

- The repository candidate and Docker curated snapshot are byte-identical: SHA-256 `7c1c0ecc84bf985a0f8105f69c33595b4247e671b99870fe0b9a6dc2207b682e`.
- The canonical Docker build report records a reproducible `static_verified` build for that candidate.
- Current-source KCFI comparison passed for 147 selected functions. The source-tree SHA-256 used by Joern is `a921adab03bd1cbd52e11c97c653c13cd2ee8c1d9c5b3940c43675f1dd9c5212`.
- A strict Joern scope passed for 126 functions with zero parser problems. All 126 also have passing direct-test reports whose source-file hashes match the current C files.
- The attestor updated 126 tasks to `PASS` (125 new promotions; `get_tp_algo_item_id` was already `PASS` and was re-attested). The other 241 tasks remain `PROMOTED_OFFLINE_EXACT`.
- The official microtask verifier passed all 126 selected tasks with zero failures in the working tree.

## Recorded blockers

- The full-driver strict Joern run remains `FAIL`: 55 mapped source methods are absent from its CPG and the run reports 15 mapped-call deltas. Its report is preserved under `joern/full_driver/`. The 126-function strict run excludes those unresolved functions and delta-bearing functions.
- `syna_spi_get_gpio` has a KCFI presence mismatch: stock has no valid preamble at its selected symbol while the candidate has type ID `0xcd095ed0` (both symbols are 224 bytes in `.text`). It is preserved in `kcfi/comparison_all_current_tests.json` and was excluded from the passing KCFI surface.
- This is an offline static re-attestation. The driver is not fully complete, and hardware/runtime verification remains open.

No driver C source was changed in this revalidation. `current_test_reports.json` maps the byte-identical bundled test reports to their original evidence paths and source hashes.
