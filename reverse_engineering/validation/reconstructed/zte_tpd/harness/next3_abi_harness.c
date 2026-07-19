#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#define _DEFS_H
#define __int64 long long
#define __user
#define __poll_t unsigned int
#define dev_t uint32_t
#define _QWORD uint64_t
#define _DWORD uint32_t
#define LOBYTE(value) (*(uint8_t *)&(value))
#define LODWORD(value) (*(uint32_t *)&(value))
#define THIS_MODULE ((void *)(uintptr_t)0x12340000)
#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR(pointer) ((uintptr_t)(pointer) >= (uintptr_t)-4095)

typedef uint16_t umode_t;
typedef int64_t loff_t;

struct file { unsigned char unused; };
struct inode { unsigned char unused; };
struct vm_area_struct { unsigned char unused; };
struct poll_table_struct { unsigned char unused; };
struct kobject { unsigned long marker; };
struct device { struct kobject kobj; unsigned long marker; };
struct platform_device { unsigned char reserved[16]; struct kobject kobj; };
struct cdev { unsigned char unused; };
struct workqueue_struct { unsigned long marker; };
struct delayed_work { unsigned char bytes[64]; };
struct notifier_block { unsigned char bytes[16]; };
struct attribute_group { unsigned long marker; };
struct syna_tcm { _Alignas(8) unsigned char bytes[1600]; };

struct file_operations {
	void *owner;
	int (*open)(struct inode *, struct file *);
	int (*release)(struct inode *, struct file *);
	long long (*read)(struct file *, char *, size_t, loff_t *);
	long long (*write)(struct file *, const char *, size_t, loff_t *);
	loff_t (*llseek)(struct file *, loff_t, int);
	long (*unlocked_ioctl)(struct file *, unsigned int, unsigned long);
	long (*compat_ioctl)(struct file *, unsigned int, unsigned long);
	__poll_t (*poll)(struct file *, struct poll_table_struct *);
	int (*mmap)(struct file *, struct vm_area_struct *);
};

struct class {
	char *(*devnode)(const struct device *, umode_t *);
};

static long long g_cdev_data;
static long long qword_31658;
static long long qword_31660;
static long long qword_31668;
static long long qword_31670;
static long long qword_31678;
static long long qword_31680;
static long long qword_31688;
static long long qword_31690;
static long long qword_31698;
static long long qword_316A0;
static long long qword_316A8;
static long long qword_316B0;
static long long qword_316B8;
static long long qword_316C0;
static long long qword_316C8;
static long long qword_316D0;
static long long qword_316D8;
static long long qword_316E0;
static long long qword_316E8;
static long long qword_316F0;
static long long qword_316F8;
static long long qword_31700;
static long long qword_31708;
static long long qword_31710;
static uintptr_t p_device;
static int dummy_lock_key;
static int syna_cdev_create___key;
static const char unk_3362E[] = "alloc";
static const char unk_35AC9[] = "class";
static const char unk_3A3DA[] = "register";
static const char unk_3A9AC[] = "cdev";
static const char unk_3B816[] = "device";
static const char unk_3CC3E[] = "kobject";
static const char unk_34964[] = "group";
static const char unk_3B229[] = "testing";
static struct attribute_group attr_group;

#define syna_pal_mutex_alloc___key_0 dummy_lock_key

static int alloc_result;
static int register_result;
static int cdev_add_result;
static uint32_t allocated_dev;
static struct class class_object;
static struct class *class_create_result;
static struct device device_object;
static struct device *device_create_result;
static struct kobject sysfs_kobject;
static struct kobject *kobject_create_result;
static int sysfs_group_result;
static int testing_create_result;
static unsigned int alloc_calls;
static unsigned int register_calls;
static unsigned int unregister_calls;
static unsigned int cdev_init_calls;
static unsigned int cdev_add_calls;
static unsigned int cdev_del_calls;
static unsigned int class_destroy_calls;
static unsigned int device_create_calls;
static unsigned int waitqueue_init_calls;
static unsigned int kobject_create_calls;
static unsigned int sysfs_create_calls;
static unsigned int sysfs_remove_calls;
static unsigned int kobject_put_calls;
static unsigned int testing_create_calls;
static unsigned int queue_calls;
static int last_queue_cpu;
static struct workqueue_struct *last_queue_wq;
static struct delayed_work *last_queue_work;
static unsigned long last_queue_delay;
static const void *last_sysfs_parent;

static int printk(const void *format, ...)
{
	(void)format;
	return 0;
}

static void _mutex_init(void *lock, const char *name, const void *key)
{
	(void)lock;
	(void)name;
	(void)key;
}

