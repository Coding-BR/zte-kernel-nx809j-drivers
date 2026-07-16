# zlog_exception reconstruction status

- Target: `NX809J (RedMagic 11 Pro+)`
- Stock SHA-256: `30948fd9026aa0a33d5602c0a395f8bf89c9aaa717317c4c2866e29ab7cad372`
- Candidate SHA-256: `756a1fc43fa10beac9311a11d184870aae2f446710c33fb956e8d829a9a6d587`
- Source SHA-256: `0aabf5ee8ae768c72a4935c209f5c1096a7e331c30dad2837fadf4faafeb5da5`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE - not authorized as a 100% reconstruction**

| Gate | Result | Current evidence |
|---|---|---|
| Stock/Ghidra corpus | PASS | 10 pseudocode exports, 10 P-Code streams and 10 stock assembly functions |
| Stock-to-source map | PASS | 10/10 reviewed mappings |
| Reproducible build | PASS | Two clean Docker builds produced the candidate SHA-256 above |
| ELF/KMI inventory | PASS | 10/10 text symbols and 27/27 undefined imports; no extra text/import symbol |
| Ghidra comparison | PASS | 10/10 function inventory and per-function call multiplicity |
| KCFI | PASS | 9/9 applicable type IDs, sections and exact symbol sizes; one direct-call N/A |
| Host harness | PASS | 10/10 functions covered; two runs and two host binaries are identical |
| Microtasks | PASS | 10/10 hash-backed compile/KCFI/test attestations |
| Strict assembly | PARTIAL | Instructions, sections and sizes 10/10; relocations 9/10 |
| Independent review | PENDING | No reviewer distinct from the implementer has signed this candidate hash |
| Controlled hardware | DEFERRED | No load, userspace ABI or concurrency test for this exact candidate |

Nine functions are strict matches. `init_module` has the same 152-byte
instruction stream, section, CFG shape and calls as stock; only the
compiler-local lockdep key relocation suffix differs (`.10` versus `.11`). No
padding, assembly shim or forced symbol-label workaround was retained to hide
that residual.

The `static_verified` build label proves build/KMI/traceability only. The
candidate must not be described as functionally equivalent until the residual,
independent review and controlled hardware gates are closed for this hash.
