# `tp_single_tap_write` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010ab50`
- Stock body: 53 AArch64 instructions / 212 bytes
- Candidate source: `candidate_source.c` (`tp_single_tap_write.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 53 instructions, `.text` section, 212-byte symbol, and matching normalized relocation roles for `tpd_cdev` and the printk strings.
- KCFI passed with matching type ID `0xc3d43b4d`, `.text` section, and 212-byte symbol size.
- Strict Joern passed with one-to-one identity, 27 calls, 5 control structures, zero unresolved calls, and zero parser problems.
- The Docker ASan/UBSan host contract passed twice with three direct cases covering base-10 conversion, conversion failure with `-EINVAL`, boolean normalization to `0`/`5`, callback dispatch, and count behavior.

## Reconstructed behavior

The function parses the userspace value in base 10, preserves the original count on success, normalizes any nonzero input to `5` and zero to `0`, logs the normalized value, and invokes the callback at `tpd_cdev + 0xec0` when present. Conversion failure suppresses side effects and returns `-EINVAL`.

## Scope and limitations

This is an offline exact userspace-binding attestation. The host contract uses a fake procfs device and callback; real procfs/sysfs integration, concurrent callback lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
