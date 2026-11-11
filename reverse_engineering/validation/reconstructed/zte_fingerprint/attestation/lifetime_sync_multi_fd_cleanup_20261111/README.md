# zte_fingerprint multi-descriptor cleanup hardening

## Result

This batch adds a guard so ioctl CLEANUP cannot release shared resources while another file descriptor is open. It is a reviewable hardening candidate, not a promoted stock-equivalent or hardware-verified reconstruction.

- Candidate SHA-256: e79cc7305b471d2a94192ef26708bf273c552d78c15c7b24e190a1972dfdde21; 395,992 bytes.
- Previous hardening candidate: de3804dab5e06e66965e237c95b725d378e9c55314c63f76e1acc5ce2cfd2ce7.
- The canonical module build already routes the exact compat ioctl wrapper through the synchronized dispatcher. The alternate C fallback now uses that same dispatcher; the host harness verifies compat `CLEANUP` returns `-EBUSY` with two open descriptors and leaves resources intact.
- The host harness passed reproducibly for 30 functions. Its stubs now model the current `READ_ONCE`/`WRITE_ONCE`, devres-group and list APIs.
- Two clean Docker builds produced the same fresh hash, `51fa3d1311f37c097d82ec33cf2b50fda858dc753143ad893732e4e9b2451c78`; target kernel source identity matched. Runtime content and layout match the current candidate, while its allocated build-id and debug sections differ. The pipeline did not promote the fresh `.ko` because strict import parity still fails; the curated candidate remains `e79cc7305b471d2a94192ef26708bf273c552d78c15c7b24e190a1972dfdde21`.
- All 30 stock Ghidra function identities were compared. The same 19 match exactly and the same 11 declared deviations remain; the multi-descriptor guard is in the new dispatcher helper.
- Target KMI CRCs and target vermagic match. Strict parity with the stock imports/dependencies does not: gpio_free was removed; devres_open_group and devres_release_group were added; panel_event_notifier is absent from candidate dependency metadata.
- Independent review remains pending. No phone module load, unbind, unload, or lifecycle test was run; ADB found no connected device.

## Evidence

- hardening_deviations.json: hashes, build identity, ABI and assembly comparison.
- candidate_assembly/: current candidate function assembly and its manifest.
- assembly_comparison.json: 30 function comparisons against stock_assembly_fresh from the preceding committed attestation.
- abi_surface.json: target KMI and stock ABI comparison.
- validator_compat_fallback_final.json: latest canonical two-build snapshot validation, including candidate/fresh section differences.
- curated_sync_compat_fallback_final.json: source sync report for the Docker snapshot.
- kernel_development/drivers/validation/zte_fingerprint/host_test_report.json: reproducible host harness result and 30-function coverage.

Do not promote this candidate as static_verified until the 11 assembly deviations receive independent review and the strict ABI delta receives disposition.
