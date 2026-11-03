# Richtap mmap producer found on NX809J — 2026-11-03

## Result

A read-only ADB inspection of the rooted NX809J identified the active userspace producer. The process `vendor.qti.hardware.vibrator.service` had a writable shared mapping backed by `/dev/awinic_haptic` with a length of exactly `0x4000` bytes. The same process had `libaacvibrator.so` and the Richtap AIDL interface library mapped. The device node is a misc character device (major 10, minor 112), and the `haptic_86938` kernel module was present in `/proc/modules`.

The producer implementation is in the vendor library `/vendor/lib64/libaacvibrator.so`; it is not a separate kernel driver. The DSO SHA-256 is `8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61` (289,616 bytes). The installed service executable is `/vendor/bin/hw/vendor.qti.hardware.vibrator.service`. The HAL interface DSO is `/vendor/lib64/vendor.aac.hardware.richtap.vibrator-V2-ndk.so`. No device serial, process ID, or ASLR address is retained in this report. No vibration was triggered and no device files were changed.

## What the library does

The AArch64 DSO imports `__open_2`, `mmap`, `ioctl`, and `close`, and contains the strings `/dev/awinic_haptic`, `mmap_memrory_with_driver`, and `data_write_mmap_format`. Its mmap setup routine opens the node with flags `2` (`O_RDWR`), then calls `mmap(NULL, 0x4000, 3, 1, fd, 0)` (`PROT_READ | PROT_WRITE`, `MAP_SHARED`) and closes the file descriptor after a successful mapping. This matches the live VMA observed in the vibrator service.

The library lays out sixteen nodes at `0x400`-byte intervals. It initializes a circular pointer at node offset `+0x10`. The stock driver separately initializes its consumer link at `+0x08`; stock `richtap_update_fifo_data` follows `+0x08`. Both sides use node state at `+0`, a 16-bit size at `+2`, and payload at `+0x18`. The candidate's `reserved_10` bytes are unused by the kernel consumer, but the device probe shows that userspace populates this area as its own ring link.

In `write_data_to_buffer`, the DSO writes payload bytes at node `+0x18`, increments the 16-bit node size at `+0x02`, and writes state `0x55` (`'U'`) when the producer advances a full node. The inspected writer has no `dmb`, `dsb`, `stlr`, or `ldar` instruction between those operations. The stock kernel consumer loads the state and size with ordinary loads and has no acquire instruction in that function; the current candidate uses `READ_ONCE` there without an acquire barrier. The library's pthread locks do not form a lock shared with the kernel consumer.

This establishes the producer and its basic data layout, and removes the earlier uncertainty about whether a userspace producer is present on the phone. It does **not** establish a release/acquire publication contract. On this weakly ordered AArch64 system, the absence of a visible producer release and matching kernel acquire leaves a possible visibility race; no runtime failure or torn packet was reproduced. The current candidate's module image was not extracted from the phone, so this report does not claim that the candidate rather than another `haptic_86938` build is loaded.

## Evidence identity

- Current reconstructed module: `53ee12ee85c0d39eb05515e81b7eff5abe14af4480a4b7376ddbebc902427bb3`.
- Current reconstruction map: `7aec144f3dd5440745d52f448236a3842727c1bfe2b03a68efde0c5d67dc4f4b`.
- Pulled device `libaacvibrator.so`: `8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61`.
- Device vibrator service executable: `4af5a59e1ab7ea19162102c56513a17d05f3ad22530fd5131c50a2ead64a13fd`.
- Device Richtap AIDL DSO: `3bc30f927b124aab68e85e2fbe005de93b689ecfdfb63ff9c97bec394da3027`.
- Stock `aw_i2c_probe` Ghidra decompilation: `789d65096a541b8b0e3e401d12ba712db83a78ec73a8ea8613b314a799f4745a`.
- Stock `richtap_update_fifo_data` Ghidra decompilation: `0d9aee21eaf967437a794f264a1fadfca635485ba405bd1588446339880c315e`.
- Stock `richtap_update_fifo_data` assembly: `df20a89174181b02fbe15dc1c469c4e6c4991b80f4acd91dab0a0f7e6f7b70f2`.
- Current consumer implementation source: `b0955fdcd2d554b2edcd95e1d708a7055e2f7a30bfebb926481c93b2d076ad34`.

The machine-readable report records device observations, the ELF import/string evidence, disassembly addresses, and the exact limits of this static finding. The vendor binaries are not copied into the repository; their hashes bind the on-device files that were inspected.
