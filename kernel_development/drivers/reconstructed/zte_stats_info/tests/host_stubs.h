#ifndef ZTE_STATS_INFO_HOST_STUBS_H
#define ZTE_STATS_INFO_HOST_STUBS_H

#include <errno.h>
#include <limits.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int64_t s64;
typedef int64_t time64_t;
typedef int pid_t;
typedef u8 __u8;
typedef u16 __u16;
typedef u32 __u32;
typedef u64 __u64;

#define __init
#define __ro_after_init
#define __used __attribute__((used))
#define noinline __attribute__((noinline))
#ifndef __always_inline
#define __always_inline inline __attribute__((always_inline))
#endif
#ifndef static_assert
#define static_assert _Static_assert
#endif
#define GFP_KERNEL 0x0cc0u
#define PAGE_SIZE 4096u
#define NSEC_PER_USEC 1000u
#define NSEC_PER_SEC 1000000000ULL
#define USEC_PER_SEC 1000000u
#define U32_MAX UINT32_MAX
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define max_t(type, left, right) ((type)(left) > (type)(right) ? (type)(left) : (type)(right))
#define clamp_t(type, value, low, high) \
	((type)(value) < (type)(low) ? (type)(low) : \
	 ((type)(value) > (type)(high) ? (type)(high) : (type)(value)))
#define div_u64(value, divisor) ((u64)(value) / (u64)(divisor))
#define do_div(value, divisor) ((value) /= (divisor))
#define likely(value) (value)
#define unlikely(value) (value)

#define container_of(pointer, type, member) \
	((type *)((char *)(pointer) - offsetof(type, member)))

struct list_head { struct list_head *next; struct list_head *prev; };

#define INIT_LIST_HEAD(head) do { (head)->next = (head); (head)->prev = (head); } while (0)
#define list_entry(pointer, type, member) container_of(pointer, type, member)
#define list_add(entry, head) do { \
	(entry)->next = (head)->next; \
	(entry)->prev = (head); \
	(head)->next->prev = (entry); \
	(head)->next = (entry); \
} while (0)
#define list_del(entry) do { \
	(entry)->prev->next = (entry)->next; \
	(entry)->next->prev = (entry)->prev; \
} while (0)
#define list_for_each_entry(position, head, member) \
	for (position = list_entry((head)->next, __typeof__(*position), member); \
	     &position->member != (head); \
	     position = list_entry(position->member.next, __typeof__(*position), member))
#define list_for_each_entry_safe(position, next_position, head, member) \
	for (position = list_entry((head)->next, __typeof__(*position), member), \
	     next_position = list_entry(position->member.next, __typeof__(*position), member); \
	     &position->member != (head); \
	     position = next_position, \
	     next_position = list_entry(next_position->member.next, __typeof__(*next_position), member))

struct rw_semaphore { int writers; };
static inline void init_rwsem(struct rw_semaphore *sem) { sem->writers = 0; }
static inline void down_write(struct rw_semaphore *sem) { sem->writers++; }
static inline void up_write(struct rw_semaphore *sem) { sem->writers--; }

#define ZTE_FAKE_CPUS 4
struct cpumask { unsigned long bits[1]; };
extern struct cpumask fake_cpu_possible_mask;
extern unsigned int nr_cpu_ids;
#define cpu_possible_mask (&fake_cpu_possible_mask)
#define cpumask_bits(mask) ((mask)->bits)
#define to_cpumask(mask) ((const struct cpumask *)(mask))
#define for_each_cpu(cpu, mask) \
	for ((cpu) = 0; (cpu) < nr_cpu_ids; (cpu)++) \
		if ((mask)->bits[0] & (1UL << (cpu)))
#define for_each_possible_cpu(cpu) for ((cpu) = 0; (cpu) < nr_cpu_ids; (cpu)++)
#define DEFINE_PER_CPU(type, name) type name[ZTE_FAKE_CPUS]
#define per_cpu(name, cpu) ((name)[(cpu)])
#define per_cpu_ptr(pointer, cpu) (&(*(pointer))[(cpu)])
#define this_cpu_inc_return(name) (++(name)[0])

struct pid_namespace { int id; };
extern struct pid_namespace init_pid_ns;

struct kuid_t { u32 val; };
struct kgid_t { u32 val; };
struct cred { int usage; struct kuid_t uid; struct kgid_t gid; };
#define __kuid_val(value) ((value).val)
#define __kgid_val(value) ((value).val)

