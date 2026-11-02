# Static review: `richtap_rtp_work`

## Correction and exactness

The AArch64-specific register setup and partial-copy instructions are now guarded by `__aarch64__`. A host-only fallback permits the same source function to run under ASan/UBSan in the pinned Docker image. `protocol_core_v14` confirms this did not change the target output: stock and candidate are each 676 bytes and 169 instructions, with equal resolved opcodes and relocations. The root repository README was restored separately after an accidental replacement with a single-function summary; its contents now match the branch head.

## FIFO initialization and producer reachability

- `aw_i2c_probe` allocates the FIFO page ring and links sixteen nodes at 0x400-byte strides. It writes each node's index byte at `+1`; the target config has `CONFIG_INIT_ON_ALLOC_DEFAULT_ON=y`.
- `richtap_clean_buf` marks nodes `0xff` and clears 1000 payload bytes. The decompiled code does not show it assigning a positive `data_size`.
- The inspected `richtap_write` returns the requested count without touching the FIFO; `richtap_read` returns zero; `richtap_file_mmap` traps. Ioctl `0x5209` copies into the separate RTP buffer at `aw+0x608`.
- No positive `data_size` writer was identified in the inspected Ghidra decompilation. This is not proof that no external or indirect producer exists.

## Arithmetic counterexample

The stock worker reads a signed 16-bit node size, adds it to a 32-bit copied count, compares the wrapped 32-bit result to `rtp_len`, then casts the signed size to `size_t` for the full-node copy. For `copied=1`, `rtp_len=4`, and `data_size=-1`, the result wraps to zero and the full-copy branch requests `SIZE_MAX` bytes. The finite model records this stock counterexample. The target allocation initialization and current producer search do not establish runtime reachability, so the finding is recorded as unresolved. Adding a guard here would break stock instruction equivalence; do not silently claim the hardened behavior is a reconstruction.

## Shared state and teardown

`richtap_rtp_work` modifies the cursor, node state/size, count, RTP loop flag, and work state without a visible lock. `irq_handle` and the refill helper also use the FIFO cursor. `aw_remove` synchronously cancels the worker before freeing the RTP buffer and FIFO pages, but misc-device deregistration occurs later; `richtap_file_open` retains a module reference and `richtap_file_release` only drops that reference. The cross-caller lock, file/device lifetime, and requeue contract remain unproven. No lock was added because the stock body contains none and an unreviewed lock could change callback ordering or deadlock behavior.

## Evidence boundary

`protocol_core_v14` and the sanitizer harness pass. The status remains a candidate because producer reachability, independent review, KMI/BTF types, and kernel runtime concurrency validation are open. The Docker build log reports that BTF generation is skipped because `vmlinux` is unavailable. The host harness and bounded model do not prove hardware timing or concurrent safety.
