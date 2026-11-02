#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "rdbg_host_shim.h"
#include "rdbg_fn_07_init_module.c"

enum event_kind {
	EV_LOG,
	EV_KCALLOC,
	EV_DRIVER_REGISTER,
	EV_ALLOC_REGION,
	EV_CDEV_INIT,
	EV_CDEV_ADD,
	EV_CLASS_CREATE,
	EV_DEVICE_CREATE,
	EV_DEVICE_DESTROY,
	EV_CLASS_DESTROY,
	EV_CDEV_DEL,
	EV_UNREGISTER_REGION,
	EV_KFREE,
};

struct event {
	enum event_kind kind;
	long value;
	char text[96];
};

static struct event events[128];
static size_t event_count;
static struct class test_class;
static struct device test_devices[16];
static void *allocation;
static bool allocation_freed;
static bool fail_kcalloc;
static int driver_register_result;
static int alloc_region_result;
static int cdev_add_result;
static int class_create_error;
static int device_create_error_minor = -1;
static int device_create_error = -ENOMEM;
static unsigned int device_create_count;

static unsigned int assertions;

#define CHECK(condition) do { \
	assertions++; \
	if (!(condition)) { \
		fprintf(stderr, "CHECK failed at %s:%d: %s\n", __FILE__, \
			__LINE__, #condition); \
		return false; \
	} \
} while (0)

static void record_event(enum event_kind kind, long value, const char *text)
{
	if (event_count >= sizeof(events) / sizeof(events[0])) {
		fprintf(stderr, "event buffer overflow\n");
		exit(2);
	}
	events[event_count].kind = kind;
	events[event_count].value = value;
	if (text)
		snprintf(events[event_count].text, sizeof(events[event_count].text),
			 "%s", text);
	event_count++;
}

void rdbg_host_log(int level, const char *format, ...)
{
	char message[96];
	va_list args;

	va_start(args, format);
	vsnprintf(message, sizeof(message), format, args);
	va_end(args);
	record_event(EV_LOG, level, message);
}

void cdev_init(struct cdev *cdev, const struct file_operations *operations)
{
	if (cdev != &g_rdbg_instance.cdev || operations != &rdbg_fops) {
		fprintf(stderr, "unexpected cdev_init arguments\n");
		exit(2);
	}
	record_event(EV_CDEV_INIT, 0, NULL);
}

int cdev_add(struct cdev *cdev, dev_t dev, unsigned int count)
{
	if (cdev != &g_rdbg_instance.cdev || dev != 0x12300000U ||
	    count != (unsigned int)g_rdbg_instance.count) {
		fprintf(stderr, "unexpected cdev_add arguments\n");
		exit(2);
	}
	record_event(EV_CDEV_ADD, cdev_add_result, NULL);
	return cdev_add_result;
}

void cdev_del(struct cdev *cdev)
{
	if (cdev != &g_rdbg_instance.cdev) {
		fprintf(stderr, "unexpected cdev_del argument\n");
		exit(2);
	}
	record_event(EV_CDEV_DEL, 0, NULL);
}

struct class *class_create(const char *name)
{
	if (strcmp(name, "rdbg")) {
		fprintf(stderr, "unexpected class name\n");
		exit(2);
	}
	record_event(EV_CLASS_CREATE, class_create_error, name);
	return class_create_error ? ERR_PTR(class_create_error) : &test_class;
}

void class_destroy(struct class *class)
{
	if (class != &test_class) {
		fprintf(stderr, "unexpected class_destroy argument\n");
		exit(2);
	}
	record_event(EV_CLASS_DESTROY, 0, NULL);
}

