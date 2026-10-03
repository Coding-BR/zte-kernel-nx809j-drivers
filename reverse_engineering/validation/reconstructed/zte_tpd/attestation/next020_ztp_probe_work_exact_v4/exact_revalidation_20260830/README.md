# Exact revalidation: `ztp_probe_work`

This package records the offline exact-function revalidation of microtask `020_ztp_probe_work` for `zte_tpd`.

- Stock entry: `0x00108494`; stock body and ELF symbol: 40 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 10 instructions and 40 bytes on both sides. The printk string and direct `syna_dev_module_init` call are preserved; module-local string relocation addresses are normalized.
- KCFI comparison: PASS; `.text`, 40 bytes, type ID `0xa607748c` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, three calls, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering non-null work, null work, and repeated invocation behavior.

The claim is offline exact-function parity only. Workqueue scheduling, Synaptics transport, live device state, smartphone execution, and NX809J hardware behavior remain deferred.
