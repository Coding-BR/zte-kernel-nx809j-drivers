# `nb_fan_remove` method checkpoint

## Result

The hard driver protocol returned `CORE_GATES_PASS` for `nb_fan_remove`, `fan_speed_irq_proc`, `fan_enable_show` and `fan_level_show`. All eight automated gates passed: input identity, map identity, scoped Joern analysis, Joern usage slice, reproducible Docker build, assembly and relocation comparison, candidate Ghidra P-Code comparison, and KCFI.

Two clean Docker builds using `nubia-sm8850-kernel-builder:latest` and `clang-r536225` produced byte-identical modules with SHA-256 `ed5541f9d0acf052777e714ea4ef833a36e4c0f32650dad91fe3ac065c643fef` (197,688 bytes). The report, build modules, logs and comparisons are in this directory. The fresh candidate Ghidra export is in `../nb_fan_remove_candidate_ghidra_20261028_r2/exports/soc_fan.ko/`.

## Reconstructed behavior

`nb_fan_remove` obtains the platform device's driver data, removes the sysfs group from the stored kobject, clears the device's driver data, and returns `void`. Its 60-byte AArch64 body and relocations match stock, including the `chip_attr_group` reference at `.data+0xf0`. KCFI reports the stock callback type ID `0x24a11bb9`, matching `void (struct platform_device *)`.

The driver object and sysfs group currently preserve the stock `.data` layout through zero-initialized scaffolding. Their fields, attribute array, and registration table are not reconstructed yet. The `nb_fan_remove_kcfi_anchor` is likewise temporary until the actual platform driver callback table is recovered. These scaffolds are limited to method-level compilation and do not represent loadable-driver equivalence.

## Remaining work

This is a method-level checkpoint, not a complete `soc_fan` reconstruction. The protocol's promotion decision is `NOT_AUTHORIZED`. Callback-table recovery, a direct host harness, independent review, KMI type review, LLVM IR diagnosis, and a semantic-counterexample search remain outstanding; hardware validation is out of scope for this static checkpoint. Four of the driver's fifteen stock functions have method-level core evidence; eleven remain pending, as do the other difficult drivers.

The job definition is `workspace_tools/reconstruction_pipeline/hard_driver_job.soc_fan_nb_fan_remove_20261028.json`. Its input map records the pre-check candidate state; the resulting four-method status map is `../soc_fan_method_map_20261028_nb_fan_remove.json`.
