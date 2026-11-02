# zlog_test reconstruction status

- Target: `NX809J (RedMagic 11 Pro+)`
- Stock SHA-256: `e595c91cb5ef517c620d362c82eb05bca98cd5726757b9a6cb7cb96a788747e1` (`reference_modules/full_vendor_boot/zlog_test.ko`)
- Current candidate SHA-256: `c779578131ef0131fd4ceb9e77d10332a3ae063bc29adc96a477dd3e7238251a` (canonical Docker snapshot; strict audit 2026-11-02)
- Primary mapped source SHA-256 (`zlog_test_main.c`): `e7e98e78c4e169726e050fbbb44c1f9dee7a450d0a67bee35773464d06bad96a`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE - independent human review and controlled hardware validation remain open**

| Gate | Result | Current evidence |
|---|---|---|
| Stock/Ghidra corpus | PASS | 11 stock function identities in preserved Ghidra export and stock assembly |
| Stock-to-source map | PASS | 11/11 function mappings; all mapped implementations are in `zlog_test_main.c` |
| Reproducible build | PASS | Canonical Docker audit on 2026-11-02; two clean builds, reproducible, no errors |
| ELF/KMI inventory | PASS | AArch64 relocatable module; target vermagic accepted; imports and namespaces match |
| Layout/ABI | PASS | Four structures and 23 data/BSS symbols match recovered AArch64 layouts |
| Ghidra comparison | PASS | 11/11 mapped identities, function sizes and call structure checked |
| KCFI | PASS | 11/11 type IDs, sections and exact symbol sizes match preserved evidence |
| Host harness | PASS | 11/11 functions covered; two runs and host binaries are identical |
| Microtasks | PASS | 11/11 hash-backed compile/KCFI/test attestations |
| Strict assembly | PASS | Fresh stock and current candidate extraction: 11/11 instructions, relocations, sections and symbol sizes |
| Second-pass mapping review | PASS | Codex second-pass; evidence bound to current stock, candidate, map and Docker audit hashes |
| Independent human review | PENDING | A distinct human reviewer has not signed this candidate hash |
| Controlled hardware | DEFERRED | No module-load, concurrency or vendor-service test for this exact candidate |

The previous assembly status cited candidate SHA `d1a19d…`, which did not match the canonical Docker candidate `c779578…`. That stale comparison is superseded by `reverse_engineering/validation/reconstructed/zlog_test/attestation/independent_mapping_review_20261102/`. `ASSEMBLY_STATUS.md` records the provenance correction.

`static_verified` proves build/KMI/traceability and offline parity only. It does not prove timing, workqueue concurrency or interaction with the physical device and vendor services.
