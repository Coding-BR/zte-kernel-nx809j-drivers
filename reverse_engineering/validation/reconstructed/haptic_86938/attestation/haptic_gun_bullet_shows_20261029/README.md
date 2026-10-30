# gun_type and bullet_nr sysfs show microtasks

Both read-only callbacks use `ssize_t (struct device *, struct device_attribute *, char *)` and stock KCFI ID `0xae84bcd4`.

- `gun_type_show` at `0010d370` reads a 32-bit value at `driver_data - 0x2c`.
- `bullet_nr_show` at `0010d444` reads a 32-bit value at `driver_data - 0x28`.
- Both format the value with `0x%02x\n` into a 4096-byte buffer using `snprintf`, then return its result.
- Two clean Docker builds produced the same accumulated candidate module SHA-256: `7fd72b9ea526e696c7c06291fe4ef351437deb741e43df47e4ad12a97ee95720`.
- All eight core gates pass for both functions. Strict assembly, normalized Ghidra C, P-code shape, KCFI, and Joern checks passed without normalization fallback.
- Promotion remains unauthorized. The combined driver is incomplete, 147 stock functions remain `NOT_STARTED`, target vermagic differs, and hardware validation has not been performed.

The shared signature probe is in `signature_probe/`; final build and comparison artifacts are in `core/`.
