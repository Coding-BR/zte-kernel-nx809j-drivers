# SPDX-License-Identifier: GPL-2.0-only
obj-m += zlog_common.o
zlog_common-objs := zlog_exact_bases.o zlog_client_record_exact.o zlog_register_client_exact.o zlog_unregister_client_exact.o zlog_handle_work_exact.o zlog_common_main.o zlog_exports.o
CFLAGS_zlog_common_main.o :=
AFLAGS_zlog_exact_bases.o := -g0 -I$(src)
AFLAGS_zlog_client_record_exact.o := -g0 -I$(src)
AFLAGS_zlog_register_client_exact.o := -g0 -I$(src)
AFLAGS_zlog_unregister_client_exact.o := -g0 -I$(src)
AFLAGS_zlog_handle_work_exact.o := -g0 -I$(src)
