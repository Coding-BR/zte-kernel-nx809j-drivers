# Exact revalidation: `tp_ghost_check_work`

This package records the offline exact-function revalidation of microtask `023_tp_ghost_check_work` for `zte_tpd`.

- Stock entry: `0x00108690`; stock body and ELF symbol: 176 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 44 instructions and 176 bytes on both sides. The odd-bit gate, ghost counter limit at `+0x4a8`, callback at `+0xff0`, reset call, printk paths, counter increment, and flag clear at `+0x488` are preserved.
- KCFI comparison: PASS; `.text`, 176 bytes, type ID `0x73fc0d79` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 44 calls, seven control structures, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering five direct cases: no ghost, increment without callback, limit skip, callback reset/increment, and the boundary callback case.

The claim is offline exact-function parity only. The invalid KCFI callback path is verified statically and not invoked by the host harness; scheduler, smartphone runtime, and NX809J hardware behavior remain deferred.
