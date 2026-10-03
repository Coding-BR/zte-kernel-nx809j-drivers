obj-m += fp_goodix.o

# Exact Assembly islands must not encode the disposable Docker cycle path in
# DWARF.  Keep the path-independent map local to this module so normal C
# compilation flags remain unchanged.
asflags-y += -fdebug-prefix-map=$(src)=/fp_goodix

fp_goodix-y := fp_goodix_core.o fp_goodix_netlink.o fp_goodix_platform.o \
	 gf_ioctl_exact.o gf_parse_dts_exact.o fp_goodix_exact_rodata.o \
	 fp_goodix_inline_exact.o