struct taskstats;
struct signal_struct { struct taskstats *stats; };
struct sighand_struct { int siglock; };
struct sched_info { unsigned long pcount; u64 run_delay; };
struct sched_entity { u64 sum_exec_runtime; };
struct task_io_accounting {
	u64 rchar, wchar, syscr, syscw, read_bytes, write_bytes;
	u64 cancelled_write_bytes;
};
struct mm_struct { unsigned long hiwater_rss, hiwater_vm, total_vm, rss; };
struct task_struct {
	struct sighand_struct *sighand;
	struct signal_struct *signal;
	unsigned int flags;
	int exit_code;
	int exit_signal;
	int static_prio;
	unsigned int policy;
	void *thread_pid;
	struct task_struct *real_parent;
	struct task_struct *thread_group_next;
	struct cred *real_cred;
	u64 utime, stime;
	struct sched_info sched_info;
	struct sched_entity se;
	unsigned long nvcsw, nivcsw;
	u64 start_time;
	unsigned long min_flt, maj_flt;
	char comm[32];
	u64 acct_rss_mem1, acct_vm_mem1;
	struct task_io_accounting ioac;
	struct mm_struct *mm;
	pid_t pid, tgid;
	int exit_state;
	int usage;
	struct pid_namespace *active_ns;
};
extern struct task_struct *current;

#define PF_EXITING 0x00000004u
#define PF_FORKNOEXEC 0x00000040u
#define PF_SUPERPRIV 0x00000100u
#define PF_DUMPCORE 0x00000200u
#define PF_SIGNALED 0x00000400u
#define AFORK 0x01u
#define ASU 0x02u
#define ACORE 0x08u
#define AXSIG 0x10u
#define task_nice(task) ((task)->static_prio - 120)
#define thread_group_leader(task) ((task)->exit_signal >= 0)
#define pid_alive(task) ((task)->thread_pid != NULL)
#define __task_cred(task) ((task)->real_cred)
#define rcu_dereference(pointer) (pointer)
#define rcu_access_pointer(pointer) (pointer)
#define for_each_thread(leader, thread) \
	for ((thread) = (leader); (thread) != NULL; (thread) = (thread)->thread_group_next)
#define while_each_thread(leader, thread) \
	while (((thread) = (thread)->thread_group_next) != NULL && (thread) != (leader))

static inline void task_cputime(struct task_struct *task, u64 *utime, u64 *stime)
{ *utime = task->utime; *stime = task->stime; }
static inline void task_cputime_scaled(struct task_struct *task,
				       u64 *utime, u64 *stime)
{ *utime = task->utime; *stime = task->stime; }

void rcu_read_lock(void);
void rcu_read_unlock(void);
unsigned long fake_spin_lock_irqsave(int *lock);
void fake_spin_unlock_irqrestore(int *lock, unsigned long flags);
#define spin_lock_irqsave(lock, flags) ((flags) = fake_spin_lock_irqsave(lock))
#define spin_unlock_irqrestore(lock, flags) fake_spin_unlock_irqrestore(lock, flags)
struct pid_namespace *task_active_pid_ns(struct task_struct *task);
struct task_struct *find_task_by_vpid(pid_t pid);
void get_task_struct(struct task_struct *task);
void put_task_struct(struct task_struct *task);
static inline pid_t task_pid_nr_ns(struct task_struct *task, struct pid_namespace *ns)
{ (void)ns; return task->pid; }
static inline pid_t task_tgid_nr_ns(struct task_struct *task, struct pid_namespace *ns)
{ (void)ns; return task->tgid; }
u64 ktime_get_ns(void);
u64 ktime_get(void);
time64_t ktime_get_real_seconds(void);
struct mm_struct *get_task_mm(struct task_struct *task);
void mmput(struct mm_struct *mm);
void *kmalloc(size_t size, unsigned int flags);
void *kmalloc_node(size_t size, unsigned int flags, int node);
void kfree(const void *pointer);
static inline unsigned long get_mm_hiwater_rss(struct mm_struct *mm)
{ return mm->rss > mm->hiwater_rss ? mm->rss : mm->hiwater_rss; }
static inline unsigned long get_mm_hiwater_vm(struct mm_struct *mm)
{ return mm->total_vm > mm->hiwater_vm ? mm->total_vm : mm->hiwater_vm; }

