# SPDX-License-Identifier: GPL-2.0-only

# Compile all C files in the directory except offset_test.c
src-files := $(wildcard $(src)/*.c)
src-files := $(filter-out $(src)/offset_test.c, $(src-files))
src-files := $(filter-out $(src)/globals.c, $(src-files))
src-files := $(filter-out $(src)/trim.c, $(src-files))
src-files := $(filter-out $(src)/syna_tcm_buf_copy_2.c, $(src-files))
src-files := $(filter-out $(src)/syna_tcm_run_production_test.c, $(src-files))
src-files := $(filter-out $(src)/syna_tcm_send_command.c, $(src-files))
src-files := $(filter-out $(src)/%.mod.c, $(src-files))
obj-files := $(patsubst $(src)/%.c, %.o, $(src-files))

obj-m += zte_tpd.o
zte_tpd-objs := globals.o $(obj-files)

CFLAGS_globals.o := -DGLOBALS_C
# Stock syna_pal_mem_free@001284c0 has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_free.o := -fno-sanitize=kcfi
# Stock syna_pal_mem_free@0012a4ec has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_free_0.o := -fno-sanitize=kcfi
# Stock syna_pal_mem_cpy@0011da1c has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_cpy_0.o := -fno-sanitize=kcfi
# Stock syna_pal_mem_alloc@00127e18 has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_alloc.o := -fno-sanitize=kcfi
# Stock tpd_touch_report@0010eb70 has no valid KCFI entry preamble.
CFLAGS_tpd_touch_report.o := -fno-sanitize=kcfi
# Stock point_report_reset@0010ea98 has no valid KCFI entry preamble.
CFLAGS_point_report_reset.o := -fno-sanitize=kcfi
# Stock syna_tcm_buf_unlock@0011ee40 has no valid KCFI entry preamble.
CFLAGS_syna_tcm_buf_unlock.o := -fno-sanitize=kcfi

# The build entrypoints pass the same map through KCFLAGS for generated *.mod.c.
ccflags-y := -ffile-prefix-map=$(src)=/zte_tpd \
	-I$(src) -include $(src)/defs.h -Wno-self-assign \
	-Wno-int-conversion -Wno-incompatible-pointer-types \
	-Wno-void-pointer-to-int-cast -Wno-int-to-void-pointer-cast \
	-Wno-strict-prototypes -Wno-uninitialized \
	-Wno-pointer-to-int-cast -Wno-incompatible-pointer-types-discards-qualifiers \
	-Wno-bitwise-op-parentheses -Wno-logical-op-parentheses \
	-Wno-compare-distinct-pointer-types -Wno-implicit-function-declaration \
	-Wno-incompatible-library-redeclaration -Wno-return-type \
	-Wno-unused-variable -Wno-unused-but-set-variable -Wno-unused-label \
	-Wframe-larger-than=8192
# Stock syna_tcm_buf_lock@0011ede8 has no valid KCFI entry preamble.
CFLAGS_syna_tcm_buf_lock.o := -fno-sanitize=kcfi
