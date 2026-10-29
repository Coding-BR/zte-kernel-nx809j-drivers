# vmax and gain sysfs show microtasks

Two read-only sysfs getters share the confirmed prototype `ssize_t (struct device *, struct device_attribute *, char *)` and stock KCFI ID `0xae84bcd4`.

- `vmax_show` at `0010a7d4` reads an unsigned 32-bit value at `driver_data - 0x78` and formats `vmax = 0x%02X\n`.
- `gain_show` at `0010a900` reads an unsigned 32-bit value at `driver_data - 0x74` and formats `gain = 0x%02X\n`.
- Both stock/candidate functions use `snprintf` with a 4096-byte bound and return its result.
- Two clean Docker builds produced the same accumulated candidate module SHA-256: `e4384440a7ce294fcdff5a73df9a66c91955e5f955af6c1222a4002ade233a04`.
- All eight core gates pass for both functions. Strict assembly, normalized Ghidra C, P-code shape, KCFI, and Joern checks passed without normalization fallback.
- Promotion remains unauthorized. The combined driver is incomplete, 149 stock functions remain `NOT_STARTED`, target vermagic differs, and hardware validation has not been performed.

The shared signature probe is in `signature_probe/`; final build and comparison artifacts are in `core/`.
