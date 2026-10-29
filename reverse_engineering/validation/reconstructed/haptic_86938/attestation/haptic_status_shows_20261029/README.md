# status sysfs show microtasks

Four read-only callbacks share `ssize_t (struct device *, struct device_attribute *, char *)` and stock KCFI ID `0xae84bcd4`.

- `auto_boost_show` at `0010c06c` reads a byte at `driver_data - 0x90`; output is `auto_boost = %d\n`.
- `cont_save_show` at `0010dbc4` reads a 32-bit value at `driver_data - 0x38`; output is `cont_f0 = %d\n`.
- `f0_save_show` at `0010b950` reads a 32-bit value at `driver_data - 0x20`; output is `f0_cali_data = 0x%02X\n`.
- `haptic_audio_show` at `0010cd60` reads a byte at `driver_data + 0x4f8`; output is `%d\n`.
- All use `snprintf` with a 4096-byte bound and return its result.
- Two clean Docker builds produced the same accumulated candidate module SHA-256: `8291f9e22c7edb77d6ce1ba088ddbba5c46158caa71cd2fc5123ac8f20b29e20`.
- All eight core gates pass for all four functions. Strict assembly, normalized Ghidra C, P-code shape, KCFI, and Joern checks passed without normalization fallback.
- Promotion remains unauthorized. The combined driver is incomplete, 141 stock functions remain `NOT_STARTED`, target vermagic differs, and hardware validation has not been performed.

The shared signature probe is in `signature_probe/`; final build and comparison artifacts are in `core/`.