static void _init_waitqueue_head(long long address, const char *name,
				 const void *key)
{
	(void)address;
	(void)name;
	(void)key;
	waitqueue_init_calls++;
}

static int alloc_chrdev_region(dev_t *dev, unsigned int first,
			       unsigned int count, const char *name)
{
	(void)first;
	(void)count;
	(void)name;
	alloc_calls++;
	if (alloc_result >= 0)
		*dev = allocated_dev;
	return alloc_result;
}

static int register_chrdev_region(dev_t dev, unsigned int count,
				  const char *name)
{
	(void)dev;
	(void)count;
	(void)name;
	register_calls++;
	return register_result;
}

static void unregister_chrdev_region(dev_t dev, unsigned int count)
{
	(void)dev;
	(void)count;
	unregister_calls++;
}

static void cdev_init(struct cdev *cdev, const struct file_operations *fops)
{
	(void)cdev;
	(void)fops;
	cdev_init_calls++;
}

static int cdev_add(struct cdev *cdev, dev_t dev, unsigned int count)
{
	(void)cdev;
	(void)dev;
	(void)count;
	cdev_add_calls++;
	return cdev_add_result;
}

static void cdev_del(struct cdev *cdev)
{
	(void)cdev;
	cdev_del_calls++;
}

static struct class *class_create(const char *name)
{
	(void)name;
	return class_create_result;
}

static void class_destroy(struct class *class)
{
	(void)class;
	class_destroy_calls++;
}

static struct device *device_create(struct class *class, struct device *parent,
				    dev_t dev, void *data,
				    const char *format, ...)
{
	(void)class;
	(void)parent;
	(void)dev;
	(void)data;
	(void)format;
	device_create_calls++;
	return device_create_result;
}

static struct kobject *kobject_create_and_add(const char *name,
					      const void *parent)
{
	(void)name;
	kobject_create_calls++;
	last_sysfs_parent = parent;
	return kobject_create_result;
}

static int sysfs_create_group(struct kobject *kobject,
			      const struct attribute_group *group)
{
	(void)kobject;
	(void)group;
	sysfs_create_calls++;
	return sysfs_group_result;
}

static void sysfs_remove_group(struct kobject *kobject,
			       const struct attribute_group *group)
{
	(void)kobject;
	(void)group;
	sysfs_remove_calls++;
}

static void kobject_put(struct kobject *kobject)
{
	(void)kobject;
	kobject_put_calls++;
}

static int syna_testing_create_dir(struct syna_tcm *tcm)
{
	(void)tcm;
	testing_create_calls++;
	return testing_create_result;
}

static bool queue_delayed_work_on(int cpu, struct workqueue_struct *wq,
				  struct delayed_work *work,
				  unsigned long delay)
{
	queue_calls++;
	last_queue_cpu = cpu;
	last_queue_wq = wq;
	last_queue_work = work;
	last_queue_delay = delay;
	return true;
}

static int syna_cdev_open(struct inode *inode, struct file *file)
{
	(void)inode;
	(void)file;
	return 0;
}

static int syna_cdev_release(struct inode *inode, struct file *file)
{
	(void)inode;
	(void)file;
	return 0;
}

long long syna_cdev_read(long long file, long long buffer, long long count)
{
	(void)file;
	(void)buffer;
	(void)count;
	return 0;
}

long long syna_cdev_write(long long file, long long buffer, long long count)
{
	(void)file;
	(void)buffer;
	(void)count;
	return 0;
}

static loff_t syna_cdev_llseek(struct file *file, loff_t offset, int whence)
{
	(void)file;
	(void)offset;
	(void)whence;
	return 0;
}

long long syna_cdev_ioctls(long long file, unsigned char command,
			   unsigned long long argument)
{
	(void)file;
	(void)command;
	(void)argument;
	return 0;
}

long long syna_poll(long long file, void (**wait)(void))
{
	(void)file;
	(void)wait;
	return 0;
}

static int syna_mmap(struct file *file, struct vm_area_struct *vma)
{
	(void)file;
	(void)vma;
	return 0;
}

static char *syna_cdev_devnode(const struct device *device, umode_t *mode)
{
	(void)device;
	(void)mode;
	return NULL;
}

#include "../../../curated/zte_tpd/syna_cdev_create.c"
#include "../../../curated/zte_tpd/syna_charger_notify_call.c"
#include "../../../curated/zte_tpd/syna_request_managed_device.c"
#include "../../../curated/zte_tpd/syna_sysfs_create_dir.c"

typedef int (*syna_cdev_create_fn)(struct syna_tcm *, struct platform_device *);
typedef int (*syna_charger_notify_call_fn)(struct notifier_block *,
					   unsigned long, void *);
