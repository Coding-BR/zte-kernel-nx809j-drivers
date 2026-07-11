/* SPDX-License-Identifier: GPL-2.0-only */

#include <errno.h>
#include <limits.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint16_t u16;
typedef uint32_t u32;

#define GFP_KERNEL                       0U
#define ZTE_IR_FIRST_MINOR               0U
#define ZTE_IR_DRIVER_NAME               "zte_ir"
#define ZTE_IR_DEFAULT_SPI_SPEED_HZ      608000U
#define pr_debug(...)                    ((void)0)
#define dev_dbg(...)                     ((void)0)
#define MKDEV(major, minor)              (((u32)(major) << 20) | (u32)(minor))
#define iminor(inode)                    ((unsigned int)((inode)->i_rdev & 0xfffffU))
#define ERR_PTR(error)                   ((void *)(intptr_t)(error))
#define PTR_ERR(pointer)                 ((long)(intptr_t)(pointer))
#define IS_ERR(pointer)                  ((uintptr_t)(pointer) >= (uintptr_t)-4095)
#define PTR_ERR_OR_ZERO(pointer)         (IS_ERR(pointer) ? PTR_ERR(pointer) : 0)
#define test_bit(bit, address)           (!!(*(address) & (1UL << (bit))))
#define set_bit(bit, address)            (*(address) |= 1UL << (bit))
#define clear_bit(bit, address)          (*(address) &= ~(1UL << (bit)))

struct list_head {
	struct list_head *next;
	struct list_head *prev;
};

static void init_list_head(struct list_head *head)
{
	head->next = head;
	head->prev = head;
}

static void fake_list_add(struct list_head *entry, struct list_head *head)
{
	entry->next = head->next;
	entry->prev = head;
	head->next->prev = entry;
	head->next = entry;
}

static void fake_list_del_init(struct list_head *entry)
{
	entry->prev->next = entry->next;
	entry->next->prev = entry->prev;
	init_list_head(entry);
}

#define INIT_LIST_HEAD(head) init_list_head(head)
#define list_add(entry, head) fake_list_add((entry), (head))
#define list_del_init(entry) fake_list_del_init(entry)
#define container_of(pointer, type, member) \
	((type *)((char *)(pointer) - offsetof(type, member)))
#define list_for_each_entry(position, head, member) \
	for (struct list_head *_node = (head)->next; \
	     _node != (head) && \
	     (((position) = container_of(_node, __typeof__(*(position)), member)), 1); \
	     _node = _node->next)

struct fake_lock {
	char id;
	int held;
};

struct class {
	int marker;
};

struct device {
	int marker;
};

struct spi_device {
	struct device dev;
	void *driver_data;
};

struct zte_ir_runtime {
	struct {
		u32 devt;
		u16 pattern_high;
		u16 pattern_low;
		u32 speed_hz;
		struct spi_device *spi;
		struct fake_lock spi_lock;
		struct fake_lock buf_lock;
		struct list_head device_entry;
	} stock;
	unsigned int users;
	bool removed;
};

struct inode {
	u32 i_rdev;
};

struct file {
	void *private_data;
};

static struct list_head zte_ir_device_list;
static struct fake_lock zte_ir_device_list_lock;
static int zte_ir_major;
static struct class *zte_ir_class;
static unsigned long zte_ir_minors;

static char lock_events[128];
static size_t lock_event_count;
static unsigned int lock_failures;
static unsigned int allocation_calls;
static unsigned int free_calls;
static unsigned int device_create_calls;
static unsigned int device_destroy_calls;
static unsigned int nonseekable_open_calls;
static int nonseekable_open_result;
static int device_create_mode;
static int device_create_error;
static struct device fake_created_device;
static struct class fake_class;
static u32 captured_create_devt;
static void *captured_create_data;
static struct device *captured_create_parent;
static char captured_create_name[32];

enum {
	DEVICE_CREATE_NORMAL,
	DEVICE_CREATE_ERROR,
	DEVICE_CREATE_NULL,
};

static void record_lock_event(char event)
{
	if (lock_event_count + 1 < sizeof(lock_events)) {
		lock_events[lock_event_count++] = event;
		lock_events[lock_event_count] = '\0';
	}
}

