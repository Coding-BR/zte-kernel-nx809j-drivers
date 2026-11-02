# richtap_read microtask

Scope: the haptic character-device read callback.

- Stock entry: `0010e35c`; the `left_fops.read` target confirms the callback role.
- Stock and candidate body: `mov x0, xzr; ret` (8 bytes, no relocations).
- Recovered prototype: `ssize_t richtap_read(struct file *, char __user *, size_t, loff_t *)`.
- Pinned Docker Clang KCFI probe and candidate match the stock ID `0xf4e9d97c`.
- Two clean Docker builds produced the same accumulated candidate module SHA-256: `84e9436e204989f692b6b2cff8d918dd3cff57633ea8b2f85b0713f9f5dc5e43`.
- All eight function-scoped core gates pass, including Joern, KCFI, assembly, Ghidra normalized C/P-code, Docker reproducibility, input identity, and map identity.
- Candidate returns 0 (EOF) without writing to the user buffer, matching the stock body.
- Promotion remains unauthorized. The combined driver is incomplete, 154 stock functions remain `NOT_STARTED`, target vermagic differs, and hardware validation has not been performed.

See `signature_probe/` for the ABI probe and `core/` for final protocol artifacts.
