# Exact attestation: `zte_goodix_pinctrl_init`

Target: `zte_goodix_pinctrl_init@0x001021ec`. The stock body is 208 bytes and 52 AArch64 instructions.

The reconstruction preserves the entry log, pdev-derived device pointer, devm pinctrl acquisition, `goodix_active`/`goodix_suspend` lookup order, stock IS_ERR_OR_NULL checks, per-field failed-state tracking, direct `dev_err` error string, error extraction before clearing `gf_dev->pinctrl`, and zero return on success. The ABI-visible KCFI type is aligned with the stock `struct gf_dev *` tag while the implementation accesses the reconstructed `struct gf_device` layout.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction and semantic relocation comparison, input identity, Joern scope/slice, two clean reproducible Docker builds, KCFI type ID `0xbcbc33b6`, and map gates. Stock and candidate both contain 52 instructions and 208-byte symbols. The host harness passed reproducibly and covers the pinctrl success/error paths.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. The Docker run remains static/offline evidence only: it does not prove physical hardware execution or a 100% hardware-equivalence claim.