static void fake_mutex_lock(struct fake_lock *lock)
{
	record_lock_event(lock->id);
	if (lock->held)
		lock_failures++;
	lock->held = 1;
}

static void fake_mutex_unlock(struct fake_lock *lock)
{
	record_lock_event((char)(lock->id - 'A' + 'a'));
	if (!lock->held)
		lock_failures++;
	lock->held = 0;
}

static void fake_mutex_init(struct fake_lock *lock)
{
	lock->id = 'B';
	lock->held = 0;
}

static void fake_spin_init(struct fake_lock *lock)
{
	lock->id = 'S';
	lock->held = 0;
}

static void fake_spin_lock(struct fake_lock *lock, unsigned long *flags)
{
	*flags = 0x5a;
	record_lock_event('S');
	if (lock->held)
		lock_failures++;
	lock->held = 1;
}

static void fake_spin_unlock(struct fake_lock *lock, unsigned long flags)
{
	record_lock_event('s');
	if (!lock->held || flags != 0x5a)
		lock_failures++;
	lock->held = 0;
}

#define mutex_lock(lock) fake_mutex_lock(lock)
#define mutex_unlock(lock) fake_mutex_unlock(lock)
#define mutex_init(lock) fake_mutex_init(lock)
#define spin_lock_init(lock) fake_spin_init(lock)
#define spin_lock_irqsave(lock, flags) fake_spin_lock((lock), &(flags))
#define spin_unlock_irqrestore(lock, flags) fake_spin_unlock((lock), (flags))

static void *kzalloc(size_t size, unsigned int flags)
{
	(void)flags;
	allocation_calls++;
	return calloc(1, size);
}

static void kfree(const void *pointer)
{
	if (!pointer)
		return;
	free_calls++;
	free((void *)pointer);
}

static int nonseekable_open(struct inode *inode, struct file *file)
{
	(void)inode;
	(void)file;
	nonseekable_open_calls++;
	return nonseekable_open_result;
}

static struct device *device_create(struct class *class,
				    struct device *parent,
				    u32 devt,
				    void *data,
				    const char *name)
{
	(void)class;
	device_create_calls++;
	captured_create_parent = parent;
	captured_create_devt = devt;
	captured_create_data = data;
	snprintf(captured_create_name, sizeof(captured_create_name), "%s", name);
	if (device_create_mode == DEVICE_CREATE_ERROR)
		return ERR_PTR(device_create_error);
	if (device_create_mode == DEVICE_CREATE_NULL)
		return NULL;
	return &fake_created_device;
}

static void device_destroy(struct class *class, u32 devt)
{
	(void)class;
	(void)devt;
	device_destroy_calls++;
}

static void spi_set_drvdata(struct spi_device *spi, void *data)
{
	spi->driver_data = data;
}

static void *spi_get_drvdata(struct spi_device *spi)
{
	return spi->driver_data;
}

#include "../05_open/zte_ir_open.c"
#include "../06_release/zte_ir_release.c"
#include "../07_probe/zte_ir_probe.c"
#include "../08_remove/zte_ir_remove.c"

static unsigned int checks;
static unsigned int failures;

static void expect_int(const char *name, long long actual, long long expected)
{
	checks++;
	if (actual == expected)
		return;
	failures++;
	fprintf(stderr, "%s: expected %lld, got %lld\n", name, expected, actual);
}

static void expect_pointer(const char *name, const void *actual,
			   const void *expected)
{
	checks++;
	if (actual == expected)
		return;
	failures++;
	fprintf(stderr, "%s: pointer mismatch\n", name);
}

static void expect_string(const char *name, const char *actual,
			  const char *expected)
{
	checks++;
	if (!strcmp(actual, expected))
		return;
	failures++;
	fprintf(stderr, "%s: expected %s, got %s\n", name, expected, actual);
}

static void reset_lock_events(void)
{
	lock_event_count = 0;
	lock_events[0] = '\0';
}

