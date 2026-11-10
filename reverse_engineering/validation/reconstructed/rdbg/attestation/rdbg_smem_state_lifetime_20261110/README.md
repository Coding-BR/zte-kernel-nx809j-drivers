# `rdbg` SMEM state-handle lifetime review — 2026-11-10

## Finding

The stock `rdbg_probe` calls `qcom_smem_state_get()` for an output endpoint and stores the returned handle in `rdbg_data.out.smem_state`. The pinned API documents that each successful handle must be released with `qcom_smem_state_put()`. Its implementation obtains a `kref`; `qcom_smem_state_put()` drops that reference and the final release drops the provider device-tree node reference. The stock module had no matching put in init failure or module exit, so each retained handle survived client-array teardown.

Stock Ghidra and AArch64 evidence show the `qcom_smem_state_get` call in `rdbg_probe@001004ac`. The probe mapping itself is unchanged. The platform driver has no `.remove` callback.

## Correction

The candidate now iterates the client records after `platform_driver_unregister()` on normal module exit and on init unwind. For each non-null, non-error output state handle it clears the stored pointer, calls `qcom_smem_state_put()`, then later frees the client array. This covers probes that succeeded before a later module-init step failed, as well as normal unload. The target exports `qcom_smem_state_put` with CRC `0xc4ec5251`; the module declares GPL licensing.

The change is an intentional stock deviation in `init_module` and `cleanup_module`. It does not claim stock-exact assembly for either function.

## Build and static evidence

- The versioned source was synchronized to the canonical Docker curated tree; the final sync record is `source_sync_final.json`.
- Two clean NX809J Docker builds produced the same module: SHA-256 `7accb38ca56d57cced2ddb9c8f829e01f80aca37a54ea53aab05ab189573d5a9`, 785760 bytes. The repository candidate and curated candidate have this hash.
- The fresh candidate assembly comparison checks `init_module` and `cleanup_module`. Stock sizes are 824 and 180 bytes; candidate sizes are 940 and 260 bytes. The expected instructions, call relocations, and sizes differ because of the cleanup calls and unwind logic.
- `docker_validation.json` records the full offline audit. The driver remains `incomplete_or_failed`: `qcom_smem_state_put`, `free_irq`, and `platform_driver_unregister` are intentional extra imports, and independent review of the hardened mappings is still pending.

## Remaining lifecycle limit

This patch releases state handles on init unwind and module exit. It does not add a per-device `.remove` callback. A platform-device unbind/rebind while the module remains loaded can retain or overwrite a handle; that lifecycle needs a separate design and runtime validation. No module reload, failure-injection, KUnit, lockdep, KCSAN, or phone test was performed. ADB listed no connected device.

## Evidence files

- `review.json`
- `source_sync_final.json`
- `docker_validation.json` and `docker_validation.md`
- `assembly_comparison.json`
- `candidate_assembly/manifest.json` and the extracted `init_module`/`cleanup_module` assembly
- `kernel_smem_state_lifetime_excerpt.txt` (pinned API ownership and `kref_put` behavior)

