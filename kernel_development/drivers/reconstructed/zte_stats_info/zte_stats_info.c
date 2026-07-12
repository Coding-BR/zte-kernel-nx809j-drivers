// SPDX-License-Identifier: GPL-2.0-only
/* Reconstructed from NX809J zte_stats_info.ko with Ghidra and ABI probes. */

#ifdef ZTE_STATS_INFO_HOST_TEST
#include "tests/host_stubs.h"
#else
#include <linux/acct.h>
#include <linux/bitmap.h>
#include <linux/cgroupstats.h>
#include <linux/cred.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/mm.h>
#include <linux/module.h>
#include <linux/netlink.h>
#include <linux/percpu.h>
#include <linux/pid_namespace.h>
#include <linux/rwsem.h>
#include <linux/sched.h>
#include <linux/sched/cputime.h>
#include <linux/sched/mm.h>
#include <linux/sched/signal.h>
#include <linux/sched/task.h>
#include <linux/slab.h>
#include <linux/taskstats.h>
#include <net/genetlink.h>
#endif

#include "zte_stats_info_abi.h"

#define ZTE_TASKSTATS_NAME "ZTE_TASKSTATS"
#define ZTE_TASKSTATS_VERSION 1
#define ZTE_TASKSTATS_CPUMASK_MAXLEN 0x124
#define ZTE_KB 1024
#define ZTE_KB_MASK (~(ZTE_KB - 1))

struct zte_listener {
	struct list_head list;
	pid_t pid;
	char valid;
};

struct zte_listener_cpu {
	struct rw_semaphore sem;
	struct list_head list;
};

static DEFINE_PER_CPU(struct zte_listener_cpu, zte_listener_array);
static DEFINE_PER_CPU(__u32, zte_taskstats_seqnum);
static struct genl_family zte_family;

static int zte_taskstats_user_cmd(struct sk_buff *skb, struct genl_info *info);
static int zte_cgroupstats_user_cmd(struct sk_buff *skb, struct genl_info *info);

static const struct nla_policy zte_taskstats_cmd_get_policy[] = {
	[TASKSTATS_CMD_ATTR_PID] = { .type = NLA_U32 },
	[TASKSTATS_CMD_ATTR_TGID] = { .type = NLA_U32 },
	[TASKSTATS_CMD_ATTR_REGISTER_CPUMASK] = { .type = NLA_STRING },
	[TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK] = { .type = NLA_STRING },
};

static const struct nla_policy zte_cgroupstats_cmd_get_policy[] = {
	[CGROUPSTATS_CMD_ATTR_FD] = { .type = NLA_U32 },
};

static const struct genl_ops zte_taskstats_ops[] = {
	{
		.cmd = TASKSTATS_CMD_GET,
		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
		.doit = zte_taskstats_user_cmd,
		.policy = zte_taskstats_cmd_get_policy,
		.maxattr = ARRAY_SIZE(zte_taskstats_cmd_get_policy) - 1,
		.flags = GENL_ADMIN_PERM,
	},
	{
		.cmd = CGROUPSTATS_CMD_GET,
		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
		.doit = zte_cgroupstats_user_cmd,
		.policy = zte_cgroupstats_cmd_get_policy,
		.maxattr = ARRAY_SIZE(zte_cgroupstats_cmd_get_policy) - 1,
	},
};

static struct genl_family zte_family __ro_after_init = {
	.name = ZTE_TASKSTATS_NAME,
	.version = ZTE_TASKSTATS_VERSION,
	.netnsok = true,
	.ops = zte_taskstats_ops,
	.n_ops = ARRAY_SIZE(zte_taskstats_ops),
	.resv_start_op = CGROUPSTATS_CMD_GET + 1,
	.module = THIS_MODULE,
};

static __always_inline struct sighand_struct *
zte_lock_task_sighand_inline(struct task_struct *task, unsigned long *flags)
{
	struct sighand_struct *sighand;

	rcu_read_lock();
	for (;;) {
		sighand = rcu_dereference(task->sighand);
		if (!sighand)
			break;
		spin_lock_irqsave(&sighand->siglock, *flags);
		if (likely(sighand == rcu_access_pointer(task->sighand)))
			break;
		spin_unlock_irqrestore(&sighand->siglock, *flags);
	}
	rcu_read_unlock();
	return sighand;
}

struct sighand_struct *__zte_lock_task_sighand(struct task_struct *task,
					       unsigned long *flags)
{
	return zte_lock_task_sighand_inline(task, flags);
}

