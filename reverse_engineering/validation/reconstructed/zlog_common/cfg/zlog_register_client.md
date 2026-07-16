# zlog_register_client Basic-Block Audit

> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.

## Summary

| Metric | Stock | Candidate |
|---|---:|---:|
| Instructions | 207 | 204 |
| Symbol bytes | 828 | 816 |
| Basic blocks | 38 | 34 |
| CFG edges | 56 | 50 |
| Calls | 26 | 26 |
| Call regions | 63 | 59 |

- Block-signature similarity: `0.527778`
- Mnemonic similarity: `0.875912`
- Raw opcode similarity: `0.783455`
- Ordered call-target similarity: `0.961538`

## Changed Block Ranges

| Kind | Stock blocks | Candidate blocks |
|---|---|---|
| `replace` | `B000..B000` | `B000..B001` |
| `replace` | `B002..B005` | `B003..B005` |
| `replace` | `B012..B014` | `B012..B013` |
| `replace` | `B017..B023` | `B016..B018` |
| `replace` | `B025..B025` | `B020..B020` |
| `replace` | `B031..B031` | `B026..B026` |
| `replace` | `B033..B034` | `B028..B030` |

## Interpretation Rule

Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.
