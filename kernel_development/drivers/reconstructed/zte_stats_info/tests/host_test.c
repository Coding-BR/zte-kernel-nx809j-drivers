#define ZTE_STATS_INFO_HOST_TEST 1
#include "../zte_stats_info.c"

struct fake_state {
	int failures;
	int allocation_fail_after;
	int allocations;
	int frees;
	int rcu_depth;
	int spin_locks;
	int spin_unlocks;
	int genlmsg_new_fail;
	int genlmsg_put_fail;
	int nla_nest_fail;
	int nla_put_fail;
	int nla_reserve_fail;
	int nest_cancel_calls;
	int nest_end_calls;
	int genl_end_calls;
	int unicast_calls;
	int register_result;
	int register_calls;
	int mmput_calls;
	int put_task_calls;
	u32 last_portid;
	u32 last_sequence;
	u8 last_command;
	struct genl_family *registered_family;
	struct sk_buff *last_skb;
	struct nlattr *last_reserved;
	struct task_struct *found_task;
	u64 monotonic_ns;
	time64_t realtime_seconds;
};

static struct fake_state fake;
struct cpumask fake_cpu_possible_mask = { .bits = { 0xf } };
unsigned int nr_cpu_ids = ZTE_FAKE_CPUS;
struct pid_namespace init_pid_ns = { .id = 1 };
static struct pid_namespace foreign_pid_ns = { .id = 2 };
static struct task_struct current_task;
struct task_struct *current = &current_task;

#define EXPECT(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		fake.failures++; \
	} \
} while (0)

static void reset_fake(void)
{
	memset(&fake, 0, sizeof(fake));
	memset(&current_task, 0, sizeof(current_task));
	current_task.active_ns = &init_pid_ns;
	fake.monotonic_ns = 9000000000ULL;
	fake.realtime_seconds = 2000;
	fake.allocation_fail_after = -1;
	memset(zte_listener_array, 0, sizeof(zte_listener_array));
	memset(zte_taskstats_seqnum, 0, sizeof(zte_taskstats_seqnum));
}

void fake_log(const char *format, ...) { (void)format; }
void rcu_read_lock(void) { fake.rcu_depth++; }
void rcu_read_unlock(void) { fake.rcu_depth--; }

unsigned long fake_spin_lock_irqsave(int *lock)
{
	(*lock)++;
	fake.spin_locks++;
	return 0x55;
}

void fake_spin_unlock_irqrestore(int *lock, unsigned long flags)
{
	EXPECT(flags == 0x55);
	(*lock)--;
	fake.spin_unlocks++;
}

struct pid_namespace *task_active_pid_ns(struct task_struct *task)
{
	return task->active_ns;
}

struct task_struct *find_task_by_vpid(pid_t pid)
{
	return fake.found_task && fake.found_task->pid == pid ? fake.found_task : NULL;
}

void get_task_struct(struct task_struct *task) { task->usage++; }
void put_task_struct(struct task_struct *task) { task->usage--; fake.put_task_calls++; }
u64 ktime_get_ns(void) { return fake.monotonic_ns; }
u64 ktime_get(void) { return fake.monotonic_ns; }
time64_t ktime_get_real_seconds(void) { return fake.realtime_seconds; }
struct mm_struct *get_task_mm(struct task_struct *task) { return task->mm; }
void mmput(struct mm_struct *mm) { (void)mm; fake.mmput_calls++; }

void *kmalloc(size_t size, unsigned int flags)
{
	(void)flags;
	if (fake.allocation_fail_after >= 0 &&
	    fake.allocations >= fake.allocation_fail_after)
		return NULL;
	fake.allocations++;
	return calloc(1, size);
}

void *kmalloc_node(size_t size, unsigned int flags, int node)
{
	(void)node;
	return kmalloc(size, flags);
}

void kfree(const void *pointer)
{
	if (pointer) {
		fake.frees++;
		free((void *)pointer);
	}
}

int nla_strscpy(char *destination, const struct nlattr *attribute, size_t size)
{
	if (!size)
		return -EINVAL;
	strncpy(destination, (const char *)attribute->data, size);
	destination[size - 1] = 0;
	return (int)strlen(destination);
}

int bitmap_parselist(const char *text, unsigned long *mask, unsigned int bits)
{
	(void)bits;
	if (!strcmp(text, "0-1")) {
		*mask = 3;
		return 0;
	}
	return -EINVAL;
}

struct sk_buff *genlmsg_new(size_t payload, unsigned int flags)
{
	(void)payload;
	(void)flags;
	if (fake.genlmsg_new_fail)
		return NULL;
	fake.last_skb = calloc(1, sizeof(*fake.last_skb));
	return fake.last_skb;
}