struct device *device_create(struct class *class, struct device *parent,
			     dev_t dev, void *data, const char *format, ...)
{
	va_list args;
	const char *name;
	unsigned int minor = dev & 0xffffU;

	if (class != &test_class || parent || data || strcmp(format, "%s") ||
	    minor >= 16 || (dev & 0xfff00000U) != 0x12300000U) {
		fprintf(stderr, "unexpected device_create arguments\n");
		exit(2);
	}
	va_start(args, format);
	name = va_arg(args, const char *);
	va_end(args);
	device_create_count++;
	record_event(EV_DEVICE_CREATE, (long)minor, name);
	if ((int)minor == device_create_error_minor)
		return ERR_PTR(device_create_error);
	return &test_devices[minor];
}

void device_destroy(struct class *class, dev_t dev)
{
	unsigned int minor = dev & 0xffffU;

	if (class != &test_class || minor >= 16 ||
	    (dev & 0xfff00000U) != 0x12300000U) {
		fprintf(stderr, "unexpected device_destroy arguments\n");
		exit(2);
	}
	record_event(EV_DEVICE_DESTROY, (long)minor, NULL);
}

int alloc_chrdev_region(dev_t *dev, unsigned int first_minor,
			unsigned int count, const char *name)
{
	if (dev != &g_rdbg_instance.devt || first_minor != 0 ||
	    count != (unsigned int)g_rdbg_instance.count || strcmp(name, "rdbgctl")) {
		fprintf(stderr, "unexpected alloc_chrdev_region arguments\n");
		exit(2);
	}
	*dev = 0x12345000U;
	record_event(EV_ALLOC_REGION, alloc_region_result, NULL);
	return alloc_region_result;
}

void unregister_chrdev_region(dev_t dev, unsigned int count)
{
	if (dev != 0x12345000U || count != (unsigned int)g_rdbg_instance.count) {
		fprintf(stderr, "unexpected unregister_chrdev_region arguments\n");
		exit(2);
	}
	record_event(EV_UNREGISTER_REGION, 0, NULL);
}

int platform_driver_register(struct platform_driver *driver)
{
	if (driver != &rdbg_driver) {
		fprintf(stderr, "unexpected platform_driver_register argument\n");
		exit(2);
	}
	record_event(EV_DRIVER_REGISTER, driver_register_result, NULL);
	return driver_register_result;
}

void platform_driver_unregister(struct platform_driver *driver)
{
	if (driver != &rdbg_driver) {
		fprintf(stderr, "unexpected platform_driver_unregister argument\n");
		exit(2);
	}
	fprintf(stderr, "unexpected platform_driver_unregister call\n");
	exit(2);
}

void *kcalloc(size_t count, size_t size, unsigned int flags)
{
	if (count != (size_t)g_rdbg_instance.count ||
	    size != sizeof(struct rdbg_data_layout) || flags != GFP_KERNEL) {
		fprintf(stderr, "unexpected kcalloc arguments\n");
		exit(2);
	}
	record_event(EV_KCALLOC, (long)count, NULL);
	if (fail_kcalloc)
		return NULL;
	allocation = calloc(count, size);
	allocation_freed = false;
	return allocation;
}

void kfree(const void *pointer)
{
	if (!pointer || pointer != allocation || allocation_freed) {
		fprintf(stderr, "unexpected kfree argument/state\n");
		exit(2);
	}
	free((void *)pointer);
	allocation_freed = true;
	record_event(EV_KFREE, 0, NULL);
}

int rdbg_probe(struct platform_device *pdev) { (void)pdev; return 0; }
int rdbg_open(struct inode *inode, struct file *file)
{ (void)inode; (void)file; return 0; }
int rdbg_release(struct inode *inode, struct file *file)
{ (void)inode; (void)file; return 0; }
ssize_t rdbg_read(struct file *file, char __user *buffer, size_t count,
		  loff_t *position)
{ (void)file; (void)buffer; (void)count; (void)position; return 0; }
ssize_t rdbg_write(struct file *file, const char __user *buffer, size_t count,
		   loff_t *position)
{ (void)file; (void)buffer; (void)count; (void)position; return 0; }

