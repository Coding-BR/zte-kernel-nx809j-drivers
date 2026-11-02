# rdbg lifecycle bounded host harness

This harness compiles the current `rdbg_fn_07_init_module.c` and `rdbg_fn_01_cleanup_module.c` with small Linux API stubs in the pinned NX809J Docker toolchain. It exercises input count boundaries, allocation and registration failures, cdev/class setup failures, partial device creation rollback, successful initialization, and normal teardown. It runs two isolated builds twice under ASan/UBSan and checks four source mutants against explicit assertions.

Run it from the repository root with a new output path:

```powershell
python workspace_tools/reconstruction_pipeline/rdbg_host_harness/run.py --output reverse_engineering/validation/reconstructed/rdbg/attestation/rdbg_init_module_microtask_20261028/host_harness_20261102_v5
```

The 2026-11-02 run is recorded at `host_harness_20261102_v4/host_harness_report.json`: ten cases, 150 assertions per replay, four clean ASan/UBSan replays, matching baseline binary hashes, and four mutants detected through explicit `CHECK` assertions. Compiler errors or sanitizer crashes do not count as mutation detection.

The harness records two current initialization failure-path effects: a successful allocation is not freed if `platform_driver_register` fails, and the platform driver is not unregistered if `alloc_chrdev_region` fails. Its teardown case also confirms the stock-backed cleanup sequence: destroy initialized minors, destroy the class, delete the cdev, unregister one device number, and free clients. The preserved stock cleanup does not unregister the platform driver. This harness does not repair those behaviors or authorize promotion.

The teardown facts are bound to the stock Ghidra decompilation and stock assembly hashes in the report. Host stubs do not model kernel concurrency, real platform probing, KUnit/lockdep/KCSAN, KMI, or hardware. The existing eight automated static gates and the independent-review requirement remain separate.
