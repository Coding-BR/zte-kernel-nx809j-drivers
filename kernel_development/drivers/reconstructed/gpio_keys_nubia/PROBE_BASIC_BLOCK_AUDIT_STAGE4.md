# gpio_keys_probe Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 900 | 900 |
| Symbol bytes | 3600 | 3600 |
| Basic blocks | 228 | 228 |
| CFG edges | 387 | 387 |
| Calls | 67 | 67 |
| Call regions | 288 | 288 |

- Block-signature similarity: `0.815789`
- Mnemonic similarity: `0.952222`
- Raw opcode similarity: `0.585556`
- Ordered call-target similarity: `0.985075`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B011..B011` | `B011..B011` |
| `replace` | `B013..B016` | `B013..B014` |
| `replace` | `B018..B018` | `B016..B016` |
| `replace` | `B027..B027` | `B025..B025` |
| `replace` | `B038..B038` | `B036..B036` |
| `replace` | `B045..B045` | `B043..B043` |
| `replace` | `B049..B052` | `B047..B050` |
| `replace` | `B057..B057` | `B055..B055` |
| `replace` | `B059..B059` | `B057..B057` |
| `replace` | `B076..B076` | `B074..B074` |
| `replace` | `B079..B079` | `B077..B077` |
| `replace` | `B091..B091` | `B089..B089` |
| `replace` | `B095..B095` | `B093..B093` |
| `replace` | `B103..B105` | `B101..B103` |
| `replace` | `B109..B109` | `B107..B107` |
| `replace` | `B113..B113` | `B111..B111` |
| `replace` | `B124..B124` | `B122..B122` |
| `replace` | `B130..B130` | `B128..B129` |
| `replace` | `B132..B132` | `B131..B131` |
| `replace` | `B136..B139` | `B135..B138` |
| `replace` | `B157..B157` | `B156..B156` |
| `replace` | `B181..B181` | `B180..B180` |
| `replace` | `B187..B187` | `B186..B186` |
| `replace` | `B196..B196` | `B195..B195` |
| `replace` | `B210..B210` | `B209..B209` |
| `replace` | `B214..B216` | `B213..B218` |
| `replace` | `B220..B222` | `B222..B222` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