static void reset_state(void)
{
	init_list_head(&zte_ir_device_list);
	memset(&zte_ir_device_list_lock, 0, sizeof(zte_ir_device_list_lock));
	zte_ir_device_list_lock.id = 'G';
	zte_ir_major = 489;
	zte_ir_class = &fake_class;
	zte_ir_minors = 0;
	reset_lock_events();
	lock_failures = 0;
	allocation_calls = 0;
	free_calls = 0;
	device_create_calls = 0;
	device_destroy_calls = 0;
	nonseekable_open_calls = 0;
	nonseekable_open_result = 0;
	device_create_mode = DEVICE_CREATE_NORMAL;
	device_create_error = -ENOMEM;
	captured_create_devt = 0;
	captured_create_data = NULL;
	captured_create_parent = NULL;
	captured_create_name[0] = '\0';
}

static struct zte_ir_runtime *probe_success(struct spi_device *spi)
{
	struct zte_ir_runtime *runtime;

	memset(spi, 0, sizeof(*spi));
	expect_int("probe result", zte_ir_probe(spi), 0);
	runtime = spi->driver_data;
	expect_pointer("probe runtime", runtime, captured_create_data);
	expect_int("probe allocation", allocation_calls, 1);
	expect_int("probe no free", free_calls, 0);
	expect_int("probe create", device_create_calls, 1);
	expect_pointer("probe parent", captured_create_parent, &spi->dev);
	expect_int("probe devt", captured_create_devt, MKDEV(489, 0));
	expect_string("probe name", captured_create_name, "zte_ir");
	expect_int("probe minor", zte_ir_minors, 1);
	expect_int("probe speed", runtime->stock.speed_hz, 608000);
	expect_int("probe high", runtime->stock.pattern_high, 0x001f);
	expect_int("probe low", runtime->stock.pattern_low, 0);
	expect_pointer("probe spi", runtime->stock.spi, spi);
	expect_int("probe users", runtime->users, 0);
	expect_int("probe removed", runtime->removed, 0);
	expect_int("probe lock order", strcmp(lock_events, "Gg"), 0);
	expect_int("probe lock failures", lock_failures, 0);
	return runtime;
}

static void test_full_lifecycle(void)
{
	struct spi_device spi;
	struct zte_ir_runtime *runtime;
	struct inode inode;
	struct inode wrong_inode;
	struct file first = { 0 };
	struct file second = { 0 };
	struct file failed = { 0 };
	struct file after_remove = { 0 };

	reset_state();
	runtime = probe_success(&spi);
	inode.i_rdev = runtime->stock.devt;
	wrong_inode.i_rdev = runtime->stock.devt + 1;

	reset_lock_events();
	expect_int("wrong minor", zte_ir_open(&wrong_inode, &first), -ENXIO);
	expect_int("wrong minor users", runtime->users, 0);
	expect_int("wrong minor locks", strcmp(lock_events, "Gg"), 0);

	nonseekable_open_result = -EIO;
	reset_lock_events();
	expect_int("open rollback", zte_ir_open(&inode, &failed), -EIO);
	expect_pointer("open rollback private", failed.private_data, NULL);
	expect_int("open rollback users", runtime->users, 0);
	nonseekable_open_result = 0;

	expect_int("first open", zte_ir_open(&inode, &first), 0);
	expect_int("first users", runtime->users, 1);
	expect_pointer("first private", first.private_data, runtime);
	expect_int("second open", zte_ir_open(&inode, &second), 0);
	expect_int("second users", runtime->users, 2);

	runtime->removed = true;
	expect_int("removed blocks open", zte_ir_open(&inode, &after_remove), -ENXIO);
	runtime->removed = false;

	expect_int("first release", zte_ir_release(&inode, &first), 0);
	expect_int("release users", runtime->users, 1);
	expect_pointer("release clears private", first.private_data, NULL);
	expect_int("release did not free", free_calls, 0);

	reset_lock_events();
	zte_ir_remove(&spi);
	expect_int("remove order", strcmp(lock_events, "GBSsbg"), 0);
	expect_int("remove lock failures", lock_failures, 0);
	expect_int("remove marked", runtime->removed, 1);
	expect_pointer("remove spi null", runtime->stock.spi, NULL);
	expect_pointer("remove drvdata null", spi.driver_data, NULL);
	expect_int("remove minor clear", zte_ir_minors, 0);
	expect_int("remove destroy", device_destroy_calls, 1);
	expect_int("remove deferred free", free_calls, 0);
	expect_int("remove list empty", zte_ir_device_list.next == &zte_ir_device_list, 1);

	expect_int("open after remove", zte_ir_open(&inode, &after_remove), -ENXIO);
	expect_int("last release", zte_ir_release(&inode, &second), 0);
	expect_int("last release frees", free_calls, 1);
}

