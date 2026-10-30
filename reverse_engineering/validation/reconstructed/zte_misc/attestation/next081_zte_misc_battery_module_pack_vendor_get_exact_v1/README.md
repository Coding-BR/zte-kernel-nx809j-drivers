# zte_misc — battery_module_pack_vendor_get

This attestation promotes `battery_module_pack_vendor_get` at stock entry `0x00100db0` as `PROMOTED_OFFLINE_EXACT`.

- Ghidra pseudocode and P-Code were reviewed, including the resistance-window and vendor-index branches.
- Stock and candidate bodies match exactly: 246 AArch64 instructions / 984 bytes.
- Stock and candidate KCFI type ID: `0x38f99aad`.
- The hard protocol result is `CORE_GATES_PASS`: assembly/relocations, two reproducible Docker builds, input/map identity, Joern scope and usage slice, and KCFI all passed.
- The Docker-backed host harness is reproducible and covers parse failure, a matched vendor, an in-range unmatched value, and an out-of-range value.

This is an offline/static equivalence claim. Live battery-pack state, peer-driver integration, and physical hardware behavior remain unverified.
