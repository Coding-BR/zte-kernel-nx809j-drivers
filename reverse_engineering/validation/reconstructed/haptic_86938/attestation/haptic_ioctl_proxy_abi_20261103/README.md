# Richtap ioctl proxy ABI assertion

This supplemental attestation records the target-kernel layout contract used when the lifetime wrapper passes a small `struct file` proxy to the stock-exact Richtap ioctl implementation.

## Stock and kernel evidence

- Ghidra stock `richtap_file_open` at `0010ea28` stores `g_aw_haptic` through `file + 0x20`.
- Stock `richtap_file_unlocked_ioctl` at `0010e374` loads the state with `ldr x19, [x0, #0x20]`.
- The read-only Docker source volume `nubia_sm8850_kernel_src_nx809j_oout_20261030` confirms the NX809J `struct file` field order in `include/linux/fs.h`: `f_count`, `f_lock`, `f_mode`, `f_op`, `f_mapping`, then `private_data`. With the target ARM64 field sizes/alignment, `private_data` is at `+0x20`.
- [haptic_86938_lifetime.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_lifetime.c#L416) now has a compile-time assertion that `offsetof(struct file, private_data) == 0x20`. It is at end of file so it does not shift existing callsite line metadata.

## Open/close module references

Stock `richtap_file_open` calls `try_module_get` at `0010ea44`, paired with `module_put` in `richtap_file_release` at `0010ea8c`. The candidate wrappers preserve that pair: a failed lifetime open immediately drops the explicit pin, and successful release drops it after releasing the sidecar reference. Candidate `left_fops.owner = THIS_MODULE` also uses the target VFS pin: `misc_open` calls `fops_get` (`drivers/char/misc.c:149`), and final file cleanup calls `.release` before `fops_put` (`fs/file_table.c:430-436`). Those explicit and VFS references are independently balanced. The target `misc_open` holds `misc_mtx` across its callback; remove releases `haptic_lifetime_registry_lock` before calling `misc_deregister`, so the two paths do not hold those locks in opposite order. The remove path's `misc_deregister` and active-operation drain remain necessary for state lifetime.

## File-operation state routing

The stock `richtap_read` body returns `0`, and `richtap_write` returns the requested count without reading the file argument. They remain safe with the sidecar in `file->private_data`. The ioctl wrapper enters the sidecar operation, builds the verified proxy with raw haptic state in `private_data`, calls the stock-exact body, and exits the operation. The mmap wrapper instead enters the sidecar directly and attaches a VMA reference after a successful remap. The reviewed fops set has no other path that treats the sidecar pointer as raw haptic state.

The pinned target MM source also retains a file reference for each mapped VMA (`mm/mmap.c:1468`, `vma->vm_file = get_file(file)`) and drops it when the VMA is removed (`mm/vma.c:335`, `fput(vma->vm_file)`). Thus the VFS `fops.owner` module pin survives while a VMA can call its `vm_ops`; the sidecar VMA reference separately retains the FIFO pages and lifetime object.

## Docker validation

- Target release: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`.
- Builder image ID: `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`.
- Two clean builds were byte-identical: SHA-256 `f08bbef5063dd84ac22fde7caf997d6b6a4b82927789592a465eaec6cfa418a4`, size `6,692,928` bytes. The repository candidate matches that build, the reconstruction-map hash is bound to it, and the final audit reports matching runtime content and section layout.
- The first clean build is preserved at `docker/build_cycle_1/haptic_86938.ko`; the second is the repository candidate.
- The audit remains `incomplete_or_failed` solely at `undefined_symbols_match`: the hardened candidate adds nine lifecycle imports (`__init_waitqueue_head`, `__wake_up`, `destroy_workqueue`, `finish_wait`, `init_wait_entry`, `led_classdev_unregister`, `prepare_to_wait_event`, `refcount_warn_saturate`, `schedule`). It reports no missing imports. This batch does not claim strict stock import parity.
- The final rebound audit is `docker_audit_rebound.json`; source-to-curated synchronization is recorded in `source_sync_postbind.json`. The initial top-of-file assertion attempt is retained as a diagnostic; it changed line-based runtime metadata, so the assertion was moved to EOF before the final build.

## Limits

This verifies the proxy ABI at compile time and confirms a reproducible static build. Runtime ioctl behavior, device unbind/reprobe stress, lockdep/KCSAN, hardware behavior, and independent review remain unverified. The haptic driver reconstruction is still incomplete.