static int zte_parse(struct nlattr *attribute, unsigned long *mask)
{
	unsigned int length;
	char *data;
	int ret;

	if (!attribute)
		return 1;
	length = nla_len(attribute);
	if (length > ZTE_TASKSTATS_CPUMASK_MAXLEN)
		return -E2BIG;
	if (!length)
		return -EINVAL;
	data = kmalloc(length, GFP_KERNEL);
	if (!data)
		return -ENOMEM;
	nla_strscpy(data, attribute, length);
	ret = bitmap_parselist(data, mask, nr_cpu_ids);
	kfree(data);
	return ret;
}

static int zte_add_del_listener(pid_t pid, const unsigned long *mask, int is_del)
{
	struct zte_listener_cpu *listeners;
	struct zte_listener *listener, *next, *existing;
	unsigned int cpu;
	int ret = 0;

	if ((*mask & ~(*cpumask_bits(cpu_possible_mask))) != 0)
		return -EINVAL;
	if (task_active_pid_ns(current) != &init_pid_ns)
		return -EINVAL;

	if (!is_del) {
		for_each_cpu(cpu, to_cpumask(mask)) {
			listener = kmalloc_node(sizeof(*listener), GFP_KERNEL, cpu);
			if (!listener) {
				ret = -ENOMEM;
				goto cleanup;
			}
			listener->pid = pid;
			listener->valid = 1;

			listeners = per_cpu_ptr(&zte_listener_array, cpu);
			down_write(&listeners->sem);
			list_for_each_entry(existing, &listeners->list, list) {
				if (existing->pid == pid && existing->valid)
					goto exists;
			}
			list_add(&listener->list, &listeners->list);
			listener = NULL;
exists:
			up_write(&listeners->sem);
			kfree(listener);
		}
		return 0;
	}

cleanup:
	for_each_cpu(cpu, to_cpumask(mask)) {
		listeners = per_cpu_ptr(&zte_listener_array, cpu);
		down_write(&listeners->sem);
		list_for_each_entry_safe(listener, next, &listeners->list, list) {
			if (listener->pid == pid) {
				list_del(&listener->list);
				kfree(listener);
				break;
			}
		}
		up_write(&listeners->sem);
	}
	return ret;
}

