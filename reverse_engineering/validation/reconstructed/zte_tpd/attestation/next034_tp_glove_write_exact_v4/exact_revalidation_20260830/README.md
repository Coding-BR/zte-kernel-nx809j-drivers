# `tp_glove_write` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x00109eac`
- Stock body: 52 AArch64 instructions / 208 bytes
- Candidate source: `candidate_source.c` (`tp_glove_write.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 52 instructions, `.text` section, 208-byte symbol, and normalized relocation roles match.
- KCFI passed with stock and candidate type ID `0xc3d43b4d` and 208-byte symbol size.
- Strict Joern passed with one-to-one identity, 25 calls, 3 control structures, zero unresolved calls, and zero parser problems.
- The Docker ASan/UBSan host contract passed twice with 3 direct cases covering the callback slot at `tpd_cdev + 0xe50`, boolean normalization, parse failure, and count/-EINVAL returns.

## Reconstructed behavior

The function parses an unsigned decimal value from userspace, returns `-EINVAL` on parse failure, normalizes successful values to boolean `0`/`1`, logs the stock format, and invokes the callback at `tpd_cdev + 0xe50` when present. The successful path returns the original byte count.

## Scope and limitations

This is an offline exact function-level attestation. The real procfs/userspace path, concurrent callback lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
