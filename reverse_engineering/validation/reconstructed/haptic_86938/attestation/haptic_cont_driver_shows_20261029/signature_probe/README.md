# Continuous driver show ABI probe

Both callbacks use `ssize_t (struct device *, struct device_attribute *, char *)`. The probe object is compiled through Kbuild inside the pinned Docker kernel source and Clang toolchain volumes (`ARCH=arm64 LLVM=1 LLVM_IAS=1`); both extracted type IDs match stock `0xae84bcd4`. Source, Makefile, object, and extraction report are preserved here.