static void test_immediate_remove_and_underflow(void)
{
	struct spi_device spi;
	struct zte_ir_runtime *runtime;
	struct inode inode = { 0 };
	struct file invalid_release;

	reset_state();
	runtime = probe_success(&spi);
	(void)runtime;
	zte_ir_remove(&spi);
	expect_int("immediate remove free", free_calls, 1);
	expect_int("immediate destroy", device_destroy_calls, 1);

	reset_state();
	runtime = probe_success(&spi);
	invalid_release.private_data = runtime;
	expect_int("release underflow", zte_ir_release(&inode, &invalid_release), -EIO);
	expect_pointer("underflow clears private", invalid_release.private_data, NULL);
	expect_int("underflow no free", free_calls, 0);
	zte_ir_remove(&spi);
	expect_int("underflow cleanup", free_calls, 1);
}

static void test_probe_failures(void)
{
	struct spi_device spi;

	reset_state();
	expect_int("null spi probe", zte_ir_probe(NULL), -EINVAL);
	expect_int("null spi no allocation", allocation_calls, 0);

	reset_state();
	memset(&spi, 0, sizeof(spi));
	zte_ir_minors = 1;
	expect_int("minor occupied", zte_ir_probe(&spi), -ENODEV);
	expect_int("occupied allocation", allocation_calls, 1);
	expect_int("occupied free", free_calls, 1);
	expect_int("occupied no create", device_create_calls, 0);
	expect_pointer("occupied drvdata", spi.driver_data, NULL);

	reset_state();
	memset(&spi, 0, sizeof(spi));
	device_create_mode = DEVICE_CREATE_ERROR;
	device_create_error = -ENOMEM;
	expect_int("device create error", zte_ir_probe(&spi), -ENOMEM);
	expect_int("create error free", free_calls, 1);
	expect_int("create error minor", zte_ir_minors, 0);
	expect_int("create error list empty",
		   zte_ir_device_list.next == &zte_ir_device_list, 1);

	reset_state();
	memset(&spi, 0, sizeof(spi));
	device_create_mode = DEVICE_CREATE_NULL;
	expect_int("null device accepted", zte_ir_probe(&spi), 0);
	expect_int("null device minor", zte_ir_minors, 1);
	zte_ir_remove(&spi);
	expect_int("null device cleanup", free_calls, 1);
}

static void test_user_overflow_and_null_remove(void)
{
	struct spi_device spi;
	struct zte_ir_runtime *runtime;
	struct inode inode;
	struct file file = { 0 };

	reset_state();
	runtime = probe_success(&spi);
	inode.i_rdev = runtime->stock.devt;
	runtime->users = UINT_MAX;
	expect_int("user overflow", zte_ir_open(&inode, &file), -EMFILE);
	expect_pointer("overflow private", file.private_data, NULL);
	expect_int("overflow users unchanged", runtime->users, UINT_MAX);
	runtime->users = 0;
	zte_ir_remove(&spi);

	reset_state();
	zte_ir_remove(NULL);
	expect_int("null remove no free", free_calls, 0);
	memset(&spi, 0, sizeof(spi));
	zte_ir_remove(&spi);
	expect_int("empty drvdata remove", free_calls, 0);
}

int main(void)
{
	test_full_lifecycle();
	test_immediate_remove_and_underflow();
	test_probe_failures();
	test_user_overflow_and_null_remove();
	printf("checks=%u failures=%u\n", checks, failures);
	return failures ? 1 : 0;
}
