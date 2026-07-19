#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#define __int64 long long
#define KERN_ERR ""
#define KERN_INFO ""
#define KOBJ_CHANGE 2
#define EINVAL 22

typedef unsigned short umode_t;
typedef int64_t loff_t;

struct file { unsigned char unused; };
struct kobject { unsigned long marker; };
struct device {
	union {
		struct kobject kobj;
		unsigned long words[15];
	};
};
struct platform_device { struct device dev; };
struct completion { unsigned char padding[32]; };
struct delayed_work { unsigned char padding[64]; };

struct ufp_tp_ops_struct {
	union {
		struct {
			struct platform_device *pdev;
			int field_8;
			int field_c;
			struct delayed_work single_tap_work;
		};
		struct {
			char pad_to_128[128];
			struct completion gesture_complete;
			char field_a0;
			char field_a1;
			char field_a2;
		};
		char pad[168];
	};
};

static struct ufp_tp_ops_struct ufp_tp_ops;
static int current_lcd_state;
static unsigned char cdev_memory[0x800] __attribute__((aligned(8)));
static long long tpd_cdev;
static struct platform_device test_pdev;
static unsigned int uevent_calls;
static unsigned int gesture_calls;
static unsigned int complete_calls;
static unsigned int printk_calls;
static const char *last_env0;
static const char *last_env1;
static const char *last_gesture;
static char devnode_result[256];

static int printk(const void *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

static int kobject_uevent_env(struct kobject *kobj, int action,
				      char *envp[])
{
	(void)kobj;
	(void)action;
	uevent_calls++;
	last_env0 = envp[0];
	last_env1 = envp[1];
	return 0;
}

static void complete(struct completion *completion)
{
	(void)completion;
	complete_calls++;
}

static long long ufp_report_gesture_uevent(const char *event)
{
	gesture_calls++;
	last_gesture = event;
	return 0;
}

static char *kasprintf(int gfp, const char *format, ...)
{
	va_list ap;
	(void)gfp;
	va_start(ap, format);
	vsnprintf(devnode_result, sizeof(devnode_result), format, ap);
	va_end(ap);
	return devnode_result;
}

#include "../../../curated/zte_tpd/report_ufp_uevent.c"
#include "../../../curated/zte_tpd/syna_cdev_devnode.c"
#include "../../../curated/zte_tpd/syna_cdev_llseek.c"

typedef void (*report_ufp_uevent_fn)(int value);
typedef char *(*syna_cdev_devnode_fn)(const struct device *device,
					      umode_t *mode);
typedef loff_t (*syna_cdev_llseek_fn)(struct file *file, loff_t offset,
					      int whence);

_Static_assert(__builtin_types_compatible_p(typeof(&report_ufp_uevent),
						    report_ufp_uevent_fn), "report ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&syna_cdev_devnode),
						    syna_cdev_devnode_fn), "devnode ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&syna_cdev_llseek),
						    syna_cdev_llseek_fn), "llseek ABI");
_Static_assert(offsetof(struct ufp_tp_ops_struct, gesture_complete) == 128,
				       "gesture completion offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, field_a0) == 160,
				       "field_a0 offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, field_a1) == 161,
				       "field_a1 offset");
_Static_assert(offsetof(struct ufp_tp_ops_struct, field_a2) == 162,
				       "field_a2 offset");
_Static_assert(offsetof(struct device, words[14]) == 0x70,
				       "devnode value offset");

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_state(void)
{
	memset(&ufp_tp_ops, 0, sizeof(ufp_tp_ops));
	memset(cdev_memory, 0, sizeof(cdev_memory));
	memset(&test_pdev, 0, sizeof(test_pdev));
	current_lcd_state = 0;
	tpd_cdev = (long long)(uintptr_t)cdev_memory;
	uevent_calls = 0;
	gesture_calls = 0;
	complete_calls = 0;
	printk_calls = 0;
	last_env0 = NULL;
	last_env1 = NULL;
	last_gesture = NULL;
	memset(devnode_result, 0, sizeof(devnode_result));
	ufp_tp_ops.pdev = &test_pdev;
}

static bool test_signature_contract(void)
{
	return true;
}

