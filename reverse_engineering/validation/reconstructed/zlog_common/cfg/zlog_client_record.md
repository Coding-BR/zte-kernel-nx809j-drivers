# zlog_client_record Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 101 | 101 |
| Symbol bytes | 404 | 404 |
| Basic blocks | 20 | 20 |
| CFG edges | 26 | 26 |
| Calls | 7 | 7 |
| Call regions | 25 | 25 |

- Block-signature similarity: `0.850000`
- Mnemonic similarity: `0.940594`
- Raw opcode similarity: `0.861386`
- Ordered call-target similarity: `1.000000`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B003..B003` | `B003..B003` |
| `replace` | `B011..B012` | `B011..B012` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
