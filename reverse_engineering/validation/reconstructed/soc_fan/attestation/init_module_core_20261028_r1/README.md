# `init_module` method checkpoint

## Result

The hard driver protocol returned `CORE_GATES_PASS` for `init_module`, `cleanup_module`, `nb_fan_remove`, `fan_speed_irq_proc`, `fan_enable_show` and `fan_level_show`. All eight automated gates passed: input identity, map identity, scoped Joern analysis, Joern usage slice, reproducible Docker build, assembly and relocation comparison, candidate Ghidra P-Code comparison, and KCFI.

Two clean Docker builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225` produced byte-identical modules with SHA-256 `4b67c3e15b54a70df0fb4b36e412a31823019b1f96ffa63f60aef019ebffc662` (199,808 bytes). The report, build modules, logs and comparisons are in this directory. The candidate Ghidra export is in `../init_module_candidate_ghidra_20261028_r1/exports/soc_fan.ko/`.

## Reconstructed behavior

`init_module` calls `__platform_driver_register(&nubia_fan_driver, THIS_MODULE)` and returns its status. Its 44-byte body matches stock in `.init.text`, including both data relocations and the call target. KCFI reports type ID `0x6fbb3035`, consistent with the module initializer's `int (void)` ABI.

`nubia_fan_driver` remains a zero-initialized layout scaffold at the stock `.data` address. Its fields, probe/remove callbacks, device match table and registration behavior are not reconstructed. The method match does not make this candidate module functional or loadable.

## Remaining work

This is a method-level checkpoint, not a complete `soc_fan` reconstruction. Promotion remains `NOT_AUTHORIZED`. Callback-table recovery, a direct host harness, independent review, KMI type review, LLVM IR diagnosis, and a semantic-counterexample search remain outstanding; hardware validation is out of scope for this static checkpoint. Six of the driver's fifteen stock functions have method-level core evidence; nine remain pending, as do the other difficult drivers.

The job definition is `workspace_tools/reconstruction_pipeline/hard_driver_job.soc_fan_init_module_20261028.json`. Its input map records the pre-check candidate state; the resulting six-method status map is `../soc_fan_method_map_20261028_init_module.json`.
