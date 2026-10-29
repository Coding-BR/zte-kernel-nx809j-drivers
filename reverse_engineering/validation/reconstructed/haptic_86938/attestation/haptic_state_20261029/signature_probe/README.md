# state_store ABI probe

The stock function body at .text+0x74bc is mov x0, x3; ret (8 bytes). Its KCFI ID is 0x95c41a97, shared by the stock sysfs store callbacks cont_drv_lvl_store, cont_drv_time_store, cont_brk_time_store, trig_store, activate_store and related functions. Their Ghidra output shows a four-argument callback returning the fourth argument.

With Docker clang-r536225 and the kernel's KCFI integer-normalization option, the prototype ssize_t (struct device *, struct device_attribute *, const char *, size_t) produces the same ID 0x95c41a97. The candidate therefore returns the sysfs write count unchanged and does not parse or store the supplied text.

This is ABI evidence paired with the full protocol's candidate KCFI and code-generation gates; it does not claim that the no-op behavior is desirable.