typedef struct device *(*syna_request_managed_device_fn)(void);
typedef int (*syna_sysfs_create_dir_fn)(struct syna_tcm *,
					struct platform_device *);

_Static_assert(__builtin_types_compatible_p(typeof(&syna_cdev_create),
					    syna_cdev_create_fn), "cdev ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&syna_charger_notify_call),
					    syna_charger_notify_call_fn),
		       "charger notifier ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&syna_request_managed_device),
					    syna_request_managed_device_fn),
		       "managed device ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&syna_sysfs_create_dir),
					    syna_sysfs_create_dir_fn), "sysfs ABI");
_Static_assert(offsetof(struct platform_device, kobj) == 16,
		       "platform kobject offset");

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_state(void)
{
	alloc_result = 0;
	register_result = 0;
	cdev_add_result = 0;
	allocated_dev = (11U << 20) | 3U;
	class_create_result = &class_object;
	device_create_result = &device_object;
	kobject_create_result = &sysfs_kobject;
	sysfs_group_result = 0;
	testing_create_result = 0;
	alloc_calls = 0;
	register_calls = 0;
	unregister_calls = 0;
	cdev_init_calls = 0;
	cdev_add_calls = 0;
	cdev_del_calls = 0;
	class_destroy_calls = 0;
	device_create_calls = 0;
	waitqueue_init_calls = 0;
	kobject_create_calls = 0;
	sysfs_create_calls = 0;
	sysfs_remove_calls = 0;
	kobject_put_calls = 0;
	testing_create_calls = 0;
	queue_calls = 0;
	last_queue_cpu = -1;
	last_queue_wq = NULL;
	last_queue_work = NULL;
	last_queue_delay = 0;
	last_sysfs_parent = NULL;
	syna_cdev_create_cdev_major_num = 0;
	memset(&class_object, 0, sizeof(class_object));
}

static bool test_signature_contract(void)
{
	return true;
}

static bool test_request_managed_device(void)
{
	unsigned char storage[128] __attribute__((aligned(8))) = {0};
	struct device expected = {0};

	p_device = 0;
	REQUIRE(syna_request_managed_device() == NULL);
	*(struct device **)(storage + 112) = &expected;
	p_device = (uintptr_t)storage;
	REQUIRE(syna_request_managed_device() == &expected);
	p_device = 0;
	return true;
}

static void call_charger(struct notifier_block *notifier,
			 const char *supply_name, unsigned long event)
{
	const char *name = supply_name;
	const char **name_pointer = &name;

	syna_charger_notify_call(notifier, event, &name_pointer);
}

static bool test_charger_event_ignored(void)
{
	unsigned char storage[144] __attribute__((aligned(8))) = {0};
	struct notifier_block *notifier = (void *)(storage + 112);

	reset_state();
	call_charger(notifier, "usb", 1);
	REQUIRE(queue_calls == 0);
	return true;
}

static bool test_charger_supply_filter(void)
{
	unsigned char storage[144] __attribute__((aligned(8))) = {0};
	struct workqueue_struct queue = {0};
	struct notifier_block *notifier = (void *)(storage + 112);

	*(struct workqueue_struct **)(storage + 104) = &queue;
	reset_state();
	call_charger(notifier, "battery", 0);
	REQUIRE(queue_calls == 0);
	call_charger(notifier, "usb", 0);
	REQUIRE(queue_calls == 1);
	REQUIRE(last_queue_cpu == 32 && last_queue_wq == &queue);
	REQUIRE(last_queue_work == (struct delayed_work *)storage);
	REQUIRE(last_queue_delay == 125);
	call_charger(notifier, "ac", 0);
	REQUIRE(queue_calls == 2);
	return true;
}

static bool test_sysfs_no_kobject(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device parent = {0};

	reset_state();
	kobject_create_result = NULL;
	REQUIRE(syna_sysfs_create_dir(&tcm, &parent) == -20);
	REQUIRE(kobject_create_calls == 1);
	REQUIRE(last_sysfs_parent == (unsigned char *)&parent + 16);
	REQUIRE(*(void **)(tcm.bytes + 920) == NULL);
	return true;
}

static bool test_sysfs_group_failure(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device parent = {0};

	reset_state();
	sysfs_group_result = -5;
	REQUIRE(syna_sysfs_create_dir(&tcm, &parent) == -5);
	REQUIRE(sysfs_create_calls == 1 && kobject_put_calls == 1);
	REQUIRE(testing_create_calls == 0 && sysfs_remove_calls == 0);
	return true;
}

