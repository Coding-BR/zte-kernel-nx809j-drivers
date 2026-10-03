# `_inline_copy_from_user` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010a5c8`
- Stock body: 61 AArch64 instructions / 244 bytes
- Candidate source: `candidate_source.c` (`_inline_copy_from_user.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 61 instructions, `.text` section, 244-byte symbol, and matching normalized relocation roles for `__arch_copy_from_user` and `memset`.
- KCFI passed with both stock and candidate reporting no valid standalone KCFI preamble, matching `.text` section and 244-byte symbol size.
- Strict Joern passed with one-to-one identity, 18 calls, 7 control structures, zero unresolved calls, and zero parser problems.
- The Docker ASan/UBSan host contract passed twice with five direct cases covering normal access, masked access, denied access, partial copy, forced failure, instrumentation and destination zeroing.

## Reconstructed behavior

The helper performs the stock fault-injection and masked-user-access decisions, validates normal user access, applies the speculation barrier, instruments the copy, calls the architecture copy primitive, instruments completion, and zeroes the residual destination bytes on failure. It preserves the return residual and the privileged TTBR/DAIF sequence represented by the stock helper through the kernel APIs and architecture primitive.

## Scope and limitations

This is an offline exact helper attestation. The host contract models privileged TTBR/DAIF behavior with deterministic usercopy stubs; it does not execute privileged AArch64 system-register instructions, procfs/sysfs integration, or NX809J hardware behavior. No hardware PASS is claimed.
