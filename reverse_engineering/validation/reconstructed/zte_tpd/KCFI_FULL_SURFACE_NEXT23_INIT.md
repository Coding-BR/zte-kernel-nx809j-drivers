# zte_tpd Full KCFI Surface

- Status: `INCOMPLETE`
- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- Candidate SHA-256: `9237c4cd4e2cb8bafd0824b4066fc6882ccdc9e0aceb9e597bc424deee681657`
- Matched: `305/322` (94.72%)
- Mismatched: `17`
- Missing candidate records: `0`
- Stock records excluded by preamble recovery: `46`

The existing 151-function direct report is a selected callback surface. This report
is the authoritative inventory for the complete recoverable stock KCFI surface.

## Largest Mismatch Families

| Stock type ID | Functions |
| --- | ---: |
| `0x28a4201f` | 2 |
| `0x24cba334` | 1 |
| `0x2af6cdbb` | 1 |
| `0x2e79609a` | 1 |
| `0x5f30282b` | 1 |
| `0x6dc86eaa` | 1 |
| `0x73b3656d` | 1 |
| `0x9293eeef` | 1 |
| `0xaa5cbef1` | 1 |
| `0xb72a3c1c` | 1 |
| `0xc5545626` | 1 |
| `0xcf1edfe9` | 1 |
| `0xda19bd63` | 1 |
| `0xdac58b52` | 1 |
| `0xdb725fb0` | 1 |
| `0xf4d5d168` | 1 |

## Rule

A function may use this report as KCFI evidence only when its own comparison
record has `passed: true`. An absent or excluded stock preamble is not an
automatic PASS and requires separate evidence.
