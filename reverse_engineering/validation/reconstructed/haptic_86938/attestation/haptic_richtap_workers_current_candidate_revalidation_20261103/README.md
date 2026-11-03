# Richtap FIFO worker and IRQ revalidation — current candidate 7E99600D

## Scope and inputs

This is a hash-bound, read-only static revalidation of `richtap_update_fifo_data`, `richtap_rtp_work`, and the `irq_handle` wrapper in current candidate `7e99600da7ce2a265ada7f25bbcb0157ddaf310b66a0523333058ffaab99f3e8` (6,720,000 bytes). The module in the repository and the Docker curated snapshot have the same hash. The canonical builder image `nubia-sm8850-kernel-builder:nx809j-repro` (image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`) ran LLVM `llvm-objdump` 18.1.3 against a read-only mount of that curated module. The complete output is preserved in `candidate_7e99600_fifo_functions_objdump.txt`.

The stock baseline is OEM module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`, Ghidra functions `richtap_rtp_work` at `0x001088f8` and `richtap_update_fifo_data` at `0x0010946c`, plus the original function assembly. Source and evidence hashes are recorded in `worker_fifo_current_candidate_review.json`.

## Kernel-side result

The candidate `irq_handle` wrapper takes the global IRQ/stop mutex at `.data + 0x400`, checks shutdown again, calls the stock-exact IRQ body, and unlocks. The stock IRQ body calls `richtap_update_fifo_data` in its RTP path. The candidate RTP worker takes the same mutex while initializing and consuming the shared kernel cursor/count, and while starting playback and handing data to callbacks. It releases the mutex around its 1 ms wait and reacquires it before continuing. Candidate disassembly contains the expected `mutex_lock`/`mutex_unlock` relocations around the IRQ body and matching lifetime-lock calls in the worker. All statically inspected worker exits release a lock held by that path.

This closes the specific **kernel IRQ versus kernel RTP worker** concurrent-cursor concern for the current candidate. The helper's malformed-pointer, ring geometry, transfer-size and node-size checks remain a declared safety deviation from stock. It does not synchronize with the HAL process, which writes the same mmap pages without taking the kernel mutex.

## Remaining userspace/kernel publication risk

The hash-bound HAL report identifies `/vendor/lib64/libaacvibrator.so` as the producer. It fills payload and size, then writes state `U` with an ordinary store. The candidate reads state through `READ_ONCE`, compiled as an ordinary byte load (`ldrb`); its release stores when freeing nodes compile to `stlrb`, while the HAL reads those free states with ordinary loads. Thus neither direction has a verified release/acquire pair.

The Linux kernel memory-barrier documentation states that a reader's barrier does not guarantee observation of the other CPU's access order unless the writer also uses a matching barrier. Arm's documentation describes Armv8-A as weakly ordered and allows independent accesses to be observed in a different order from program order. A consumer-only `smp_load_acquire` would therefore not establish the missing producer-side publication contract. Closing this formally requires a producer-side barrier or a changed shared-memory protocol; neither is present in the inspected vendor HAL. This is a static ordering concern, not a reproduced torn packet or runtime failure.

References: [Linux kernel memory barriers](https://docs.kernel.org/core-api/wrappers/memory-barriers.html), [Arm memory ordering](https://support.arm.com/documentation/102336/0100/Memory-ordering), and [Arm load-acquire/store-release instructions](https://support.arm.com/documentation/102336/0101/Load-Acquire-and-Store-Release-instructions).

## Disposition

Both functions remain `candidate_under_static_validation` and `NOT_ESTABLISHED_HARDENED_DEVIATION`; independent review is pending. No reconstruction C source changed, so no kernel rebuild was run. No module was loaded and no runtime, Lockdep, KCSAN, IRQ-latency or NX809J hardware claim is made. A strict parse sweep also confirmed that all 24 reconstructed-driver maps (1,039 mappings total) parse as JSON after the map-integrity correction.
