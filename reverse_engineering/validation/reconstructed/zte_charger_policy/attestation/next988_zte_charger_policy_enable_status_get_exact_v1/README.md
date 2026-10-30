# zte_charger_policy — charger_policy_enable_status_get

Status: `CORE_GATES_PASS`; host harness passed and was reproducible. Hardware remains deferred and this package is an offline/static attestation, not authorization for loading the module.

- Identity: `charger_policy_enable_status_get@0x00101a80`
- Stock body: 128 bytes / 32 AArch64 instructions
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`
- Candidate module SHA-256: `d2bd2ce4184aa7f944a25ef9668fe1462e81ccd0ac2bf2a68f0bbc5989e474f7`
- Candidate module size: 316592 bytes
- KCFI type ID: `0x2990b6e9`

Assembly, relocations, KCFI, Joern scope/slice, Docker reproducibility, and map identity passed in `hard_protocol_report.json`. The exact body was materialized from stock Assembly with `materialize_stock_function_assembly.py`; all five referenced stock string records were preserved as explicit bytes. The model preserves the stock `enable = (policy_disabled == 0)` behavior.

The Docker audit uses the pinned image `nubia-sm8850-kernel-builder:latest`, source volume `nubia_sm8850_kernel_src`, toolchain volume `nubia_sm8850_kernel_toolchains`, and `clang-r536225`. Hardware testing remains `DEFERRED`.
