# `suspend_store` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010a2ac`
- Stock body: 69 AArch64 instructions / 276 bytes
- Candidate source: `candidate_source.c` (`suspend_store.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 69 instructions, `.text` section, 276-byte symbol, and normalized relocation roles match.
- KCFI passed with stock and candidate type ID `0xc3d43b4d` and 276-byte symbol size; the inline callback check preserves the observed callback type guard.
- Strict Joern passed with one-to-one identity, 42 calls, 6 control structures, zero unresolved calls, and zero parser problems; two high-severity synchronization findings are retained for review.
- The Docker ASan/UBSan host contract passed twice with 4 direct cases covering parse failure, no-op state, state transition/callback, and mutex pairing.

## Reconstructed behavior

The function parses and normalizes the requested suspend state, logs it, locks `tpd_cdev + 0xc60`, compares against the byte at `tpd_cdev + 0x16`, and either logs the no-op path or stores the new state and invokes the callback at `tpd_cdev + 0xe60` with value zero. It preserves the observed inline AArch64 KCFI check and returns the original count or `-EINVAL`.

## Scope and limitations

This is an offline exact binding-level attestation. Joern retains two high-severity synchronization findings for concurrent runtime review. The real procfs/sysfs integration, callback lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
