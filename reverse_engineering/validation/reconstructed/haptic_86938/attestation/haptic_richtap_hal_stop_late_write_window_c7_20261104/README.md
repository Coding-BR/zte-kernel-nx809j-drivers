# HAL stop-to-FIFO late-write window — NX809J C7 — 2026-11-04

**Result:** static control-flow evidence establishes a conditional path from a completed stop_flag check to a later FIFO writer call. It does not establish that a FIFO payload byte was written after stop on the phone.

## Evidence binding

- Candidate C7 SHA-256: a2ec3ce4d51e1878e199017bda6cb01623589f54dc3c074f6b22a0586fd3ad0b.
- Reconstruction map SHA-256: 41a7bdcaa16dea5f62a50dab9967e5fc60f9a4625ab65a4232a5bba7bb1a7002.
- OEM HAL binary SHA-256: 8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61.
- Worker, stop-entry, and FIFO-writer excerpts are bound to the SHA-256 values in report.json; the excerpts come from preserved LLVM 18.1.3 disassembly generated with the canonical NX809J Docker image.
- Prior stop-handoff evidence binds stop_flag to the global used at worker checkpoint 0x201a4, and identifies the store in tiktap_stop at 0x23184.

## Static control-flow finding

1. At HAL VMA 0x201a4, the worker loads stop_flag; 0x201a8 reads its value and 0x201ac branches to cleanup when it is nonzero.
2. If the worker reads zero, the preserved worker disassembly reaches write_data_to_buffer at 0x20a28. No further load from the stop_flag GOT slot appears between that checkpoint and this call.
3. tiktap_stop stores one to stop_flag at 0x23184. The bound stop-handoff report shows that this entrypoint does not take the context mutex or join/wait for the detached worker.
4. Therefore, if the stop store happens after the worker's zero-valued checkpoint and before 0x20a28, the worker can still enter the FIFO writer after the flag has been set. The writer checks FIFO node state; whether that call actually changes payload depends on the state observed there.

This is a possible instruction-level interleaving. The disassembly does not reveal whether it occurs under real scheduling, whether the FIFO node is writable at that moment, or what hardware effect follows.

## Validation scope and status

- This review is static and uses preserved, hash-bound HAL disassembly. It makes no source or map change, so no module rebuild was required.
- ADB currently lists no attached devices. Candidate C7 has not been installed or exercised; previous live producer observations were made with the OEM stock HAL/module.
- The haptic driver remains **INCOMPLETE**. This finding does not close the FIFO publication, runtime concurrency, firmware, or whole-driver validation gates.

See hal_stop_late_write_window_disassembly.txt for the address-level excerpts and report.json for machine-readable findings and evidence hashes.