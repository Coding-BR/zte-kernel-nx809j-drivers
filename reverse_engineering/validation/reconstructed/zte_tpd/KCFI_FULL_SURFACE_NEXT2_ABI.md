# zte_tpd Full KCFI Surface

- Status: `INCOMPLETE`
- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- Candidate SHA-256: `7f594b0973d80ba105a8ed83e085b4895ae228fe8a82b1a1a7efe9942c9724fa`
- Matched: `257/322` (79.81%)
- Mismatched: `65`
- Missing candidate records: `0`
- Stock records excluded by preamble recovery: `46`

The existing 151-function direct report is a selected callback surface. This report
is the authoritative inventory for the complete recoverable stock KCFI surface.

## Largest Mismatch Families

| Stock type ID | Functions |
| --- | ---: |
| `0x1e333d0b` | 2 |
| `0x28a4201f` | 2 |
| `0x2af6cdbb` | 2 |
| `0x2fad8a96` | 2 |
| `0x30c400c0` | 2 |
| `0x6f1c1b70` | 2 |
| `0x720adbbe` | 2 |
| `0xc069e464` | 2 |
| `0xcdde824b` | 2 |
| `0xd57a6509` | 2 |
| `0xdad41fc4` | 2 |
| `0x04a0b1dd` | 1 |
| `0x0b6a0563` | 1 |
| `0x0b7841ca` | 1 |
| `0x105d2ee9` | 1 |
| `0x11058819` | 1 |
| `0x17defb3b` | 1 |
| `0x1ff8a78c` | 1 |
| `0x2431fd45` | 1 |
| `0x24cba334` | 1 |
| `0x2b3cba1b` | 1 |
| `0x2e79609a` | 1 |
| `0x342e61b1` | 1 |
| `0x38633085` | 1 |
| `0x39266119` | 1 |
| `0x4b2750f2` | 1 |
| `0x56ccd541` | 1 |
| `0x5f30282b` | 1 |
| `0x6dc86eaa` | 1 |
| `0x73b3656d` | 1 |

## Rule

A function may use this report as KCFI evidence only when its own comparison
record has `passed: true`. An absent or excluded stock preamble is not an
automatic PASS and requires separate evidence.
