# zte_fingerprint multi-descriptor cleanup hardening

## Result

This batch adds a guard so ioctl CLEANUP cannot release shared resources while another file descriptor is open. It is a reviewable hardening candidate, not a promoted stock-equivalent or hardware-verified reconstruction.

- Candidate SHA-256: e79cc7305b471d2a94192ef26708bf273c552d78c15c7b24e190a1972dfdde21; 395,992 bytes.
- Previous hardening candidate: de3804dab5e06e66965e237c95b725d378e9c55314c63f76e1acc5ce2cfd2ce7.
- Two clean Docker builds produced the same current candidate hash; target kernel source identity matched.
- All 30 stock Ghidra function identities were compared. The same 19 match exactly and the same 11 declared deviations remain; the multi-descriptor guard is in the new dispatcher helper.
- Target KMI CRCs and target vermagic match. Strict parity with the stock imports/dependencies does not: gpio_free was removed; devres_open_group and devres_release_group were added; panel_event_notifier is absent from candidate dependency metadata.
- Independent review remains pending. No phone module load, unbind, unload, or lifecycle test was run; ADB found no connected device.

## Evidence

- hardening_deviations.json: hashes, build identity, ABI and assembly comparison.
- candidate_assembly/: current candidate function assembly and its manifest.
- assembly_comparison.json: 30 function comparisons against stock_assembly_fresh from the preceding committed attestation.
- abi_surface.json: target KMI and stock ABI comparison.
- validator_final.json: final canonical two-build snapshot validation.
- curated_sync_source.json and curated_sync_final.json: source/map sync reports.

Do not promote this candidate as static_verified until the 11 assembly deviations receive independent review and the strict ABI delta receives disposition.
