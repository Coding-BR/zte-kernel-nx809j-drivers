# Richtap PFN VMA lifetime revalidation — 2026-11-03

## Conclusion

The earlier HAP-RICHTAP-04 finding applied to a candidate without VMA lifetime tracking. The current candidate (`7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098`) keeps the FIFO pages alive while any Richtap PFN mapping remains open. This conclusion is limited to static source, current-module disassembly, and the exact pinned kernel source; it does not claim runtime race freedom.

On successful `remap_pfn_range`, `richtap_file_mmap` calls `haptic_lifetime_attach_vma` before ending its active file operation. That helper takes the initial VMA reference explicitly. The pinned kernel does not invoke `.open` for the initial `call_mmap` path; it does invoke `.open` when cloning and splitting VMAs. `haptic_vma_open` increments the page-lifetime count for those copies. When the device is removed, active file operations are drained before `haptic_lifetime_retire_state` clears state offset `+0x610`; if VMA references remain, the page address moves to `retired_pages` rather than being freed. The last `.close` callback frees the pages and drops the VMA lifetime reference.

The pinned kernel source at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55` shows clone `.open` at `mm/vma.c:411-412`, split `.open` at `mm/vma.c:1681-1682`, munmap calling `vma_close` at `mm/vma.c:1118-1119`, and `vma_close` dispatching `.close` in `mm/internal.h:144-148`. The current candidate disassembly shows `remap_pfn_range` followed by `haptic_lifetime_attach_vma`, and contains the current `haptic_vma_open`, `haptic_vma_close`, and `haptic_lifetime_retire_state` bodies.

The candidate hash is bound to two byte-identical clean Docker rebuilds in [the current canonical audit](../haptic_richtap_workers_before_irq_revalidation_20261103/canonical_postpromotion_audit.json). That audit passes source identity, traceability and reproducibility; it remains incomplete on strict undefined-symbol parity (`gpio_free` absent, nine additional lifetime-support imports). The candidate remains a declared lifetime-hardened deviation, and independent whole-driver review is pending.

## Evidence files

- `docker_llvm_objdump_vma_lifetime.txt` — current candidate disassembly for mmap, VMA callbacks and state retirement.
- `target_kernel_vma_callbacks.txt` — exact callback paths from the read-only Docker kernel source.
- `source_tree_sync_dry_run.json` — mirror check; no files were changed or removed by the check.
- The prior risk and original VMA contract are preserved in `haptic_richtap_lifetime_review_20261102/README.md` and `haptic_lifetime_hardening_20261103/README.md`.

No hardware mapping/unbind or runtime concurrency test was run. NX809J behavior remains unverified.
