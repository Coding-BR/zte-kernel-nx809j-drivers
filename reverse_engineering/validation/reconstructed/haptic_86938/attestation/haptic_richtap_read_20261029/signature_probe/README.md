# richtap_read ABI probe

The stock callback is referenced by the driver's `file_operations.read` slot. The pinned Docker Clang probe used the Linux callback shape `ssize_t (struct file *, char __user *, size_t, loff_t *)` and produced stock KCFI ID `0xf4e9d97c`. In this kernel build `__user` is an empty annotation, so the probe expresses that pointer as `char *`.
