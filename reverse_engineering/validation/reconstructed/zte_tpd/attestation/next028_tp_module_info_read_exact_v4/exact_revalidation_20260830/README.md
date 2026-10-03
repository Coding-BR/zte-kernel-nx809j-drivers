# Exact revalidation: `tp_module_info_read`

This package records the offline exact-function revalidation of microtask `028_tp_module_info_read` for `zte_tpd`.

- Stock entry: `0x00109784`; stock body and ELF symbol: 672 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 168 instructions and 672 bytes on both sides. The package preserves both the C reconstruction and the exact `.S` source used for the recovered body, including callback dispatch, field offsets, formatting, cursor handling, overflow trap and `simple_read_from_buffer` flow.
- KCFI comparison: PASS; `.text`, 672 bytes, type ID `0xf4e9d97c` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 123 calls, 23 control structures, and zero unresolved calls. The review retains one high-severity `userspace_egress` finding around the procfs/userspace ABI.
- Host contract: two reproducible Docker ASan/UBSan cycles covering full optional-field output and short-read/EOF cursor behavior.

The claim is offline exact-function parity only. The fatal overflow trap is not executed by the host harness; procfs/userspace integration, callback lifetime, smartphone execution, and NX809J runtime behavior remain deferred.
