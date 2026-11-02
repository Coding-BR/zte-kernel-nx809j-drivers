# `richtap_file_release` reconstruction attestation

## Diagnosis and correction

The stock function at `0010ea78` is the `file_operations.release` callback. Its stock body ignores the inode and file arguments, calls `module_put(&__this_module)`, and returns zero. The reconstructed source now reproduces those effects with the kernel callback prototype and `module_put(THIS_MODULE)`.

The stock open callback at `0010ea28` takes the matching module reference with `try_module_get`. That open callback is not reconstructed in this change, so the reference-acquire/release lifecycle is not yet complete at driver level.

## Evidence

- Hard-protocol core result: `CORE_GATES_PASS`; all eight gates passed: input/map identity, strict assembly and relocation comparison, candidate Ghidra/P-Code comparison, KCFI, reproducible Docker build, and scoped Joern checks.
- Candidate module SHA-256: `23623a53a178ca5e8c7f4913afbbdcea840d1af59dd5a0b0c6606e5d009f3da9` (2,373,992 bytes). Two clean Docker builds matched.
- Candidate Ghidra export was produced from that module; its MD5 matches the export manifest. The function body decompiles to `module_put(&__this_module); return 0;`.
- The bounded host harness matched the stock behavior model and rejected both the missing-`module_put` and nonzero-return mutants. See `host_harness/harness_result.json`.

## Status and limits

This function remains `candidate_under_static_validation`; `semantic_equivalence` remains `NOT_ESTABLISHED`. The promotion decision is `NOT_AUTHORIZED`. The full-module Docker audit is still `incomplete_or_failed`: although both builds are reproducible and Ghidra export succeeded, module-level checks for vermagic, aliases, undefined symbols, and fresh-candidate parity did not pass. The host harness does not execute kernel code or validate hardware behavior, and independent review plus kernel concurrency/lifetime evidence remain outstanding.
