# `zte_imem_info` Stage 2 Offline Validation

## Scope

This stage reconstructed the remaining DDR type selection in
`ddr_id_read_proc` from the stock AArch64 code, Ghidra pseudocode, P-Code and
ELF relocation layout. It did not use ADB, fastboot, `insmod`, `rmmod` or any
smartphone operation.

Stock module SHA-256:
`6a0fff182e40e9676a321e6c55796ed94d382faf3ec1e1999a53e5076ffd3e65`.

Promoted candidate SHA-256:
`bcfe7f1296db667b1ac85d156eb894f17b00ec597fcd68db71ab6c0a443ff9a2`.

## Source-shape recovery

The original array-based candidate preserved the output values but emitted a
named `ddr_type_names` object at `.rodata+0x98`. Stock instead contains:

- `ddr_id_proc_fops` at `.rodata+0x38`;
- `board_id_proc_fops` at `.rodata+0x98`;
- an anonymous 80-byte pointer table at `.rodata+0xf8`.

A sparse `switch` with cases `0` and `2..9` reproduces that layout. Index `1`
falls through `default` and resolves to `UNKNOWN`. Clang lowers the switch to
the same anonymous ten-entry pointer table observed in stock.

The following isolated variants were compiled and rejected:

- global named array with both condition orientations;
- local static named array;
- local automatic const and mutable arrays;
- array definition moved after both `proc_ops`;
- explicit `>= 10` and `< 10` guards around the switch;
- `unlikely()` and `barrier_data()` codegen constraints.

Only the sparse switch recovered all stock relocations, string offsets,
anonymous table placement, function sizes and instruction count without
source-level codegen tricks.

## Strict and semantic results

The strict function comparator reports 5/6 exact functions. For
`ddr_id_read_proc`, 165 of 167 instructions are opcode-identical and all
relocations, section placement, symbol size and branch target agree.

The two remaining instructions encode the same unsigned condition:

```text
stock:     cmp w21, #0xa
           b.hs 0x180

candidate: cmp w21, #0x9
           b.hi 0x180
```

For an unsigned 32-bit value `x`, `x >= 10` is identical to `x > 9`. The
automated classifier verifies the register, adjacent constants, branch
conditions, branch target and boundary values `0`, `8`, `9`, `10`, `11` and
`UINT_MAX`. It rejects different targets, non-adjacent limits and unrelated
opcode changes.

This semantic PASS is deliberately separate from the strict binary gate.
Possible differences in unavailable OEM profile-guided compiler inputs are a
plausible explanation for the equivalent encoding, but that explanation is
not proven and is not used as a validation result.

## Reproduction

Run the host harness:

```powershell
python kernel_development/drivers/reconstructed/zte_imem_info/tests/run_host_tests.py
```

Extract and compare assembly:

```powershell
python workspace_tools/reconstruction_pipeline/extract_module_assembly.py `
  kernel_development/drivers/reconstructed/zte_imem_info/zte_imem_info.ko `
  --functions-jsonl reverse_engineering/validation/reconstructed/zte_imem_info/offline_static/ghidra_stock/functions.jsonl `
  --output-dir reverse_engineering/validation/reconstructed/zte_imem_info/candidate_assembly

python workspace_tools/reconstruction_pipeline/compare_function_assembly.py `
  --stock-dir reverse_engineering/validation/reconstructed/zte_imem_info/offline_static/stock_assembly `
  --candidate-dir reverse_engineering/validation/reconstructed/zte_imem_info/candidate_assembly `
  --output reverse_engineering/validation/reconstructed/zte_imem_info/assembly_comparison.json
```

Classify only the remaining predicate delta:

```powershell
python workspace_tools/reconstruction_pipeline/classify_aarch64_predicate_equivalence.py `
  --comparison reverse_engineering/validation/reconstructed/zte_imem_info/assembly_comparison.json `
  --function ddr_id_read_proc `
  --output reverse_engineering/validation/reconstructed/zte_imem_info/ddr_id_read_proc_semantic_equivalence.json
```

The strict comparison command must continue returning failure until all
opcodes are identical. Do not replace it with the semantic classifier.

## Evidence

- `reverse_engineering/validation/reconstructed/zte_imem_info/assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/zte_imem_info/ddr_id_read_proc_semantic_equivalence.json`
- `reverse_engineering/validation/reconstructed/zte_imem_info/kcfi_parity_stage2.json`
- `kernel_development/drivers/validation/zte_imem_info/host_test_report.json`
- `reverse_engineering/validation/reconstructed/zte_imem_info/candidate_assembly/`

## Remaining gates

- independent rebuild and review by another operator;
- controlled hardware validation against the NX809J userdebug ROM;
- strict opcode identity, if the original OEM codegen inputs become available.

Until those gates pass, the module must not be described as reconstructed
100 percent or hardware verified.
