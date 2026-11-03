# Richtap FIFO kernel-side release repair — 2026-11-03

## Result

The rooted NX809J is visible over ADB. `su -c id` returned uid 0, `vendor.qti.hardware.vibrator.service` was running as PID 5737, and `/proc/modules` listed `haptic_86938`. The producer is the vendor HAL shared library `/vendor/lib64/libaacvibrator.so` (SHA-256 `8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61`) executing in that system service. It is not a separate user-installed app. It writes the shared FIFO exposed by `/dev/awinic_haptic`. The earlier [device producer attestation](../haptic_richtap_device_hal_producer_20261103/README.md) records the writable 16 KiB mapping. A fresh read of `/proc/5737/maps` was denied by the device even under `su`; no device files or state were changed.

## HAL producer sequence

The pulled library's SHA-256 matches the device hash. Its `write_data_to_buffer(tiktap_operation*, signed char)` disassembly shows an ordinary state load (`ldrb` at VMA `0x1c208`), a branch for the free state `0xff`, payload writes (`strb` at `0x1c38c`), size updates (`strh` at `0x1c398`), and an ordinary ready-state store (`strb` at `0x1c22c`) when the node reaches 1000 bytes. No release instruction appears in this producer publication sequence. The HAL's private pthread mutex is not shared with the kernel consumer. The full captured range is in `producer_lib_writer_disassembly.txt`.

## Candidate repair

The prior static review found that candidate kernel consumers stored free state `0xff` before clearing `data_size`. The HAL can begin reusing a node after observing `0xff`, so the kernel's later zero could erase a new producer size. The candidate now clears `data_size` first and publishes the free state with `smp_store_release()` in both `richtap_update_fifo_data` and `richtap_rtp_work`. `haptic_lifetime_richtap_fifo_reset` uses the same release publication after its size clear.

Two isolated builds from the canonical curated snapshot completed successfully and produced byte-identical modules: SHA-256 `7e99600da7ce2a265ada7f25bbcb0157ddaf310b66a0523333058ffaab99f3e8` (6,720,000 bytes). Candidate disassembly confirms `strh` of zero to the size field precedes `stlrb` of `0xff` in all three paths. Build inputs, logs, and disassembly are hash-bound in this directory and summarized in [docker_builds.json](docker_builds.json).

This is a narrow kernel-to-HAL handoff improvement. The reverse HAL-to-kernel publication remains unpaired: the HAL publishes `U` with an ordinary store and the kernel reads state with ordinary `READ_ONCE`, so no release/acquire pair is established. Linux documents release operations as ordering earlier accesses before the release store and normally pairs release with acquire; see [Linux kernel memory barriers](https://docs.kernel.org/core-api/wrappers/memory-barriers.html). Do not treat this as a fully synchronized FIFO protocol.

## Scope and disposition

- `richtap_update_fifo_data` and `richtap_rtp_work` remain `candidate_under_static_validation` with `NOT_ESTABLISHED_HARDENED_DEVIATION`.
- The candidate remains offline-only; this module was not loaded on the phone.
- No haptic effect was triggered and no runtime race was reproduced.
- Whole-driver equivalence, strict import parity, independent review, and device behavior remain open.

See [the prior bidirectional handoff review](../haptic_richtap_fifo_handoff_ordering_20261103/README.md) for the original static finding.
