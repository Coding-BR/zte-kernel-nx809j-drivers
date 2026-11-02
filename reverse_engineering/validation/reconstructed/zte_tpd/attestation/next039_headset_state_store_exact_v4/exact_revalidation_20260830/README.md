# `headset_state_store` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010a4bc`
- Stock body: 67 AArch64 instructions / 268 bytes
- Candidate source: `candidate_source.c` (`headset_state_store.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 67 instructions, `.text` section, 268-byte symbol, and normalized relocation roles match.
- KCFI passed with stock and candidate type ID `0xc3d43b4d` and 268-byte symbol size.
- Strict Joern passed with one-to-one identity, 37 calls, 5 control structures, zero unresolved calls, and zero parser problems; one high-severity userspace-ingress finding is retained for review.
- The Docker ASan/UBSan host contract passed twice with 4 direct cases covering nine-byte input capping, copy/conversion failures, boolean normalization, callback and count/-EINVAL behavior.

## Reconstructed behavior

The function caps the input at nine bytes, checks the destination object, copies from userspace, parses an unsigned value with base zero, normalizes it to boolean, logs the result, and invokes the callback at `tpd_cdev + 0xe70` when present. It preserves the original count on success and returns `-EINVAL` for copy or parse failure.

## Scope and limitations

This is an offline exact userspace-binding attestation. The real procfs/sysfs integration, concurrent callback lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