static __used noinline int
zte_prepare_reply(struct genl_info *info, struct sk_buff **reply_skb,
		  int payload_size)
{
	struct sk_buff *skb;
	void *reply;
	u32 portid;
	u32 sequence;

	skb = genlmsg_new(payload_size, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;
	if (info) {
		portid = info->snd_portid;
		sequence = info->snd_seq;
	} else {
		portid = 0;
		sequence = this_cpu_inc_return(zte_taskstats_seqnum) - 1;
	}
	reply = genlmsg_put(skb, portid, sequence, &zte_family, 0,
			    TASKSTATS_CMD_NEW);
	if (!reply) {
		nlmsg_free(skb);
		return -EINVAL;
	}
	*reply_skb = skb;
	return 0;
}

static __used noinline struct zte_taskstats_v10 *
zte_mk_reply(struct sk_buff *skb, int type, u32 pid)
{
	struct nlattr *nest;
	struct nlattr *stats;
	int aggregate;

	aggregate = type == TASKSTATS_TYPE_PID ?
		TASKSTATS_TYPE_AGGR_PID : TASKSTATS_TYPE_AGGR_TGID;
	nest = nla_nest_start_noflag(skb, aggregate);
	if (!nest)
		return NULL;
	if (nla_put(skb, type, sizeof(pid), &pid) < 0) {
		nla_nest_cancel(skb, nest);
		return NULL;
	}
	stats = nla_reserve_64bit(skb, TASKSTATS_TYPE_STATS,
				  sizeof(struct zte_taskstats_v10),
				  TASKSTATS_TYPE_NULL);
	if (!stats) {
		nla_nest_cancel(skb, nest);
		return NULL;
	}
	nla_nest_end(skb, nest);
	return nla_data(stats);
}

static __always_inline int zte_send_reply(struct sk_buff *skb,
					  struct genl_info *info)
{
	struct genlmsghdr *header = nlmsg_data(nlmsg_hdr(skb));
	void *reply = genlmsg_data(header);

	genlmsg_end(skb, reply);
	return genlmsg_unicast(genl_info_net(info), skb, info->snd_portid);
}

static int zte_taskstats_user_cmd(struct sk_buff *skb, struct genl_info *info)
{
	struct zte_taskstats_v10 *stats;
	struct sk_buff *reply_skb;
	struct task_struct *task;
	struct pid_namespace *pid_ns;
	struct mm_struct *mm;
	const struct cred *cred;
	unsigned long cpu_mask;
	unsigned long flags;
	u64 total_time;
	u64 elapsed;
	time64_t begin_time;
	u32 id;
	int ret;

	if (info->attrs[TASKSTATS_CMD_ATTR_REGISTER_CPUMASK]) {
		cpu_mask = 0;
		ret = zte_parse(info->attrs[TASKSTATS_CMD_ATTR_REGISTER_CPUMASK],
				&cpu_mask);
		if (ret >= 0)
			ret = zte_add_del_listener(info->snd_portid, &cpu_mask, 0);
		return ret;
	}
	if (info->attrs[TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK]) {
		cpu_mask = 0;
		ret = zte_parse(info->attrs[TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK],
				&cpu_mask);
		if (ret >= 0)
			ret = zte_add_del_listener(info->snd_portid, &cpu_mask, 1);
		return ret;
	}

	if (info->attrs[TASKSTATS_CMD_ATTR_PID]) {
		id = nla_get_u32(info->attrs[TASKSTATS_CMD_ATTR_PID]);
		ret = zte_prepare_reply(info, &reply_skb, 0x170);
		if (ret < 0)
			return ret;
		stats = zte_mk_reply(reply_skb, TASKSTATS_TYPE_PID, id);
		if (!stats) {
			ret = -EINVAL;
			goto free_reply;
		}

		rcu_read_lock();
		task = find_task_by_vpid(id);
		if (!task) {
			rcu_read_unlock();
			ret = -ESRCH;
			goto free_reply;
		}
		get_task_struct(task);
		rcu_read_unlock();

		pid_ns = task_active_pid_ns(current);
		memset(stats, 0, sizeof(*stats));
		total_time = task->utime + task->stime;
		stats->cpu_run_real_total = max_t(s64, total_time, 0);
		stats->cpu_scaled_run_real_total = max_t(s64, total_time, 0);
		stats->cpu_count = task->sched_info.pcount;
		stats->cpu_delay_total = task->sched_info.run_delay;
		stats->cpu_run_virtual_total =
			max_t(s64, task->se.sum_exec_runtime, 0);
		stats->version = 10;
		stats->nvcsw = task->nvcsw;
		stats->nivcsw = task->nivcsw;
		elapsed = ktime_get_ns() - task->start_time;
		stats->ac_etime = div_u64(elapsed, NSEC_PER_USEC);
		begin_time = ktime_get_real_seconds() -
			div_u64(stats->ac_etime, USEC_PER_SEC);
		stats->ac_btime64 = begin_time;
		stats->ac_btime = clamp_t(time64_t, begin_time, 0, U32_MAX);
		if (task->flags & PF_EXITING)
			stats->ac_exitcode = task->exit_code;
		if (thread_group_leader(task) && (task->flags & PF_FORKNOEXEC))
			stats->ac_flag |= AFORK;
		if (task->flags & PF_SUPERPRIV)
			stats->ac_flag |= ASU;
		if (task->flags & PF_DUMPCORE)
			stats->ac_flag |= ACORE;
		if (task->flags & PF_SIGNALED)
			stats->ac_flag |= AXSIG;
		stats->ac_nice = task_nice(task);
		stats->ac_sched = task->policy;
		stats->ac_pid = task_pid_nr_ns(task, pid_ns);
		rcu_read_lock();
		cred = __task_cred(task);
		stats->ac_uid = __kuid_val(cred->uid);
		stats->ac_gid = __kgid_val(cred->gid);
		stats->ac_ppid = pid_alive(task) ?
			task_tgid_nr_ns(rcu_dereference(task->real_parent), pid_ns) : 0;
		rcu_read_unlock();
		stats->ac_utime = div_u64(task->utime, NSEC_PER_USEC);
		stats->ac_stime = div_u64(task->stime, NSEC_PER_USEC);
		stats->ac_utimescaled = stats->ac_utime;
		stats->ac_stimescaled = stats->ac_stime;
		stats->ac_minflt = task->min_flt;
		stats->ac_majflt = task->maj_flt;
		strncpy(stats->ac_comm, task->comm, sizeof(stats->ac_comm));

		stats->coremem = task->acct_rss_mem1 * PAGE_SIZE;
		do_div(stats->coremem, 1000 * ZTE_KB);
		stats->virtmem = task->acct_vm_mem1 * PAGE_SIZE;
		do_div(stats->virtmem, 1000 * ZTE_KB);
		mm = get_task_mm(task);
		if (mm) {
			stats->hiwater_rss = get_mm_hiwater_rss(mm) *
				PAGE_SIZE / ZTE_KB;
			stats->hiwater_vm = get_mm_hiwater_vm(mm) *
				PAGE_SIZE / ZTE_KB;
			mmput(mm);
		}
		stats->read_char = task->ioac.rchar & ZTE_KB_MASK;
		stats->write_char = task->ioac.wchar & ZTE_KB_MASK;
		stats->read_syscalls = task->ioac.syscr & ZTE_KB_MASK;
		stats->write_syscalls = task->ioac.syscw & ZTE_KB_MASK;
		stats->read_bytes = task->ioac.read_bytes & ZTE_KB_MASK;
		stats->write_bytes = task->ioac.write_bytes & ZTE_KB_MASK;
		stats->cancelled_write_bytes =
			task->ioac.cancelled_write_bytes & ZTE_KB_MASK;
		put_task_struct(task);
		return zte_send_reply(reply_skb, info);
	}

	if (info->attrs[TASKSTATS_CMD_ATTR_TGID]) {
		id = nla_get_u32(info->attrs[TASKSTATS_CMD_ATTR_TGID]);
		ret = zte_prepare_reply(info, &reply_skb, 0x170);
		if (ret < 0)
			return ret;
		stats = zte_mk_reply(reply_skb, TASKSTATS_TYPE_TGID, id);
		if (!stats) {
			ret = -EINVAL;
			goto free_reply;
		}

		rcu_read_lock();
		task = find_task_by_vpid(id);
		if (task && zte_lock_task_sighand_inline(task, &flags)) {
			struct task_struct *thread;
			u64 now;

			if (task->signal->stats)
				memcpy(stats, task->signal->stats, sizeof(*stats));
			else
				memset(stats, 0, sizeof(*stats));
			now = ktime_get_ns();
			for_each_thread(task, thread) {
				if (thread->exit_state)
					continue;
				stats->cpu_count += thread->sched_info.pcount;
				stats->cpu_delay_total += thread->sched_info.run_delay;
				total_time = thread->utime + thread->stime +
					stats->cpu_run_real_total;
				stats->cpu_run_real_total =
					max_t(s64, total_time, 0);
				total_time = thread->utime + thread->stime +
					stats->cpu_scaled_run_real_total;
				stats->cpu_scaled_run_real_total =
					max_t(s64, total_time, 0);
				total_time = thread->se.sum_exec_runtime +
					stats->cpu_run_virtual_total;
				stats->cpu_run_virtual_total =
					max_t(s64, total_time, 0);
				stats->ac_etime += div_u64(now - thread->start_time,
							 NSEC_PER_USEC);
				stats->ac_utime += div_u64(thread->utime,
							 NSEC_PER_USEC);
				stats->ac_stime += div_u64(thread->stime,
							 NSEC_PER_USEC);
				stats->nvcsw += thread->nvcsw;
				stats->nivcsw += thread->nivcsw;
			}
			spin_unlock_irqrestore(&task->sighand->siglock, flags);
			rcu_read_unlock();
			stats->version = 10;
			return zte_send_reply(reply_skb, info);
		}
		rcu_read_unlock();
		ret = -ESRCH;
		goto free_reply;
	}
	return -EINVAL;

free_reply:
	nlmsg_free(reply_skb);
	return ret;
}

static int zte_cgroupstats_user_cmd(struct sk_buff *skb, struct genl_info *info)
{
	return 0;
}

static int __init zte_taskstats_init_early(void)
{
	unsigned int cpu;
	int ret;

	for_each_possible_cpu(cpu) {
		struct zte_listener_cpu *listeners =
			per_cpu_ptr(&zte_listener_array, cpu);

		INIT_LIST_HEAD(&listeners->list);
		init_rwsem(&listeners->sem);
	}
	ret = genl_register_family(&zte_family);
	if (!ret)
		pr_info("registered zte_taskstats version %d\n",
			ZTE_TASKSTATS_VERSION);
	return ret;
}

module_init(zte_taskstats_init_early);

MODULE_DESCRIPTION("zte stats info driver");
MODULE_LICENSE("GPL");
MODULE_INFO(built_with, "DDK");
