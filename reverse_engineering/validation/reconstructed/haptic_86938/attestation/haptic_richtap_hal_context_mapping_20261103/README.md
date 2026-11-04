# HAL TikTap context mapping review — NX809J — 2026-11-03

## Result

The HAL has distinct left and right operation objects. The left object opens /dev/awinic_haptic; the right object opens /dev/awinic_x_haptic. The HAL maps each available node independently with a 16 KiB shared read/write mapping and stores the returned base at operation offset +0x40.

A read-only snapshot of the current NX809J shows /dev/awinic_haptic present as misc minor 112 and /dev/awinic_x_haptic absent. The active vibrator service has one 16 KiB shared VMA for /dev/awinic_haptic and maps libaacvibrator.so. In this snapshot, the right-side mapping and the mix path that copies the right-side base are unavailable. This narrows the earlier possible two-side worker path for this device state.

The producer-to-kernel FIFO handoff remains unresolved. The HAL publishes node state with ordinary STRB; C6’s kernel LDARB/STLRB operations have no matching HAL release/acquire pair. Both FIFO functions remain candidate_under_static_validation. No race or corruption was observed.

## HAL ELF evidence

The Docker-produced ELF symbol table identifies tiktap_left at 0x4e350 and tiktap_right at 0x4e3b8 as separate 104-byte objects. Dynamic relocations bind the globals loaded by tiktap_start to those two symbols. The HAL initializer assigns node_file_path to the left context and node_file_path_r to the right context. The path strings are /dev/awinic_haptic and /dev/awinic_x_haptic respectively.

For each context, tiktap_init calls a helper that opens the context path with O_RDWR, requests mmap(NULL, 0x4000, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0), and stores a successful mapping at context +0x40. The helper sets the context active flag at +0x4 after successful mapping. The captured tiktap_start control flow guards left and right worker creation on those active flags and non-null mapping bases. Its mix path copies the right context’s +0x40 base into tiktap_mix.

The exact HAL disassembly, ELF symbols/relocations, and reproduction image identity are preserved in this directory.

## Device observation

Rooted ADB read-only inspection found the vibrator service at PID 5737. Its maps contain one observed 0x4000-byte rw-s VMA for /dev/awinic_haptic and the vendor HAL DSO. No /dev/awinic_x_haptic node exists in the captured device state. Addresses and inode identifiers were omitted from the committed snapshot.

This observation does not establish the mapping history before the snapshot, per-thread writer intervals, or overlap between repeated operations. It also does not establish physical aliasing across two device nodes on a different system configuration.

## Kernel correspondence and remaining gate

The preserved stock richtap_file_mmap assembly requires a 0x4000-byte VMA, derives the mapped FIFO from state +0x610, and passes the accepted protection to remap_pfn_range. The existing FIFO memory-attribute attestation binds this to the NX809J kernel source and classifies the pages as Normal write-back cacheable. The stock Ghidra decompilation for this function is a breakpoint stub, so the preserved raw assembly is the useful evidence for this path.

The current NX809J HAL snapshot has a single observed FIFO mapping, which keeps the producer/consumer handoff relevant while narrowing the dual-side worker hypothesis. The live 1,077-sample writer attestation establishes writer reachability. The later entry/return probe recorded zero hits and remains inconclusive about thread overlap.

No source changed. The reconstruction map remains at 135 PROMOTED_OFFLINE_EXACT, 23 reviewed hardening deviations, and two functions under static validation. The driver remains INCOMPLETE. Candidate C6 was not installed. This evidence-only update did not require a module rebuild.

See also:
- HAL writer ordering review: ../haptic_richtap_hal_fifo_writer_order_20261103/README.md
- FIFO memory attributes: ../haptic_richtap_fifo_memory_attributes_20261103/README.md
- Live HAL writer probe: ../haptic_richtap_advanced_envelope_live_probe_20261103/README.md
