# Public Evidence Audit

`validate_reconstructed_drivers.py` supports the public repository layout as
well as a private engineering run. When `--curated-root` points to
`kernel_development/drivers/reconstructed`, the tool uses only tracked public
evidence:

- stock module: `reference_modules/full_vendor_boot/<driver>.ko`;
- Ghidra export: `reverse_engineering/validation/reconstructed/<driver>/offline_static/ghidra_stock`;
- transition document: `kernel_development/drivers/reconstructed/<driver>/DOCUMENTO_TRANSICAO.md`;
- target kernel: `kernel_development/config/target_kernel.json`.

Run the independent audit outside the repository when disk pressure matters:

```powershell
python .\workspace_tools\reconstruction_pipeline\validate_reconstructed_drivers.py `
  --curated-root .\kernel_development\drivers\reconstructed `
  --driver gpio_keys_nubia `
  --rebuild `
  --work-root F:\drivers\validation-work\gpio_keys_nubia `
  --output F:\drivers\validation-runs\gpio_keys_nubia\audit.json `
  --markdown F:\drivers\validation-runs\gpio_keys_nubia\audit.md
```

Passing two clean builds is necessary but insufficient. `static_verified`
also requires source-to-Ghidra traceability, AArch64 relocatable ELF,
compatible modinfo/KMI, and the curated `.ko` to match the fresh build.
`hardware_verified` remains a separate controlled-device gate. Do not use
`--promote-fresh` to replace a candidate while any structural, microtask, or
hardware gate is incomplete.

Use `--run-root` only to audit a preserved private acquisition/Ghidra run. It
overrides the public paths and is useful for an unpublished investigation, not
as a substitute for publishing its derived evidence.
