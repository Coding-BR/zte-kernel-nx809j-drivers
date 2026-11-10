# rdbg consumer queue read serialization — 2026-11-10

## Result

This batch addresses the static finding that simultaneous `read()` calls on the one-open `rdbg` character device could race while advancing consumer SMQ indices. The source now serializes reads through a mutex in an allocated per-open file context. The consumer SMQ also points to the existing `write_mutex`, protecting the free-node handoff against the writer path.

The change is an intentional deviation from stock behavior. It remains an offline candidate; this record does not establish runtime safety or complete reconstruction.

## Why the mutex uses a file context

The stock `rdbg_data` tail is occupied. Ghidra's `rdbg_write` accesses a 32-word SMP2P state shadow beginning at offset `0x148`, spanning through the end of the record at `0x1c8`. Adding a mutex to those bytes would corrupt live state. The new context contains a pointer to `rdbg_data` and the per-open `read_mutex`; `rdbg_read`, `rdbg_write`, and `rdbg_release` resolve or dispose of that context.

Readers acquire `read_mutex` before consumer dequeue and hold it through the copy and free-node update. At the reset and free-node handoff points, a reader then takes `write_mutex`. Writers take only `write_mutex`; the source has no reverse nested order. This is static lock-order reasoning, not stress-test evidence.

## Build and static evidence

- Two clean builds with the pinned NX809J Docker kernel/toolchain produced SHA-256 `1f817300dd6a431c692441943d6fb84539f3112457e09a95d809fcb9c02700e9` (784800 bytes). The versioned `rdbg.ko` and the Docker curated candidate should have this same identity.
- Candidate ELF format, target vermagic, aliases, namespaces, runtime section layout/content, and source identity match the fresh build. Traceability maps all 8 Ghidra functions.
- The generic audit remains `incomplete_or_failed`. `undefined_symbols_match` differs only by the additional `free_irq` import inherited from the prior IRQ-lifetime hardening; the pinned target exports it with CRC `0xdd0d6b2a`. The four hardened mappings are not independently reviewed, so the audit also reports mapping-review warnings. These findings are preserved, not waived.
- KCFI type IDs match the stock signatures for `rdbg_open`, `rdbg_release`, `rdbg_read`, and `rdbg_write`; symbol sizes are not used as a KCFI gate. Strict stock assembly comparison reports differences in all four functions, as expected for the hardened representation and synchronization changes.
- The source snapshot was synchronized to the Docker curated tree after updating `STATUS.md`; see [`source_sync_final.json`](source_sync_final.json). The independent Docker audit is [`docker_final_audit.json`](docker_final_audit.json) with its summary in [`docker_final_audit.md`](docker_final_audit.md). KCFI evidence is in [`kcfi_comparison.json`](kcfi_comparison.json); strict assembly comparison is in [`assembly_comparison.json`](assembly_comparison.json).

## Remaining work and limits

- Obtain an independent review of all four hardened mappings and resolve the audit's declared import delta through the project's review policy.
- Review platform-driver/module teardown and remote firmware memory-ordering findings.
- Run concurrency/lifetime validation with an appropriate host or kernel harness, then perform controlled NX809J testing after the device is available and its exact role is confirmed.
- During this batch, ADB had no attached device. No module was inserted or removed, and no smartphone action was triggered.

## Identities

Machine-readable hashes for the candidate, source, and preserved reports are recorded in [`smq_reader_serialization_20261110.json`](smq_reader_serialization_20261110.json).
