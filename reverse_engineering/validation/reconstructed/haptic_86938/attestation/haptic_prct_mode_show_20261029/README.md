# `prct_mode_show` function attestation

## Scope

This attestation covers the reconstructed `prct_mode_show` callback at stock entry `0x0010c198` in `haptic_86938.ko`. It is a function-level static result; it does not attest the complete driver or prove behavior on physical hardware.

## Findings

The identified reconstruction gap was the lack of an isolated candidate for this callback. The source now models the device-private pointer, function-table slot, callback argument, and formatted return value recovered from the stock function. The callback type is `u8 (struct aw_haptic *)` (KCFI ID `0x784b3854`); the outer sysfs show callback has KCFI ID `0xae84bcd4`.

The candidate matches the stock function in all 27 instructions, the 108-byte symbol size, section, and relevant relocations. Candidate Ghidra normalized C and P-Code checks passed. Joern scoped-source and call-slice checks passed. The pinned Docker builder completed two reproducible builds; the resulting module is 3,688,240 bytes with SHA-256 `54bebb276dd8a0f3896690903d11eb52e5df93264e5142d7070b74c3252114ba`.

All eight automated core gates passed: assembly and relocations, candidate Ghidra P-Code, Docker reproducibility, input identity, both Joern checks, KCFI, and reconstruction-map identity. The detailed outputs are preserved in `protocol_core_v1/`; the two-cycle build record is in `docker_preflight_v1/`; the exported candidate Ghidra database is in `candidate_ghidra_v1/`; and the source view is in `joern_source_view_v1/`.

## Decision and remaining evidence

The protocol decision is `NOT_AUTHORIZED` for promotion. Independent review, semantic counterexample, callback-table and KMI evidence, host harness, device-tree context, LLVM IR diagnosis, register/bus ledger, and hardware runtime evidence remain outstanding. The reconstruction map therefore keeps semantic equivalence `NOT_ESTABLISHED` and the function in `candidate_under_static_validation`.

The whole-driver audit remains `incomplete_or_failed`: there is no promoted `.ko` in the curated source directory; vermagic, alias, undefined-symbol, and fresh-candidate parity checks fail; and function traceability is incomplete (82 mapped functions, with 78 stock functions still unmapped). This function-level result does not resolve those module-level issues and does not authorize publishing or loading a candidate module as a replacement.
