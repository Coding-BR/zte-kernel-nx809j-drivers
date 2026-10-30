# `tpfwupgrade_store` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x00109f80`
- Stock body: 140 AArch64 instructions / 560 bytes
- Candidate source: `candidate_source.c` (`tpfwupgrade_store.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 140 instructions, `.text` section, 560-byte symbol, and normalized relocation roles match.
- KCFI passed with stock and candidate type ID `0xc3d43b4d` and 560-byte symbol size.
- Strict Joern passed with one-to-one identity, 122 calls, 13 control structures, zero unresolved calls, and zero parser problems.
- The Docker ASan/UBSan host contract passed twice with 5 direct cases covering parse failure, mutex pairing, cleanup, allocation, zeroing, callback, and ENOMEM paths.

## Reconstructed behavior

The function parses the requested firmware size, logs it, locks `tpd_cdev + 0xc60`, and either frees the existing firmware state for values below `0xb` or recreates the firmware structure and zeroed `vmalloc(size + 0x18)` buffer. It preserves the callback at `tpd_cdev + 0xe18`, allocation failure returns `-ENOMEM`, and the mutex is released on all observed paths.

## Scope and limitations

This is an offline exact function-level attestation. Joern retains 3 high-severity lifetime findings and 2 high-severity synchronization findings for follow-up. The real procfs/userspace path, concurrent runtime lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
