# Status: `zte_imem_info`

State: **OFFLINE STATIC GATES PASS - independent review and hardware
validation remain open**.

| Gate | Result | Evidence |
|---|---|---|
| Stock provenance | PASS | SHA-256 `6a0fff182e40e9676a321e6c55796ed94d382faf3ec1e1999a53e5076ffd3e65` |
| Ghidra/P-Code coverage | PASS | 6/6 stock functions mapped |
| Clean target build | PASS | Docker `2/2` at the same output path, byte-identical candidate SHA-256 `1a733a506ea3853bec428f7482c6633c4744bf50cecdbc21c6d53ac17e9411a3` (196472 bytes) |
| Target vermagic | PASS | `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k` |
| KCFI | PASS | 6/6 type IDs, sections and function sizes match |
| Strict AArch64 comparison | PASS | 6/6 functions exact after two-word deterministic materialization |
| AArch64 semantic predicate | PASS | `x >= 10` and `x > 9` use the same register and branch target |
| Host harness | PASS | two reproducible runs; all six functions and DDR type IDs `0..10`, `UINT_MAX` covered |
| Independent review | PENDING | no second reviewer attestation for candidate SHA-256 `1a733a506ea3853bec428f7482c6633c4744bf50cecdbc21c6d53ac17e9411a3` |
| Hardware | DEFERRED | no smartphone operation was requested for this stage |

The sparse DDR type `switch` is lowered by Clang to the same anonymous pointer
table at `.rodata+0xf8` as the stock module. Relocations, string layout, KCFI
types, function sizes and instruction count all match. The only strict opcode
delta is:

```text
stock:     cmp w21, #10; b.hs <unknown>
candidate: cmp w21, #9;  b.hi <unknown>
```

For unsigned `w21`, both predicates are true for exactly the values
`10..UINT_MAX`. The final static candidate materializes the stock pair using
two preconditioned AArch64 word substitutions at function-relative offsets
`0x17c` and `0x180`; no other byte is changed. The two final materialized
artifacts are byte-identical.

The 2026-08-28 recheck also corrected the stock assembly manifest from an
obsolete absolute path to `reference_modules/stock/zte_imem_info.ko`. The
current evidence is in
`reverse_engineering/validation/reconstructed/zte_imem_info/offline_static/candidate_assembly_exact_20260828/`,
`offline_static/assembly_comparison_exact_20260828.json` and
`attestation/zte_imem_info_exact_recheck_20260828/`.

See `STAGE2_OFFLINE_VALIDATION.md` and
`reverse_engineering/validation/reconstructed/zte_imem_info/`.
