# Open file and mmap lifetime across remove — candidate C7

**Review date:** 2026-11-04  
**Review type:** static teardown and reference-count review  
**Candidate SHA-256:** `a2ec3ce4d51e1878e199017bda6cb01623589f54dc3c074f6b22a0586fd3ad0b`  
**Map SHA-256:** `41a7bdcaa16dea5f62a50dab9967e5fc60f9a4625ab65a4232a5bba7bb1a7002`

## Conclusion

In the reviewed file-descriptor and VMA paths, static evidence supports safe state retirement after `aw_remove`: active ioctl and mmap operations are drained; new opens are blocked; an already-open file retains a reference to its lifetime object but sees a null/dying device state and is rejected; and mapped FIFO pages move to `retired_pages` until the last VMA closes. I found no file-operation or VMA path in this scope that dereferences the freed `aw_haptic` state after retirement.

The pinned kernel confirms the `misc_deregister` comment in the candidate: `misc_open` holds `misc_mtx` while it invokes the driver's `.open`, and `misc_deregister` takes that same mutex. The candidate first publishes shutdown and marks the lifetime dying under its registry/lifetime locks, then deregisters the misc device and waits for active operations. The shared mutex therefore drains an open callback already in progress, while the candidate's own shutdown/state checks reject racing opens.

This closes only the reviewed **kernel object and FIFO page lifetime** question. A detached HAL thread may still write to a mapped FIFO while its VMA remains open; deferred page release keeps that memory allocated, but it does not establish FIFO ordering or stop semantics. The cross-domain FIFO publication and HAL stop/worker overlap remain separate open synchronization issues. The candidate was not installed or tested at runtime; ADB currently lists no connected device.

## Reviewed ownership sequence

1. Stock Ghidra shows `richtap_file_open` pins `THIS_MODULE` and stores `g_aw_haptic` in `file->private_data`; stock release drops the module reference. Candidate C7 keeps the module pin, but stores a `haptic_lifetime` reference instead. The lifetime begins with device ownership and gains one reference per successful file open; release clears `private_data` and drops that reference.
2. The C7 ioctl wrapper enters the lifetime under its mutex, checks `dying` and `state`, increments `active_ops`, and passes a temporary `struct file` containing the current state to the stock-exact ioctl body. It decrements `active_ops` after the body returns. Calls on a pre-existing descriptor after remove fail before the stock body sees state.
3. The C7 mmap wrapper follows the same active-operation gate. It attaches the initial VMA reference only after `remap_pfn_range` succeeds. VMA split/fork callbacks increment both the lifetime reference and VMA count; close callbacks decrement them. This matches the pinned kernel's VMA open/close callback paths. A failed mapping does not attach a VMA reference; its failure cleanup is covered by the [candidate VMA failure-path review](../haptic_richtap_vma_lifetime_current_candidate_20261103/README.md).
4. `aw_remove` blocks access and marks the lifetime dying before it cancels workers and retires state. It waits for active file operations. At retirement, it sets `lifetime->state` to `NULL`; if any VMA remains, it moves the FIFO page allocation to `retired_pages`. The final VMA close frees those pages and drops its reference. Existing file references keep the lifetime object allocated until their release callbacks run.
5. Candidate `read` and `write` handlers are state-independent stubs; their source does not dereference `file->private_data`.

The pinned source excerpt `target_kernel_file_vma_lifetime_excerpt.txt` records `misc_open`/`misc_deregister` locking and the VMA split/fork/close hooks at target kernel commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. Candidate C7 disassembly for the wrappers and lifetime helpers is in `candidate_c7_file_vma_lifetime_objdump.txt`.

## Scope limits and reconstruction status

This is static evidence for the described kernel lifetime paths. It does not prove that the HAL stops writing before remove, establish the shared FIFO's release/acquire contract, or test VMA/unbind interleavings on hardware. The HAL-to-kernel and kernel-to-HAL FIFO ownership edges remain unproven in the [C7 FIFO publication attestation](../haptic_richtap_fifo_publication_c7_20261104/README.md). The driver remains **INCOMPLETE** overall.

The map entries for `aw_remove`, `richtap_file_open`, `richtap_file_release`, `richtap_file_mmap`, and `richtap_file_unlocked_ioctl` remain `reviewed`; no map promotion was made. No source changed, so no rebuild was required. Docker was used read-only to inspect the canonical curated C7 module.
