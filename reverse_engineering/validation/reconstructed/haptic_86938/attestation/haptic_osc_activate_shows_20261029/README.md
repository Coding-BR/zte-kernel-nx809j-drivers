# activation and oscillator sysfs show microtasks

Three read-only callbacks share `ssize_t (struct device *, struct device_attribute *, char *)` and stock KCFI ID `0xae84bcd4`.

- `activate_aw_show` at `0010da88` reads a 32-bit value at `driver_data - 0x68` and formats `activate = %d\n`.
- `osc_cali_show` at `0010c3c4` and `osc_save_show` at `0010cc9c` both read a 32-bit value at `driver_data - 0x10` and format `osc_cali_data = 0x%02X\n`.
- All use `snprintf` with a 4096-byte bound and return its result.
- Two clean Docker builds produced the same accumulated candidate module SHA-256: `7548d7271e5c48dcb1c4ad1876518c8321db4713d5e2591252acc8905baeefcf`.
- All eight core gates pass for all three functions. Strict assembly, normalized Ghidra C, P-code shape, KCFI, and Joern checks passed without normalization fallback.
- Promotion remains unauthorized. The combined driver is incomplete, 138 stock functions remain `NOT_STARTED`, target vermagic differs, and hardware validation has not been performed.

The shared signature probe is in `signature_probe/`; final build and comparison artifacts are in `core/`.
