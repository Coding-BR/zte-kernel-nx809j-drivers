# nubia_hw_ver_probe Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 380 | 380 |
| Symbol bytes | 1520 | 1520 |
| Basic blocks | 74 | 74 |
| CFG edges | 111 | 111 |
| Calls | 66 | 66 |
| Call regions | 135 | 135 |

- Block-signature similarity: `0.689189`
- Mnemonic similarity: `1.000000`
- Raw opcode similarity: `1.000000`
- Ordered call-target similarity: `1.000000`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B000..B000` | `B000..B000` |
| `replace` | `B008..B009` | `B008..B009` |
| `replace` | `B011..B011` | `B011..B011` |
| `replace` | `B015..B015` | `B015..B015` |
| `replace` | `B017..B021` | `B017..B021` |
| `replace` | `B028..B028` | `B028..B028` |
| `replace` | `B032..B032` | `B032..B032` |
| `replace` | `B034..B034` | `B034..B034` |
| `replace` | `B042..B043` | `B042..B043` |
| `replace` | `B052..B053` | `B052..B053` |
| `replace` | `B058..B059` | `B058..B059` |
| `replace` | `B065..B065` | `B065..B065` |
| `replace` | `B067..B067` | `B067..B067` |
| `replace` | `B069..B069` | `B069..B069` |
| `replace` | `B071..B071` | `B071..B071` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
