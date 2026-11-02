# activation sysfs show microtasks

This package covers two read-only sysfs callbacks. Both use the confirmed `ssize_t (struct device *, struct device_attribute *, char *)` signature and stock KCFI ID `0xae84bcd4`.

- `activate_show` at `0010a3f4` loads a 32-bit value from `driver_data - 0x68` and formats `activate = %d\n` with a 4096-byte bound.
- `activate_mode_show` at `0010a568` loads an unsigned byte from `driver_data - 0x8d` and formats `activate_mode = %d\n` with the same bound.
- Each stock and candidate body is 14 instructions and calls `snprintf`; candidates preserve field widths, offsets, output labels, and return values.
- Two clean Docker builds produced the same accumulated candidate module SHA-256: `b118123869588816584212325339d7f5fb162e569e689583bc4f38e60d50dc6e`.
- All eight core gates pass for both functions. Strict assembly, normalized Ghidra C, P-code shape, KCFI, and Joern checks passed without normalization fallback.
- Promotion remains unauthorized. The combined driver is incomplete, 151 stock functions remain `NOT_STARTED`, target vermagic differs, and hardware validation has not been performed.

The shared signature probe is in `signature_probe/`; final build and comparison artifacts are in `core/`.
