# Indirect loop callback KCFI type search

The preserved Kbuild probe matrix enumerates candidate return types, AW haptic structure pointer types, and output-buffer pointer types. It was compiled inside the pinned Docker kernel source and Clang toolchain volumes. The stock callback ID `0xdffa4199` matches the candidates `unsigned long (struct aw_haptic *, char *)` and `unsigned long (struct aw_haptic *, unsigned char *)`; the stock decompilation uses a character output buffer, so the implementation uses `char *`.
