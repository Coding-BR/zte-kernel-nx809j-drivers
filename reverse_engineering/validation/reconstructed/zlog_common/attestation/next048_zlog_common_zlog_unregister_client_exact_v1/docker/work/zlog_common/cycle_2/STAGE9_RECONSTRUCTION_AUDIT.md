# zlog_common Stage 9 reconstruction audit

## Scope and identity

This audit is bound to stock SHA-256
`cc84a3119927bc189fb60a2d2d5e339e93e5ab0bb127316a1fd4f4ccfcad8da0`
and candidate SHA-256
`7fc5eb558f7b893e10a8901ed2d774823aac1780052b8997883e9f4a37ed7173`.
The local ROM ELF, Ghidra pseudocode/P-Code and per-function AArch64 assembly
are the source of truth. No internet implementation was used.

## Recovered source facts

- The server array name is `client_list`; this is preserved by the stock
  `mutex_init` diagnostic string.
- `init_finished` is bit 0 of the byte at server offset `0x24c4`. The header
  exposes an `init_flags` storage byte so the AArch64 offset remains assertable.
- `zlog_comm_create_ctrl_dev` is `__init`, resides in `.init.text` and is a
  direct-call function without a standalone KCFI preamble.
- The allocation inside the inlined event creation path originates from
  `zlog_create_event`; restoring this inline helper matches the stock allocation
  tag relocation.
- No padding, assembly shim or function-pointer cast was introduced to force a
  superficial match.

## Validation matrix

| Check | Result | Evidence |
|---|---|---|
| Double-clean module build | PASS | `driver_build_audit.json` |
| Promoted candidate identity | PASS | both clean builds and curated `.ko` share the candidate hash |
| Text/import inventory | PASS | 13 text functions, 31 undefined imports, no missing or extra symbol |
| Source mapping | PASS | 13/13 reviewed stock-to-source mappings |
| KCFI | PASS | 12/12 applicable type IDs and sections; one direct-call N/A |
| Host harness | PASS | all 13 functions covered in two reproducible runs |
| Microtask attestation | PASS | 13/13 compile/KCFI/test receipt sets |
| Strict assembly | PARTIAL | 9/13 complete matches |
| Independent review | PENDING | reviewer must sign this exact candidate hash |
| Hardware validation | DEFERRED | no device operation was performed |

The nine strict matches are `init_module`, `zlog_client_notify`,
`zlog_comm_create_ctrl_dev`, `zlog_comm_ioctl`, `zlog_comm_open`,
`zlog_comm_read`, `zlog_comm_release`, `zlog_comm_write` and
`zlog_reset_client`.

## Residual analysis

| Function | Size stock/candidate | Blocks stock/candidate | Calls stock/candidate | Mnemonic ratio | Remaining class |
|---|---:|---:|---:|---:|---|
| `zlog_client_record` | 404/404 | 20/20 | 7/7 | 0.940594 | register allocation and varargs stack layout |
| `zlog_handle_work` | 1036/1036 | 26/26 | 32/32 | 0.980695 | local zeroing order, register selection and one unsigned-bound branch form |
| `zlog_register_client` | 828/816 | 38/34 | 26/26 | 0.875912 | early-return block placement and three missing instructions |
| `zlog_unregister_client` | 312/312 | 14/14 | 5/5 | 0.897436 | error block placement, zero-store grouping and relocation order |

The harness proves modeled host behavior, not kernel concurrency, workqueue
scheduling, userspace ABI timing or interaction with `zlog_exception`. These
remain subjects for an independent review and a controlled device test.

## Verdict

`INCOMPLETE`: the candidate is reproducibly buildable and strongly aligned
offline, but strict assembly, independent review and hardware gates are not all
closed. It must not be described as a 100% reconstruction.
