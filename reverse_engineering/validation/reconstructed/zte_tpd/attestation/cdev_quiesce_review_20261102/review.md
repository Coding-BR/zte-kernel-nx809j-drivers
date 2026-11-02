# Cdev quiesce callback review — 2026-11-02

Baseline: `bce871ca8021dc54e2b79b83827403d8e29e2e88`.

## Findings

- **Late `.release` is guarded intentionally.** `device_release` skips the stock handler when the cdev is offline or the file belongs to an older generation, then clears `filp->private_data`. The stock `syna_cdev_release` dereferences `g_cdev_data`, which teardown clears. `syna_cdev_remove` drains the cdev's per-device list; `syna_tcm_remove_device` later frees the TCM object containing the callback slots. No separately allocated data-duplicator table was found. A late call to the stock handler would risk touching freed state.
- **Direct `.llseek` is safe in this build.** The file-operations table points directly to `syna_cdev_llseek`; reconstructed C and stock Ghidra pseudocode both return `-EINVAL` unconditionally without dereferencing the file or device state.
- **No source correction was justified.** The review is static and does not establish Android VFS ordering or behavior on NX809J hardware.

SHA-256 evidence and validation scope are recorded in `review.json`.
