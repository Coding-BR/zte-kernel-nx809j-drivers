obj-m += zte_fingerprint.o
ccflags-y += -DZTE_FINGERPRINT_GF_COMPAT_IOCTL_EXACT

# gf_parse_dts is an offline-exact AArch64 island.  The host harness keeps a
# guarded C model in zte_fingerprint.c; the kernel module links the materialized
# stock instruction body and its isolated literal pool.
asflags-y += -fdebug-prefix-map=$(src)=/zte_fingerprint
zte_fingerprint-y := zte_fingerprint_main.o gf_parse_dts_exact.o fp_goodix_exact_rodata.o
