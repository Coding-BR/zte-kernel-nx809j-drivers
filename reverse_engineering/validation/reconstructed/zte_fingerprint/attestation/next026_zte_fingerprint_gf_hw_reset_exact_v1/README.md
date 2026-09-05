# Exact attestation: `gf_hw_reset`

Target: `gf_hw_reset@0x001028b4`. The stock body is 184 bytes and 46 AArch64 instructions.

The reconstruction preserves the NULL-device error, GPIO validity branch, reset low/high sequence, `usleep_range(10000, 10100)`, millisecond delay via `mdelay`, exact log strings and KCFI ABI.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction/relocation comparison, two reproducible builds with identical module hashes, input identity, Joern scope/slice, map identity, and KCFI type ID `0xb4d8f609`. The direct host harness passed reproducibly and covers hardware-reset behavior.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. This is static/offline evidence only; it does not prove physical hardware execution or a 100% hardware-equivalence claim.
