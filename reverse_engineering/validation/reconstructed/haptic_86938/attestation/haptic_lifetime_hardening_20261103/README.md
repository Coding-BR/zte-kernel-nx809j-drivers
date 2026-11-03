# haptic_86938 lifetime hardening candidate — 2026-11-03

## Disposition

This is a lifetime-hardened candidate built from the reconstructed haptic driver. It is **not claimed to be stock-equivalent**. Nineteen stock-function mappings now explicitly declare `NOT_ESTABLISHED_HARDENED_DEVIATION`. The separate independent review for this hardening change is pending; runtime and NX809J hardware behavior are unverified. The complete driver remains **INCOMPLETE**.

## Bound artifacts

- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Previous candidate SHA-256: `175f305a0f7d4348bed2a6db8eb901ddfb3f3eaa59d844ececd861f25e23a34c`.
- New candidate SHA-256: `7bb5ac661c2807e5ebc15c1efce91d5a978b04d22edd5eee11c5e52ea971348b` (`6691720` bytes).
- Source commit used for the kernel build: `3356b35306d35d5a480e3b63df1a9f065b5d9f55`.
- Target kernel: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`.
- Docker image ID: `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`.

## Changes in this batch

The sidecar lifetime context tracks file operations, VMA references, and pending firmware callbacks without consuming offsets already occupied by the stock state object. Teardown closes admission, drains operations/callbacks, unregisters the LED synchronously, cancels timers and work, destroys the private workqueue, and defers FIFO page release while mappings remain. Exact stock assembly bodies for the ioctl, probe, IRQ and three work routines remain present as helper symbols; wrapper entry points add the lifetime gates. The map now points those stock identities at their wrappers and links the helper assembly evidence.

The 19 affected stock identities are: `aw_i2c_probe`, `aw_remove`, `richtap_rtp_work`, `richtap_stop_work`, `tiktap_work_routine`, `irq_handle`, `brightness_set`, `vibrator_timer_func`, `vibrator_work_routine`, `rtp_work_routine`, `ram_update_store`, `ram_load`, `audio_timer_func`, `audio_work_routine`, `ram_work_routine`, `richtap_file_unlocked_ioctl`, `richtap_file_mmap`, `richtap_file_open`, and `richtap_file_release`.

## Docker build evidence

Two clean builds in the canonical Docker environment produced byte-identical modules. Each returned success and emitted the same SHA-256, `7bb5ac661c2807e5ebc15c1efce91d5a978b04d22edd5eee11c5e52ea971348b`. Kernel source identity and target vermagic checks passed. The first prebuild attempt exposed that `devm_led_classdev_unregister` is absent from this target's exported `Module.symvers`; the implementation uses exported `led_classdev_unregister`, then clears `led_cdev->dev` so the managed release's NULL guard remains idempotent.

The prior audit compared the old candidate to the fresh output and therefore reported candidate-content and section-layout mismatches. This candidate has now been bound to the reproducible build; the final Docker audit report is `docker/driver_audit_final.json` and its Markdown companion is `docker/driver_audit_final.md`.

## Remaining gates

- Independent review of the 19 deliberate hardening deviations.
- Runtime tests on the target kernel, including concurrent open/ioctl/mmap/unbind and firmware callback teardown.
- NX809J hardware validation.
- Full-driver semantic reconstruction and any strict KMI/import-parity gate required for replacement use.

The helper source, reconstruction map, status ledger, source-sync report and Docker reports preserve the evidence chain. No hardware success is inferred from compilation.
