# zlog_common reconstruction status

- Stock SHA-256: `cc84a3119927bc189fb60a2d2d5e339e93e5ab0bb127316a1fd4f4ccfcad8da0`
- Candidate SHA-256: `7fc5eb558f7b893e10a8901ed2d774823aac1780052b8997883e9f4a37ed7173`
- Source SHA-256: `d3931f63cc79b01cee1cd889cf6a07c685a9b060d05779a3d285aa5a99318215`
- Kernel target: Android 16 / GKI `6.12.23` / AArch64 / `vendor_dlkm`
- Overall verdict: **INCOMPLETE - not authorized as a 100% reconstruction**

| Gate | Result | Current evidence |
|---|---|---|
| Stock/Ghidra corpus | PASS | 13 pseudocode exports, 13 P-Code streams and 13 stock assembly functions |
| Stock-to-source map | PASS | 13/13 reviewed mappings |
| Reproducible build | PASS | Two clean Docker builds produced the candidate SHA-256 above |
| ELF/KMI inventory | PASS | 13/13 text symbols and 31/31 undefined imports; no extra text/import symbol |
| KCFI | PASS | 12/12 applicable type IDs and sections; `zlog_comm_create_ctrl_dev` is direct-call-only |
| Host harness | PASS | 13/13 functions covered; two runs and two host binaries are identical |
| Microtasks | PASS | 13/13 hash-backed compile/KCFI/test attestations |
| Strict assembly | PARTIAL | 9/13 exact; sections 13/13, sizes 12/13 and relocations 11/13 |
| Independent review | PENDING | No reviewer distinct from the implementer has signed this candidate hash |
| Controlled hardware | DEFERRED | No `insmod`, userspace ABI or worker-path execution for this exact candidate |

Strict assembly matches: `init_module`, `zlog_client_notify`,
`zlog_comm_create_ctrl_dev`, `zlog_comm_ioctl`, `zlog_comm_open`,
`zlog_comm_read`, `zlog_comm_release`, `zlog_comm_write` and
`zlog_reset_client`.

Residuals remain explicit:

| Function | Stock/candidate shape | CFG/calls | Mnemonic similarity |
|---|---|---|---:|
| `zlog_client_record` | 404/404 bytes | 20/20 blocks; 7/7 calls | 0.940594 |
| `zlog_handle_work` | 1036/1036 bytes | 26/26 blocks; 32/32 calls | 0.980695 |
| `zlog_register_client` | 828/816 bytes | 38/34 blocks; 26/26 calls | 0.875912 |
| `zlog_unregister_client` | 312/312 bytes | 14/14 blocks; 5/5 calls | 0.897436 |

No artificial padding or unsafe cast was added to hide these differences. The
`static_verified` build label proves build/KMI/traceability only; it does not
override the partial assembly, review or hardware gates.
