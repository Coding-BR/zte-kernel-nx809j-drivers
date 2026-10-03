# zte_stats_info `zte_parse` — offline exact attestation

This attestation promotes `zte_parse@00100ab4` to `PROMOTED_OFFLINE_EXACT`.

Evidence preserved here:

- Ghidra stock decompilation/P-Code reviewed for null handling, maximum-length rejection, empty-string rejection, allocation failure, bitmap parsing and cleanup.
- Stock/candidate AArch64 comparison passed with 57 instructions and 228 bytes; section and relocations matched.
- Both stock and candidate report `NO_VALID_KCFI_PREAMBLE` for this direct helper; no fabricated callback type is claimed.
- Canonical Docker builds passed twice with identical module hash `51894b326a94465c3189fff6f3c1c72b409f4e9eb23e950ab8654478f1c7cd54`.
- Joern scoped and usage-slice gates passed.
- The host harness passed reproducibly and covers valid parsing plus null, empty, oversize and allocation-failure paths.

This is static/offline evidence; live kernel allocator and bitmap-parser behavior remain unverified.
