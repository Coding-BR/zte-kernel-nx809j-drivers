# Exact attestation: `gf_parse_dts`

Target: `gf_parse_dts@0x0010237c`. The stock body is 828 bytes and 207 AArch64 instructions.

The production module links the materialized AArch64 instruction island and literal pool. The C implementation remains guarded for the host harness, which exercises the directly testable Device Tree/regulator failure path without changing the production symbol.

Validation: `CORE_GATES_PASS`. The Docker hard protocol passed AArch64 instruction and relocation comparison, two reproducible builds with identical module hashes, input identity, Joern scope/slice, map identity, and KCFI type ID `0xbcbc33b6`. The direct host harness passed reproducibly and covers `gf_parse_dts` through the DTS regulator-failure path.

Evidence source: offline Ghidra pseudocode and P-Code under `reverse_engineering/validation/reconstructed/zte_fingerprint/offline_static/ghidra_stock`, with the preserved stock module in `reference_modules/stock/zte_fingerprint.ko`. This is static/offline evidence only; it does not prove physical hardware execution or a 100% hardware-equivalence claim.
