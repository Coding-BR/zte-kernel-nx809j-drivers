# `get_tp_noise_show` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010afc0`
- Stock body: 70 AArch64 instructions / 280 bytes
- Candidate source: `candidate_source.c` (`get_tp_noise_show.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 70 instructions, `.text` section, 280-byte symbol, and matching normalized relocation roles.
- KCFI passed with matching type ID `0xf4e9d97c`, `.text` section, and 280-byte symbol size.
- Strict Joern passed with one-to-one identity, 49 calls, 4 control structures, zero unresolved calls, and zero parser problems.
- The Docker ASan/UBSan host contract passed twice with three direct cases covering the zero-offset locked read with callback/data, null data, and the nonzero-offset no-op path.

## Reconstructed behavior

The function gates work on file offset zero, clears the local output buffer with the observed barriers, locks `tpd_cdev + 0xc60`, invokes the callback at `+0xee8` when present, reads the noise size through `tpd_cdev + 0xc58`, logs and formats it with the stock bound, unlocks, and delegates the userspace copy to `simple_read_from_buffer`.

## Scope and limitations

This is an offline exact userspace-egress and synchronization attestation. Joern retains two high-severity synchronization findings and one high-severity userspace-egress finding for runtime review. The host contract uses a fake procfs device, mutex and callback; real procfs integration, concurrent lifetime behavior, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
