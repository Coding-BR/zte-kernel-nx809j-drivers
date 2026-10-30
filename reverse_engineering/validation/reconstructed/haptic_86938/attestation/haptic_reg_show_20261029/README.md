# Haptic register sysfs wrapper microtask

`reg_show` at stock entry `0010ae10` loads the driver data pointer at `device + 0x98`, the callback table at `driver_data + 0x520`, and the `get_reg` callback at table offset `+0x148`. It calls the callback with the `struct aw_haptic *` at `driver_data - 0xa8`, a zero initial output length, and the sysfs buffer; the callback result is returned.

Ghidra's stock decompilation omits the unused sysfs callback parameters. Stock KCFI ID `0xae84bcd4` identifies the wrapper as a show callback, while assembly confirms that the buffer remains in `x2`. The pinned Docker Kbuild type search matches the indirect callback ID `0xdf86a5ee` with `ssize_t (struct aw_haptic *, ssize_t, char *)`.

The function-scoped protocol completed with `CORE_GATES_PASS`; all eight required gates passed: assembly and relocation comparison, candidate Ghidra P-Code comparison, Docker reproducibility, input identity, scoped Joern checks and slices, KCFI, and map identity. Both clean Docker builds produced the same accumulated candidate module SHA-256: `654744ca3a13538772fd5176d2238de93f737e09cac33889c669f6c50d190220`.

This evidence validates this wrapper and reproducible compilation only. It does not establish whole-driver semantic equivalence, target-kernel vermagic compatibility, or hardware behavior; promotion remains unauthorized. See `core/hard_protocol_report.json`.
