# zte_charger_policy — charger_policy_get_prop_by_name

Status: `CORE_GATES_PASS`; host harness passed and was reproducible. Hardware remains deferred and this package is an offline/static attestation, not authorization for loading the module.

- Identity: `charger_policy_get_prop_by_name@0x00101bd8`
- Stock body: 260 bytes / 65 AArch64 instructions
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`
- Candidate module SHA-256: `23391fc9deff1815a2213f6a6f2c6a80eae40aa8f7984a340cc2660e39159d9a`
- Candidate module size: 318456 bytes
- KCFI: absent in stock and candidate; both reports record no valid preamble

Assembly, relocations, KCFI absence parity, Joern scope/slice, Docker reproducibility, and map identity passed in `hard_protocol_report.json`. The exact body was materialized from stock Assembly with `materialize_stock_function_assembly.py`; all five referenced stock string records were preserved as explicit bytes.

The Docker audit uses the pinned image `nubia-sm8850-kernel-builder:latest`, source volume `nubia_sm8850_kernel_src`, toolchain volume `nubia_sm8850_kernel_toolchains`, and `clang-r536225`. Hardware testing remains `DEFERRED`.
