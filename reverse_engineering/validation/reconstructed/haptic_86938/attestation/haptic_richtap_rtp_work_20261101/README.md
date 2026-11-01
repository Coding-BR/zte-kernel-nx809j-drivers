# `richtap_rtp_work` reconstruction checkpoint

The candidate is in `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_137_richtap_rtp_work.c` and is linked into the reconstructed module. It remains `candidate_under_static_validation`.

## Validation completed

- `protocol_core_v14` passes all seven automated gates: Docker reproducibility, AArch64 assembly/relocations, source identity, scoped Joern and usage slice, KCFI, and map identity.
- Stock and candidate are both 676 bytes and 169 instructions. The function-entry KCFI ID and all seven indirect callsite guards, slots, and IDs match.
- The ASan/UBSan Docker harness passes six FIFO, retry, start-failure, and callback-order scenarios.
- The bounded model enumerates 441 valid-domain queue transitions and records an arithmetic counterexample for a negative signed `data_size`.

## Finding that blocks promotion

Stock computes the end offset with 32-bit unsigned arithmetic before converting a signed 16-bit node size to `size_t`. With `copied=1`, `requested=4`, and `data_size=-1`, the end wraps to zero and stock selects a `memcpy` length of `SIZE_MAX`. The target config enables `CONFIG_INIT_ON_ALLOC_DEFAULT_ON`; probe constructs a sixteen-node ring, but the decompiled module does not show a nonzero writer for `data_size`. Reachability of the malformed value therefore remains unknown. The reconstruction keeps stock behavior to preserve exactness; it does not claim this path is safe.

The worker also shares FIFO state with `irq_handle` and `richtap_update_fifo_data`. The worker itself has no visible lock, and the remaining file/device lifetime contract has not received an independent review or KCSAN/Lockdep run.

See `static_review.md`, `host_harness/bounded_model_report.json`, `callback_table.json`, and `state_effect_ledger.md`. The core runner is non-promoting by design. Independent review, producer reachability, KMI/BTF evidence, and kernel concurrency validation remain open.
