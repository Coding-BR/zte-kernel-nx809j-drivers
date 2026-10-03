# Exact revalidation: `tpd_workqueue_deinit`

This package records the offline exact-function revalidation of microtask `024_tpd_workqueue_deinit` for `zte_tpd`.

- Stock entry: `0x00108744`; stock body and ELF symbol: 156 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 39 instructions and 156 bytes on both sides. The teardown order, printk labels, dependent work deinitializers, delayed-work offsets `0x8d0`, `0xa50`, and `0x938`, firmware-data release at `0xbe8`, and zeroing of that slot are preserved.
- KCFI comparison: PASS; `.text`, 156 bytes, type ID `0xe5c47d60` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 22 calls, no control structures, and zero unresolved calls. The review retains three high-severity synchronization findings for runtime follow-up.
- Host contract: two reproducible Docker ASan/UBSan cycles covering two direct teardown-order and offset cases.

The claim is offline exact-function parity only. `printk`, dependent work teardown, delayed-work synchronization, `vfree`, kernel scheduler behavior, smartphone runtime, and NX809J hardware behavior remain stubbed or deferred; the Joern synchronization findings are not a runtime proof.
