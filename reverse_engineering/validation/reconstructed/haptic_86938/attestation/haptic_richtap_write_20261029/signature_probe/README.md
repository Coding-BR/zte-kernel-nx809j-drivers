# richtap_write ABI probe

The stock callback is referenced by the driver's `file_operations.write` slot. The pinned Docker Clang probe used the Linux callback shape `ssize_t (struct file *, const char __user *, size_t, loff_t *)` and produced KCFI ID `0xc3d43b4d`, matching stock. Since `__user` is an empty annotation in this kernel build, the minimal probe expresses the parameter as `const char *`.