struct sk_buff *__alloc_skb(unsigned int size, unsigned int flags,
				    unsigned int type, int node)
{
	(void)size;
	(void)type;
	(void)node;
	return genlmsg_new(size, flags);
}

void *genlmsg_put(struct sk_buff *skb, u32 portid, u32 sequence,
		  const struct genl_family *family, int flags, u8 command)
{
	(void)family;
	(void)flags;
	if (fake.genlmsg_put_fail)
		return NULL;
	fake.last_portid = portid;
	fake.last_sequence = sequence;
	fake.last_command = command;
	skb->length = 20;
	return skb->buffer + 20;
}

void nlmsg_free(struct sk_buff *skb) { if (skb) skb->freed = 1; }

struct nlattr *nla_nest_start_noflag(struct sk_buff *skb, int type)
{
	struct nlattr *attribute;
	if (fake.nla_nest_fail)
		return NULL;
	attribute = (struct nlattr *)(skb->buffer + skb->length);
	attribute->length = 4;
	attribute->type = (u16)type;
	skb->nest_start = skb->length;
	skb->length += 4;
	return attribute;
}

int nla_put(struct sk_buff *skb, int type, int length, const void *data)
{
	struct nlattr *attribute;
	if (fake.nla_put_fail)
		return -EMSGSIZE;
	attribute = (struct nlattr *)(skb->buffer + skb->length);
	attribute->length = (u16)(length + 4);
	attribute->type = (u16)type;
	memcpy(attribute->data, data, (size_t)length);
	skb->length += (size_t)length + 4;
	return 0;
}

struct nlattr *nla_reserve_64bit(struct sk_buff *skb, int type, int length,
				 int pad_attribute)
{
	struct nlattr *attribute;
	(void)pad_attribute;
	if (fake.nla_reserve_fail)
		return NULL;
	attribute = (struct nlattr *)(skb->buffer + skb->length);
	attribute->length = (u16)(length + 4);
	attribute->type = (u16)type;
	skb->length += (size_t)length + 4;
	fake.last_reserved = attribute;
	return attribute;
}

void nla_nest_cancel(struct sk_buff *skb, struct nlattr *nest)
{
	(void)nest;
	fake.nest_cancel_calls++;
	skb->length = skb->nest_start;
}

void nla_nest_end(struct sk_buff *skb, struct nlattr *nest)
{
	fake.nest_end_calls++;
	nest->length = (u16)(skb->length - skb->nest_start);
}

void *nlmsg_hdr(struct sk_buff *skb) { return skb->buffer; }
void *nlmsg_data(void *header) { return (unsigned char *)header + 16; }
void *genlmsg_data(void *header) { return (unsigned char *)header + 4; }
void genlmsg_end(struct sk_buff *skb, void *reply)
{ (void)skb; (void)reply; fake.genl_end_calls++; }
struct net *genl_info_net(const struct genl_info *info) { return info->net; }

int genlmsg_unicast(struct net *net, struct sk_buff *skb, u32 portid)
{
	(void)net;
	(void)skb;
	fake.unicast_calls++;
	fake.last_portid = portid;
	return 0;
}

int genl_register_family(struct genl_family *family)
{
	fake.register_calls++;
	fake.registered_family = family;
	return fake.register_result;
}

static struct nlattr make_string_attribute(const char *value)
{
	struct nlattr attribute = { .length = (u16)(strlen(value) + 5) };
	memcpy(attribute.data, value, strlen(value) + 1);
	return attribute;
}

static struct nlattr make_u32_attribute(u32 value)
{
	struct nlattr attribute = { .length = 8 };
	memcpy(attribute.data, &value, sizeof(value));
	return attribute;
}

static int listener_count(unsigned int cpu)
{
	struct list_head *head = &zte_listener_array[cpu].list;
	struct list_head *position;
	int count = 0;
	for (position = head->next; position != head; position = position->next)
		count++;
	return count;
}

static void test_parse(void)
{
	struct nlattr attribute;
	unsigned long mask = 0;

	reset_fake();
	EXPECT(zte_parse(NULL, &mask) == 1);
	attribute = make_string_attribute("");
	attribute.length = 4;
	EXPECT(zte_parse(&attribute, &mask) == -EINVAL);
	attribute.length = 4 + ZTE_TASKSTATS_CPUMASK_MAXLEN + 1;
	EXPECT(zte_parse(&attribute, &mask) == -E2BIG);
	attribute = make_string_attribute("0-1");
	EXPECT(zte_parse(&attribute, &mask) == 0);
	EXPECT(mask == 3);
	fake.allocation_fail_after = fake.allocations;
	EXPECT(zte_parse(&attribute, &mask) == -ENOMEM);
}

