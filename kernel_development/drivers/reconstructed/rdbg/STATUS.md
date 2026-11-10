# rdbg — hardened offline candidate; validation incomplete

Status: `HARDENED_CANDIDATE_OFFLINE`; runtime and hardware validation remain incomplete.

- The map covers all 8 stock functions: 4 are `PROMOTED_OFFLINE_EXACT`; `rdbg_open`, `rdbg_release`, `rdbg_read`, and `rdbg_write` are `HARDENED_STOCK_DEVIATION`.
- Current candidate: SHA-256 `1f817300dd6a431c692441943d6fb84539f3112457e09a95d809fcb9c02700e9`, 784800 bytes. Two clean builds in the canonical Docker image produced the same hash.
- The generic offline audit remains `incomplete_or_failed`: the hardened candidate adds the target-exported `free_irq` import, and the four hardened mappings still lack an independent second review. The audit passes traceability, candidate identity, target vermagic, AArch64 relocatable format, aliases, namespaces, and runtime section/content checks. See [`docker_final_audit.json`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/smq_reader_serialization_20261110/docker_final_audit.json).
- `rdbg_read` now serializes consumer dequeue and free-index updates with a per-open `read_mutex`. The consumer queue uses the existing `write_mutex` for free-node handoff with writers. Static lock-order review found readers acquire `read_mutex` before `write_mutex`; writers acquire only `write_mutex`.
- The `rdbg_data_layout` tail was not repurposed: Ghidra and stock assembly show stock `rdbg_write` uses the 32 SMP2P state-shadow words from offset `0x148` through `0x1c8`. A separate allocated file context holds the new read mutex.
- KCFI type IDs match for `rdbg_open`, `rdbg_release`, `rdbg_read`, and `rdbg_write`; strict stock assembly comparison differs in all four, as expected for the declared context/lifetime/concurrency hardening.
- Platform-driver/module teardown hazards and remote firmware memory ordering remain open. No KUnit, lockdep, KCSAN, host harness, or NX809J runtime test was run. ADB reported no attached device; no module was loaded and no phone action was performed.

The full batch record is [`smq_reader_serialization_20261110/README.md`](../../../../reverse_engineering/validation/reconstructed/rdbg/attestation/smq_reader_serialization_20261110/README.md).
