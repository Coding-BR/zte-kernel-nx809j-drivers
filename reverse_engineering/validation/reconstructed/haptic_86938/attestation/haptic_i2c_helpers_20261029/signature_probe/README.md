# KCFI signature probe

`i2c_sig_probe.c` contains seven candidate function types compiled through Kbuild in the pinned Docker kernel/toolchain environment (`clang-r536225`). The extracted KCFI report matches `p0`, `int (struct aw_haptic *, u8, u8 *, u32)`, to stock ID `0x96263f44`. Stock gives both `i2c_r_bytes` and `i2c_w_bytes` that same ID. This resolves Ghidra's incomplete return-type inference for `i2c_r_bytes` and distinguishes the pointer and length types used by the source.

`assembly_compare_final.json` records the independent exact assembly/relocation check; the full function-scoped protocol repeats it from clean Docker builds.