static void test_listener_registry(void)
{
	u32 mask = 3;
	u32 invalid_mask = 1U << 8;

	reset_fake();
	EXPECT(init_module() == 0);
	EXPECT(zte_add_del_listener(42, &mask, 0) == 0);
	EXPECT(listener_count(0) == 1 && listener_count(1) == 1);
	EXPECT(zte_add_del_listener(42, &mask, 0) == 0);
	EXPECT(listener_count(0) == 1 && listener_count(1) == 1);
	EXPECT(zte_add_del_listener(42, &mask, 1) == 0);
	EXPECT(listener_count(0) == 0 && listener_count(1) == 0);
	EXPECT(zte_add_del_listener(42, &invalid_mask, 0) == -EINVAL);
	current_task.active_ns = &foreign_pid_ns;
	EXPECT(zte_add_del_listener(42, &mask, 0) == -EINVAL);
	current_task.active_ns = &init_pid_ns;
	fake.allocation_fail_after = fake.allocations + 1;
	EXPECT(zte_add_del_listener(42, &mask, 0) == -ENOMEM);
	EXPECT(listener_count(0) == 0 && listener_count(1) == 0);
}

static void test_netlink_builders(void)
{
	struct nlattr *attrs[5] = { 0 };
	struct genl_info info = { .snd_seq = 7, .snd_portid = 9, .attrs = attrs };
	struct sk_buff *skb = NULL;
	struct zte_taskstats_v10 *stats;

	reset_fake();
	EXPECT(zte_prepare_reply(&info, &skb, 0x170) == 0);
	EXPECT(fake.last_sequence == 7 && fake.last_portid == 9);
	EXPECT(fake.last_command == TASKSTATS_CMD_NEW);
	stats = zte_mk_reply(skb, TASKSTATS_TYPE_PID, 123);
	EXPECT(stats != NULL && fake.nest_end_calls == 1);

	reset_fake();
	EXPECT(zte_prepare_reply(NULL, &skb, 0x170) == 0);
	EXPECT(fake.last_sequence == 0 && zte_taskstats_seqnum[0] == 1);
	fake.nla_put_fail = 1;
	EXPECT(zte_mk_reply(skb, TASKSTATS_TYPE_PID, 1) == NULL);
	EXPECT(fake.nest_cancel_calls == 1);

	reset_fake();
	fake.genlmsg_new_fail = 1;
	EXPECT(zte_prepare_reply(&info, &skb, 0x170) == -ENOMEM);
	reset_fake();
	fake.genlmsg_put_fail = 1;
	EXPECT(zte_prepare_reply(&info, &skb, 0x170) == -EINVAL);
	EXPECT(fake.last_skb->freed == 1);
	reset_fake();
	EXPECT(zte_prepare_reply(&info, &skb, 0x170) == 0);
	fake.nla_reserve_fail = 1;
	EXPECT(zte_mk_reply(skb, TASKSTATS_TYPE_PID, 1) == NULL);
	EXPECT(fake.nest_cancel_calls == 1);
}

static void prepare_task(struct task_struct *task, struct signal_struct *signal,
			 struct sighand_struct *sighand, struct cred *cred,
			 struct mm_struct *mm)
{
	memset(task, 0, sizeof(*task));
	memset(signal, 0, sizeof(*signal));
	memset(sighand, 0, sizeof(*sighand));
	memset(cred, 0, sizeof(*cred));
	memset(mm, 0, sizeof(*mm));
	task->pid = 77;
	task->tgid = 70;
	task->signal = signal;
	task->sighand = sighand;
	task->real_cred = cred;
	task->real_parent = task;
	task->thread_pid = task;
	task->active_ns = &init_pid_ns;
	task->exit_signal = 0;
	task->static_prio = 125;
	task->utime = 3000;
	task->stime = 2000;
	task->se.sum_exec_runtime = 4000;
	task->sched_info.pcount = 3;
	task->sched_info.run_delay = 11;
	task->nvcsw = 5;
	task->nivcsw = 6;
	task->start_time = 1000000000ULL;
	task->min_flt = 7;
	task->maj_flt = 8;
	strcpy(task->comm, "host-task");
	task->acct_rss_mem1 = 250;
	task->acct_vm_mem1 = 500;
	task->ioac.rchar = 2049;
	task->ioac.wchar = 3073;
	task->ioac.read_bytes = 4097;
	task->mm = mm;
	mm->rss = 20;
	mm->hiwater_rss = 10;
	mm->total_vm = 30;
	mm->hiwater_vm = 25;
	cred->uid.val = 1000;
	cred->gid.val = 1001;
}

