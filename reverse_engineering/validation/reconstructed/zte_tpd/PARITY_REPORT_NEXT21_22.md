# zte_tpd Offline Parity Report

- Status: `INCOMPLETE`
- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- Candidate SHA-256: `2f5454ccdf37b7b34b4bcbc72d52c314dcb76ad974813c396973255ca144b4f8`
- Semantic equivalence: `PARTIAL_TESTED_SUBSET_ONLY`
- Independent review: `NOT_PERFORMED`
- Hardware: `DEFERRED`

## Validated Surfaces

| Surface | Result | Evidence |
| --- | --- | --- |
| ELF, modinfo and KMI | `PASS` | driver_audit_static_final.json records two clean reproducible builds, an AArch64 REL module, exact imports, aliases and namespaces, and a fresh candidate hash match |
| AArch64 ABI and recovered layouts | `PASS` | abi_validation.json and header_layout_probe.json are current and pass Clang compile-time assertions against GKI 6.12.23 Note: The stock ELF independently fixes syna_spi_device at 0x3f0 bytes and release at +0x338 |
| verified callback KCFI | `PASS` | KCFI section and type IDs match for 176/176 selected functions, including 143/143 callbacks in 8 recovered families Note: Function size is non-gating because the OEM LTO pipeline is unavailable |
| complete recoverable KCFI surface | `INCOMPLETE` | kcfi_full_surface.json matches 305/322 stock functions with recoverable preambles Note: 17 signatures differ and 46 stock functions require separate preamble review |
| stock function structural traceability | `PASS` | reconstruction_map.json and module_decomposition_audit.json bind all 367/367 stock identities to source, pseudocode, P-Code and AArch64 assembly Note: Structural identity is not semantic equivalence |
| stock text and import surface | `PASS` | symbol_inventory_kmi_exact_final.json records no missing stock text symbol and no missing or unexpected import Note: 147 candidate-only text symbols are classified and non-gating (decompiler_subroutine=131, duplicate_renamed=8, other=8) |
| hash-attested direct-test subset | `PASS` | microtask_progress.json records 162/367 current-source PASS tasks; this scoped run promoted 2 task(s) from 2 sanitizer-backed host report(s), with zero stale PASS demotions Note: This PASS covers only the attested subset; 205 functions remain unvalidated |
| hardware | `DEFERRED` | No ADB, fastboot, insmod, rmmod, SPI, IRQ or partition operation was performed Note: Controlled NX809J hardware validation remains a separate gate |

## Remaining Gates

- Full KCFI surface has 17 mismatched function signatures
- O6 has 162 hash-attested PASS microtasks and 205 tasks still requiring direct evidence
- O10 independent review is pending
- Controlled NX809J hardware validation is deferred

A `PASS` result applies only to its named surface. It does not mean that the
complete driver is behaviorally equivalent to the OEM module.
