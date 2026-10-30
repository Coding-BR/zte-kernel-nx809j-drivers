# `aw8693x_creat_node` static reconstruction

Identity: `aw8693x_creat_node@00103258` in stock module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

## Result

The candidate source is [haptic_86938_fn_126_aw8693x_creat_node.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_126_aw8693x_creat_node.c). It passes the applicable automated core gates in [core_v4/hard_protocol_report.json](core_v4/hard_protocol_report.json): Joern, exact AArch64 instructions and relocation surface, KCFI, current input identity, map identity, and reproducible Docker builds.

The stock and candidate function bodies match at 26 instructions / 104 bytes. Both use KCFI type ID `0x512cf1f0`. Two clean Docker builds produced identical module SHA-256 `cde6756b6c4f2c9e666eedd12776e845440f4248e44f389b2599e6ecd4750f0d`.

## Recovered behavior

- Calls `sysfs_create_group()` with the kobject pointer at `haptic + 0xf8` and the local `aw8693x_vibrator_attribute_group`.
- Returns zero for nonnegative `sysfs_create_group()` results.
- For a negative result, logs the stock error format with `haptic_hv`, line `0x91a`, and `aw8693x_creat_node`, then returns the original negative result.
- The group contains, in order, `cont_drv_lvl`, `cont_drv_time`, `cont_brk_time`, `trig`, and `rtp_auto_sin`, all mode `0644`, followed by a NULL pointer. Each show/store target and all ten callback KCFI type IDs match stock.

The [ELF table audit](sysfs_group_elf_audit.json) resolves `.data` relocations in both modules and confirms the five entries, callback names, modes, group fields, and terminator. The [callback KCFI comparison](callbacks_kcfi_comparison.json) passes for all ten callbacks. The [ASan/UBSan host harness](host_harness/harness_result.json) checks the kobject and group arguments, descriptor order/modes/callback pointers, positive and zero results, and negative error/log behavior.

## Comparator issue found and fixed

The first core attempt, [core_v1/assembly/comparison.json](core_v1/assembly/comparison.json), reported a relocation mismatch even though the opcodes and function size matched. Its stock ELF represented `haptic_hv` as a 10-byte local blob while the candidate represented the same literal as a string. Both section spans, including the NUL terminator, are byte-identical with SHA-256 `035bc8edddd78f84873566b98f57511391576c3c44124ad8cd84094ca0b3a4fb`.

The comparator now normalizes a blob as text only when the complete NUL-terminated bytes match the recorded size and SHA-256 and decode as UTF-8. It retains opcode, call-target, content, section, and symbol-size checks. The [diagnosis](relocation_normalization_diagnosis.json) records both ELF spans; the [fresh core_v4 comparison](core_v4/assembly/comparison.json) passes.

## Limits

This function-level result does not attest the missing caller source `aw_i2c_probe`, sysfs removal/teardown, whole-driver semantic equivalence, target-kernel identity, or device behavior. The protocol runner is non-promoting; [promotion_decision.json](core_v2/promotion_decision.json) remains `NOT_AUTHORIZED`. An independent review remains required before any promotion.
