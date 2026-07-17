# zte_tpd Full KCFI Surface

- Status: `INCOMPLETE`
- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- Candidate SHA-256: `8bf17b48fd905e75504754ab13db24dbbe98ae6141953bc646a7b823d8bee29f`
- Matched: `154/322` (47.83%)
- Mismatched: `168`
- Missing candidate records: `0`
- Stock records excluded by preamble recovery: `46`

The existing 151-function direct report is a selected callback surface. This report
is the authoritative inventory for the complete recoverable stock KCFI surface.

## Largest Mismatch Families

| Stock type ID | Functions |
| --- | ---: |
| `0x6fbb3035` | 11 |
| `0x1eb3b73d` | 8 |
| `0xae20471c` | 8 |
| `0x4e31a072` | 7 |
| `0x3175607e` | 6 |
| `0x2a703c0b` | 5 |
| `0x2b399469` | 5 |
| `0x81c04a92` | 5 |
| `0x9ce291cd` | 5 |
| `0xa33285f2` | 5 |
| `0x24a11bb9` | 4 |
| `0x627e4777` | 4 |
| `0x9829071d` | 4 |
| `0xdd66a5c9` | 4 |
| `0x135bb445` | 3 |
| `0x9b7e2760` | 3 |
| `0x9f93c40a` | 3 |
| `0xa2fce979` | 3 |
| `0x1e333d0b` | 2 |
| `0x28a4201f` | 2 |
| `0x2af6cdbb` | 2 |
| `0x2fad8a96` | 2 |
| `0x30c400c0` | 2 |
| `0x6f1c1b70` | 2 |
| `0x720adbbe` | 2 |
| `0x7bff871d` | 2 |
| `0xc069e464` | 2 |
| `0xc7f8c87c` | 2 |
| `0xcdde824b` | 2 |
| `0xd57a6509` | 2 |

## Rule

A function may use this report as KCFI evidence only when its own comparison
record has `passed: true`. An absent or excluded stock preamble is not an
automatic PASS and requires separate evidence.
