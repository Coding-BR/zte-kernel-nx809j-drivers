# Continuous driver sysfs show microtasks

This package records two read-only callbacks reconstructed from stock assembly and Ghidra evidence:

- `cont_drv_lvl_show` at `00106514` reads unsigned bytes at `driver_data + 0x3f2` and `driver_data + 0x3f3`; output is `cont_drv1_lvl = 0x%02X, cont_drv2_lvl = 0x%02X\n`.
- `cont_drv_time_show` at `00106650` reads unsigned bytes at `driver_data + 0x3f8` and `driver_data + 0x3f9`; output is `cont_drv1_time = 0x%02X, cont_drv2_time = 0x%02X\n`.

Both use `snprintf` with a 4096-byte bound and return its result. Their inferred prototype is `ssize_t (struct device *, struct device_attribute *, char *)`; stock KCFI ID is `0xae84bcd4`. A Kbuild probe compiled with the pinned Docker kernel source and Clang volumes confirms this ID for both callbacks.

The function-scoped protocol completed with `CORE_GATES_PASS`; all eight required gates passed: assembly and relocation comparison, candidate Ghidra P-Code comparison, Docker reproducibility, input identity, scoped Joern checks and slices, KCFI, and map identity. Both clean Docker builds produced the same accumulated candidate module SHA-256: `f33bc882a810918ad302f0c14300ab32124e5b8362d56de495c8d33cda678aca`.

This evidence validates the listed functions and reproducible compilation only. It does not establish whole-driver semantic equivalence, target-kernel vermagic compatibility, or hardware behavior; promotion remains unauthorized. See `core/hard_protocol_report.json`.
