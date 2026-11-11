# zte_fingerprint lifecycle hardening candidate

## Result

This attestation records a candidate build with lifetime and synchronization changes. It is not promoted as stock-equivalent or as hardware-verified. Independent review remains pending.

- Stock reference SHA-256: 4ad15396f5c4fa1f6153dbb6e469476a9ec437daee186498dce94bc28f7d8675.
- Previous offline baseline SHA-256: 8fbc779e8238738398d80e24902c88fbdbd9b1552c935f4d3f010f029ac34247.
- Current candidate SHA-256: de3804dab5e06e66965e237c95b725d378e9c55314c63f76e1acc5ce2cfd2ce7; 395,912 bytes.
- Two clean Docker builds produced the same candidate hash. The pinned builder image identity and target kernel source identity matched.
- Stock Ghidra function identities: 30. Exact assembly matches: 19. Declared assembly deviations: 11; each is listed in hardening_deviations.json and remains pending independent review.
- Target KMI CRCs and target vermagic match. Strict stock import/dependency parity does not: gpio_free was removed, devres_open_group and devres_release_group were added, and panel_event_notifier is absent from the candidate dependency set.
- No smartphone module load, unbind, unload, or hardware lifecycle test was performed.

## Evidence

- stock_assembly_fresh/: stock function assembly and hash-bound manifest.
- candidate_assembly_final_rebind/: candidate function assembly and hash-bound manifest.
- assembly_comparison_final_rebind.json: all 30 function identities compared.
- abi_surface_final_rebind.json: stock and target ABI comparison.
- hardening_deviations.json: machine-readable build, ABI, assembly, and review status.

The candidate remains a reviewable hardening branch. Do not describe it as a completed stock reconstruction until the declared deviations receive independent review and all remaining release gates are satisfied.

## Canonical Docker snapshot validation

The curated source synchronization passed: four source/map/status files were copied, no stale source files were removed, and the separately copied module hash matches the versioned candidate.

The final canonical report is validator_canonical_final.json. The final map sync is recorded in curated_sync_final.json. The canonical snapshot validator rebuilt the module twice with the same SHA-256, confirmed the target kernel source identity, confirmed the candidate bytes and loadable section layout match the fresh build, and passed ELF, alias, namespace, vermagic, Ghidra traceability, and source checks. It correctly did not report static verification: independent review of the 11 declared assembly deviations is pending, and strict stock import parity differs because of the declared devres changes. These are the only reported validation errors.

A fresh ADB device query returned no attached devices. No phone-side test was run.