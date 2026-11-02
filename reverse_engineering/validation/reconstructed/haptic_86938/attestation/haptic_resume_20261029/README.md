# aw_i2c_resume microtask

Scope: the stock haptic_86938 device resume callback.

- Stock entry: `0010ecb4`
- Stock body: `mov w0, wzr; ret` (8 bytes, no relocations)
- Reconstructed prototype: `int aw_i2c_resume(struct device *)`
- Stock/candidate KCFI ID: `0x2a703c0b`
- Two clean Docker builds produced the same accumulated candidate module SHA-256: `2c9496922d86b0fdf657fc8922fcba5aa5ee8953cdc30898ce76ccb2ef389467`.
- All eight function-scoped core gates pass: assembly/relocations, candidate Ghidra C/P-code, reproducible Docker build, input identity, Joern scope/slice, KCFI, and map identity.
- Strict stock/candidate assembly comparison passed; normalized Ghidra C and P-code operation-shape comparisons passed directly. No normalization fallback was used.
- Promotion is not authorized. The combined driver remains incomplete, 156 stock functions are not started, target vermagic differs, and hardware validation has not been performed.

The candidate module also contains the three earlier attested microtasks. `core3/` is the final protocol run against the corrected job using the repository's public stock and Ghidra evidence; `plan_final/` records its exact inputs. `signature_probe/` preserves the pinned Docker Clang ABI probe.