static void reset_scenario(void)
{
	if (allocation && !allocation_freed)
		free(allocation);
	allocation = NULL;
	allocation_freed = false;
	memset(&g_rdbg_instance, 0, sizeof(g_rdbg_instance));
	g_rdbg_instance.count = 16;
	memset(events, 0, sizeof(events));
	event_count = 0;
	fail_kcalloc = false;
	driver_register_result = 0;
	alloc_region_result = 0;
	cdev_add_result = 0;
	class_create_error = 0;
	device_create_error_minor = -1;
	device_create_error = -ENOMEM;
	device_create_count = 0;
}

static void cleanup_scenario(void)
{
	if (allocation && !allocation_freed)
		free(allocation);
	allocation = NULL;
	g_rdbg_instance.clients = NULL;
}

static bool trace_is(const enum event_kind *expected, size_t count)
{
	if (event_count != count) {
		fprintf(stderr, "trace length: got %zu expected %zu; events:",
			event_count, count);
		for (size_t i = 0; i < event_count; i++)
			fprintf(stderr, " %d", events[i].kind);
		fputc('\n', stderr);
		CHECK(event_count == count);
	}
	for (size_t i = 0; i < count; i++)
		CHECK(events[i].kind == expected[i]);
	return true;
}

static bool test_count_boundaries(void)
{
	const int counts[] = {0, 16, 17};
	const int results[] = {-EDOM, 0, -EDOM};
	const enum event_kind one_log[] = {EV_LOG};

	for (size_t i = 0; i < sizeof(counts) / sizeof(counts[0]); i++) {
		reset_scenario();
		g_rdbg_instance.count = counts[i];
		int result = rdbg_init();
		CHECK(result == results[i]);
		if (counts[i] != 16) {
			CHECK(trace_is(one_log, 1));
			CHECK(events[0].value == 3);
			CHECK(!allocation);
		}
		cleanup_scenario();
	}
	return true;
}

static bool test_allocation_failure(void)
{
	const enum event_kind expected[] = {EV_KCALLOC};
	reset_scenario();
	fail_kcalloc = true;
	CHECK(rdbg_init() == -ENOMEM);
	CHECK(trace_is(expected, 1));
	CHECK(!allocation);
	cleanup_scenario();
	return true;
}

static bool test_driver_register_failure(void)
{
	const enum event_kind expected[] = {EV_KCALLOC, EV_DRIVER_REGISTER};
	reset_scenario();
	driver_register_result = -EIO;
	CHECK(rdbg_init() == -EIO);
	CHECK(trace_is(expected, 2));
	CHECK(allocation && !allocation_freed);
	cleanup_scenario();
	return true;
}

static bool test_region_failure(void)
{
	const enum event_kind expected[] = {
		EV_KCALLOC, EV_DRIVER_REGISTER, EV_ALLOC_REGION, EV_LOG, EV_KFREE,
	};
	reset_scenario();
	alloc_region_result = -EIO;
	CHECK(rdbg_init() == -EIO);
	CHECK(trace_is(expected, sizeof(expected) / sizeof(expected[0])));
	CHECK(events[3].value == 3);
	CHECK(allocation_freed);
	cleanup_scenario();
	return true;
}

static bool test_cdev_add_failure(void)
{
	const enum event_kind expected[] = {
		EV_KCALLOC, EV_DRIVER_REGISTER, EV_ALLOC_REGION, EV_CDEV_INIT,
		EV_CDEV_ADD, EV_LOG, EV_UNREGISTER_REGION, EV_KFREE,
	};
	reset_scenario();
	cdev_add_result = -EIO;
	CHECK(rdbg_init() == -EIO);
	CHECK(trace_is(expected, sizeof(expected) / sizeof(expected[0])));
	CHECK(allocation_freed);
	cleanup_scenario();
	return true;
}

