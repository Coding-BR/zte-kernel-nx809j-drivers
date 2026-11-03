# C6 Richtap VMA lifetime revalidation — 2026-11-03

## Result

HAP-RICHTAP-04 is statically revalidated against candidate C6, SHA-256 `c6aec6ea8d630255ea10a7aa3db5d8f7de60e960f414818daa901028c2a6d156` (6,710,488 bytes). The repository module and canonical Docker curated module match byte for byte. The reconstruction map has 160 rows and SHA-256 `3773f78f259b46ae3a0d0d06743b1bdf8e043b7c3fe60aa45b445b93affb5fa6`.

Earlier VMA reports were bound to candidate `53ee12ee85c0d39eb05515e81b7eff5abe14af4480a4b7376ddbebc902427bb3`; they are not used as proof for C6. The raw SHA-256 values for `haptic_86938_lifetime.c` and `haptic_86938_internal.h` differ between the repository and the Docker build snapshot because the snapshot uses CRLF while the repository uses LF. After normalizing line endings, both files match byte for byte; `richtap_file_mmap` and `aw_remove` match byte for byte without normalization. The build manifest hashes the Docker snapshot files, and the machine report records both raw and normalized identities. The apparent source drift is therefore only line-ending conversion; the C6 candidate remains the reproducible two-build Docker artifact recorded in the IRQ-gate report.

## C6 lifetime path

- `richtap_file_mmap` enters active file-operation accounting, checks the protection and 16 KiB mapping length, then calls `remap_pfn_range`. It calls `haptic_lifetime_attach_vma` only after successful remap and exits active-operation accounting afterward. The attach callback adds the initial VMA and lifetime references under the lifetime mutex, then stores `vm_private_data` and `vm_ops`.
- The pinned NX809J kernel invokes `vm_ops.open` for the fork child VMA at `kernel/fork.c:718-719`, the VMA duplication path at `mm/vma.c:411-412`, and split at `mm/vma.c:1681-1682`. The initial `mmap_file` path does not call `.open`, so the explicit reference in `haptic_lifetime_attach_vma` accounts for the first mapping. Fork-copy failure unwinds through child `exit_mmap`; ordinary unmap and teardown dispatch `.close`.
- `aw_remove` blocks new file access and waits for active file operations before it retires the FIFO state. Retirement clears `state+0x610`; with outstanding VMAs it stores the page address in `retired_pages` and defers freeing. `haptic_vma_close` serializes reference changes under the same mutex and frees the order-2 pages only when the final VMA closes after retirement.
- On remap failure, `haptic_lifetime_attach_vma` is skipped. The pinned kernel's `remap_pfn_range_notrack` zaps a partial PFN mapping and completes `tlb_finish_mmu`; `remap_pfn_range` untracks the range, and `mmap_region` unwinds the failed callback through `unmap_region` before freeing the failed VMA.

## Stock comparison and scope

The preserved stock Ghidra decompilation and stock assembly for `richtap_file_mmap` and `aw_remove` are referenced by hash in the machine report. They remain the behavioral baseline. The C6 sidecar references, access gate, and deferred page release are declared hardening deviations from stock, not stock-equivalence claims. The map rows for `richtap_file_mmap` and `aw_remove` remain `reviewed` with `NOT_ESTABLISHED_HARDENED_DEVIATION`; no mapping was promoted.

The review used complete C6 ELF address ranges from the canonical Docker module, checked against `llvm-nm` symbol sizes. Kernel source was mounted read-only at pinned commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. This was an evidence-only review: no C source content changed, and normalized VMA-path source matches the exact snapshot manifest, so no rebuild was needed.

This is static evidence only. No fork/mmap/unmap/unbind stress, Lockdep, KCSAN, candidate module load, or hardware validation was performed. FIFO publication ordering across the HAL/kernel boundary and whole-driver equivalence remain unresolved; the driver remains **INCOMPLETE**.
