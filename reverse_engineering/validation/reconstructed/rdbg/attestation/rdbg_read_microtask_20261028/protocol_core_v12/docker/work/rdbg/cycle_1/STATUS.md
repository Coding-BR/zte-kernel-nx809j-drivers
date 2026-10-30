# rdbg — reconstruction in progress

Status: INCOMPLETE.

- Stock evidence covers 8/8 functions. Six functions now have C candidates: on_interrupt_from, cleanup_module, rdbg_release, rdbg_open, rdbg_probe, and rdbg_read.
- The function-level status and limits are recorded in the reconstruction map and versioned attestations. `rdbg_probe` and `rdbg_read` pass all eight configured automated core gates; every mapped function remains pending independent review, and the module candidate is not canonical.
- Two stock functions remain unmapped: rdbg_write and init_module.
- Independent review, host harness/lifetime evidence, full-module import parity, device-tree variant selection, and hardware validation remain pending. Do not promote or load the partial module.
