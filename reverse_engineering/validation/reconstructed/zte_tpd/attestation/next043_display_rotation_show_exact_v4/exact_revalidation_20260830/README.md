# `display_rotation_show` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010a87c`
- Stock body: 53 AArch64 instructions / 212 bytes
- Candidate source: `candidate_source.c` (`display_rotation_show.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 53 instructions, `.text` section, 212-byte symbol, and matching normalized relocation roles for `tpd_cdev`, the log/output strings, `snprintf`, and `simple_read_from_buffer`.
- KCFI passed with matching type ID `0xf4e9d97c`, `.text` section, and 212-byte symbol size.
- Strict Joern passed with one-to-one identity, 38 calls, 1 control structure, zero unresolved calls, and zero parser problems; one high-severity userspace-egress finding is retained for review.
- The Docker ASan/UBSan host contract passed twice with two direct cases covering the zero-offset read path and the nonzero-offset no-op path.

## Reconstructed behavior

The function preserves the stack-protected read callback, performs work only when the file offset is zero, logs the unsigned display-rotation field at `tpd_cdev + 0x10`, formats `display rotation: %d\n` with the stock size bound, and delegates the result to `simple_read_from_buffer`.

## Scope and limitations

This is an offline exact userspace-egress attestation. The host contract uses a fake procfs device and does not verify real procfs integration, concurrent state lifetime, smartphone/NX809J hardware behavior, or runtime integration. No hardware PASS is claimed.
