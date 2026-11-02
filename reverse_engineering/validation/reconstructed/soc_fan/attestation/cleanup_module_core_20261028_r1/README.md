# `cleanup_module` method checkpoint

## Result

The hard driver protocol returned `CORE_GATES_PASS` for `cleanup_module`, `nb_fan_remove`, `fan_speed_irq_proc`, `fan_enable_show` and `fan_level_show`. All eight automated gates passed: input identity, map identity, scoped Joern analysis, Joern usage slice, reproducible Docker build, assembly and relocation comparison, candidate Ghidra P-Code comparison, and KCFI.

Two clean Docker builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225` produced byte-identical modules with SHA-256 `6a0212d700a360d4aafdb2d5e651039839d1cfded4d454ae8090de563df03c83` (198,776 bytes). The report, build modules, logs and comparisons are in this directory. The candidate Ghidra export is in `../cleanup_module_candidate_ghidra_20261028_r2/exports/soc_fan.ko/`.

## Reconstructed behavior

`cleanup_module` calls `platform_driver_unregister(&nubia_fan_driver)` and returns. Its 36-byte body matches stock in `.exit.text`, including the `.data` relocation and PAC prologue/epilogue. KCFI reports type ID `0xe5c47d60`, matching `void (void)`.

The driver object remains a zero-initialized layout scaffold so its address matches stock. Its platform-driver fields and callback table are not reconstructed. The KCFI anchor only preserves the function type while the real module exit registration is recovered; no loadable-driver equivalence is claimed.

## Remaining work

This is a method-level checkpoint, not a complete `soc_fan` reconstruction. Promotion remains `NOT_AUTHORIZED`. Callback-table recovery, a direct host harness, independent review, KMI type review, LLVM IR diagnosis, and a semantic-counterexample search remain outstanding; hardware validation is out of scope for this static checkpoint. Five of the driver's fifteen stock functions have method-level core evidence; ten remain pending, as do the other difficult drivers.

The job definition is `workspace_tools/reconstruction_pipeline/hard_driver_job.soc_fan_cleanup_module_20261028.json`. Its input map records the pre-check candidate state; the resulting five-method status map is `../soc_fan_method_map_20261028_cleanup_module.json`.
