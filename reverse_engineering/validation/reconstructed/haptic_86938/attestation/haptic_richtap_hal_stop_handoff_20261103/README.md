# HAL stop and detached worker handoff — 2026-11-03

**Disposition:** static evidence shows a possible overlap between the detached HAL producer and the kernel stop work. No runtime overlap, race, or FIFO corruption was reproduced.

## Evidence bound

- Exact NX809J HAL binary: `/vendor/lib64/libaacvibrator.so`, SHA-256 `8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61`.
- HAL excerpts and flag relocations were regenerated read-only with LLVM 18.1.3 in canonical Docker image `nubia-sm8850-kernel-builder:nx809j-repro`, image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`.
- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Stock ioctl assembly SHA-256: `1c28ebb056e308409fe6892d83aa68aba8bba8a732e8f12b18c6024203dbe0ad`.
- Stock `richtap_stop_work` assembly SHA-256: `255cbe283df945f8e4e62cde2df21f5a94656377412befc2c4be2ad26edc3f14`.
- Current reconstruction map SHA-256: `3773f78f259b46ae3a0d0d06743b1bdf8e043b7c3fe60aa45b445b93affb5fa6`.

The exact HAL excerpts and the dynamic relocation records that distinguish `stop_flag` from `tiktap_mix_flag` are preserved in this directory. The stock ioctl and stop-worker references are the preserved Ghidra/assembly evidence listed in `hal_stop_worker_handoff.json`.

## Findings

1. `tiktap_stop` sets the global `stop_flag` to 1 at HAL VMA `0x23184`. It checks the active left and right contexts and invokes ioctl `0x5212` for each applicable context through the `open`/`ioctl` helper at `0x2343c`.
2. `stop_flag` and `tiktap_mix_flag` resolve to distinct ELF globals. The detached worker reads `stop_flag` at several checkpoints and branches to its cleanup path; it also reads `tiktap_mix_flag` for separate worker decisions. The two flags must not be treated as interchangeable.
3. Worker creation paths call `pthread_create` and detach the returned thread. The worker releases context mutexes and calls `pthread_exit` during cleanup. `tiktap_stop` itself contains no context-mutex acquisition or thread join/wait.
4. The stock kernel ioctl branch for `0x5212` calls `queue_work_on` for `richtap_stop_work` and then returns from the ioctl path. The HAL ioctl helper closes its file descriptor after `ioctl` returns; that close does not wait for the queued kernel work or the detached HAL worker.

Taken together, the HAL stop request does not establish a completion handoff proving that the detached producer has exited before the asynchronous kernel stop work runs or before `tiktap_stop` returns. A worker already in a longer operation may reach its next `stop_flag` check later. This is a possible cross-boundary ordering window, not proof of a reproduced race or of post-stop FIFO writes on the phone.

## Reconstruction status and limits

This report is static analysis of the phone's vendor HAL and the preserved stock kernel module. The reconstructed candidate was not installed. No path-specific stop/worker overlap was traced, and no runtime race or data corruption was observed. No kernel source or map status changed; no rebuild was needed. The haptic driver remains **INCOMPLETE**. Existing candidate-side serialization does not by itself prove quiescence of the userspace producer.
