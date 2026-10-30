# Haptic loop sysfs wrapper microtask

`loop_show` at stock entry `0010acc0` retrieves the driver data pointer at `device + 0x98`, loads the callback table at `driver_data + 0x520`, then invokes the function at table offset `+0x138` with the `struct aw_haptic *` at `driver_data - 0xa8` and the output buffer. The wrapper returns the callback result.

The stock indirect-call KCFI ID is `0xdffa4199`. The preserved Kbuild search matrix found `unsigned long (struct aw_haptic *, char *)` as a match; a second match with `unsigned char *` has the same KCFI ID, while the stock decompilation uses `char *` for the output. The wrapper itself uses sysfs show ABI KCFI ID `0xae84bcd4`.

The function-scoped protocol completed with `CORE_GATES_PASS`; all eight required gates passed: assembly and relocation comparison, candidate Ghidra P-Code comparison, Docker reproducibility, input identity, scoped Joern checks and slices, KCFI, and map identity. Both clean Docker builds produced the same accumulated candidate module SHA-256: `5fc80580026266d99ca2a117713e1d84bb391d2a32201310fadecdc36e843cf9`.

This evidence validates this wrapper and reproducible compilation only. It does not establish whole-driver semantic equivalence, target-kernel vermagic compatibility, or hardware behavior; promotion remains unauthorized. See `core/hard_protocol_report.json`.
