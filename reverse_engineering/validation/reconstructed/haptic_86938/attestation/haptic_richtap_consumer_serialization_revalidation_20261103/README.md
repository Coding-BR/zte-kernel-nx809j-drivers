# Richtap FIFO consumer serialization revalidation — 2026-11-03

## Result

The current canonical candidate is `53ee12ee85c0d39eb05515e81b7eff5abe14af4480a4b7376ddbebc902427bb3` (6,706,688 bytes). Its module and reconstruction map match the external Docker curated snapshot byte-for-byte. The map SHA-256 is `7aec144f3dd5440745d52f448236a3842727c1bfe2b03a68efde0c5d67dc4f4b`.

Static relocation review confirms that the threaded IRQ wrapper and `richtap_rtp_work` use the same mutex at `.data + 0x400` while touching the shared FIFO state. The IRQ wrapper holds it around `irq_handle_stock_exact`. The worker acquires it for cursor/node processing and around the `richtap_update_fifo_data` service path; it drops the mutex during the producer polling sleep and reacquires it afterward. The lock helper and IRQ wrapper relocations both resolve to the same data offset.

Stock Ghidra evidence records `devm_request_threaded_irq(..., 0, irq_handle, 0x2002, ...)`: `irq_handle` is the threaded handler and there is no primary handler. This makes the wrapper's sleepable mutex compatible with this registration path.

## Remaining FIFO protocol question

This closes the static race between the two kernel consumers for this candidate. It does not establish publication ordering by a userspace writer to the writable mmap FIFO. A kernel-private mutex cannot pair with an unknown userspace store protocol. No runtime race or failure is asserted; the producer protocol remains open.

On 2026-11-03, the user confirmed that they do not have the userspace producer APK, source, or another artifact available to provide. This records artifact availability only; it does not establish that no producer exists elsewhere. The producer-ordering gate remains open. See [the artifact availability record](producer_artifact_availability_20261103.json).

Older `haptic_richtap_irq_fifo_serialization` evidence is bound to `37fc8692…`; the FIFO metadata validation and userspace publication report are bound to `3dad43a6…`. Those files remain historical. This report and its three ELF disassemblies are bound to the current `53ee…` module and current source hashes in `consumer_serialization_revalidation.json`.

## Reproduction

The three `candidate_*_disassembly.txt` files were collected using the pinned `nubia-sm8850-kernel-builder:latest` image (`sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`) with `/usr/bin/llvm-objdump -dr --no-show-raw-insn` and the repository mounted read-only. The machine-readable report binds module, curated snapshot, map, stock Ghidra evidence, source and disassembly hashes.

No source changed, so no rebuild was needed. No Lockdep, KCSAN, runtime stress, module load, IRQ-latency measurement, or NX809J hardware validation was run. Full driver equivalence remains unestablished and the driver remains **INCOMPLETE**.
