# zte_charger_policy — charger_policy_force_disching_sec_get

Status: `CORE_GATES_PASS`; host harness passed and was reproducible. Hardware remains deferred and this package is an offline/static attestation, not authorization for loading the module.

- Identity: `charger_policy_force_disching_sec_get@0x001016e0`
- Stock body: 152 bytes / 38 AArch64 instructions
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`
- Candidate module SHA-256: `ac5fe01e187189b4a9a90c67fe58bda481444d42fa8141dbdc895c3c4ccabdc2`
- Candidate module size: 313128 bytes
- KCFI type ID: `0x2990b6e9`

Assembly, relocations, KCFI, Joern scope/slice, Docker reproducibility, and map identity passed in `hard_protocol_report.json`. The exact body was materialized from stock Assembly with `materialize_stock_function_assembly.py`; all six referenced stock string records were preserved as explicit bytes.

The Docker audit uses the pinned image `nubia-sm8850-kernel-builder:latest`, source volume `nubia_sm8850_kernel_src`, toolchain volume `nubia_sm8850_kernel_toolchains`, and `clang-r536225`. Hardware testing remains `DEFERRED`.
