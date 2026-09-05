# zte_charger_policy — charger_policy_cap_min_get

Status: `CORE_GATES_PASS`; host harness passed and was reproducible. Hardware remains deferred and this package is an offline/static attestation, not authorization for loading the module.

- Identity: `charger_policy_cap_min_get@0x00101828`
- Stock body: 120 bytes / 30 AArch64 instructions
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`
- Candidate module SHA-256: `1358d7c3408489b587402ce624fccc7971cf017a6ff7def37c068e3cd9dc4e61`
- Candidate module size: 314264 bytes
- KCFI type ID: `0x2990b6e9`

Assembly, relocations, KCFI, Joern scope/slice, Docker reproducibility, and map identity passed in `hard_protocol_report.json`. The exact body was materialized from stock Assembly with `materialize_stock_function_assembly.py`; all five referenced stock string records were preserved as explicit bytes.

The Docker audit uses the pinned image `nubia-sm8850-kernel-builder:latest`, source volume `nubia_sm8850_kernel_src`, toolchain volume `nubia_sm8850_kernel_toolchains`, and `clang-r536225`. Hardware testing remains `DEFERRED`.
