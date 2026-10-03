# Exact attestation: `zte_goodix_pinctrl_select`

Target: `zte_goodix_pinctrl_select@0x001022c0`. The stock body is 184 bytes and 46 AArch64 instructions.

The reconstruction preserves the entry log, active/suspend state selection, `-EINVAL` default, IS_ERR_OR_NULL validation, pinctrl state selection call, error-specific messages, active/suspend error-name selection, device error reporting and return value.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction and semantic relocation comparison, input identity, Joern scope/slice, two clean reproducible Docker builds, KCFI type ID `0x4d2e2dce`, and map gates. Stock and candidate both contain 46 instructions and 184-byte symbols. The host harness passed reproducibly and covers the pinctrl state-selection path.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. The Docker run remains static/offline evidence only: it does not prove physical hardware execution or a 100% hardware-equivalence claim.
