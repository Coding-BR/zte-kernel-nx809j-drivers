# `headset_state_show` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010a3c4`
- Stock body: 61 AArch64 instructions / 244 bytes
- Candidate source: `candidate_source.c` (`headset_state_show.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 61 instructions, `.text` section, 244-byte symbol, and normalized relocation roles match.
- KCFI passed with stock and candidate type ID `0xf4e9d97c` and 244-byte symbol size.
- Strict Joern passed with one-to-one identity, 36 calls, 2 control structures, zero unresolved calls, and zero parser problems; one high-severity userspace ABI finding is retained for review.
- The Docker ASan/UBSan host contract passed twice with 2 direct cases covering callback, state-byte formatting, partial read, and EOF behavior.

## Reconstructed behavior

The function only performs the read at offset zero, invokes the optional callback at `tpd_cdev + 0xe78`, reads the headset state byte at `tpd_cdev + 0x17`, logs the stock message, formats `headset state: %u\n` with the stock bound, and delegates to `simple_read_from_buffer`.

## Scope and limitations

This is an offline exact binding-level attestation. The real procfs/sysfs integration, concurrent callback lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
