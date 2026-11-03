# Haptic lifecycle revalidation — current candidate 7E99600D

## Scope and identity

This review rebinds timer, probe publication, early IRQ, RAM firmware worker/callback, and remove-order findings to the current candidate. The repository module and canonical Docker curated module are byte-identical at SHA-256 7e99600da7ce2a265ada7f25bbcb0157ddaf310b66a0523333058ffaab99f3e8 (6,720,000 bytes). Current module disassembly was produced by LLVM 18.1.3 in the canonical Docker image against a read-only mount; its SHA-256 is 15471559d61640fb6f677cffc0d34e6b960fbad0e98ba75ceacda500e55f70a3.

The stock baseline hash is 05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e. Current source and target-kernel hashes, preserved stock Ghidra/assembly, Docker identity, and device observations are in lifecycle_current_candidate_revalidation.json. The target kernel source volume is pinned to 3356b35306d35d5a480e3b63df1a9f065b5d9f55 with CONFIG_HZ=250.

## Findings

- **Probe publication and early IRQ:** Stock aw_i2c_probe initializes the chip/function table before irq_config, then registers the IRQ before timer/workqueue setup and RTP/FIFO allocations. The candidate IRQ wrapper checks shutdown and takes the IRQ/stop mutex but does not wait for probe_complete; an early IRQ is possible. Stock state allocation flags 0xdc0 include __GFP_ZERO in the pinned target headers. Zero rtp_loop (+0x6bc) and RAM-ready (+5) fields gate the stock handler's FIFO and RAM paths before publication. This is a static ordering argument, not runtime proof.

- **RAM worker:** The initial worker is queued after 2000 jiffies (8 seconds at the pinned HZ). If probe is incomplete when it runs, the candidate avoids RAM mutation and firmware submission, then retries after 250 jiffies (1 second) only while shutdown is false. Probe completion is published after the resource and sysfs/node setup succeeds.

- **Firmware callback:** The request helper increments the callback count before request_firmware_nowait, pins THIS_MODULE, rechecks shutdown, and rolls back on submission failure. Completion serializes ram_load, releases firmware during shutdown, and decrements/wakes the drain only after finishing. The pinned loader calls completion before module_put; release_firmware(NULL) is a no-op.

- **Remove and timers:** aw_remove blocks new misc/file operations, drains active operations, unregisters the LED child to drain sysfs producers, cancels RAM delayed work, drains firmware callbacks, and cancels delayed work again. The no-workqueue callback wait is a mutually exclusive path where RAM work was not initialized. It then drains published FIFO/TikTap work, releases IRQ when applicable, cancels both hrtimers and associated work twice, destroys the workqueue, and retires state/pages. Both timer callbacks gate work on shutdown; audio gates rearming too.

- **Remaining FIFO synchronization risk:** A fresh read-only ADB check confirms the NX809J service vendor.qti.hardware.vibrator.service maps /dev/awinic_haptic as a shared writable 16 KiB region and loads /vendor/lib64/libaacvibrator.so. The phone's installed haptic_86938.ko hash is OEM stock, so candidate 7e99600d has not been loaded or runtime-tested. The HAL's ordinary U publication and kernel ordinary consumer loads still lack a verified release/acquire pair; kernel-only mutexes do not cover the userspace writer. No torn packet or runtime race was reproduced.

## Disposition

This report supersedes the lifecycle and RAM probe-guard reports bound to predecessor 53ee12ee for candidate 7e99600d. Relevant map rows link this JSON without changing function status or semantic-equivalence dispositions. No driver source changed, so no rebuild was required; two isolated canonical Docker builds for this candidate are recorded in the FIFO release repair report.

The driver remains **INCOMPLETE**. Runtime IRQ/timer behavior, allocation-failure behavior, Lockdep/KCSAN, candidate hardware behavior, strict import parity, full C-level equivalence, and independent whole-driver review remain open. The cross-process HAL/kernel FIFO publication ordering is unresolved.
