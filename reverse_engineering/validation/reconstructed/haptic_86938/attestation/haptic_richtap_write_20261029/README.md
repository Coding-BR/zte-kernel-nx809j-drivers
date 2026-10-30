# richtap_write microtask

Scope: the haptic character-device write callback.

- Stock entry: `0010e368`; the `left_fops.write` target confirms the callback role.
- Stock and candidate body: `mov x0, x2; ret` (8 bytes, no relocations).
- Recovered prototype: `ssize_t richtap_write(struct file *, const char __user *, size_t, loff_t *)`.
- Pinned Docker Clang KCFI probe and candidate match the stock ID `0xc3d43b4d`.
- The two clean Docker builds produced the same accumulated candidate module SHA-256: `dcdba09a1a5d576cf88f4d46f5750a13ab7b999349e1357909e3fefa24c6a26e`.
- All eight function-scoped core gates pass: assembly/relocations, candidate Ghidra C/P-code, reproducible Docker build, input identity, Joern scope/slice, KCFI, and map identity.
- Strict assembly, normalized Ghidra C, and P-code operation-shape comparisons pass without normalization fallback.
- Candidate source returns `count` without reading the user buffer, matching the stock body.
- Promotion remains unauthorized. The combined driver is incomplete, 155 stock functions remain `NOT_STARTED`, the stock/Docker vermagic differs, and hardware validation has not been performed.

See `signature_probe/` for the ABI probe and `core/` for reproducible protocol artifacts.
