# Richtap FIFO bidirectional handoff ordering — 2026-11-03

## Result

The rooted NX809J has `haptic_86938` listed in `/proc/modules`. The module file at `/vendor_dlkm/lib/modules/haptic_86938.ko` was read without modification and hashes to `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`, matching `reference_modules/full_vendor_boot/haptic_86938.ko`. The reconstructed candidate (`53ee12ee85c0d39eb05515e81b7eff5abe14af4480a4b7376ddbebc902427bb3`) is a different file and was not identified as loaded on the phone.

The producer is the active `vendor.qti.hardware.vibrator.service` process and its `libaacvibrator.so` library, as established in the [device producer probe](../haptic_richtap_device_hal_producer_20261103/README.md). It maps `/dev/awinic_haptic` as writable shared memory. The FIFO node has state at `+0`, a 16-bit size at `+2`, payload at `+0x18`, a kernel-consumer link at `+0x08`, and a separate HAL-initialized link at `+0x10`.

## Kernel frees a node before resetting its size

In stock `richtap_update_fifo_data`, the consumer copies the payload, stores state `0xff`, and then stores zero to the node's size. The extracted stock module disassembly has the state store at file VMA `0x6710` and the size clear at `0x6718`, with no barrier between them. The current reconstructed candidate performs the same stores in the same order at VMA `0x8368` and `0x836c`.

The userspace writer checks the node state with an ordinary byte load. When it sees `0xff`, it reuses the node, resets/increments the size field, and writes payload. A concurrent writer can therefore observe the free state and start updating the node before the consumer's subsequent size clear. That clear can erase a fresh producer size. The window follows from two separate shared-memory operations; it has not been reproduced at runtime.

## Producer-to-kernel publication

The HAL's `write_data_to_buffer` writes payload at `+0x18`, increments the size at `+0x02`, and publishes state `U` (`0x55`) with an ordinary byte store. No `dmb`, `dsb`, `stlr`, or `ldar` appears in this writer body. Stock and candidate kernel consumers load the state and size with ordinary loads; neither function has a matching acquire operation. The userspace pthread locks are private to the HAL process and are not acquired by the kernel consumer.

Taken together, the two directions do not establish a release/acquire ownership protocol. The observed sequences indicate a possible weak-memory visibility race and a node-reuse interleaving, but do not prove a runtime failure or packet corruption. No haptic effect was triggered for this review.

## Evidence identity

- Device stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Repository stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Reconstructed candidate module SHA-256: `53ee12ee85c0d39eb05515e81b7eff5abe14af4480a4b7376ddbebc902427bb3`.
- Candidate map SHA-256: `7aec144f3dd5440745d52f448236a3842727c1bfe2b03a68efde0c5d67dc4f4b`.
- HAL producer library SHA-256: `8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61`.
- Candidate consumer source SHA-256: `b0955fdcd2d554b2edcd95e1d708a7055e2f7a30bfebb926481c93b2d076ad34`.
- Stock consumer Ghidra decompilation SHA-256: `0d9aee21eaf967437a794f264a1fadfca635485ba405bd1588446339880c315e`.
- Stock consumer assembly SHA-256: `df20a89174181b02fbe15dc1c469c4e6c4991b80f4acd91dab0a0f7e6f7b70f2`.

No source or mapping status changed. The candidate remains offline-only; the userspace publication contract, runtime race behavior, and device behavior are unverified.

## Address correction

The producer size store is STRH at VMA 0x1c398; 0x1c39c is the following counter increment. The JSON field is corrected from the initial transcription. The hash-bound device and call-site revalidation is in [the producer revalidation report](../haptic_richtap_device_hal_producer_revalidation_20261103/README.md).
