# nb_fan_gpio_proc method checkpoint

## Result

The hard driver protocol returned CORE_GATES_PASS for eight methods: fan_speed_irq_proc, nb_fan_remove, fan_enable_show, fan_level_show, cleanup_module, init_module, fan_hrtimer_hander and nb_fan_gpio_proc. The report records passing input and map identity, scoped Joern analysis and usage slicing, reproducible Docker builds, exact assembly and relocations, candidate Ghidra P-Code, and KCFI gate processing.

Two clean builds with nubia-sm8850-kernel-builder:latest and clang-r536225 produced byte-identical modules (215,320 bytes), SHA-256 a490b7313e7ca4c6db9b84961516715bfb2f14747f03279832c6f665fcda39d2. The reports, module binaries, assembly comparisons and gate outputs are in this directory. The candidate Ghidra export is in ../nb_fan_gpio_proc_candidate_ghidra_20261028_r1/exports/soc_fan.ko/.

## Reconstructed behavior

nb_fan_gpio_proc matches the stock 464-byte .text body, instructions and relocations. It requests the fan speed GPIO and IRQ, disables the IRQ after registering the handler, configures the PWM GPIO and returns the observed errors.

The stock KCFI inventory has no valid type ID for this helper: its four-byte preamble overlaps the end of nb_fan_parse_dt. The helper is directly called by nb_fan_probe, so no KCFI type ID is claimed for it. The KCFI gate passed for the required methods.

The nubia_fan_driver and chip_attr_group remain zero-initialized layout scaffolds. Their fields and callback/sysfs tables are incomplete; this checkpoint does not claim a functional or loadable driver.

## Remaining work

This is a method-level checkpoint, not a complete soc_fan reconstruction. Eight of the stock module's fifteen functions now have method-level core evidence; seven remain. Promotion is NOT_AUTHORIZED. Callback-table recovery, a direct host harness, independent review, KMI type review, LLVM IR diagnosis and semantic-counterexample search remain outstanding; hardware validation is out of scope.

The job is workspace_tools/reconstruction_pipeline/hard_driver_job.soc_fan_nb_fan_gpio_proc_20261028.json. The input map records the pending pre-check state; the resulting eight-method map is ../soc_fan_method_map_20261028_nb_fan_gpio_proc.json.
