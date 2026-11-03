# NX809J Richtap FIFO producer revalidation — 2026-11-03

## Result

A fresh, read-only ADB check confirms the root-running vendor.qti.hardware.vibrator.service process (PID 5737) is the only process currently mapping /dev/awinic_haptic. The mapping is writable shared memory (rw-s) with length 0x4000 (16 KiB). That process maps /vendor/lib64/libaacvibrator.so; the service executable has a direct ELF dependency on that library and includes Richtap service strings.

The pulled HAL library has SHA-256 8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61, matching the earlier device probe. The installed module at /vendor_dlkm/lib/modules/haptic_86938.ko hashes to 05e946134e27ef741fcbb67cdbd2cc93bf9a75f439fa341178459c3e8825187e, identical to the repository stock module. The reconstructed candidate was not transferred or installed during this review; no vibration was triggered and no device state was changed. The later ADB device list became empty, so module load state could not be rechecked after that disconnection.

This establishes the producer process and its shared FIFO mapping. The HAL ELF also contains a real, statically reachable FIFO writer: Docker disassembly found 25 direct AArch64 BL instructions targeting its body at VMA 0x1c198, including three call sites in generate_wave_with_brake and fifteen in tiktap_start. The exported entry at 0x1c194 branches to that body. The exact instructions are in producer_callsite_scan.txt.

## Ordering result

In write_data_to_buffer, the state check is an ordinary byte load at 0x1c208; payload is an ordinary byte store at 0x1c38c; size is an ordinary halfword store at 0x1c398; and ready state U is an ordinary byte store at 0x1c22c. No release/acquire or barrier instruction appears in the writer body or the inspected writer-call ranges. HAL pthread synchronization remains private to userspace and does not supply a kernel acquire.

The process and binary call graph establish a concrete HAL producer path, but this read-only review did not trace a live invocation or reproduce packet corruption. The bidirectional handoff therefore remains unproven at runtime. The exact size-store VMA is 0x1c398; this corrects the earlier FIFO handoff JSON transcription of 0x1c39c, which points to the following counter increment.

## Evidence

- device_probe.txt: root ADB identity, process, hashes, and live mapping.
- producer_callsite_scan.txt: Docker/LLVM version, call sites, writer stores, and ordering-instruction scan.
- Device binaries were pulled to the host temporary directory for read-only inspection; they are not committed.

The earlier statement in STATUS.md that /proc/5737/maps was denied is superseded by this successful recheck.
