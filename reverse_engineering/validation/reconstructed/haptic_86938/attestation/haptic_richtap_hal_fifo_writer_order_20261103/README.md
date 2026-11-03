# HAL FIFO writer ordering review — NX809J — 2026-11-03

## Result

The producer's **program order is established** from the hash-bound HAL disassembly: for a full 1,000-byte node, it writes each payload byte and increments the node length, then publishes state `U` on the following writer call. The state check, payload, length, and `U` accesses are ordinary AArch64 loads/stores; the writer contains no acquire/release instruction or explicit memory barrier.

The current Docker candidate C6 uses `LDARB` when kernel consumers inspect FIFO state and `STLRB` when they return a node to the HAL. The HAL uses ordinary `LDRB` to observe the returned state and ordinary `STRB` to publish `U`. Therefore neither cross-boundary handoff has a verified matching release/acquire pair. This is an unresolved visibility contract, not a reproduced race or confirmed data corruption. Both functions remain under static validation.

## Live producer identity

The NX809J-rooted ADB probe in [the advanced-envelope live-probe attestation](../haptic_richtap_advanced_envelope_live_probe_20261103/README.md) triggered the Android advanced-envelope path and captured 1,077 samples in `write_data_to_buffer` inside `/vendor/lib64/libaacvibrator.so`, SHA-256 `8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61`. That report confirms the relevant live producer on the OEM stock phone; the candidate module was not installed.

## Static ordering and thread path

- HAL entry `0x1c194` branches to the writer body at `0x1c198`.
- At `0x1c208` the writer reads node state with `LDRB`.
- With count below 1,000, `0x1c38c` stores one byte at node payload offset `+0x18`; `0x1c398` stores the incremented 16-bit length; `0x1c3a4` saves the incremented count.
- On the next call when the count is 1,000, `0x1c22c` stores `U` with `STRB`, then advances to the next node.
- `tiktap_start` launches the HAL worker. The worker reaches both `write_data_to_buffer` and `generate_wave_with_brake`; `generate_wave_with_brake` also calls the writer directly. No mutex or barrier occurs inside the writer body. The HAL's thread-lifecycle mutex calls are process-local and are not shared with the kernel consumer.
- Candidate C6 disassembly shows `LDARB` at `richtap_update_fifo_data+0x7c` (`0x8300`) and `richtap_rtp_work+0xe8` (`0x8580`, with another acquire at `0x8774`); free-node `STLRB` stores occur at `0x83c0` and `0x8640`.

## Evidence and limits

The accompanying disassembly files were generated with `llvm-objdump` 18.1.3 inside Docker image `nubia-sm8850-kernel-builder:nx809j-repro` (image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`) against the hash-verified device HAL copy and the canonical curated candidate. The machine-readable review records artifact hashes and exact offsets.

This review establishes source-level instruction order and live reachability only. It does not show that the CPU or mapping exposed a stale/out-of-order observation during the trigger, establish that multiple producer threads overlapped, validate the candidate at runtime, or justify promoting either kernel function. No reconstruction source changed, so no module rebuild was needed.

## Next gate

Keep `richtap_rtp_work` and `richtap_update_fifo_data` at `candidate_under_static_validation`. Close the cross-boundary gate only after validating the producer's memory attributes and an end-to-end publication protocol that pairs both node ownership transfers, or after a controlled runtime protocol test provides the missing evidence. Do not infer a race from the missing pair alone.
