# syna_dev_probe misc registration failure cleanup

The preserved Ghidra stock pseudocode allocates a 0x32000-byte buffer at `tcm+0x460`, then calls `misc_register()` through the object at `tcm+0x4a0`. The registration error branch returns before the later common `kfree(tcm->input_buffer)`, leaking the non-devm allocation.

The candidate routes that call through `syna_dev_probe_misc_register()`. On registration failure, the helper nulls the slot and frees the buffer while returning the original error. The public wrapper also rejects a successful stock probe if either the input buffer at `+0x460` or reset-recovery workqueue at `+0x548` is missing, and then unwinds the initialized device.

The canonical Docker build passed two independent cycles and produced byte-identical outputs. The 1408-byte stock body retains all 352 instruction words; one call relocation at `+0x2b0` now targets the cleanup helper. The strict assembly comparison is intentionally recorded as not passing because of this hardening deviation and four raw BSS relocation label differences. KCFI type ID for the public wrapper matches stock (`0xc7f8c87c`) with size excluded from that check.

Static evidence does not include allocation fault injection, runtime, boot, or NX809J hardware validation. See `probe_failure_path_review.json` and `canonical_build_report.json` for hashes and detailed evidence.
