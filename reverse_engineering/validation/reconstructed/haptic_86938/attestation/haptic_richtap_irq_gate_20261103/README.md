# Richtap startup IRQ gate review — 2026-11-03

## Finding and change

Stock `irq_config` installs `irq_handle` as the threaded handler with a null primary handler and flags `0x2002` (`IRQF_ONESHOT` plus falling edge). The previous candidate waited on a waitqueue while Richtap was arming. Since `richtap_rtp_start` polls the chip under its own device mutex and can request about 602.5–752.6 ms of sleeps on timeout, this kept the one-shot IRQ thread asleep during startup.

The current candidate returns `IRQ_HANDLED` immediately if shutdown or the arming gate is set, both before taking the global mutex and after rechecking under it. The RTP worker keeps the gate set, releases the global IRQ/stop mutex around `richtap_rtp_start`, reacquires it, and checks shutdown before accessing the stream callbacks. The worker finishes its IRQ status and AEI setup before it clears the gate. This avoids holding the threaded IRQ across the chip polling interval while retaining the gate over the mode transition.

The stock start routine polls chip state and does not wait for the IRQ callback. The Richtap start and stop items share the per-device unbound workqueue with `max_active=1`; the queue serialization review is preserved in `haptic_richtap_worker_queue_bound_serialization_20261103`. This review remains static: it does not measure IRQ latency, prove edge behavior under hardware timing, or test the candidate on the phone.

## Candidate and build

Candidate SHA-256: `c6aec6ea8d630255ea10a7aa3db5d8f7de60e960f414818daa901028c2a6d156` (6,710,488 bytes). The repository module, canonical Docker curated module, and map candidate hash match. Two isolated builds used image `nubia-sm8850-kernel-builder:nx809j-repro` (image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`) and kernel source commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`; both outputs have the same hash.

The full driver audit JSON was captured just before copying the fresh module into the candidate paths. Its two-build reproducibility and target-kernel identity checks passed. Its runtime-content/layout mismatch fields therefore describe the pre-copy `8e09dd59` module; the post-copy SHA checks in `irq_gate_revalidation.json` bind the current candidate to both fresh outputs. The audit also confirms strict undefined-import parity remains false: stock has 85 imports, the candidate has 93, with nine additional lifetime-support imports and stock `gpio_free` missing.

## Evidence

- `irq_gate_revalidation.json` binds the current candidate, sources, stock Ghidra/assembly, and two build outputs.
- `build_input_manifest.json` records the exact isolated source snapshot supplied to the two Docker build cycles; it predates synchronization of the fresh module and updated map into the canonical snapshot.
- `candidate_irq_handle_disassembly.txt` shows the early arming/shutdown return and the under-mutex recheck.
- `candidate_richtap_start_disassembly.txt` shows the global unlock before `richtap_rtp_start`, reacquisition after it, and the shutdown recheck.
- `candidate_c6_kcfi_preambles.txt` verifies the current candidate KCFI preamble offsets and type IDs; the map and revalidation JSON bind those values to C6.
- `driver_audit_pre_sync.json` and `driver_audit_pre_sync.md` preserve the pipeline report captured before the fresh module was copied into the candidate paths.
- The stock references are preserved at `offline_static/ghidra_stock_repaired/haptic_86938.ko/decompiled/0066_00108368_irq_config.c`, `offline_static/ghidra_stock_repaired/haptic_86938.ko/decompiled/0148_0010e1dc_richtap_rtp_start.c`, `offline_static/stock_assembly/0066_irq_config_00108368.asm`, and `offline_static/stock_assembly/0148_richtap_rtp_start_0010e1dc.asm`.
- `postbuild_curated_snapshot_manifest.json` binds every file in the canonical Docker snapshot except itself.

## Device test status

The phone still runs the OEM stock module. User-authorized GameAssist diagnostic and short waveform trigger attempts did not produce samples at the HAL FIFO writer; the activity had no handler path to it. A TikTap/Richtap-specific event remains necessary. See `user_authorized_live_trigger_attempts_20261103.txt` in the FIFO endpoint ordering attestation.

## Reconstruction status

No mapping was promoted. `richtap_rtp_work` remains `candidate_under_static_validation`; `irq_handle` remains a reviewed hardening deviation; the two FIFO endpoint functions remain under static validation. HAL-to-kernel FIFO publication ordering, strict import parity, independent review, and candidate runtime/hardware behavior remain unresolved.
