# Exact attestation: `gf_cleanup`

Target: `gf_cleanup@0x001026bc`. The stock body is 172 bytes and 43 AArch64 instructions.

The reconstruction preserves GPIO validity/free ordering, regulator enabled-state testing, regulator disable behavior, warning on an already-disabled regulator, the exact log strings, the `void(struct gf_dev *)` ABI and KCFI type.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction/relocation comparison, two reproducible builds with identical module hashes, input identity, Joern scope/slice, map identity, and KCFI type ID `0x2ab82364`. The direct host harness passed reproducibly and covers cleanup through lifecycle and teardown paths.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. This is static/offline evidence only; it does not prove physical hardware execution or a 100% hardware-equivalence claim.
