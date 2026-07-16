# zlog_enable_test_set Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 209 | 209 |
| Symbol bytes | 836 | 836 |
| Basic blocks | 20 | 20 |
| CFG edges | 27 | 27 |
| Calls | 35 | 35 |
| Call regions | 54 | 54 |

- Block-signature similarity: `0.550000`
- Mnemonic similarity: `1.000000`
- Raw opcode similarity: `1.000000`
- Ordered call-target similarity: `1.000000`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B001..B008` | `B001..B008` |
| `replace` | `B010..B010` | `B010..B010` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
