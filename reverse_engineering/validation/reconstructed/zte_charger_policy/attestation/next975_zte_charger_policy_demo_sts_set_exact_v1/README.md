# zte_charger_policy — charger_policy_demo_sts_set

Status: `CORE_GATES_PASS`; host harness passed and was reproducible. Hardware remains deferred and this package is an offline/static attestation, not authorization for loading the module.

- Identity: `charger_policy_demo_sts_set@0x00101264`
- Stock body: 276 bytes / 69 AArch64 instructions
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`
- Candidate module SHA-256: `3b4a003d5ee99f635abb9bef49a871420fac79d5f2b55eb9b741643ea93f0cd7`
- Candidate module size: 309144 bytes
- KCFI type ID: `0x4cf999cb`

Assembly, relocations, KCFI, Joern scope/slice, Docker reproducibility, and map identity passed in `hard_protocol_report.json`. The final exact island was materialized from the stock Assembly with `materialize_stock_function_assembly.py`; the local call target and stock string bytes were independently preserved after the protocol exposed codegen/layout counterexamples.

The Docker audit uses the pinned image `nubia-sm8850-kernel-builder:latest`, source volume `nubia_sm8850_kernel_src`, toolchain volume `nubia_sm8850_kernel_toolchains`, and `clang-r536225`. The engineering run root remains the configured Docker workspace; the independent stock/Ghidra inputs are preserved in the repository paths listed by the job.
