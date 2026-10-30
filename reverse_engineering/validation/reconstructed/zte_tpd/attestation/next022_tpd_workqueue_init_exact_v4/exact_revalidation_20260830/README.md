# Exact revalidation: `tpd_workqueue_init`

This package records the offline exact-function revalidation of microtask `022_tpd_workqueue_init` for `zte_tpd`.

- Stock entry: `0x00108508`; stock body and ELF symbol: 388 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 97 instructions and 388 bytes on both sides. The workqueue allocation, failure cleanup, `tpd_report_work_init` gate, probe/resume/zlog/ghost work initialization, timer callbacks, field offsets, flags, and return behavior are preserved.
- KCFI comparison: PASS; `.text`, 388 bytes, type ID `0x6fbb3035` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 64 calls, four control structures, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering allocation failure, report-work initialization failure after slot clear, preservation of a non-null workqueue on failure, and complete success initialization.

The claim is offline exact-function parity only. Kernel workqueue/timer scheduling, live device state, smartphone execution, and NX809J hardware behavior remain deferred.
