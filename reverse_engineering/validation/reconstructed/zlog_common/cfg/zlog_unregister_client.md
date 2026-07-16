# zlog_unregister_client Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 78 | 78 |
| Symbol bytes | 312 | 312 |
| Basic blocks | 14 | 14 |
| CFG edges | 17 | 17 |
| Calls | 5 | 5 |
| Call regions | 17 | 17 |

- Block-signature similarity: `0.642857`
- Mnemonic similarity: `0.897436`
- Raw opcode similarity: `0.871795`
- Ordered call-target similarity: `1.000000`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B000..B000` | `B000..B001` |
| `replace` | `B002..B003` | `B003..B003` |
| `replace` | `B006..B006` | `B006..B006` |
| `replace` | `B009..B009` | `B009..B009` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