static bool test_ufp_screen_off_down_up(void)
{
	reset_state();
	current_lcd_state = 0;
	report_ufp_uevent(0);
	REQUIRE(uevent_calls == 0);
	report_ufp_uevent(1);
	REQUIRE(uevent_calls == 1);
	REQUIRE(strcmp(last_env0, "areameet_down=true") == 0);
	REQUIRE(strcmp(last_env1, "TP_POWER_STATUS=2") == 0);
	REQUIRE(ufp_tp_ops.field_a1 == 1 && ufp_tp_ops.field_a0 == 0);
	report_ufp_uevent(1);
	REQUIRE(uevent_calls == 1);
	report_ufp_uevent(0);
	REQUIRE(uevent_calls == 2);
	REQUIRE(strcmp(last_env0, "areameet_up=true") == 0);
	REQUIRE(complete_calls == 0);
	return true;
}

static bool test_ufp_aod_gesture_and_completion(void)
{
	reset_state();
	current_lcd_state = 1;
	report_ufp_uevent(1);
	REQUIRE(gesture_calls == 1);
	REQUIRE(strcmp(last_gesture, "single_tap=true") == 0);
	REQUIRE(strcmp(last_env0, "aod_areameet_down=true") == 0);
	REQUIRE(strcmp(last_env1, "TP_POWER_STATUS=1") == 0);
	REQUIRE(ufp_tp_ops.field_a0 == 1);
	report_ufp_uevent(0);
	REQUIRE(complete_calls == 1 && ufp_tp_ops.field_a0 == 0);
	return true;
}

static bool test_ufp_cdev_flag_path(void)
{
	reset_state();
	current_lcd_state = 0;
	*(int *)(cdev_memory + 0x458) = 1;
	report_ufp_uevent(1);
	REQUIRE(ufp_tp_ops.field_a1 == 1);
	printk_calls = 0;
	report_ufp_uevent(0);
	REQUIRE(complete_calls == 0);
	REQUIRE(ufp_tp_ops.field_a1 == 0);
	REQUIRE(printk_calls == 2);
	return true;
}

static bool test_ufp_cdev_completion_blocked(void)
{
	reset_state();
	current_lcd_state = 2;
	*(int *)(cdev_memory + 0x458) = 1;
	report_ufp_uevent(1);
	ufp_tp_ops.field_a2 = 1;
	report_ufp_uevent(0);
	REQUIRE(complete_calls == 0);
	REQUIRE(ufp_tp_ops.field_a0 == 1);
	return true;
}

static bool test_ufp_null_pdev_error_path(void)
{
	reset_state();
	ufp_tp_ops.pdev = NULL;
	current_lcd_state = 0;
	report_ufp_uevent(1);
	REQUIRE(uevent_calls == 0 && ufp_tp_ops.field_a1 == 1);
	report_ufp_uevent(0);
	REQUIRE(uevent_calls == 0 && printk_calls == 2);
	return true;
}

static bool test_devnode_mode_and_fallback(void)
{
	struct device device = {0};
	umode_t mode = 0;
	char *name;

	device.words[14] = (unsigned long)(uintptr_t)"tcm7";
	name = syna_cdev_devnode(&device, &mode);
	REQUIRE(mode == 0x600);
	REQUIRE(strcmp(name, "tcm7") == 0);
	device.words[14] = 0;
	device.words[0] = (unsigned long)(uintptr_t)"fallback";
	name = syna_cdev_devnode(&device, &mode);
	REQUIRE(strcmp(name, "fallback") == 0);
	REQUIRE(syna_cdev_devnode(&device, NULL) == NULL);
	return true;
}

static bool test_llseek_error_contract(void)
{
	struct file file = {0};
	REQUIRE(syna_cdev_llseek(&file, 0, 0) == -EINVAL);
	REQUIRE(syna_cdev_llseek(&file, 4096, 2) == -EINVAL);
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
	RUN(test_ufp_screen_off_down_up);
	RUN(test_ufp_aod_gesture_and_completion);
	RUN(test_ufp_cdev_flag_path);
	RUN(test_ufp_cdev_completion_blocked);
	RUN(test_ufp_null_pdev_error_path);
	RUN(test_devnode_mode_and_fallback);
	RUN(test_llseek_error_contract);
#undef RUN
	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
