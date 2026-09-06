# zlog_test Stage 9 reconstruction audit

## Scope and identity

This audit is bound to stock SHA-256
`e595c91cb5ef517c620d362c82eb05bca98cd5726757b9a6cb7cb96a788747e1`
and candidate SHA-256
`d1a19d632dd9039fa1b6c63e1d453d552a8dca95cec2143735e5f98ebe3e6fb9`.
The local ROM ELF, Ghidra pseudocode/P-Code and AArch64 assembly are the
source of truth. No internet implementation and no smartphone operation were
used for this reconstruction stage.

## Recovered source facts

- `struct zte_misc_ops` is 40 bytes; `set`, `get`, `show` and `priv` are at
  offsets `0x08`, `0x10`, `0x18` and `0x20`.
- `struct zlog_mod_info` is 48 bytes; `client_name` is at `0x08` and `ops` at
  `0x28`.
- `struct zlog_client_ops` is 16 bytes with `notify` at `0x08`.
- The five client pointers and the five workqueue/work pairs occupy the exact
  stock `.bss` offsets. All five 48-byte descriptors occupy the exact stock
  `.data` offsets.
- The setter retains the stock invalid-input, already-set, enable and disable
  paths. Registration failures are logged individually without aborting the
  remaining registrations or queue operations.
- Each worker records five fixed messages, notifies event `5`, then reschedules
  on CPU `0x20` after `(random % 5) * 1000` milliseconds.
- No artificial padding, unsafe function-pointer cast or assembly shim was
  introduced to force parity.

## Validation matrix

| Check | Result | Evidence |
|---|---|---|
| Double-clean module build | PASS | `driver_build_audit.json` |
| Promoted candidate identity | PASS | both clean builds and the published `.ko` share one hash |
| Text/import inventory | PASS | 11 text functions, 17 undefined imports, no missing or extra symbol |
| Layout/ABI | PASS | compile-time assertions and exact stock/candidate data/BSS layout |
| Source mapping | PASS | 11/11 reviewed stock-to-source mappings |
| Ghidra export comparison | PASS | 11/11 body sizes, inventory and call multiplicity |
| KCFI | PASS | 11/11 type IDs, sections and exact symbol sizes |
| Host harness | PASS | all 11 functions covered in two reproducible runs |
| Microtask attestation | PASS | 11/11 compile/KCFI/test receipt sets |
| Strict assembly | PASS | 11/11 opcodes, sizes, sections and resolved relocations |
| Independent review | PENDING | reviewer must sign this exact candidate hash |
| Hardware validation | DEFERRED | no device operation was performed |

## Final setter residual

The previous candidate tail-merged the already-set return path and was one
instruction shorter. Reconstructing the nested result assignments shown by
Ghidra restored the stock block without changing behavior. The final function
has 836 bytes, 209 instructions, 20 basic blocks, 27 edges and 35 calls on both
sides. Raw opcode, mnemonic and ordered-call similarity are all `1.0`.

Some CFG block signatures print stock destinations as `.bss+offset` while the
candidate retains source symbol names. The strict ELF-aware comparator resolves
those symbols to the same section-relative targets and passes every relocation.

## Verdict

`INCOMPLETE`: this exact candidate satisfies all defined offline technical
gates and is a `STATIC_ALIGNED_CANDIDATE`. It still lacks an independent
reviewer and controlled hardware validation, so it must not be described as a
100% reconstruction.
