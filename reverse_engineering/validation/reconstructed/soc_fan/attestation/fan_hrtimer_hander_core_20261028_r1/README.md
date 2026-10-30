# fan_hrtimer_hander method checkpoint

## Result

The hard driver protocol returned CORE_GATES_PASS for seven methods: fan_speed_irq_proc, nb_fan_remove, fan_enable_show, fan_level_show, cleanup_module, init_module and fan_hrtimer_hander. The report records passes for input identity, map identity, scoped Joern analysis and usage slicing, reproducible Docker builds, exact assembly and relocations, candidate Ghidra P-Code, and KCFI.

Two clean builds with nubia-sm8850-kernel-builder:latest and clang-r536225 produced byte-identical modules (203,000 bytes), SHA-256 afd623f9310278cab95c4eaedea53cc559a599b6ced6e4af8165b7dac6391a30. The reports, module binaries, assembly comparisons and gate outputs are in this directory. The candidate Ghidra export is in ../fan_hrtimer_hander_candidate_ghidra_20261028_r1/exports/soc_fan.ko/.

## Reconstructed behavior

fan_hrtimer_hander matches the stock 280-byte .text body, its relocations and KCFI type ID 0xe3cff753. It handles the fan calculation start and stop states, timer scheduling, IRQ enable/disable and the corresponding log records.

The nubia_fan_driver and chip_attr_group remain zero-initialized layout scaffolds. Their fields and callback/sysfs tables are incomplete, so this checkpoint does not claim a functional or loadable driver.

## Remaining work

This is a method-level checkpoint, not a complete soc_fan reconstruction. Seven of the stock module's fifteen functions now have method-level core evidence; eight remain. Promotion is NOT_AUTHORIZED. Callback-table recovery, a direct host harness, independent review, KMI type review, LLVM IR diagnosis and semantic-counterexample search remain outstanding; hardware validation is out of scope.

The job is workspace_tools/reconstruction_pipeline/hard_driver_job.soc_fan_fan_hrtimer_hander_20261028.json. The input map records the pending pre-check state; the resulting seven-method map is ../soc_fan_method_map_20261028_fan_hrtimer_hander.json.
