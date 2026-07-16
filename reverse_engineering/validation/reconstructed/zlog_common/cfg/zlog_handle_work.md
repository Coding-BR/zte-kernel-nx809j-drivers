# zlog_handle_work Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 259 | 259 |
| Symbol bytes | 1036 | 1036 |
| Basic blocks | 26 | 26 |
| CFG edges | 34 | 34 |
| Calls | 32 | 32 |
| Call regions | 53 | 53 |

- Block-signature similarity: `0.615385`
- Mnemonic similarity: `0.980695`
- Raw opcode similarity: `0.926641`
- Ordered call-target similarity: `1.000000`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B000..B002` | `B000..B002` |
| `replace` | `B009..B014` | `B009..B014` |
| `replace` | `B021..B021` | `B021..B021` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
