# Exact revalidation: `tpd_report_uevent`

This package records the offline exact-function revalidation of microtask `017_tpd_report_uevent` for `zte_tpd`.

- Stock entry: `0x001082ac`; stock body and ELF symbol: 260 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 65 instructions and 260 bytes on both sides. The value dispatch, printk branches, environment strings, `kobject_uevent_env` argument construction, and final status-register read are preserved; relocation addresses are normalized for module-specific layout.
- KCFI comparison: PASS; `.text`, 260 bytes, type ID `0xa2fce979` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 23 calls, four control structures, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering single tap, double tap, pen-capacity-low, unknown event, and unsigned-byte `0xff` input.

The claim is offline exact-function parity only. Kernel uevent subsystem behavior, live platform state, smartphone execution, and NX809J hardware behavior remain deferred.
