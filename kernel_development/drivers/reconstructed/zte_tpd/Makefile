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
