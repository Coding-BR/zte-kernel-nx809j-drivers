# `get_rotation_limit_level` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010a6c0`
- Stock body: 60 AArch64 instructions / 240 bytes
- Candidate source: `candidate_source.c` (`get_rotation_limit_level.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 60 instructions, `.text` section, 240-byte symbol, and matching normalized relocation roles for `tpd_cdev`, the printk strings, `snprintf`, and `simple_read_from_buffer`.
- KCFI passed with matching type ID `0xf4e9d97c`, `.text` section, and 240-byte symbol size.
- Strict Joern passed with one-to-one identity, 41 calls, 2 control structures, zero unresolved calls, and zero parser problems; one high-severity userspace-egress finding is retained for review.
- The Docker ASan/UBSan host contract passed twice with two direct cases covering the zero-offset callback/read path and the nonzero-offset no-op path.

## Reconstructed behavior

The function snapshots the file offset, only performs the callback and read when the offset is zero, invokes the callback at `tpd_cdev + 0xe88` when present, logs and formats the unsigned field at `tpd_cdev + 0xc`, and delegates the userspace copy/offset update to `simple_read_from_buffer`.

## Scope and limitations

This is an offline exact userspace-egress attestation. The host harness uses a fake procfs device and does not verify real procfs integration, concurrent callback lifetime, smartphone/NX809J hardware behavior, or runtime integration. No hardware PASS is claimed.
