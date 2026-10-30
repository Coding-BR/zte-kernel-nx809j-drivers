# `tp_single_game_write` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010aee8`
- Stock body: 53 AArch64 instructions / 212 bytes
- Candidate source: `candidate_source.c` (`tp_single_game_write.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 53 instructions, `.text` section, 212-byte symbol, and matching normalized relocation roles for `tpd_cdev` and the output strings.
- KCFI passed with matching type ID `0xc3d43b4d`, `.text` section, and 212-byte symbol size.
- Strict Joern passed with one-to-one identity, 27 calls, 5 control structures, zero unresolved calls, and zero parser problems; no review finding was retained for this function.
- The Docker ASan/UBSan host contract passed twice with three direct cases covering decimal parsing, boolean normalization and the invalid-input return path.

## Reconstructed behavior

The function parses a userspace unsigned integer in base 10 with `kstrtouint_from_user`, returns `-EINVAL` on parse failure, normalizes nonzero input to `5` and zero input to `0`, logs the normalized value, and invokes the callback at `tpd_cdev + 0xee0` when present.

## Scope and limitations

This is an offline exact userspace-ingress attestation. The host contract uses a fake procfs device and callback; real procfs integration, concurrent callback/state lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
