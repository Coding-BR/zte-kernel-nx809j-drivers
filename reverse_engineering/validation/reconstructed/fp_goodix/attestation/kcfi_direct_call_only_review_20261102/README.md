# fp_goodix KCFI direct-call review — 2026-11-02

## Finding

The strict KCFI presence comparison still reports 23 stock records versus 26 candidate records. The three candidate-only preambles are for `gf_disable_irq`, `gf_enable_irq`, and `nav_event_input`. This is a real metadata-presence difference; the strict comparison remains `false`.

The function bodies are byte-identical to stock. Stock ELF symbols are `STB_LOCAL`; candidate symbols are `STB_GLOBAL` because `gf_ioctl` is supplied by the separate `gf_ioctl_exact.S` object and must resolve these names across translation units. The stock Ghidra call inventory has one unconditional direct call from `gf_ioctl` to each function. A relocation scan of the current candidate `.ko` finds exactly one `R_AARCH64_CALL26` from `gf_ioctl` to each, with no other incoming ELF relocations and no kernel `__ksymtab` exports for these names.

The candidate preambles therefore have no indirect-call check boundary to serve in this module. The focused decision is `KCFI_NOT_APPLICABLE_DIRECT_CALL_ONLY`; it does not claim strict KCFI equality or complete semantic/hardware equivalence.

## Evidence

- `elf_reference_inventory.json`: stock/candidate symbol binding, body hashes, stock Ghidra incoming calls, candidate relocation inventory, export-table checks.
- `candidate_elf_references.json` and `candidate_calls.jsonl`: generated from the current reconstructed `.ko` by the pipeline ELF reference auditor.
- `decision_*.json`: per-function decisions from `build_kcfi_direct_call_decision.py`, each bound by SHA-256 to the current stock/candidate modules and call inventories.
- `review_summary.json`: combined result and explicit limits.

Recreate the candidate relocation artifacts with:

```powershell
python workspace_tools/reconstruction_pipeline/audit_elf_direct_call_references.py `
  --elf kernel_development/drivers/reconstructed/fp_goodix/fp_goodix.ko `
  --function gf_disable_irq --function gf_enable_irq --function nav_event_input `
  --output reverse_engineering/validation/reconstructed/fp_goodix/attestation/kcfi_direct_call_only_review_20261102/candidate_elf_references.json `
  --calls-output reverse_engineering/validation/reconstructed/fp_goodix/attestation/kcfi_direct_call_only_review_20261102/candidate_calls.jsonl
```

The remaining driver-wide review and NX809J hardware gates stay open.
