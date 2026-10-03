# Exact revalidation: `tpd_probe_work_init`

This package records the offline exact-function revalidation of microtask `019_tpd_probe_work_init` for `zte_tpd`.

- Stock entry: `0x00108418`; stock body and ELF symbol: 120 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 30 instructions and 120 bytes on both sides. The entry printk, sentinel `0xFFFFFFFE00000`, self-linked list pointers at offsets `0x8d8`/`0x8e0`, `ztp_probe_work` at `0x8e8`, and `init_timer_key` at `0x8f0` are preserved. Module-local relocation addresses are normalized by symbol role.
- KCFI comparison: PASS; `.text`, 120 bytes, type ID `0xe5c47d60` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 16 calls, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering initial layout initialization and full reinitialization of the recovered fields.

The claim is offline exact-function parity only. Timer scheduler/workqueue behavior, live device state, smartphone execution, and NX809J hardware behavior remain deferred.
