# rdbg init_module bounded host harness

This harness compiles the current `rdbg_fn_07_init_module.c` with small Linux API stubs in the pinned NX809J Docker toolchain. It exercises input count boundaries, allocation and registration failures, cdev/class setup failures, partial device creation rollback, and successful initialization. It runs two isolated builds twice under ASan/UBSan and checks three source mutants against explicit assertions.

Run it from the repository root with a new output path:

```powershell
python workspace_tools/reconstruction_pipeline/rdbg_host_harness/run.py --output reverse_engineering/validation/reconstructed/rdbg/attestation/rdbg_init_module_microtask_20261028/host_harness_20261102_v2
```

The expected output is nine cases with 109 assertions per replay and matching baseline binary hashes. Mutation tests must fail through a `CHECK` assertion; compiler errors or sanitizer crashes do not count as detection.

The harness intentionally records two current failure-path effects: a successful allocation is not freed if `platform_driver_register` fails, and the platform driver is not unregistered if `alloc_chrdev_region` fails. Those behaviors are preserved by the current reconstruction and require a separate stock-backed lifetime decision. The harness does not repair them or authorize promotion.

Host stubs do not model kernel concurrency, real platform probing, KUnit/lockdep/KCSAN, KMI, or hardware. The existing eight automated static gates and the independent-review requirement remain separate.