static bool test_sysfs_testing_failure(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device parent = {0};

	reset_state();
	testing_create_result = -6;
	REQUIRE(syna_sysfs_create_dir(&tcm, &parent) == -6);
	REQUIRE(testing_create_calls == 1 && sysfs_remove_calls == 1);
	REQUIRE(kobject_put_calls == 1);
	return true;
}

static bool test_sysfs_success(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device parent = {0};

	reset_state();
	REQUIRE(syna_sysfs_create_dir(&tcm, &parent) == 0);
	REQUIRE(*(struct kobject **)(tcm.bytes + 920) == &sysfs_kobject);
	REQUIRE(sysfs_create_calls == 1 && testing_create_calls == 1);
	REQUIRE(sysfs_remove_calls == 0 && kobject_put_calls == 0);
	return true;
}

static bool test_cdev_alloc_failure(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device data = {0};

	reset_state();
	alloc_result = -17;
	REQUIRE(syna_cdev_create(&tcm, &data) == -17);
	REQUIRE(alloc_calls == 1 && cdev_init_calls == 0);
	return true;
}

static bool test_cdev_register_failure(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device data = {0};

	reset_state();
	syna_cdev_create_cdev_major_num = 7;
	register_result = -18;
	REQUIRE(syna_cdev_create(&tcm, &data) == -18);
	REQUIRE(register_calls == 1 && alloc_calls == 0);
	REQUIRE(*(uint32_t *)(tcm.bytes + 896) == (7U << 20));
	return true;
}

static bool test_cdev_add_failure(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device data = {0};

	reset_state();
	cdev_add_result = -19;
	REQUIRE(syna_cdev_create(&tcm, &data) == -19);
	REQUIRE(cdev_add_calls == 1 && unregister_calls == 1);
	REQUIRE(cdev_del_calls == 0);
	return true;
}

static bool test_cdev_class_failure(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device data = {0};

	reset_state();
	class_create_result = ERR_PTR(-12);
	REQUIRE(syna_cdev_create(&tcm, &data) == -12);
	REQUIRE(cdev_del_calls == 1 && unregister_calls == 1);
	REQUIRE(class_destroy_calls == 0);
	return true;
}

static bool test_cdev_device_failure(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device data = {0};

	reset_state();
	device_create_result = ERR_PTR(-19);
	REQUIRE(syna_cdev_create(&tcm, &data) == -19);
	REQUIRE(class_destroy_calls == 1 && cdev_del_calls == 1);
	REQUIRE(unregister_calls == 1);
	return true;
}

static bool test_cdev_success(void)
{
	struct syna_tcm tcm = {0};
	struct platform_device data = {0};

	reset_state();
	REQUIRE(syna_cdev_create(&tcm, &data) == 0);
	REQUIRE(g_cdev_data == (long long)(uintptr_t)&data);
	REQUIRE(*(uint32_t *)(tcm.bytes + 896) == allocated_dev);
	REQUIRE(*(struct class **)(tcm.bytes + 904) == &class_object);
	REQUIRE(*(struct device **)(tcm.bytes + 912) == &device_object);
	REQUIRE(*(uint32_t *)(tcm.bytes + 900) == 0);
	REQUIRE(*(uintptr_t *)(tcm.bytes + 1272) ==
		(uintptr_t)(tcm.bytes + 1272));
	REQUIRE(*(uintptr_t *)(tcm.bytes + 1280) ==
		(uintptr_t)(tcm.bytes + 1272));
	REQUIRE(class_object.devnode == syna_cdev_devnode);
	REQUIRE(waitqueue_init_calls == 1);
	REQUIRE(unregister_calls == 0 && cdev_del_calls == 0);
	return true;
}

static int run_test(const char *name, bool (*test)(void))
{
	if (!test()) {
		printf("FAIL %s\n", name);
		return 1;
	}
	printf("PASS %s\n", name);
	return 0;
}

int main(void)
{
	int failures = 0;
	int total = 0;

#define RUN(test) do { total++; failures += run_test(#test, test); } while (0)
	RUN(test_signature_contract);
	RUN(test_request_managed_device);
	RUN(test_charger_event_ignored);
	RUN(test_charger_supply_filter);
	RUN(test_sysfs_no_kobject);
	RUN(test_sysfs_group_failure);
	RUN(test_sysfs_testing_failure);
	RUN(test_sysfs_success);
	RUN(test_cdev_alloc_failure);
	RUN(test_cdev_register_failure);
	RUN(test_cdev_add_failure);
	RUN(test_cdev_class_failure);
	RUN(test_cdev_device_failure);
	RUN(test_cdev_success);
#undef RUN
	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
