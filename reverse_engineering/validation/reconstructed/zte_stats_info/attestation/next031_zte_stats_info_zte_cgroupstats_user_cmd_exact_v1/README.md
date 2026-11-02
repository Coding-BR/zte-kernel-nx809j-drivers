# zte_stats_info `zte_cgroupstats_user_cmd` — offline exact attestation

This attestation promotes `zte_cgroupstats_user_cmd@00100aac` to `PROMOTED_OFFLINE_EXACT`.

Evidence preserved here:

- Ghidra stock decompilation/P-Code reviewed for the minimal callback body and its zero return.
- Stock/candidate AArch64 comparison passed with 2 instructions and 8 bytes; section and relocation identity matched.
- KCFI type ID `0x9a5b8f4f` matched with 8-byte symbols.
- Canonical Docker builds passed twice with identical module hash `51894b326a94465c3189fff6f3c1c72b409f4e9eb23e950ab8654478f1c7cd54`.
- Joern scoped and usage-slice gates passed.
- The host harness passed reproducibly and covers the callback contract.

This is static/offline evidence; live Genetlink registration and kernel callback behavior remain unverified.
