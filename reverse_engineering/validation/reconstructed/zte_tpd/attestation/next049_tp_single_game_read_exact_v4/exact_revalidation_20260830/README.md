# `tp_single_game_read` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010adf4`
- Stock body: 60 AArch64 instructions / 240 bytes
- Candidate source: `candidate_source.c` (`tp_single_game_read.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 60 instructions, `.text` section, 240-byte symbol, and matching normalized relocation roles for `tpd_cdev` and the output strings.
- KCFI passed with matching type ID `0xf4e9d97c`, `.text` section, and 240-byte symbol size.
- Strict Joern passed with one-to-one identity, 36 calls, 2 control structures, zero unresolved calls, and zero parser problems; one high-severity userspace-egress finding is retained for review.
- The Docker ASan/UBSan host contract passed twice with three direct cases covering the zero-offset callback/read path, output formatting and the nonzero-offset no-op path.

## Reconstructed behavior

The function performs work only at file offset zero, invokes the callback at `tpd_cdev + 0xed8` when present, logs the game value at `tpd_cdev + 0x454`, formats it with the stock ten-byte bound, and delegates the userspace copy/offset update to `simple_read_from_buffer`.

## Scope and limitations

This is an offline exact userspace-egress attestation. The host contract uses a fake procfs device and callback; real procfs integration, concurrent callback/state lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
