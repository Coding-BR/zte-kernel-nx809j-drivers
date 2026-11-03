# PFN-mapped Richtap VMA lifetime revalidation — 2026-11-03

## Result

This review revalidates HAP-RICHTAP-04 against the current candidate `53ee12ee85c0d39eb05515e81b7eff5abe14af4480a4b7376ddbebc902427bb3` (6,706,688 bytes) and map SHA-256 `7aec144f3dd5440745d52f448236a3842727c1bfe2b03a68efde0c5d67dc4f4b`. Both candidate module and map match the external Docker curated snapshot.

Current candidate disassembly shows `richtap_file_mmap` calls `remap_pfn_range`; on success it calls `haptic_lifetime_attach_vma`, then exits active file accounting. The attach path installs the VMA callbacks and holds a lifetime reference. The pinned kernel source at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55` dispatches `.open` for clone/split and `.close` for unmap. The open callback increments VMA and lifetime references. During removal, the driver blocks new file access and drains active operations before retirement. If VMA references remain, `haptic_lifetime_retire_state` moves the FIFO pages to `retired_pages`; the final close frees those pages and drops its lifetime reference.

The kernel source volume was mounted read-only and its `mm/vma.c`, `mm/mmap.c`, and `mm/internal.h` hashes match the prior pinned review. Seven full-symbol ELF disassemblies are included; their address ranges are checked against the current module symbol table. The machine-readable report binds source, binary, map, curated snapshot, Docker image, kernel source and disassembly hashes.

## Limits

This is static evidence only. No mmap clone/unmap/unbind stress, Lockdep, KCSAN, module load, or NX809J hardware validation was performed. Full-driver stock equivalence remains unestablished; the reconstruction remains **INCOMPLETE**. The older `vma_lifetime_revalidation_current_candidate.json` is retained as historical evidence bound to `3dad43a6…`.

No source changed, so no rebuild was needed. The current candidate is already covered by two byte-identical canonical Docker builds in the RAM-worker probe-guard report.
