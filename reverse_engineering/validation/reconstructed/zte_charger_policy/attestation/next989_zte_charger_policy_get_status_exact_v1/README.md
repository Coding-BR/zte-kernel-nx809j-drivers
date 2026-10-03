# zte_charger_policy — charger_policy_get_status

Status: `CORE_GATES_PASS`; host harness passed and was reproducible. Hardware remains deferred and this package is an offline/static attestation, not authorization for loading the module.

- Identity: `charger_policy_get_status@0x00101b04`
- Stock body: 212 bytes / 53 AArch64 instructions
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`
- Candidate module SHA-256: `637ba64138742b9ea9799270de064631692e6dd6752ed95e14da9b4b9f5bf6e4`
- Candidate module size: 317496 bytes
- KCFI type ID: `0x2fad8a96`

Assembly, relocations, KCFI, Joern scope/slice, Docker reproducibility, and map identity passed in `hard_protocol_report.json`. The exact body was materialized from stock Assembly with `materialize_stock_function_assembly.py`; all five referenced stock string records were preserved as explicit bytes. The stock logging literals, including the `charger_policy_get_prop_by_name` function label, were preserved exactly.

The Docker audit uses the pinned image `nubia-sm8850-kernel-builder:latest`, source volume `nubia_sm8850_kernel_src`, toolchain volume `nubia_sm8850_kernel_toolchains`, and `clang-r536225`. Hardware testing remains `DEFERRED`.
