# zte_tpd Full KCFI Surface

- Status: `INCOMPLETE`
- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- Candidate SHA-256: `1e6cb827166efae177f8c3056ab48770a77dbb5d2423e9a1b74507f52ed611d1`
- Matched: `280/322` (86.96%)
- Mismatched: `42`
- Missing candidate records: `0`
- Stock records excluded by preamble recovery: `46`

The existing 151-function direct report is a selected callback surface. This report
is the authoritative inventory for the complete recoverable stock KCFI surface.

## Largest Mismatch Families

| Stock type ID | Functions |
| --- | ---: |
| `0x28a4201f` | 2 |
| `0x2af6cdbb` | 2 |
| `0x2fad8a96` | 2 |
| `0x30c400c0` | 2 |
| `0xdad41fc4` | 2 |
| `0x0b6a0563` | 1 |
| `0x0b7841ca` | 1 |
| `0x2431fd45` | 1 |
| `0x24cba334` | 1 |
| `0x2b3cba1b` | 1 |
| `0x2e79609a` | 1 |
| `0x342e61b1` | 1 |
| `0x56ccd541` | 1 |
| `0x5f30282b` | 1 |
| `0x6dc86eaa` | 1 |
| `0x73b3656d` | 1 |
| `0x796eea76` | 1 |
| `0x7bff871d` | 1 |
| `0x82a068af` | 1 |
| `0x9293eeef` | 1 |
| `0xaa5cbef1` | 1 |
| `0xaed6ff3a` | 1 |
| `0xb72a3c1c` | 1 |
| `0xb9434444` | 1 |
| `0xc1b5ec9e` | 1 |
| `0xc5545626` | 1 |
| `0xcdde824b` | 1 |
| `0xcf0d7fba` | 1 |
| `0xcf1edfe9` | 1 |
| `0xd2f00be1` | 1 |

## Rule

A function may use this report as KCFI evidence only when its own comparison
record has `passed: true`. An absent or excluded stock preamble is not an
automatic PASS and requires separate evidence.
