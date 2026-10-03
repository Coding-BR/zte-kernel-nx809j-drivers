#ifndef ZTE_STATS_INFO_ABI_H
#define ZTE_STATS_INFO_ABI_H

#ifndef ZTE_STATS_INFO_HOST_TEST
#include <linux/build_bug.h>
#include <linux/stddef.h>
#include <linux/types.h>
#endif

/* Exact 352-byte taskstats v10 payload observed in the stock module. */
struct zte_taskstats_v10 {
	__u16 version;
	__u8 reserved_0002[2];
	__u32 ac_exitcode;
	__u8 ac_flag;
	__u8 ac_nice;
	__u8 reserved_000a[6];
	__u64 cpu_count;
	__u64 cpu_delay_total;
	__u64 blkio_count;
	__u64 blkio_delay_total;
	__u64 swapin_count;
	__u64 swapin_delay_total;
	__u64 cpu_run_real_total;
	__u64 cpu_run_virtual_total;
	char ac_comm[32];
	__u8 ac_sched;
	__u8 ac_pad[3];
	__u8 reserved_0074[4];
	__u32 ac_uid;
	__u32 ac_gid;
	__u32 ac_pid;
	__u32 ac_ppid;
	__u32 ac_btime;
	__u8 reserved_008c[4];
	__u64 ac_etime;
	__u64 ac_utime;
	__u64 ac_stime;
	__u64 ac_minflt;
	__u64 ac_majflt;
	__u64 coremem;
	__u64 virtmem;
	__u64 hiwater_rss;
	__u64 hiwater_vm;
	__u64 read_char;
	__u64 write_char;
	__u64 read_syscalls;
	__u64 write_syscalls;
	__u64 read_bytes;
	__u64 write_bytes;
	__u64 cancelled_write_bytes;
	__u64 nvcsw;
	__u64 nivcsw;
	__u64 ac_utimescaled;
	__u64 ac_stimescaled;
	__u64 cpu_scaled_run_real_total;
	__u64 freepages_count;
	__u64 freepages_delay_total;
	__u64 thrashing_count;
	__u64 thrashing_delay_total;
	__u64 ac_btime64;
};

static_assert(sizeof(struct zte_taskstats_v10) == 0x160, "taskstats v10 size");
static_assert(offsetof(struct zte_taskstats_v10, ac_comm) == 0x50, "ac_comm offset");
static_assert(offsetof(struct zte_taskstats_v10, ac_uid) == 0x78, "ac_uid offset");
static_assert(offsetof(struct zte_taskstats_v10, ac_pid) == 0x80, "ac_pid offset");
static_assert(offsetof(struct zte_taskstats_v10, ac_etime) == 0x90, "ac_etime offset");
static_assert(offsetof(struct zte_taskstats_v10, nvcsw) == 0x110, "nvcsw offset");
static_assert(offsetof(struct zte_taskstats_v10, ac_btime64) == 0x158, "ac_btime64 offset");

#endif
