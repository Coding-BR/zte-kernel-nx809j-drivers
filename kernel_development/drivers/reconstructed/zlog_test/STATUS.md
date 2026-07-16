# zlog_test reconstruction status

- Target: `NX809J (RedMagic 11 Pro+)`
- Stock SHA-256: `e595c91cb5ef517c620d362c82eb05bca98cd5726757b9a6cb7cb96a788747e1`
- Candidate SHA-256: `d1a19d632dd9039fa1b6c63e1d453d552a8dca95cec2143735e5f98ebe3e6fb9`
- Primary source SHA-256: `c3a0d98061bd7fb828ec939eb0d031e37164b36da1a0bd1a84c504909b38b8c0`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE - not authorized as a 100% reconstruction**

| Gate | Result | Current evidence |
|---|---|---|
| Stock/Ghidra corpus | PASS | 11 pseudocode exports, 11 P-Code streams and 11 stock assembly functions |
| Stock-to-source map | PASS | 11/11 reviewed mappings |
| Reproducible build | PASS | Two clean Docker builds produced the candidate SHA-256 above |
| ELF/KMI inventory | PASS | 11/11 text symbols and 17/17 undefined imports; no extra symbol |
| Layout/ABI | PASS | Four structures and 23 data/BSS symbols match recovered AArch64 layouts |
| Ghidra comparison | PASS | 11/11 body sizes, function inventory and call multiplicity |
| KCFI | PASS | 11/11 type IDs, sections and exact symbol sizes |
| Host harness | PASS | 11/11 functions covered; two runs and host binaries are identical |
| Microtasks | PASS | 11/11 hash-backed compile/KCFI/test attestations |
| Strict assembly | PASS | 11/11 symbol sizes, opcodes, sections and resolved relocations |
| Independent review | PENDING | No reviewer distinct from the implementer has signed this candidate hash |
| Controlled hardware | DEFERRED | No module-load, concurrency or vendor-service test for this exact candidate |

`zlog_enable_test_set`, the final residual, now has the same 836-byte and
209-instruction stream as stock. The source uses the nested return-value flow
recovered by Ghidra; no padding, inline assembly, unsafe callback cast or fake
symbol was introduced.

`static_verified` proves build/KMI/traceability and offline parity only. It
does not prove timing, workqueue concurrency or interaction with the physical
device and vendor services.
