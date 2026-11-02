# misc sysfs show microtasks

Two read-only callbacks share `ssize_t (struct device *, struct device_attribute *, char *)` and stock KCFI ID `0xae84bcd4`.

- `cont_brk_time_show` at `00106760` reads an unsigned byte at `driver_data + 0x3f5` and formats `cont_brk_time = 0x%02X\n`.
- `rtp_auto_sin_show` at `00106e94` reads an unsigned 32-bit value at `driver_data - 0x34` and formats `rtp_cnt = %u\n`.
- Both use `snprintf` with a 4096-byte bound and return its result.
- Two clean Docker builds produced the same accumulated candidate module SHA-256: `4bb47a47691b049ef9b86023d5598d687f41f95b48d047eacd75bec68ea1a2e0`.
- All eight core gates pass for both functions. Strict assembly, normalized Ghidra C, P-code shape, KCFI, and Joern checks passed without normalization fallback.
- Promotion remains unauthorized. The combined driver is incomplete, 145 stock functions remain `NOT_STARTED`, target vermagic differs, and hardware validation has not been performed.

The shared signature probe is in `signature_probe/`; final build and comparison artifacts are in `core/`.
