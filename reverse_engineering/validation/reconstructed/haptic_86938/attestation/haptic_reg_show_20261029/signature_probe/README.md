# Indirect register callback KCFI type search

The preserved Kbuild probe matrix varies return types, haptic structure pointer types, output-length types, and buffer pointer types. It was compiled with the pinned Docker kernel source and Clang toolchain. Stock callback ID `0xdf86a5ee` matches `ssize_t (struct aw_haptic *, ssize_t, char *)` and an unsigned-byte buffer pointer variant; the stock decompilation and formatting call use `char *`.
