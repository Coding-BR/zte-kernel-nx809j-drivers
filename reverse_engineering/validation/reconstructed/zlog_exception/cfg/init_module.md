# init_module Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 38 | 38 |
| Symbol bytes | 152 | 152 |
| Basic blocks | 4 | 4 |
| CFG edges | 4 | 4 |
| Calls | 4 | 4 |
| Call regions | 8 | 8 |

- Block-signature similarity: `0.250000`
- Mnemonic similarity: `1.000000`
- Raw opcode similarity: `1.000000`
- Ordered call-target similarity: `1.000000`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B001..B003` | `B001..B003` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
