# nubia_hw_rf_band_show Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 61 | 63 |
| Symbol bytes | 244 | 252 |
| Basic blocks | 17 | 17 |
| CFG edges | 23 | 23 |
| Calls | 2 | 2 |
| Call regions | 19 | 19 |

- Block-signature similarity: `0.235294`
- Mnemonic similarity: `0.838710`
- Raw opcode similarity: `0.725806`
- Ordered call-target similarity: `1.000000`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B002..B005` | `B002..B004` |
| `replace` | `B007..B015` | `B006..B015` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
