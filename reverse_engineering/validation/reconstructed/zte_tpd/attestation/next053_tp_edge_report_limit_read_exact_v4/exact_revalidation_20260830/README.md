# `tp_edge_report_limit_read` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010b150`
- Stock body: 335 AArch64 instructions / 1340 bytes
- Candidate C reconstruction: `candidate_source.c`
- Module source selected by the Makefile: `candidate_source_exact.S`
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 335 instructions, `.text` section, 1340-byte symbol, and matching normalized relocation roles.
- KCFI passed with matching type ID `0xf4e9d97c`, `.text` section, and 1340-byte symbol size.
- Strict Joern passed with one-to-one identity, 65 calls, 9 control structures, zero unresolved calls, and zero parser problems; one high-severity lifetime finding and one high-severity userspace-egress finding are retained for review.
- The Docker ASan/UBSan host contract passed twice with five direct cases covering full formatting, nonzero/negative cursor EOF, allocation failure and small-buffer behavior.

## Reconstructed behavior

The function returns EOF for a nonzero cursor, allocates the 0x1000-class report buffer through the recovered cache path, fills the static instructions and cdev-backed fields at the observed offsets, appends the formatted edge-report values with the recovered bounds, copies through `simple_read_from_buffer`, frees the buffer and returns the total formatted length. Allocation failure logs and returns `-ENOMEM`.

## Scope and limitations

This is an offline exact userspace-egress and allocation-lifetime attestation. The host contract uses deterministic allocation and procfs-copy stubs; real allocator behavior, procfs integration, concurrent lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. Joern findings remain open for runtime review. No hardware PASS is claimed.
