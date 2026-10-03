# `get_tp_noise_store` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010b0dc`
- Stock body: 28 AArch64 instructions / 112 bytes
- Candidate source: `candidate_source.c` (`get_tp_noise_store.c`)
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 28 instructions, `.text` section, 112-byte symbol, and matching normalized relocation roles.
- KCFI passed with matching type ID `0xc3d43b4d`, `.text` section, and 112-byte symbol size.
- Strict Joern passed with one-to-one identity, 44 calls, 2 control structures, zero unresolved calls, and zero parser problems.
- The Docker ASan/UBSan host contract passed twice with three direct cases covering full resource teardown, a resource without a buffer, and a null resource.

## Reconstructed behavior

The function locks `tpd_cdev + 0xc60`, frees the optional noise buffer at the resource's `+8` slot with `vfree`, frees the resource with `kfree`, clears the resource pointer at `+0xc58` and the feature field at `+0x448`, unlocks, and returns the userspace count unchanged.

## Scope and limitations

This is an offline exact teardown and synchronization attestation. Joern retains one high-severity lifetime finding and two high-severity synchronization findings for runtime review. The host contract uses a fake device, mutex and allocator hooks; real procfs integration, allocator behavior, concurrent state lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
