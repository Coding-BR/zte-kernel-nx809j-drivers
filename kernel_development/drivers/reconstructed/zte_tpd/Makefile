# SPDX-License-Identifier: GPL-2.0-only

# Compile all C files in the directory except offset_test.c
src-files := $(wildcard $(src)/*.c)
src-files := $(filter-out $(src)/offset_test.c, $(src-files))
src-files := $(filter-out $(src)/globals.c, $(src-files))
src-files := $(filter-out $(src)/trim.c, $(src-files))
src-files := $(filter-out $(src)/syna_tcm_buf_copy_2.c, $(src-files))
src-files := $(filter-out $(src)/syna_tcm_run_production_test.c, $(src-files))
src-files := $(filter-out $(src)/syna_tcm_send_command.c, $(src-files))
src-files := $(filter-out $(src)/tp_edge_report_limit_write.c, $(src-files))
src-files := $(filter-out $(src)/tp_edge_report_limit_read.c, $(src-files))
src-files := $(filter-out $(src)/get_one_key.c, $(src-files))
src-files := $(filter-out $(src)/set_one_key.c, $(src-files))
src-files := $(filter-out $(src)/get_play_game.c, $(src-files))
src-files := $(filter-out $(src)/set_play_game.c, $(src-files))
src-files := $(filter-out $(src)/get_tp_report_rate.c, $(src-files))
src-files := $(filter-out $(src)/set_tp_report_rate.c, $(src-files))
src-files := $(filter-out $(src)/get_follow_hand_level.c, $(src-files))
src-files := $(filter-out $(src)/set_follow_hand_level.c, $(src-files))
src-files := $(filter-out $(src)/get_stability_level.c, $(src-files))
src-files := $(filter-out $(src)/set_stability_level.c, $(src-files))
src-files := $(filter-out $(src)/tp_sensibility_level_read.c, $(src-files))
src-files := $(filter-out $(src)/tp_sensibility_level_write.c, $(src-files))
src-files := $(filter-out $(src)/syna_dev_set_sensibility_level.c, $(src-files))
src-files := $(filter-out $(src)/syna_dev_set_follow_hand_level.c, $(src-files))
src-files := $(filter-out $(src)/syna_dev_set_stability_level.c, $(src-files))
src-files := $(filter-out $(src)/syna_dev_set_display_rotation.c, $(src-files))
src-files := $(filter-out $(src)/syna_recovery_game_mode_after_reset.c, $(src-files))
src-files := $(filter-out $(src)/syna_ts_check_dt.c, $(src-files))
src-files := $(filter-out $(src)/tp_game_partition_read.c, $(src-files))
src-files := $(filter-out $(src)/tp_game_partition_write.c, $(src-files))
src-files := $(filter-out $(src)/tp_fold_state_read.c, $(src-files))
src-files := $(filter-out $(src)/%.mod.c, $(src-files))
obj-files := $(patsubst $(src)/%.c, %.o, $(src-files))
obj-files += tp_edge_report_limit_write_exact.o
obj-files += tp_edge_report_limit_read_exact.o
obj-files += get_one_key_exact.o
obj-files += set_one_key_exact.o
obj-files += get_play_game_exact.o
obj-files += set_play_game_exact.o
obj-files += get_tp_report_rate_exact.o
obj-files += set_tp_report_rate_exact.o
obj-files += get_follow_hand_level_exact.o
obj-files += set_follow_hand_level_exact.o
obj-files += get_stability_level_exact.o
obj-files += set_stability_level_exact.o
obj-files += tp_sensibility_level_read_exact.o
obj-files += tp_sensibility_level_write_exact.o
obj-files += syna_dev_set_follow_hand_level_exact.o
obj-files += syna_dev_set_stability_level_exact.o
obj-files += syna_dev_set_display_rotation_exact.o
obj-files += syna_recovery_game_mode_after_reset_exact.o
obj-files += syna_ts_check_dt_exact.o
obj-files += tp_game_partition_read_exact.o
obj-files += tp_game_partition_write_exact.o
obj-files += tp_fold_state_read_exact.o

# The lifted Assembly is validated from its opcodes/relocations; suppress
# path-dependent assembler debug records so the canonical M= path gate stays
# byte-identical across independent cycles.
AFLAGS_tp_edge_report_limit_write_exact.o := -g0

# The lifted Assembly is validated from its opcodes/relocations; suppress
# path-dependent assembler debug records so the canonical M= path gate stays
# byte-identical across independent cycles.
AFLAGS_tp_edge_report_limit_read_exact.o := -g0
AFLAGS_get_one_key_exact.o := -g0
AFLAGS_set_one_key_exact.o := -g0
AFLAGS_get_play_game_exact.o := -g0
AFLAGS_get_tp_report_rate_exact.o := -g0
AFLAGS_set_tp_report_rate_exact.o := -g0
AFLAGS_get_follow_hand_level_exact.o := -g0
AFLAGS_set_follow_hand_level_exact.o := -g0
AFLAGS_get_stability_level_exact.o := -g0
AFLAGS_set_stability_level_exact.o := -g0
AFLAGS_tp_sensibility_level_read_exact.o := -g0
AFLAGS_tp_sensibility_level_write_exact.o := -g0
AFLAGS_syna_dev_set_sensibility_level_exact.o := -g0
AFLAGS_syna_dev_set_follow_hand_level_exact.o := -g0
AFLAGS_syna_dev_set_stability_level_exact.o := -g0
AFLAGS_syna_dev_set_display_rotation_exact.o := -g0
AFLAGS_syna_recovery_game_mode_after_reset_exact.o := -g0
AFLAGS_syna_ts_check_dt_exact.o := -g0
AFLAGS_tp_game_partition_read_exact.o := -g0
AFLAGS_tp_game_partition_write_exact.o := -g0
AFLAGS_tp_fold_state_read_exact.o := -g0

obj-m += zte_tpd.o
zte_tpd-objs := syna_dev_set_sensibility_level_exact.o globals.o $(obj-files)

CFLAGS_globals.o := -DGLOBALS_C
# Stock syna_pal_mem_free@001284c0 has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_free.o := -fno-sanitize=kcfi
# Stock syna_pal_mem_free@0012a4ec has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_free_0.o := -fno-sanitize=kcfi
# Stock syna_pal_mem_cpy@0011da1c has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_cpy_0.o := -fno-sanitize=kcfi
# Stock syna_pal_mem_cpy@0012a478 has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_cpy_1.o := -fno-sanitize=kcfi
# Stock syna_pal_mem_cpy@0011d67c has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_cpy.o := -fno-sanitize=kcfi
# Stock syna_pal_mem_alloc@00127e18 has no valid KCFI entry preamble.
CFLAGS_syna_pal_mem_alloc.o := -fno-sanitize=kcfi
# Stock tpd_touch_report@0010eb70 has no valid KCFI entry preamble.
CFLAGS_tpd_touch_report.o := -fno-sanitize=kcfi
# Stock _inline_copy_from_user@0010a5c8 has no valid KCFI entry preamble.
CFLAGS__inline_copy_from_user.o := -fno-sanitize=kcfi
# Stock point_report_reset@0010ea98 has no valid KCFI entry preamble.
CFLAGS_point_report_reset.o := -fno-sanitize=kcfi
# Stock syna_dev_enter_normal_sensing@00114294 has no valid KCFI entry preamble.
CFLAGS_syna_dev_enter_normal_sensing.o := -fno-sanitize=kcfi
# Stock syna_tcm_buf_unlock@0011ee40 has no valid KCFI entry preamble.
CFLAGS_syna_tcm_buf_unlock.o := -fno-sanitize=kcfi
# Stock syna_tcm_buf_unlock@00122140 has no valid KCFI entry preamble.
CFLAGS_syna_tcm_buf_unlock_0.o := -fno-sanitize=kcfi

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
