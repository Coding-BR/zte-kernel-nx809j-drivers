# `set_display_rotation` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010a954`
- Stock body: 65 AArch64 instructions / 260 bytes
- Candidate source: `candidate_source.c` (`set_display_rotation.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 65 instructions, `.text` section, 260-byte symbol, and matching normalized relocation roles for `tpd_cdev` and the printk strings.
- KCFI passed with matching type ID `0xc3d43b4d`, `.text` section, and 260-byte symbol size.
- Strict Joern passed with one-to-one identity, 40 calls, 5 control structures, zero unresolved calls, and zero parser problems; one high-severity userspace-ingress finding is retained for review.
- The Docker ASan/UBSan host contract passed twice with four direct cases covering nine-byte input capping, copy/conversion failures, state update, callback dispatch, and count/`-EINVAL` behavior.

## Reconstructed behavior

The function caps the userspace input at nine bytes, checks the destination object, copies and parses a base-zero unsigned value, stores it at `tpd_cdev + 0x10`, logs the value, and invokes the callback at `tpd_cdev + 0xe90` when present. It preserves the original count on success and returns `-EINVAL` on copy or parse failure.

## Scope and limitations

This is an offline exact userspace-binding attestation. The real procfs/sysfs integration, concurrent callback lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
