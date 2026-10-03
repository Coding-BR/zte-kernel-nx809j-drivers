# Exact revalidation: `tp_wake_gesture_read`

This package records the offline exact-function revalidation of microtask `029_tp_wake_gesture_read` for `zte_tpd`.

- Stock entry: `0x00109a28`; stock body and ELF symbol: 240 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 60 instructions and 240 bytes on both sides. The callback at `tpd_cdev + 0xe28`, status read, stock log format, ten-byte formatting limit and `simple_read_from_buffer` flow are preserved.
- KCFI comparison: PASS; `.text`, 240 bytes, type ID `0xf4e9d97c` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 34 calls, two control structures, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering the callback/status read and short-read/EOF cursor behavior.

The claim is offline exact-function parity only. Procfs/userspace integration, callback lifetime, smartphone execution, and NX809J runtime behavior remain deferred.
