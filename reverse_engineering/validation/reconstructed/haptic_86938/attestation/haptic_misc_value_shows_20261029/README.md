# Miscellaneous value sysfs show microtasks

This package records three read-only callbacks reconstructed from stock assembly and Ghidra evidence:

- `ram_vbat_comp_show` at `0010c2e8` reads an unsigned byte at `driver_data - 0x8c` and formats `ram_vbat_comp = %d\n`.
- `pre_f0_show` at `0010dc88` reads a 32-bit value at `driver_data + 0x3c0` and formats `pre_f0 = %d\n`.
- `rtp_show` at `0010aefc` reads a 32-bit counter at `driver_data - 0x34` and formats `rtp_cnt = %d\n`.

All three use `snprintf` with a 4096-byte bound and return its result. Their inferred prototype is `ssize_t (struct device *, struct device_attribute *, char *)`; stock KCFI ID is `0xae84bcd4`.

The function-scoped core protocol completed with `CORE_GATES_PASS`; all eight required gates passed: assembly and relocation comparison, candidate Ghidra P-Code comparison, Docker reproducibility, input identity, scoped Joern checks and slices, KCFI, and map identity. The two clean Docker builds produced the same accumulated candidate module SHA-256: `f84326dbbf81be0adaa680b8c4dbfd1c623651bdf960cf7803ec843d5d5a4458`.

This evidence validates the listed functions and reproducible compilation only. It does not establish whole-driver semantic equivalence, target-kernel vermagic compatibility, or hardware behavior; promotion remains unauthorized. See `core/hard_protocol_report.json` and `promotion_decision.json`.