static void test_taskstats_commands(void)
{
	struct nlattr *attrs[5] = { 0 };
	struct nlattr pid_attribute = make_u32_attribute(77);
	struct genl_info info = { .snd_seq = 1, .snd_portid = 55, .attrs = attrs };
	struct signal_struct signal;
	struct sighand_struct sighand;
	struct task_struct task;
	struct cred cred;
	struct mm_struct mm;
	struct zte_taskstats_v10 *stats;
	struct zte_taskstats_v10 prior = { .cpu_count = 2 };

	reset_fake();
	prepare_task(&task, &signal, &sighand, &cred, &mm);
	fake.found_task = &task;
	attrs[TASKSTATS_CMD_ATTR_PID] = &pid_attribute;
	EXPECT(zte_taskstats_user_cmd(NULL, &info) == 0);
	stats = (struct zte_taskstats_v10 *)fake.last_reserved->data;
	EXPECT(stats->version == 10 && stats->ac_pid == 77);
	EXPECT(stats->cpu_count == 3 && stats->cpu_delay_total == 11);
	EXPECT(stats->ac_utime == 3 && stats->ac_stime == 2);
	EXPECT(stats->ac_etime == 8000000 && stats->ac_btime64 == 1992);
	EXPECT(stats->ac_uid == 1000 && stats->ac_gid == 1001);
	EXPECT(fake.put_task_calls == 1 && fake.unicast_calls == 1);
	EXPECT(fake.rcu_depth == 0);

	reset_fake();
	attrs[TASKSTATS_CMD_ATTR_PID] = &pid_attribute;
	EXPECT(zte_taskstats_user_cmd(NULL, &info) == -ESRCH);
	EXPECT(fake.last_skb->freed == 1);

	reset_fake();
	prepare_task(&task, &signal, &sighand, &cred, &mm);
	fake.found_task = &task;
	signal.stats = (struct taskstats *)&prior;
	attrs[TASKSTATS_CMD_ATTR_PID] = NULL;
	attrs[TASKSTATS_CMD_ATTR_TGID] = &pid_attribute;
	EXPECT(zte_taskstats_user_cmd(NULL, &info) == 0);
	stats = (struct zte_taskstats_v10 *)fake.last_reserved->data;
	EXPECT(stats->version == 10);
	EXPECT(stats->cpu_count == 5);
	EXPECT(stats->cpu_run_real_total == 5000);
	EXPECT(fake.spin_locks == 1 && fake.spin_unlocks == 1);
	EXPECT(fake.rcu_depth == 0);

	reset_fake();
	attrs[TASKSTATS_CMD_ATTR_TGID] = &pid_attribute;
	EXPECT(zte_taskstats_user_cmd(NULL, &info) == -ESRCH);
	stats = (struct zte_taskstats_v10 *)fake.last_reserved->data;
	EXPECT(stats->version == 10 && fake.unicast_calls == 0);
	EXPECT(fake.last_skb->freed == 1 && fake.rcu_depth == 0);

	reset_fake();
	attrs[TASKSTATS_CMD_ATTR_TGID] = NULL;
	EXPECT(zte_taskstats_user_cmd(NULL, &info) == -EINVAL);
	EXPECT(zte_cgroupstats_user_cmd(NULL, &info) == 0);
}

static void test_lifecycle_and_lock(void)
{
	struct task_struct task = { 0 };
	struct sighand_struct sighand = { 0 };
	unsigned long flags = 0;

	reset_fake();
	EXPECT(init_module() == 0);
	EXPECT(fake.register_calls == 1);
	EXPECT(!strcmp(fake.registered_family->name, "ZTE_TASKSTATS"));
	EXPECT(fake.registered_family->n_ops == 2);
	task.sighand = &sighand;
	EXPECT(__zte_lock_task_sighand(&task, &flags) == &sighand);
	EXPECT(fake.rcu_depth == 0 && fake.spin_locks == 1);
	spin_unlock_irqrestore(&sighand.siglock, flags);
	task.sighand = NULL;
	EXPECT(__zte_lock_task_sighand(&task, &flags) == NULL);
	EXPECT(fake.rcu_depth == 0);
	reset_fake();
	fake.register_result = -EIO;
	EXPECT(init_module() == -EIO);
}

int main(void)
{
	test_parse();
	test_listener_registry();
	test_netlink_builders();
	test_taskstats_commands();
	test_lifecycle_and_lock();
	if (fake.failures)
		return 1;
	puts("PASS zte_stats_info host tests");
	return 0;
}
