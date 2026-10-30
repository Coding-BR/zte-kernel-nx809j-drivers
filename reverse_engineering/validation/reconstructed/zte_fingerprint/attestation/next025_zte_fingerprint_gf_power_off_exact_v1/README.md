# Exact attestation: `gf_power_off`

Target: `gf_power_off@0x00102810`. The stock body is 160 bytes and 40 AArch64 instructions.

The reconstruction preserves the `void`-pointer validation, `-ENODEV` error, already-disabled warning path, regulator disable call, exact return propagation, log strings and KCFI ABI.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction/relocation comparison, two reproducible builds with identical module hashes, input identity, Joern scope/slice, map identity, and KCFI type ID `0xbcbc33b6`. The direct host harness passed reproducibly and covers regulator power-off behavior.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. This is static/offline evidence only; it does not prove physical hardware execution or a 100% hardware-equivalence claim.
