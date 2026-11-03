# Richtap PFN VMA failure-path revalidation — candidate 7E99600D

## Result

This review is bound to the current reconstructed module `7e99600da7ce2a265ada7f25bbcb0157ddaf310b66a0523333058ffaab99f3e8` (6,720,000 bytes) and map `78edd6c046bc58cbfb710f5c885c693a6c5c9afba197c69f98f0fbb68d772a6a` as they existed at review time. It closes one scoped concern: a failed `remap_pfn_range` does not leave a partial PFN mapping accessible after the mmap call fails on the pinned NX809J kernel.

The current `richtap_file_mmap` enters active-file accounting, calls `remap_pfn_range` for 0x4000 bytes, and branches to the error path on a nonzero result. `haptic_lifetime_attach_vma` is called only on success. Both paths call `haptic_lifetime_exit_file` before returning, so removal cannot retire the FIFO pages while the mmap operation is still active.

The pinned kernel source at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55` handles partial failures in two places. `remap_pfn_range_notrack` calls `zap_page_range_single` when its internal page-table mapping fails; the zap completes `tlb_finish_mmu` before returning. `remap_pfn_range` then untracks the PFN range. Separately, `mmap_region` handles a driver `mmap_file` error by calling `unmap_region`, which unmaps VMAs, frees page tables, and finishes the TLB gather before the failed mapping is released.

`aw_remove` first blocks file access and waits for active file operations, then drains work and calls `haptic_lifetime_retire_state`. For a successful mapping, the candidate's VMA reference defers page release until the last VMA close. For a failed mapping, no VMA reference was attached and the kernel has removed any partial PTEs before the active operation drains. The suspected failed-remap use-after-free path is therefore closed by this static evidence.

## Stock comparison and candidate scope

Stock `richtap_file_mmap` at entry `0x0010e92c` also calls `remap_pfn_range` and branches to its error log/return path on failure. The stock assembly and the current candidate disassembly show that the candidate's extra VMA attachment occurs only after a successful remap. Stock's Ghidra decompilation for this function is incomplete around ARM64 alternatives, so the preserved stock assembly is the instruction-level reference.

The current module and reconstruction map matched the external Docker curated snapshot before this report was linked into the map. A read-only Docker comparison found 93 distinct candidate imports versus 85 in stock: `gpio_free` is missing and nine lifetime-support imports are additional. This is a declared hardening deviation; this report does not claim stock equivalence or completion of the driver.

Captured candidate disassembly is preserved in `candidate_richtap_file_mmap_full_range.txt` and `candidate_vma_lifetime_disassembly.txt`. The exact pinned MM source excerpts are in `target_kernel_remap_failure_excerpt.txt`; the JSON records their hashes and the read-only Docker source identity.

## Limits

This is static source and disassembly evidence. No runtime partial-page-table failure, concurrent unbind, KASAN, Lockdep, KCSAN, or hardware scenario was exercised. No reconstruction source changed in this review, so no module rebuild was required. The driver remains **INCOMPLETE** overall.
