# zte_charger_policy — charger_policy_expired_sec_set

Status: `CORE_GATES_PASS`; host harness passed and was reproducible. Hardware remains deferred and this package is an offline/static attestation, not authorization for loading the module.

- Identity: `charger_policy_expired_sec_set@0x001014f4`
- Stock body: 164 bytes / 41 AArch64 instructions
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`
- Candidate module SHA-256: `45b02d1f763ab5cdac121087447a1cbdd1eea2e0adeefabe40e7200c5715f881`
- Candidate module size: 310952 bytes
- KCFI type ID: `0x4cf999cb`

Assembly, relocations, KCFI, Joern scope/slice, Docker reproducibility, and map identity passed in `hard_protocol_report.json`. The exact body was materialized from stock Assembly with `materialize_stock_function_assembly.py`; all five referenced stock string records were preserved as explicit bytes.

The Docker audit uses the pinned image `nubia-sm8850-kernel-builder:latest`, source volume `nubia_sm8850_kernel_src`, toolchain volume `nubia_sm8850_kernel_toolchains`, and `clang-r536225`. Hardware testing remains `DEFERRED`.
