# Status: `zte_imem_info`

State: **OFFLINE SEMANTIC PARITY - strict binary identity and hardware
validation remain open**.

| Gate | Result | Evidence |
|---|---|---|
| Stock provenance | PASS | SHA-256 `6a0fff182e40e9676a321e6c55796ed94d382faf3ec1e1999a53e5076ffd3e65` |
| Ghidra/P-Code coverage | PASS | 6/6 stock functions mapped |
| Clean target build | PASS | two clean builds produced SHA-256 `bcfe7f1296db667b1ac85d156eb894f17b00ec597fcd68db71ab6c0a443ff9a2` |
| Target vermagic | PASS | `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k` |
| KCFI | PASS | 6/6 type IDs, sections and function sizes match |
| Strict AArch64 comparison | PARTIAL | 5/6 functions exact; `ddr_id_read_proc` differs in two equivalent opcodes |
| AArch64 semantic predicate | PASS | `x >= 10` and `x > 9` use the same register and branch target |
| Host harness | PASS | two reproducible runs; all six functions and DDR type IDs `0..10`, `UINT_MAX` covered |
| Independent review | PENDING | no second reviewer attestation for this candidate hash |
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
`10..UINT_MAX`. The strict comparator intentionally remains failed; the
separate semantic report does not claim binary identity or hardware safety.

See `STAGE2_OFFLINE_VALIDATION.md` and
`reverse_engineering/validation/reconstructed/zte_imem_info/`.
