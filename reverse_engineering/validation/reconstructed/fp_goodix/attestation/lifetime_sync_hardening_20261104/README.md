# fp_goodix lifetime hardening — 2026-11-04

## Result

A static hardening candidate was built twice from the canonical Docker curated snapshot. Both clean builds produced SHA-256 `3dcb65d6844d895ed794d44f09e400a4caf0d08401c5a8ed4454d5c8ba8eae63` (719,232 bytes).

The fresh AArch64 function comparison checked all 30 stock functions: 28 match; two differ intentionally because of the hardening edits. This result does not establish full semantic equivalence and does not authorize installation or promotion.

## Changes in this candidate

- Drain `screen_state_work` before unregistering its final panel notifier cookie, so a delayed worker cannot create a registration after teardown.
- Unregister the platform driver before tearing down netlink during module exit.
- Remove the extra `input_free_device()` after `input_unregister_device()` in `gf_remove()`. The target kernel documents that unregister drops the registration reference and that callers must not free the registered device again. The pointer is cleared after unregister.

The first two changes reorder calls in `gf_remove` and `cleanup_module`; the input reference correction also changes `gf_remove`. The previous 30/30 stock-exact attestation remains historical evidence for the unmodified baseline.

## Remaining lifetime findings

- `gf_remove()` still does not quiesce/free the IRQ requested by the first open. `gf_release()` owns the free path, so platform unbind while a file is open can leave the handler live after other resources are removed.
- The file operations still expose `gf_ioctl` directly without a removal lock/state check. An open descriptor can race platform removal and access `gf.input_dev` or platform-managed resources while they are being torn down.
- These residuals are statically identified; no race or failure was reproduced. The driver must remain offline-only until they are reviewed and addressed or explicitly accepted.

## Evidence

- Stock module SHA-256: `534bdb87c4612ef6b7fe5663a10203179181cf3da1ce407b602b5e4fa8e67562`.
- Target kernel: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`, source commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`.
- Docker image: `nubia-sm8850-kernel-builder:latest`, image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`.
- Build logs: `docker_build_1_canonical.txt` and `docker_build_2_canonical.txt`; both logs show clean builds completing successfully.
- Module hash, assembly extraction manifest, and function comparison are recorded in `lifetime_sync_hardening.json`.
- `assembly_comparison_build3.json` records the two expected differences: `gf_remove` (84 instructions / 336 bytes versus 85 / 340) and `cleanup_module` (same size, call order changed).
- No host harness, module load/unload, ADB action, or hardware validation was run in this batch. ADB currently reports no attached devices.

## Status

`HARDENING_CANDIDATE_BUILD_VERIFIED_WITH_RESIDUAL_LIFETIME_RISKS`. Independent review and controlled NX809J validation remain pending. Do not describe this candidate as 100% reconstructed or hardware-validated.

## Superseded evidence kept for traceability

- `superseded_noncanonical_context/`: preliminary builds from the wrong build context; not used for the result above.
- `superseded_prior_candidate/`: an earlier canonical candidate before the input-device double-release correction; superseded by build 3.
