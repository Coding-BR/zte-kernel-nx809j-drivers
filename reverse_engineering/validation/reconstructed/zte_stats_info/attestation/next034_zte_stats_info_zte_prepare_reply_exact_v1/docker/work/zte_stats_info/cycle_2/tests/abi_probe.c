#include <linux/module.h>
#include <linux/sched.h>
#include <linux/sched/signal.h>
#include <linux/delayacct.h>
#include <linux/mm_types.h>

#include "../zte_stats_info_abi.h"

#define OFFSET_SYMBOL(type, field) \
	char abi_offset_##type##_##field[offsetof(struct type, field) + 1] __used

OFFSET_SYMBOL(task_struct, sighand);
OFFSET_SYMBOL(task_struct, signal);
OFFSET_SYMBOL(task_struct, exit_code);
OFFSET_SYMBOL(task_struct, flags);
OFFSET_SYMBOL(task_struct, static_prio);
OFFSET_SYMBOL(task_struct, real_cred);
OFFSET_SYMBOL(task_struct, real_parent);
OFFSET_SYMBOL(task_struct, utime);
OFFSET_SYMBOL(task_struct, stime);
OFFSET_SYMBOL(task_struct, nvcsw);
OFFSET_SYMBOL(task_struct, nivcsw);
OFFSET_SYMBOL(task_struct, start_time);
OFFSET_SYMBOL(task_struct, min_flt);
OFFSET_SYMBOL(task_struct, maj_flt);
OFFSET_SYMBOL(task_struct, comm);
OFFSET_SYMBOL(task_struct, acct_rss_mem1);
OFFSET_SYMBOL(task_struct, acct_vm_mem1);
OFFSET_SYMBOL(task_struct, ioac);
OFFSET_SYMBOL(task_struct, delays);
OFFSET_SYMBOL(signal_struct, stats);
OFFSET_SYMBOL(mm_struct, hiwater_rss);
OFFSET_SYMBOL(mm_struct, hiwater_vm);
OFFSET_SYMBOL(mm_struct, total_vm);

char abi_size_zte_taskstats_v10[sizeof(struct zte_taskstats_v10)] __used;
char abi_size_task_io_accounting[sizeof(struct task_io_accounting)] __used;
char abi_offset_task_sched_info_pcount[
	offsetof(struct task_struct, sched_info) +
	offsetof(struct sched_info, pcount) + 1] __used;
char abi_offset_task_sched_info_run_delay[
	offsetof(struct task_struct, sched_info) +
	offsetof(struct sched_info, run_delay) + 1] __used;

MODULE_LICENSE("GPL");
