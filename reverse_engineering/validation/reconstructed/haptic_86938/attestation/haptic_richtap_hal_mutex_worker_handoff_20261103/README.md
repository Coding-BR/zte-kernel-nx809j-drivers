# NX809J HAL mutex and worker handoff review — 2026-11-03

**Disposition:** static synchronization risk identified in the vendor HAL; no runtime race or corruption was reproduced. The kernel reconstruction map is unchanged.

## Evidence bound

- The HAL was pulled read-only from the connected NX809J at /vendor/lib64/libaacvibrator.so, SHA-256 8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61.
- The phone's Android 16 Bionic libc is SHA-256 9ba419b7e78c8e3912076a42ffebabb0f77d34d1f3d42f722b73ff4da1688c94.
- Both ELF files were inspected with LLVM 18.1.3 in canonical Docker image nubia-sm8850-kernel-builder:nx809j-repro, image ID sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390.
- The stock kernel reference remains module SHA-256 05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e; its richtap_file_mmap assembly is SHA-256 1a6d1588a566588ae834a68371cd43ff6e395bf97ce46645b48ebb7aa8e66f0f.
- Current device snapshot: /dev/awinic_haptic exists and is mapped as a 16 KiB shared writable VMA by the vibrator service; /dev/awinic_x_haptic is absent. The HAL hash matches the pulled file.

Instruction excerpts and the full direct pthread call-site inventory are preserved beside this report.

## Findings

### The HAL initializes default mutexes

In tiktap_init, the HAL initializes the left and right context mutexes at context offset +0x18, passing a null attributes pointer to both pthread_mutex_init calls. The exact device Bionic implementation sets the default mutex type bits to zero. Its default pthread_mutex_lock path uses an acquire compare-and-swap; its default pthread_mutex_unlock path uses a release swap to zero and does not compare the calling thread with an owner field.

This describes this phone's Bionic implementation. Unlocking a normal mutex from a different thread is not a portable POSIX ownership pattern.

### tiktap_start transfers held locks to its worker

tiktap_start locks the left context and locks the right context when its active flag is set. Each of its three pthread_create sites passes the same worker entry, 0x1fb18, with a mix, left, or right context. On worker paths, the caller branches past its own unlocks; the worker cleanup paths unlock the right and left context mutexes before pthread_exit.

The pthread_create return value is not checked before the returned thread slot is passed to pthread_detach. On a path that skips caller-side unlock, a failed thread creation would leave no worker to release the held mutexes. This is a static failure-path risk, not an observed failure.

### Successful tiktap_on releases both locks before worker creation

tiktap_on locks both context mutexes at entry. On the successful input path, it sets the success flag, completes temporary-container cleanup, then calls pthread_mutex_unlock for the right and left contexts at 0x22644 and 0x2264c. It continues with context/FIFO setup and reaches up to three worker-create sites at 0x227e4, 0x22904, and 0x22a38. Those sites pass the same worker entry, 0x1fb18; no further context pthread_mutex_lock appears in tiktap_on.

That worker's cleanup still unlocks both context mutexes. If another HAL call acquires one of those mutexes after tiktap_on releases it but before the worker cleanup runs, the worker's Bionic unlock can clear the other call's mutex state. Also, the post-unlock setup in tiktap_on can overlap with another context operation. These are static concurrency risks; the interleaving has not been observed on the phone.

The tiktap_on create paths also detach without checking pthread_create's return value. No worker means no FIFO producer for that request, but this path has already released its context mutexes.

## Device relevance and reconstruction status

The present phone snapshot supports the left-side path only: the left device node and mapping exist; the right node is absent, which gates out right and mix paths in this snapshot. An earlier live probe observed tiktap_start and the FIFO writer, but no tiktap_on invocation or overlapping worker interval has been captured. Candidate C6 was not installed.

This review does not prove a runtime race, data corruption, or a kernel defect. It does leave HAL-to-kernel FIFO concurrency unresolved. The map remains at 135 PROMOTED_OFFLINE_EXACT, 23 reviewed, and two candidate_under_static_validation (richtap_rtp_work and richtap_update_fifo_data); the full driver remains **INCOMPLETE**. No reconstruction source changed, so a kernel rebuild was not required.
