# zlog_exception Stage 9 reconstruction audit

## Scope and identity

This audit is bound to stock SHA-256
`30948fd9026aa0a33d5602c0a395f8bf89c9aaa717317c4c2866e29ab7cad372`
and candidate SHA-256
`756a1fc43fa10beac9311a11d184870aae2f446710c33fb956e8d829a9a6d587`.
The local ROM ELF, Ghidra pseudocode/P-Code and per-function AArch64 assembly
are the source of truth. No internet implementation was used.

## Recovered source facts

- `zlog_fragment` is 32 bytes; `length` is at `0x10` and `data` at `0x18`.
- `g_zlog_info` is 184 bytes. The fragment list, misc device, wait queue and
  counters remain fixed at their recovered AArch64 offsets.
- The stock capacity test is represented as a cold `>= 0x401` path.
- The allocation and copy failures retain their distinct return values and
  cleanup order. The cold block layout now matches the stock instruction
  stream.
- `zlog_create_log_dev` is direct-call-only and has no standalone KCFI
  preamble; the other nine boundaries match exactly.
- No artificial padding, unsafe function-pointer cast or assembly shim was
  introduced to force a superficial match.

## Validation matrix

| Check | Result | Evidence |
|---|---|---|
| Double-clean module build | PASS | `driver_build_audit.json` |
| Promoted candidate identity | PASS | both clean builds and curated `.ko` share the candidate hash |
| Text/import inventory | PASS | 10 text functions, 27 undefined imports, no missing or extra symbol |
| Source mapping | PASS | 10/10 reviewed stock-to-source mappings |
| Ghidra export comparison | PASS | 10/10 inventory and call multiplicity |
| KCFI | PASS | 9/9 applicable type IDs, sections and sizes; one direct-call N/A |
| Host harness | PASS | all 10 functions covered in two reproducible runs |
| Microtask attestation | PASS | 10/10 compile/KCFI/test receipt sets |
| Strict assembly | PARTIAL | instructions, sections and sizes 10/10; relocations 9/10 |
| Independent review | PENDING | reviewer must sign this exact candidate hash |
| Hardware validation | DEFERRED | no device operation was performed |

## Residual analysis

`init_module` is 152 bytes on both sides, has four basic blocks and four calls,
and has mnemonic similarity `1.0`. Its instruction stream is exact. The sole
strict mismatch is the generated local lockdep key name:
`zlog_init.__key.11` in stock versus `zlog_init.__key.10` in the candidate.
Both relocations target the same lock-class role. Attempts to force this
compiler-local suffix would merely displace another generated identifier, so
the source retains the standard `mutex_init` macro and records the difference.

The harness proves modeled host behavior, not kernel concurrency, wake-up
timing, userspace ABI timing or interaction with `zlog_common`. Those remain
subjects for independent review and a controlled device test.

## Verdict

`INCOMPLETE`: the candidate is reproducibly buildable and strongly aligned
offline, but strict relocation identity, independent review and hardware gates
are not all closed. It must not be described as a 100% reconstruction.
