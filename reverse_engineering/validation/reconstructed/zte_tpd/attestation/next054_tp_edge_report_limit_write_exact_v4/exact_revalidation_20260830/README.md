# `tp_edge_report_limit_write` — offline exact revalidation

- Driver: `zte_tpd`
- Stock entry: `0x0010b690`
- Stock body: 238 AArch64 instructions / 952 bytes
- Candidate C reconstruction: `candidate_source.c`
- Module source selected by the Makefile: `candidate_source_exact.S`
- Candidate module: `candidate_zte_tpd.ko`

## Evidence

- Two identical Docker canonical build cycles passed; candidate module size is 6,307,336 bytes.
- Stock and candidate AArch64 function extraction passed: 238 instructions, `.text` section, 952-byte symbol, and matching normalized relocation roles.
- KCFI passed with matching type ID `0xc3d43b4d`, `.text` section, and 952-byte symbol size.
- Strict Joern passed with one-to-one identity, 192 calls, 34 control structures, zero unresolved calls, and zero parser problems; seven high-severity userspace-ingress findings are retained for review.
- The Docker ASan/UBSan host contract passed twice with five direct cases covering recognized fields, vector parsing, pixel-limit derivation, copy/parse failures, bounds and full-length input.

## Reconstructed behavior

The function caps input at 100 bytes, performs the recovered userspace copy, dispatches named edge-report fields through the observed parser and offsets, normalizes boolean values, replicates click-pixel values, parses long-press vectors, computes the bounded pixel-limit value from the panel parameter, and returns the capped count or `-EINVAL` on the recovered copy/unknown/pixel-limit failures.

## Scope and limitations

This is an offline exact userspace-ingress attestation. Joern retains seven high-severity userspace-ingress findings for runtime review. The host contract uses deterministic copy, parser and printk stubs; real procfs integration, malformed-input edge behavior beyond covered cases, concurrent state lifetime, smartphone/NX809J hardware behavior, and runtime integration remain unverified. No hardware PASS is claimed.