struct nlattr { u16 length; u16 type; unsigned char data[512]; };
#define NLA_U32 3
#define NLA_STRING 5
#define nla_len(attribute) ((unsigned int)((attribute)->length - 4))
#define nla_get_u32(attribute) (*(u32 *)(attribute)->data)
int nla_strscpy(char *destination, const struct nlattr *attribute, size_t size);
int bitmap_parselist(const char *text, unsigned long *mask, unsigned int bits);

enum {
	TASKSTATS_CMD_ATTR_UNSPEC,
	TASKSTATS_CMD_ATTR_PID,
	TASKSTATS_CMD_ATTR_TGID,
	TASKSTATS_CMD_ATTR_REGISTER_CPUMASK,
	TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK,
};
enum { TASKSTATS_CMD_UNSPEC, TASKSTATS_CMD_GET, TASKSTATS_CMD_NEW };
enum {
	TASKSTATS_TYPE_UNSPEC,
	TASKSTATS_TYPE_PID,
	TASKSTATS_TYPE_TGID,
	TASKSTATS_TYPE_STATS,
	TASKSTATS_TYPE_AGGR_PID,
	TASKSTATS_TYPE_AGGR_TGID,
	TASKSTATS_TYPE_NULL,
};
enum { CGROUPSTATS_CMD_UNSPEC = 3, CGROUPSTATS_CMD_GET = 4 };
enum { CGROUPSTATS_CMD_ATTR_UNSPEC, CGROUPSTATS_CMD_ATTR_FD };

struct sk_buff { unsigned char buffer[2048]; size_t length; size_t nest_start; int freed; };
struct net { int id; };
struct genl_info {
	u32 snd_seq;
	u32 snd_portid;
	void *family;
	void *nlhdr;
	void *genlhdr;
	struct nlattr **attrs;
	struct net *net;
};
struct nla_policy { int type; int validation_type; u16 len; u16 min; int max; };
struct genl_ops {
	int (*doit)(struct sk_buff *, struct genl_info *);
	void *start, *dumpit, *done;
	const struct nla_policy *policy;
	unsigned int maxattr;
	u8 cmd, internal_flags, flags, validate;
	void *reserved;
};
struct genl_family {
	unsigned int hdrsize;
	char name[16];
	unsigned int version, maxattr;
	u8 netnsok;
	u8 n_ops, n_small_ops, n_split_ops, n_mcgrps, resv_start_op;
	const struct nla_policy *policy;
	void *pre_doit, *post_doit, *bind, *unbind;
	const struct genl_ops *ops;
	void *small_ops, *split_ops, *mcgrps, *module;
};

#define GENL_DONT_VALIDATE_STRICT 1
#define GENL_DONT_VALIDATE_DUMP 2
#define GENL_ADMIN_PERM 1
#define THIS_MODULE ((void *)1)

struct sk_buff *genlmsg_new(size_t payload, unsigned int flags);
struct sk_buff *__alloc_skb(unsigned int size, unsigned int flags,
				unsigned int type, int node);
void *genlmsg_put(struct sk_buff *skb, u32 portid, u32 sequence,
		  const struct genl_family *family, int flags, u8 command);
void nlmsg_free(struct sk_buff *skb);
struct nlattr *nla_nest_start_noflag(struct sk_buff *skb, int type);
int nla_put(struct sk_buff *skb, int type, int length, const void *data);
struct nlattr *nla_reserve_64bit(struct sk_buff *skb, int type, int length,
				 int pad_attribute);
void nla_nest_cancel(struct sk_buff *skb, struct nlattr *nest);
void nla_nest_end(struct sk_buff *skb, struct nlattr *nest);
#define nla_data(attribute) ((void *)(attribute)->data)
void *nlmsg_hdr(struct sk_buff *skb);
void *nlmsg_data(void *header);
void *genlmsg_data(void *header);
void genlmsg_end(struct sk_buff *skb, void *reply);
struct net *genl_info_net(const struct genl_info *info);
int genlmsg_unicast(struct net *net, struct sk_buff *skb, u32 portid);
int genl_register_family(struct genl_family *family);

#define pr_info(format, ...) fake_log(format, ##__VA_ARGS__)
void fake_log(const char *format, ...);

#define module_init(function) static int init_module(void) { return function(); }
#define MODULE_DESCRIPTION(value)
#define MODULE_LICENSE(value)
#define MODULE_INFO(tag, value)

#endif
