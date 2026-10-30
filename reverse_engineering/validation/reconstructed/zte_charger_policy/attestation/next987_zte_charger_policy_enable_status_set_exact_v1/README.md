# zte_charger_policy — charger_policy_enable_status_set

Status: `CORE_GATES_PASS`; host harness passed and was reproducible. Hardware remains deferred and this package is an offline/static attestation, not authorization for loading the module.

- Identity: `charger_policy_enable_status_set@0x001019d0`
- Stock body: 172 bytes / 43 AArch64 instructions
- Stock module SHA-256: `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`
- Candidate module SHA-256: `8c4b42336ac7293bf74c15d07b6cbd1a3692b1b9024d6c753c98d58aa24c947e`
- Candidate module size: 316032 bytes
- KCFI type ID: `0x4cf999cb`

Assembly, relocations, KCFI, Joern scope/slice, Docker reproducibility, and map identity passed in `hard_protocol_report.json`. The exact body was materialized from stock Assembly with `materialize_stock_function_assembly.py`; all five referenced stock string records were preserved as explicit bytes. The model preserves the stock `policy_disabled = (val_int == 0)` behavior.

The Docker audit uses the pinned image `nubia-sm8850-kernel-builder:latest`, source volume `nubia_sm8850_kernel_src`, toolchain volume `nubia_sm8850_kernel_toolchains`, and `clang-r536225`. Hardware testing remains `DEFERRED`.
