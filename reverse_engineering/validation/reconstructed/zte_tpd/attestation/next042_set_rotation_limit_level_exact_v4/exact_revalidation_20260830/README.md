# `set_rotation_limit_level` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010a7b4`
- Stock body: 49 AArch64 instructions / 196 bytes
- Candidate source: `candidate_source.c` (`set_rotation_limit_level.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 49 instructions, `.text` section, 196-byte symbol, and matching normalized relocation roles for `tpd_cdev` and the printk strings.
- KCFI passed with matching type ID `0xc3d43b4d`, `.text` section, and 196-byte symbol size.
- Strict Joern passed with one-to-one identity, 23 calls, 3 control structures, zero unresolved calls, and zero parser problems.
- The Docker ASan/UBSan host contract passed twice with three direct cases covering successful conversion/callback, conversion failure with `-EINVAL`, and the no-callback path.

## Reconstructed behavior

The function preserves the original count on success, parses the userspace value in base 10 through `kstrtouint_from_user`, logs the value, and invokes the callback at `tpd_cdev + 0xe80` when present. Conversion failure returns `-EINVAL` and suppresses logging and callback effects.

## Scope and limitations

This is an offline exact userspace-binding attestation. The host contract uses a fake procfs device and callback; real procfs integration, concurrent callback lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