static bool test_class_failure(void)
{
	const enum event_kind expected[] = {
		EV_KCALLOC, EV_DRIVER_REGISTER, EV_ALLOC_REGION, EV_CDEV_INIT,
		EV_CDEV_ADD, EV_CLASS_CREATE, EV_LOG, EV_CDEV_DEL,
		EV_UNREGISTER_REGION, EV_KFREE,
	};
	reset_scenario();
	class_create_error = -EACCES;
	CHECK(rdbg_init() == -EACCES);
	CHECK(trace_is(expected, sizeof(expected) / sizeof(expected[0])));
	CHECK(allocation_freed);
	cleanup_scenario();
	return true;
}

static bool test_no_matching_device(void)
{
	const enum event_kind expected[] = {
		EV_KCALLOC, EV_DRIVER_REGISTER, EV_ALLOC_REGION, EV_CDEV_INIT,
		EV_CDEV_ADD, EV_CLASS_CREATE, EV_LOG, EV_CLASS_DESTROY,
		EV_CDEV_DEL, EV_UNREGISTER_REGION, EV_KFREE,
	};
	reset_scenario();
	g_rdbg_instance.count = 1;
	CHECK(rdbg_init() == -EINVAL);
	CHECK(trace_is(expected, sizeof(expected) / sizeof(expected[0])));
	CHECK(device_create_count == 0);
	CHECK(allocation_freed);
	cleanup_scenario();
	return true;
}

static bool test_device_failure_rolls_back_prior_devices(void)
{
	const enum event_kind expected[] = {
		EV_KCALLOC, EV_DRIVER_REGISTER, EV_ALLOC_REGION, EV_CDEV_INIT,
		EV_CDEV_ADD, EV_CLASS_CREATE, EV_DEVICE_CREATE, EV_DEVICE_CREATE,
		EV_DEVICE_CREATE, EV_LOG, EV_DEVICE_DESTROY, EV_DEVICE_DESTROY,
		EV_CLASS_DESTROY, EV_CDEV_DEL, EV_UNREGISTER_REGION, EV_KFREE,
	};
	reset_scenario();
	device_create_error_minor = 4;
	CHECK(rdbg_init() == -ENOMEM);
	CHECK(trace_is(expected, sizeof(expected) / sizeof(expected[0])));
	CHECK(events[6].value == 1 && !strcmp(events[6].text, "rdbg_modem"));
	CHECK(events[7].value == 2 && !strcmp(events[7].text, "rdbg_adsp"));
	CHECK(events[8].value == 4 && !strcmp(events[8].text, "rdbg_wcnss"));
	CHECK(events[9].value == 3);
	CHECK(events[10].value == 2 && events[11].value == 1);
	CHECK(device_create_count == 3 && allocation_freed);
	cleanup_scenario();
	return true;
}

static bool test_success(void)
{
	const enum event_kind expected[] = {
		EV_KCALLOC, EV_DRIVER_REGISTER, EV_ALLOC_REGION, EV_CDEV_INIT,
		EV_CDEV_ADD, EV_CLASS_CREATE, EV_DEVICE_CREATE, EV_DEVICE_CREATE,
		EV_DEVICE_CREATE, EV_DEVICE_CREATE,
	};
	reset_scenario();
	CHECK(rdbg_init() == 0);
	CHECK(trace_is(expected, sizeof(expected) / sizeof(expected[0])));
	CHECK(device_create_count == 4 && allocation && !allocation_freed);
	CHECK(events[6].value == 1 && events[7].value == 2 &&
	      events[8].value == 4 && events[9].value == 5);
	cleanup_scenario();
	return true;
}

int main(void)
{
	if (!test_count_boundaries() || !test_allocation_failure() ||
	    !test_driver_register_failure() || !test_region_failure() ||
	    !test_cdev_add_failure() || !test_class_failure() ||
	    !test_no_matching_device() ||
	    !test_device_failure_rolls_back_prior_devices() || !test_success())
		return 1;
	printf("PASS cases=9 assertions=%u promotion_authorized=false\n", assertions);
	return 0;
}
