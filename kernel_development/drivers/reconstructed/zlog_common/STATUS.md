# zlog_common reconstruction status

- Stock SHA-256: `cc84a3119927bc189fb60a2d2d5e339e93e5ab0bb127316a1fd4f4ccfcad8da0`
- Candidate SHA-256 (two canonical Docker builds, 2026-11-10): `633ca1d22cacf6ebe70b7520896c55d9a9df7a9ee6da30112439b36dbddb5779` (248,368 bytes)
- Source SHA-256 (`zlog_common.c`): `b030cddb6929cfa317ed2d9f628a208ff55f903a63124e292ddb718ca3ca9245`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE — not authorized as a 100% reconstruction**

## Current candidate gates

| Gate | Result | Evidence and limit |
|---|---|---|
| Stock/Ghidra corpus | PASS | 13 pseudocode exports, 13 P-Code streams, and 13 stock assembly functions |
| Stock-to-source map | PASS | 13/13 identities mapped; candidate-specific init and registration deviations declared |
| Canonical Docker rebuild | PASS | Two clean builds produced `633ca1d…`; kernel source identity and target vermagic pass |
| Candidate/fresh artifact binding | PASS | Final report binds the repository and curated `.ko` to the two clean builds |
| Strict import-set parity | INTENTIONAL DELTA | Candidate adds `destroy_workqueue`, exported by target as GPL symbol with CRC `0xc3325950`; target MODPOST accepts it. Exact stock import-set equality is false |
| Overall static validator | INCOMPLETE | `incomplete_or_failed` because the validator requires exact undefined-import equality; the only final error is this declared new import |
| KCFI | PASS | 13/13 stock identities match by type and section; changed symbol sizes are not gated |
| Strict assembly | 5/13 exact | Eight functions are declared hardening deviations; registration's original 207-instruction stock body remains exact as an internal helper |
| Host harness | NOT RUN for this candidate | Prior host results are bound to an older module hash |
| Microtasks | STALE | Existing microtask results are bound to an older candidate hash |
| Independent human review | PENDING | No second reviewer has signed this candidate hash |
| Controlled hardware | NOT RUN | No module load, ADB action, or phone behavior is claimed |

The static validator's `static_verified` label is not claimed. The exact final report is in [the initialization-failure attestation](../../../../reverse_engineering/validation/reconstructed/zlog_common/attestation/zlog_init_failure_unwind_20261110/README.md).

## Initialization failure correction — 2026-11-10

Stock `init_module` did not check the result of `alloc_workqueue`, yet it marked the server initialized and returned success. Stock `zlog_comm_create_ctrl_dev` discarded `misc_register` errors and silently returned on name-allocation failure. The candidate now checks both operations, propagates errors, frees the allocated misc name on registration failure, destroys the not-yet-queued workqueue on device-registration failure, and sets the initialized flag only after successful setup.

Target-kernel source confirms the null-workqueue delayed-work path emits a warning, stores the null queue, and arms a timer. This is static API evidence, not a reproduced crash. The `destroy_workqueue` import is a deliberate ABI addition with a target-exported symbol and accepted modversion; strict import-set parity remains false. See [kernel API evidence](../../../../reverse_engineering/validation/reconstructed/zlog_common/attestation/zlog_init_failure_unwind_20261110/kernel_api_evidence.md).

The current map records **5/13 stock-exact functions and 8 declared hardening deviations**: the six deviations from the previous lifetime/registration work, plus `init_module` and `zlog_comm_create_ctrl_dev`. The public registration wrapper retains the exact 207-instruction stock body under `zlog_register_client_stock`.

## Known lifetime findings

- The 2026-11-03 static audit found a potential worker/unregister write-after-free in the stock flow. The candidate serializes worker and unregister with `zlog_lifetime_lock`; no runtime reproduction or device validation has been performed.
- The 2026-11-10 registration audit found a concurrent free-slot selection race in stock. The public wrapper serializes registration and retains the stock implementation as an exact internal helper; no runtime race test has been performed.
- Initialization and misc-device failure handling were corrected in this candidate as described above.
- The module still has no `module_exit`. Target `kernel/module/main.c` blocks ordinary unload for a module with init but no exit unless force unload is requested. This batch does not change that stock policy.

The candidate remains an offline reconstruction with declared hardening deviations. The current hashes do not have a second-person review or controlled smartphone validation, and no claim of complete semantic equivalence is made.
