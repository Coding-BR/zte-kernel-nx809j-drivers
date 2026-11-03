# Richtap FIFO memory attributes — NX809J — 2026-11-03

## Result

The stock `richtap_file_mmap` path uses a **shared, read/write, Normal cacheable mapping** for the 16 KiB FIFO. The pinned NX809J arm64 kernel maps `PAGE_SHARED` with `MT_NORMAL` (MAIR attribute `0xff`). The driver does not change the mapping to noncached or write-combine before `remap_pfn_range`.

This resolves the cacheability question statically. It does not close the FIFO ordering gate: normal cacheability/coherence does not supply a release/acquire pair, and the live HAL writer still publishes node state with an ordinary `STRB`. The two kernel functions remain under static validation. No race or corruption was observed.

## Stock mapping path

The preserved stock assembly `offline_static/stock_assembly/0152_richtap_file_mmap_0010e92c.asm` shows:

- At `0xbb40`, the driver forms `current->mm->def_flags | 0xfb` and calls `vm_get_page_prot`.
- It compares the result with the existing `vma->vm_page_prot` at `0xbb58`; a mismatch returns `-EPERM`.
- It requires a `0x4000` VMA, derives the physical address from `state + 0x610`, and passes the accepted VMA protection to `remap_pfn_range` at `0xbbb4`.
- No `pgprot_noncached`, `pgprot_writecombine`, or other driver-side cache-protection transformation appears in the function.

The `0xfb` mask has active access bits `VM_READ | VM_WRITE | VM_SHARED` and no `VM_EXEC`. In the pinned arm64 `vm_get_page_prot`, those flags select `PAGE_SHARED`. `PAGE_SHARED` includes `_PAGE_DEFAULT`, which sets `PTE_ATTRINDX(MT_NORMAL)`. `MT_NORMAL` is index 0, and the kernel's `MAIR_ATTR_NORMAL` value for that index is `0xff` (Normal, inner/outer write-back cacheable). The arm64 tree does not define `__HAVE_PFNMAP_TRACKING`, so the generic `track_pfn_remap` fallback does not rewrite the protection; `remap_pfn_range` forwards it to the PTE installation path. `VM_INIT_DEF_MASK` is only `VM_NOHUGEPAGE`, and `kernel/fork.c` initializes or inherits `mm->def_flags` using that mask; it cannot add `VM_MTE` to this protection request.

Stock `aw_i2c_probe` allocates the 16 KiB pool with `get_free_pages(..., order 2)`, so the mapping covers ordinary allocated RAM pages. The HAL's observed shared mapping targets `/dev/awinic_haptic` and is 16 KiB, matching this FIFO.

## Synchronization consequence

The HAL and kernel access the same Normal cacheable pages. No cache-maintenance operation is established as necessary by this mapping path, but ordering still requires a producer/consumer protocol. The hash-bound HAL disassembly shows ordinary `LDRB`/`STRB` accesses and no explicit barrier; current candidate C6 uses kernel `LDARB`/`STLRB`, without matching HAL acquire/release operations. A kernel-only acquire or release does not establish both directions of the handoff. This report does not recommend changing page attributes or adding a kernel-only barrier as a substitute for a producer contract.

## Runtime limitation

A read-only root ADB snapshot of the active service's `/proc/5737/maps` showed `/dev/awinic_haptic` as an `rw-s` VMA exactly `0x4000` bytes long, with `/vendor/lib64/libaacvibrator.so` in the same process. The raw address and unrelated mappings were omitted from the [privacy-minimized probe record](device_proc_maps_probe.txt). A later scoped read attempted alongside another short authorized trigger command returned `Permission denied` (completion of that follow-up trigger was not verified); `smaps_rollup` exposed only aggregate accounting. Neither interface exposed the PTE memory type. Therefore the `MT_NORMAL` cache attribute is derived from the hash-bound driver call path and pinned arm64 page-protection source, not a direct PTE read. Live writer reachability is separately recorded in the [advanced-envelope probe](../haptic_richtap_advanced_envelope_live_probe_20261103/README.md).

## Provenance

The memory-management source excerpts were captured read-only from Docker volume `nubia_sm8850_kernel_src_nx809j_oout_20261030`, kernel commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, using image `nubia-sm8850-kernel-builder:nx809j-repro` (ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`). The exact excerpt file and SHA-256 values for each kernel source are recorded beside this README. The stock module hash is `05e946134e27ef741fcbb67cdbd2cc93bf9a75f439fa341178459c3e8825187e`; current candidate C6 remains `c6aec6ea8d630255ea10a7aa3db5d8f7de60e960f414818daa901028c2a6d156` and was not installed on the phone.

No reconstruction source changed and no module rebuild was needed.
