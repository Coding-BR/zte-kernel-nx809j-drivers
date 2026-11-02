# aw8693x_set_bst_peak_cur signature probe

The stock function at .text+0x16d4 has a 4-byte body (ret) and KCFI type ID 0x847a0830 in kcfi_stock.json. Ghidra omits its unused argument, so the decompiler signature alone is insufficient to recover its ABI.

The probe compiles competing one-pointer prototypes with the Docker image's clang-r536225 and the kernel's KCFI integer-normalization option. probe_aw_haptic produces 0x847a0830; the tested void *, struct aw8693x *, struct aw8693x_haptic *, struct aw869x *, struct aw869x_haptic *, struct aw8693x_data *, struct aw8693x_chip *, struct device *, and struct i2c_client * candidates do not.

This resolves the candidate declaration to void aw8693x_set_bst_peak_cur(struct aw_haptic *). The full protocol's candidate KCFI comparison is the final check against the compiled module. Matching a 32-bit KCFI identifier is strong ABI evidence, not proof of behavior or lifetime correctness.

Reproduce inside nubia-sm8850-kernel-builder:latest with clang-r536225:

~~~sh
clang -target aarch64-linux-gnu -O2 -fsanitize=kcfi \
  -fsanitize-cfi-icall-experimental-normalize-integers \
  -falign-functions=4 -c kcfi_probe.c -o kcfi_probe.o
python extract_kcfi.py kcfi_probe.o -o kcfi.json
~~~
