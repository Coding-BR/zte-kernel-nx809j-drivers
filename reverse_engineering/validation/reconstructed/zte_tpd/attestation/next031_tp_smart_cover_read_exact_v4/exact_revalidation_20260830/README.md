# `tp_smart_cover_read` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x00109bf0`
- Stock body: 60 AArch64 instructions / 240 bytes
- Candidate source: `candidate_source.c` (`tp_smart_cover_read.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 60 instructions, `.text` section, 240-byte symbol, and normalized relocation roles match.
- KCFI passed with stock and candidate type ID `0xf4e9d97c` and 240-byte symbol size.
- Strict Joern passed with one-to-one identity, 35 calls, 2 control structures, zero unresolved calls, and zero parser problems; one high-severity userspace ABI finding is retained for review.
- The Docker ASan/UBSan host contract passed twice with 2 direct cases covering the callback slot at `tpd_cdev + 0xe38`, value at `tpd_cdev + 0x4`, partial read, and EOF behavior.

## Reconstructed behavior

The function only performs the read operation when the file offset is zero. It reads the smart-cover value from `tpd_cdev + 0x4`, invokes the callback at `tpd_cdev + 0xe38` when present, logs the stock value, formats it with the stock ten-byte limit, and delegates the result to `simple_read_from_buffer`.

## Scope and limitations

This is an offline exact function-level attestation. The real procfs/userspace path, concurrent callback lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
