# Historical Richtap PFN VMA lifetime revalidation — candidate 7E0AF6FC (2026-11-03)

## Conclusion

This historical attestation bound HAP-RICHTAP-04 to candidate `7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098`. Its static conclusion was valid for that hash only. At the time, the latest revalidation was [vma_lifetime_revalidation_current_candidate.json](vma_lifetime_revalidation_current_candidate.json), bound to `3dad43a65e611dfe56afb946aba6206975c9a3648eccc19a074723b021412a2b`. It has since been superseded by the [current-candidate revalidation for `53ee12ee…`](../haptic_richtap_vma_current_candidate_revalidation_20261103/README.md). Neither report claims runtime race freedom.

On successful `remap_pfn_range`, `richtap_file_mmap` calls `haptic_lifetime_attach_vma` before ending its active file operation. That helper takes the initial VMA reference explicitly. The pinned kernel does not invoke `.open` for the initial `call_mmap` path; it does invoke `.open` when cloning and splitting VMAs. `haptic_vma_open` increments the page-lifetime count for those copies. When the device is removed, active file operations are drained before `haptic_lifetime_retire_state` clears state offset `+0x610`; if VMA references remain, the page address moves to `retired_pages` rather than being freed. The last `.close` callback frees the pages and drops the VMA lifetime reference.

The pinned kernel source at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55` shows clone `.open` at `mm/vma.c:411-412`, split `.open` at `mm/vma.c:1681-1682`, munmap calling `vma_close` at `mm/vma.c:1118-1119`, and `vma_close` dispatching `.close` in `mm/internal.h:144-148`. The historical candidate disassembly shows `remap_pfn_range` followed by `haptic_lifetime_attach_vma`, and contains the historical candidate’s `haptic_vma_open`, `haptic_vma_close`, and `haptic_lifetime_retire_state` bodies.

The historical candidate hash was bound to two byte-identical clean Docker rebuilds in [its canonical audit](../haptic_richtap_workers_before_irq_revalidation_20261103/canonical_postpromotion_audit.json). That audit passed source identity, traceability and reproducibility for that candidate; it was incomplete on strict undefined-symbol parity (`gpio_free` absent, nine additional lifetime-support imports). That candidate remains a declared lifetime-hardened deviation, and independent whole-driver review is pending.

## Evidence files

- `docker_llvm_objdump_vma_lifetime.txt` — historical candidate disassembly for mmap, VMA callbacks and state retirement.
- `target_kernel_vma_callbacks.txt` — exact callback paths from the read-only Docker kernel source.
- `source_tree_sync_dry_run.json` — mirror check; no files were changed or removed by the check.
- The prior risk and original VMA contract are preserved in `haptic_richtap_lifetime_review_20261102/README.md` and `haptic_lifetime_hardening_20261103/README.md`.

No hardware mapping/unbind or runtime concurrency test was run for this historical candidate. NX809J behavior remains unverified.
