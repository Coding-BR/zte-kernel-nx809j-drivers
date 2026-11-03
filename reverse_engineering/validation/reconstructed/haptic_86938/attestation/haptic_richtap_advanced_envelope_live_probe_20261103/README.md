# User-authorized TikTap/FIFO live probe — NX809J — 2026-11-03

## Result

The authorized advanced-envelope action entered the active vendor vibrator HAL's TikTap path and called the shared FIFO writer. This is the first live confirmation on this phone that the statically identified producer function is the relevant userspace FIFO producer.

## Test

- Device: REDMAGIC NX809J, Android 16, rooted ADB session.
- Active service: `vendor.qti.hardware.vibrator.service`.
- HAL: `/vendor/lib64/libaacvibrator.so`, SHA-256 `8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61`.
- User-authorized action: `cmd vibrator_manager synced envelope -a 100 0.8 150 100 0.4 180` (two 100 ms segments; exit code 0).
- Capture: `simpleperf`, event period 1, service process scoped, 18.0255 seconds, zero lost samples.
- Uprobes: `write_data_to_buffer` body `0x1c198`; `tiktap_start` `0x1d0a4`; `tiktap_update` `0x23240`; `tiktap_on` `0x21f9c`; `generate_wave_with_brake` `0x1c664`.

## Observed calls

| HAL function | Samples |
|---|---:|
| `write_data_to_buffer` | 1,077 |
| `tiktap_start` | 3 |
| `generate_wave_with_brake` | 3 |
| `tiktap_update` | 0 |
| `tiktap_on` | 0 |

The report groups all samples under the active vibrator service and the exact DSO hash recorded above. Together with the existing live mapping of `/dev/awinic_haptic` as a writable shared 16 KiB buffer, this confirms that `write_data_to_buffer` in the HAL is the FIFO producer on this NX809J. It is a function in the vendor vibrator service's HAL library, not a separate phone app. GameAssist includes a 4D vibration controller, but this particular trigger was Android's advanced-envelope request rather than a game-specific GameAssist event.

## Scope and cleanup

The phone continued running the OEM stock `haptic_86938` module; its installed file SHA-256 is `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`. Candidate C6 (`c6aec6ea8d630255ea10a7aa3db5d8f7de60e960f414818daa901028c2a6d156`) was not transferred or installed.

This establishes live reachability of the HAL FIFO writer, but it does not validate candidate-kernel behavior or prove the cross-boundary publication ordering. No race or data corruption is asserted. The uprobe list was empty after capture; temporary capture files were removed, DND remained off, and no persistent phone setting or module state changed.

Machine-readable fields and sample counts are in `advanced_envelope_live_probe.json`. The privacy-minimized simpleperf summary is `simpleperf_report.txt` (SHA-256 `f7c998280b9eaf87bd3806b42b9e495e19be6ce186a27e206612c4c4bbbb0fdb`).
