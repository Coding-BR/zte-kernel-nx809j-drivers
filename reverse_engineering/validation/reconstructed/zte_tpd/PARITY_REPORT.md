# zte_tpd Offline Parity Report

- Status: `INCOMPLETE`
- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- Candidate SHA-256: `2a70c7f1e88c4091812538d6d2187cec18597919c9d8acc0b60a9769d5b09589`
- Semantic equivalence: `PARTIAL_TESTED_SUBSET_ONLY`
- Independent review: `NOT_PERFORMED`
- Hardware: `DEFERRED`

## Validated Surfaces

| Surface | Result | Evidence |
| --- | --- | --- |
| ELF, modinfo and KMI | `PASS` | driver_audit_static_final.json records two clean reproducible builds, an AArch64 REL module, exact imports, aliases and namespaces, and a fresh candidate hash match |
| AArch64 ABI and recovered layouts | `PASS` | abi_validation.json and header_layout_probe.json are current and pass Clang compile-time assertions against GKI 6.12.23 Note: The stock ELF independently fixes syna_spi_device at 0x3f0 bytes and release at +0x338 |
| verified callback KCFI | `PASS` | KCFI section and type IDs match for 151/151 selected functions, including 143/143 callbacks in 8 recovered families Note: Function size is non-gating because the OEM LTO pipeline is unavailable |
| complete recoverable KCFI surface | `INCOMPLETE` | kcfi_full_surface.json matches 189/322 stock functions with recoverable preambles Note: 133 signatures differ and 46 stock functions require separate preamble review |
| stock function structural traceability | `PASS` | reconstruction_map.json and module_decomposition_audit.json bind all 367/367 stock identities to source, pseudocode, P-Code and AArch64 assembly Note: Structural identity is not semantic equivalence |
| stock text and import surface | `PASS` | symbol_inventory_kmi_exact_final.json records no missing stock text symbol and no missing or unexpected import Note: 151 candidate-only text symbols are classified and non-gating (decompiler_subroutine=131, duplicate_renamed=9, other=9, signature_wrapper=2) |
| hash-attested direct-test subset | `PASS` | microtask_progress.json promotes 123/367 current-source tasks from 7 sanitizer-backed host reports with zero stale PASS demotions Note: This PASS covers only the attested subset; 244 functions remain unvalidated |
| hardware | `DEFERRED` | No ADB, fastboot, insmod, rmmod, SPI, IRQ or partition operation was performed Note: Controlled NX809J hardware validation remains a separate gate |

## Remaining Gates

- Full KCFI surface has 133 mismatched function signatures
- O6 has 123 hash-attested PASS microtasks and 244 tasks still requiring direct evidence
- O10 independent review is pending
- Controlled NX809J hardware validation is deferred

A `PASS` result applies only to its named surface. It does not mean that the
complete driver is behaviorally equivalent to the OEM module.
