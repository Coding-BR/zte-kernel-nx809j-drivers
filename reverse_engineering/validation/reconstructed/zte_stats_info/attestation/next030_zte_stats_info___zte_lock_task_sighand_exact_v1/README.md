# zte_stats_info `__zte_lock_task_sighand` — offline exact attestation

This attestation promotes `__zte_lock_task_sighand@001002bc` to `PROMOTED_OFFLINE_EXACT`.

Evidence preserved here:

- Ghidra stock decompilation/P-Code reviewed for the RCU read-side loop, `sighand` reload, IRQ-safe spinlock acquisition, retry path, and unlock path.
- Stock/candidate AArch64 comparison passed with 33 instructions and 132 bytes; relocations and section identity matched.
- KCFI type ID `0x0b63a705` matched with 132-byte symbols.
- Canonical Docker builds passed twice with identical module hash `51894b326a94465c3189fff6f3c1c72b409f4e9eb23e950ab8654478f1c7cd54`.
- Joern scoped and usage-slice gates passed.
- The host harness passed reproducibly and covers both successful locking and the null-sighand retry exit path.

The helper has no indirect callback boundary, so the job records `kcfi_required=false` for callback-surface policy even though the direct KCFI type comparison is preserved. This remains static/offline evidence; scheduler/RCU behavior in a live kernel is unverified.
