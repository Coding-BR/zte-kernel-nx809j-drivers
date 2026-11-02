# `richtap_file_open` reconstruction attestation

## Diagnosis and correction

The stock callback at `0010ea28` calls `try_module_get(&__this_module)`. It returns `-ENODEV` when the call fails; on success it stores the global `g_aw_haptic` pointer in `file->private_data` and returns zero. The reconstructed function matches that behavior and the kernel's `file_operations.open` prototype.

The first Docker build exposed a missing state object: `MODPOST` rejected an undefined `g_aw_haptic`. Inspection of the stock ELF showed a global 8-byte object in `.bss`, and stock `aw_i2c_probe` assigns the created haptic pointer to it. I added a shared declaration and a zero-initialized pointer definition. The probe function itself remains unreconstructed, so the candidate does not claim to initialize this state at runtime.

## Evidence

- Clean Docker builds are reproducible. Candidate module SHA-256: `34ed18cce9cc6d0418c41a139cb015c84d8e4bf9872189855887103dce03f655` (2,444,264 bytes).
- Candidate Ghidra export was generated from that module; the module MD5 matches the manifest. The `richtap_file_open` body matches all 76 stock bytes, relocations, normalized decompilation, P-Code operation shape, and KCFI type ID `0x9829071d`.
- Hard-protocol core result: `CORE_GATES_PASS`; all eight gates passed, including pinned Joern scoped/slice analysis.
- The host differential harness passed both module-reference outcomes and rejected mutants that omit `try_module_get`, skip the `private_data` store, or return the wrong error. See `host_harness/harness_result.json`.
- `global_state_inventory.json` records the `g_aw_haptic` symbol evidence and the first-build diagnosis.

## Status and limits

This function remains `candidate_under_static_validation`; `semantic_equivalence` remains `NOT_ESTABLISHED`. Promotion remains `NOT_AUTHORIZED`. The whole driver has 36 source-backed function mappings out of 160; 124 functions remain unmapped. Its full-module audit is still incomplete, and module-level vermagic, alias, undefined-symbol, fresh-candidate parity, callback-table, independent-review, and runtime lifecycle evidence remain outstanding. The host harness does not execute kernel code or validate hardware behavior.
