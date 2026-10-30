# Haptic audio timing sysfs show microtask

`haptic_audio_time_show` at stock entry `0010d268` reads 32-bit values at `driver_data + 0x430` and `driver_data + 0x434`. It formats `haptic_audio.delay_val=%dus\n` and `haptic_audio.timer_val=%dus\n` into the same buffer using two `snprintf` calls; the second call starts at the first result offset and uses the remaining 4096-byte bound. The function returns the combined results.

The inferred prototype is `ssize_t (struct device *, struct device_attribute *, char *)`; stock KCFI ID `0xae84bcd4` is confirmed by a probe compiled with Kbuild inside the pinned Docker kernel source and Clang toolchain volumes.

The function-scoped protocol completed with `CORE_GATES_PASS`; all eight required gates passed: assembly and relocation comparison, candidate Ghidra P-Code comparison, Docker reproducibility, input identity, scoped Joern checks and slices, KCFI, and map identity. Both clean Docker builds produced the same accumulated candidate module SHA-256: `14079f92a989caa083e9f021a4cf19877813e4affc84f21fce7d18f02bc750c2`.

This evidence validates this function and reproducible compilation only. It does not establish whole-driver semantic equivalence, target-kernel vermagic compatibility, or hardware behavior; promotion remains unauthorized. See `core/hard_protocol_report.json`.
