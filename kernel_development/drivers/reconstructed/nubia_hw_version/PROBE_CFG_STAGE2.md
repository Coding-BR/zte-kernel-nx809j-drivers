# nubia_hw_ver_probe Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 380 | 370 |
| Symbol bytes | 1520 | 1480 |
| Basic blocks | 74 | 74 |
| CFG edges | 111 | 111 |
| Calls | 66 | 66 |
| Call regions | 135 | 135 |

- Block-signature similarity: `0.364865`
- Mnemonic similarity: `0.922667`
- Raw opcode similarity: `0.813333`
- Ordered call-target similarity: `1.000000`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B000..B000` | `B000..B000` |
| `replace` | `B005..B009` | `B005..B009` |
| `replace` | `B011..B013` | `B011..B013` |
| `replace` | `B015..B015` | `B015..B015` |
| `replace` | `B017..B022` | `B017..B022` |
| `replace` | `B026..B029` | `B026..B029` |
| `replace` | `B031..B035` | `B031..B035` |
| `replace` | `B037..B037` | `B037..B037` |
| `replace` | `B041..B053` | `B041..B053` |
| `replace` | `B058..B059` | `B058..B059` |
| `replace` | `B065..B065` | `B065..B065` |
| `replace` | `B067..B067` | `B067..B067` |
| `replace` | `B069..B071` | `B069..B071` |
| `replace` | `B073..B073` | `B073..B073` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
