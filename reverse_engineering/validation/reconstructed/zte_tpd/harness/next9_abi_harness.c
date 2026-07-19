#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;
typedef unsigned int __poll_t;
typedef long long __int64;
typedef int irqreturn_t;
typedef int pid_t;

#define EINVAL 22
#define IRQ_HANDLED 1
#define KOBJ_CHANGE 2
#define POLLIN 0x01
#define POLLRDNORM 0x40

struct file;
struct poll_table_struct;
typedef struct {
	u8 opaque[0x18];
} wait_queue_head_t;
typedef void (*poll_queue_proc)(struct file *, wait_queue_head_t *,
				struct poll_table_struct *);

struct poll_table_struct {
	poll_queue_proc _qproc;
};

struct file {
	u8 reserved_00[0x20];
	void *private_data;
};

struct spi_device;
struct gpio_desc {
	int gpio;
};
struct tcm_dev {
	int marker;
};
struct completion {
	u8 opaque[0x20];
};
struct workqueue_struct {
	int marker;
};
struct delayed_work {
	u8 opaque;
};
struct kobject {
	int marker;
};
struct device {
	struct kobject kobj;
};
struct platform_device {
	u8 reserved_00[0x10];
	struct device dev;
};
struct wakeup_source {
	int marker;
};

struct syna_hw_interface {
	struct spi_device *spi;
	u8 reserved_0008[0x20];
	void *read;
	void *write;
	u8 reserved_0038[0x08];
	void *enable_irq;
	u8 reserved_0048[0x60];
	int irq_gpio;
	int irq_on_state;
	u8 reserved_00b0[0x40];
	int reset_gpio;
	int reset_on_state;
	u32 reset_delay_ms;
	u32 reset_active_ms;
	u8 reserved_0100[0x80];
	void *power_on;
	void (*hw_reset)(struct syna_hw_interface *);
};

struct syna_event_data_buffer {
	u8 opaque[0x48];
};

struct syna_tcm {
	struct tcm_dev *tcm_dev;
	u8 reserved_0008[0x268];
	struct syna_hw_interface *hw_if;
	u8 reserved_0278[0x30];
	struct syna_event_data_buffer event_data;
	pid_t isr_pid;
	u8 reserved_02f4[0x154];
	wait_queue_head_t frame_wait;
	u8 reserved_0460[0x08];
	u32 frame_available;
	u8 reserved_046c[0xec];
	struct completion pm_resume_completion;
	u8 pm_resume_wait_enabled;
	u8 reserved_0579[0x03];
	u32 pm_resume_wait_bypass;
};

struct syna_delayed_work_layout {
	u8 opaque_00[0x68];
	struct workqueue_struct *wq;
};

struct ufp_tp_ops_struct {
	union {
		struct {
			struct platform_device *pdev;
			union {
				int single_tap_pending;
				int field_8;
			};
			union {
				int field_0c;
				int field_c;
			};
			struct syna_delayed_work_layout single_tap_work;
		};
		struct {
			u8 reserved_0000[0x80];
			struct completion gesture_complete;
			u8 field_a0;
			u8 field_a1;
			u8 field_a2;
		};
		u8 opaque[0xa8];
	};
};

_Static_assert(offsetof(struct file, private_data) == 0x20, "file private_data");
_Static_assert(offsetof(struct syna_hw_interface, irq_gpio) == 0xa8, "irq gpio");
_Static_assert(offsetof(struct syna_hw_interface, reset_gpio) == 0xf0, "reset gpio");
_Static_assert(sizeof(struct syna_hw_interface) == 0x190, "hardware layout");
_Static_assert(offsetof(struct syna_tcm, hw_if) == 0x270, "hardware pointer");
_Static_assert(offsetof(struct syna_tcm, event_data) == 0x2a8, "event buffer");
_Static_assert(offsetof(struct syna_tcm, frame_wait) == 0x448, "frame wait");
_Static_assert(offsetof(struct syna_tcm, frame_available) == 0x468, "frame flag");
_Static_assert(offsetof(struct syna_tcm, pm_resume_completion) == 0x558,
	       "PM completion");
_Static_assert(offsetof(struct syna_tcm, pm_resume_wait_enabled) == 0x578,
	       "PM wait enable");
_Static_assert(offsetof(struct syna_tcm, pm_resume_wait_bypass) == 0x57c,
	       "PM wait bypass");
_Static_assert(sizeof(struct syna_tcm) == 0x580, "application layout");
_Static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_work.wq) == 0x78,
	       "single tap workqueue");
_Static_assert(offsetof(struct ufp_tp_ops_struct, gesture_complete) == 0x80,
	       "gesture completion");
_Static_assert(sizeof(struct ufp_tp_ops_struct) == 0xa8, "UFP layout");

#define MAX_LOGS 8
#define MAX_SLEEP_CALLS 4

static unsigned int log_calls;
static const char *log_formats[MAX_LOGS];
static const char *log_arguments[MAX_LOGS];

static unsigned int poll_wait_calls;
static unsigned int poll_callback_calls;
static struct file *poll_file;
static wait_queue_head_t *poll_head;
static struct poll_table_struct *poll_table;

static unsigned int gpio_to_desc_calls;
static int last_gpio;
static unsigned int gpio_get_calls;
static int gpio_input_value;
static unsigned int gpio_set_calls;
static int gpio_set_values[2];
static unsigned int sleep_calls;
static unsigned int sleep_values[MAX_SLEEP_CALLS];
static struct gpio_desc gpio_descriptor;

static unsigned int dynamic_calls;
static struct tcm_dev *dynamic_tcm;
static u8 dynamic_config;
static unsigned int dynamic_value;
static unsigned int dynamic_delay;
static int dynamic_result;

static unsigned int uevent_calls;
static struct kobject *uevent_kobject;
static int uevent_action;
static char *uevent_first;
static char *uevent_second;
static unsigned int wakeup_calls;
static struct wakeup_source *wakeup_source_arg;
static unsigned int wakeup_duration;
static bool wakeup_hard;
static unsigned int delayed_calls;
static int delayed_cpu;
static struct workqueue_struct *delayed_wq;
static struct delayed_work *delayed_work_arg;
static unsigned long delayed_value;

static unsigned int completion_wait_calls;
static struct completion *completion_arg;
static unsigned long completion_timeout;
static unsigned long completion_result;
static unsigned int event_calls;
static __int64 event_tcm;
static u8 *event_code;
static u8 event_initial_value;
static __int64 event_buffer;
static int event_result;

static struct ufp_tp_ops_struct ufp_tp_ops;
static struct wakeup_source tp_wakeup;
static struct {
	pid_t pid;
} current_task;
#define current (&current_task)
#define KERN_INFO "\001" "6"

static int printk(const char *format, ...)
{
	va_list arguments;
	const char *argument;

	va_start(arguments, format);
	argument = va_arg(arguments, const char *);
	va_end(arguments);
	if (log_calls < MAX_LOGS) {
		log_formats[log_calls] = format;
		log_arguments[log_calls] = argument;
	}
	log_calls++;
	return 0;
}

static void poll_wait(struct file *file, wait_queue_head_t *head,
		      struct poll_table_struct *table)
{
	poll_wait_calls++;
	if (table && table->_qproc && head)
		table->_qproc(file, head, table);
}

static void poll_callback(struct file *file, wait_queue_head_t *head,
			  struct poll_table_struct *table)
{
	poll_callback_calls++;
	poll_file = file;
	poll_head = head;
	poll_table = table;
}

static struct gpio_desc *gpio_to_desc(int gpio)
{
	gpio_to_desc_calls++;
	last_gpio = gpio;
	gpio_descriptor.gpio = gpio;
	return &gpio_descriptor;
}

static int gpiod_get_raw_value(struct gpio_desc *desc)
{
	gpio_get_calls++;
	last_gpio = desc->gpio;
	return gpio_input_value;
}

static void gpiod_set_raw_value(struct gpio_desc *desc, int value)
{
	last_gpio = desc->gpio;
	if (gpio_set_calls < 2)
		gpio_set_values[gpio_set_calls] = value;
	gpio_set_calls++;
}

static void msleep(unsigned int value)
{
	if (sleep_calls < MAX_SLEEP_CALLS)
		sleep_values[sleep_calls] = value;
	sleep_calls++;
}

static int syna_tcm_set_dynamic_config(struct tcm_dev *tcm, u8 config,
				       unsigned int value,
				       unsigned int delay)
{
	dynamic_calls++;
	dynamic_tcm = tcm;
	dynamic_config = config;
	dynamic_value = value;
	dynamic_delay = delay;
	return dynamic_result;
}

static int kobject_uevent_env(struct kobject *kobject, int action, char **envp)
{
	uevent_calls++;
	uevent_kobject = kobject;
	uevent_action = action;
	uevent_first = envp[0];
	uevent_second = envp[1];
	return 0;
}

static void pm_wakeup_ws_event(struct wakeup_source *source,
			       unsigned int duration, bool hard)
{
	wakeup_calls++;
	wakeup_source_arg = source;
	wakeup_duration = duration;
	wakeup_hard = hard;
}

static bool mod_delayed_work_on(int cpu, struct workqueue_struct *wq,
				struct delayed_work *work,
				unsigned long delay)
{
	delayed_calls++;
	delayed_cpu = cpu;
	delayed_wq = wq;
	delayed_work_arg = work;
	delayed_value = delay;
	return true;
}

static unsigned long wait_for_completion_timeout(struct completion *completion,
						 unsigned long timeout)
{
	completion_wait_calls++;
	completion_arg = completion;
	completion_timeout = timeout;
	return completion_result;
}

static __int64 syna_tcm_get_event_data(__int64 tcm, u8 *code,
				       __int64 buffer)
{
	event_calls++;
	event_tcm = tcm;
	event_code = code;
	event_initial_value = *code;
	event_buffer = buffer;
	return event_result;
}

#include "../../../curated/zte_tpd/syna_poll.c"
#include "../../../curated/zte_tpd/syna_spi_hw_reset.c"
#include "../../../curated/zte_tpd/syna_dev_set_screen_on_fp_mode.c"
#include "../../../curated/zte_tpd/ufp_report_gesture_uevent.c"
#include "../../../curated/zte_tpd/syna_dev_isr.c"

typedef __poll_t (*poll_fn)(struct file *, struct poll_table_struct *);
typedef void (*reset_fn)(struct syna_hw_interface *);
typedef int (*screen_mode_fn)(struct syna_tcm *, unsigned int);
typedef void (*gesture_fn)(char *);
typedef irqreturn_t (*isr_fn)(int, void *);

_Static_assert(__builtin_types_compatible_p(typeof(&syna_poll), poll_fn),
	       "poll ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&syna_spi_hw_reset), reset_fn),
	       "reset ABI");
_Static_assert(__builtin_types_compatible_p(
		       typeof(&syna_dev_set_screen_on_fp_mode), screen_mode_fn),
	       "screen mode ABI");
_Static_assert(__builtin_types_compatible_p(
		       typeof(&ufp_report_gesture_uevent), gesture_fn),
	       "gesture ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&syna_dev_isr), isr_fn),
	       "ISR ABI");

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
	memset(&tp_wakeup, 0, sizeof(tp_wakeup));
	memset(&gpio_descriptor, 0, sizeof(gpio_descriptor));
	log_calls = 0;
	memset(log_formats, 0, sizeof(log_formats));
	memset(log_arguments, 0, sizeof(log_arguments));
	poll_wait_calls = 0;
	poll_callback_calls = 0;
	poll_file = NULL;
	poll_head = NULL;
	poll_table = NULL;
	gpio_to_desc_calls = 0;
	last_gpio = 0;
	gpio_get_calls = 0;
	gpio_input_value = 0;
	gpio_set_calls = 0;
	memset(gpio_set_values, 0, sizeof(gpio_set_values));
	sleep_calls = 0;
	memset(sleep_values, 0, sizeof(sleep_values));
	dynamic_calls = 0;
	dynamic_tcm = NULL;
	dynamic_config = 0;
	dynamic_value = 0;
	dynamic_delay = 0;
	dynamic_result = 0;
	uevent_calls = 0;
	uevent_kobject = NULL;
	uevent_action = 0;
	uevent_first = NULL;
	uevent_second = (char *)1;
	wakeup_calls = 0;
	wakeup_source_arg = NULL;
	wakeup_duration = 0;
	wakeup_hard = true;
	delayed_calls = 0;
	delayed_cpu = 0;
	delayed_wq = NULL;
	delayed_work_arg = NULL;
	delayed_value = 0;
	completion_wait_calls = 0;
	completion_arg = NULL;
	completion_timeout = 0;
	completion_result = 1;
	event_calls = 0;
	event_tcm = 0;
	event_code = NULL;
	event_initial_value = 0xff;
	event_buffer = 0;
	event_result = 0;
	current_task.pid = 4321;
}

static bool test_poll_empty(void)
{
	struct syna_tcm tcm = { 0 };
	struct file file = { .private_data = &tcm };

	reset_state();
	REQUIRE(syna_poll(&file, NULL) == 0);
	REQUIRE(poll_wait_calls == 1);
	return true;
}

static bool test_poll_frame_ready(void)
{
	struct syna_tcm tcm = { .frame_available = 1 };
	struct file file = { .private_data = &tcm };

	reset_state();
	REQUIRE(syna_poll(&file, NULL) == (POLLIN | POLLRDNORM));
	return true;
}

static bool test_poll_callback(void)
{
	struct syna_tcm tcm = { 0 };
	struct file file = { .private_data = &tcm };
	struct poll_table_struct table = { ._qproc = poll_callback };

	reset_state();
	(void)syna_poll(&file, &table);
	REQUIRE(poll_callback_calls == 1);
	REQUIRE(poll_file == &file);
	REQUIRE(poll_head == &tcm.frame_wait);
	REQUIRE(poll_table == &table);
	return true;
}

static bool test_poll_null_qproc(void)
{
	struct syna_tcm tcm = { 0 };
	struct file file = { .private_data = &tcm };
	struct poll_table_struct table = { 0 };

	reset_state();
	(void)syna_poll(&file, &table);
	REQUIRE(poll_wait_calls == 1);
	REQUIRE(poll_callback_calls == 0);
	return true;
}

static bool test_reset_absent_gpio(void)
{
	struct syna_hw_interface hw = { 0 };

	reset_state();
	syna_spi_hw_reset(&hw);
	REQUIRE(gpio_to_desc_calls == 0);
	REQUIRE(sleep_calls == 0);
	return true;
}

static bool test_reset_active_high(void)
{
	struct syna_hw_interface hw = {
		.reset_gpio = 77,
		.reset_on_state = 1,
		.reset_active_ms = 12,
	};

	reset_state();
	syna_spi_hw_reset(&hw);
	REQUIRE(gpio_set_calls == 2);
	REQUIRE(gpio_set_values[0] == 1);
	REQUIRE(gpio_set_values[1] == 0);
	return true;
}

static bool test_reset_active_low(void)
{
	struct syna_hw_interface hw = {
		.reset_gpio = 88,
		.reset_on_state = 0,
	};

	reset_state();
	syna_spi_hw_reset(&hw);
	REQUIRE(gpio_set_values[0] == 0);
	REQUIRE(gpio_set_values[1] == 1);
	REQUIRE(last_gpio == 88);
	return true;
}

static bool test_reset_delays(void)
{
	struct syna_hw_interface hw = {
		.reset_gpio = 12,
		.reset_on_state = 1,
		.reset_active_ms = 9,
	};

	reset_state();
	syna_spi_hw_reset(&hw);
	REQUIRE(sleep_calls == 2);
	REQUIRE(sleep_values[0] == 9);
	REQUIRE(sleep_values[1] == 80);
	return true;
}

static bool test_reset_zero_active_delay(void)
{
	struct syna_hw_interface hw = {
		.reset_gpio = 12,
		.reset_on_state = 1,
	};

	reset_state();
	syna_spi_hw_reset(&hw);
	REQUIRE(sleep_calls == 1);
	REQUIRE(sleep_values[0] == 80);
	return true;
}

static bool test_reset_log(void)
{
	struct syna_hw_interface hw = { .reset_gpio = 1 };

	reset_state();
	syna_spi_hw_reset(&hw);
	REQUIRE(log_calls == 1);
	REQUIRE(strcmp(log_formats[0], "\0016[info ] %s: Reset done\n") == 0);
	REQUIRE(strcmp(log_arguments[0], "syna_spi_hw_reset") == 0);
	return true;
}

static bool test_screen_null(void)
{
	reset_state();
	REQUIRE(syna_dev_set_screen_on_fp_mode(NULL, 1) == -EINVAL);
	REQUIRE(dynamic_calls == 0);
	return true;
}

static bool test_screen_success(void)
{
	struct tcm_dev dev = { .marker = 1 };
	struct syna_tcm tcm = { .tcm_dev = &dev };

	reset_state();
	REQUIRE(syna_dev_set_screen_on_fp_mode(&tcm, 7) == 0);
	REQUIRE(dynamic_calls == 1);
	REQUIRE(dynamic_tcm == &dev);
	return true;
}

static bool test_screen_dynamic_arguments(void)
{
	struct tcm_dev dev = { 0 };
	struct syna_tcm tcm = { .tcm_dev = &dev };

	reset_state();
	(void)syna_dev_set_screen_on_fp_mode(&tcm, 0x1234);
	REQUIRE(dynamic_config == 0xd4);
	REQUIRE(dynamic_value == 3);
	REQUIRE(dynamic_delay == 0x1234);
	return true;
}

static bool test_screen_failure(void)
{
	struct tcm_dev dev = { 0 };
	struct syna_tcm tcm = { .tcm_dev = &dev };

	reset_state();
	dynamic_result = -73;
	REQUIRE(syna_dev_set_screen_on_fp_mode(&tcm, 0) == -73);
	REQUIRE(log_calls == 2);
	REQUIRE(strstr(log_formats[1], "Fail to set fingerprint") != NULL);
	return true;
}

static bool test_gesture_generic_uevent(void)
{
	struct platform_device pdev = { 0 };
	char event[] = "other=true";

	reset_state();
	ufp_tp_ops.pdev = &pdev;
	ufp_report_gesture_uevent(event);
	REQUIRE(uevent_calls == 1);
	REQUIRE(uevent_action == KOBJ_CHANGE);
	REQUIRE(delayed_calls == 0);
	return true;
}

static bool test_gesture_environment(void)
{
	struct platform_device pdev = { 0 };
	char event[] = "other=true";

	reset_state();
	ufp_tp_ops.pdev = &pdev;
	ufp_report_gesture_uevent(event);
	REQUIRE(uevent_kobject == &pdev.dev.kobj);
	REQUIRE(uevent_first == event);
	REQUIRE(uevent_second == NULL);
	return true;
}

static bool test_gesture_wakeup(void)
{
	struct platform_device pdev = { 0 };
	char event[] = "other=true";

	reset_state();
	ufp_tp_ops.pdev = &pdev;
	ufp_report_gesture_uevent(event);
	REQUIRE(wakeup_calls == 1);
	REQUIRE(wakeup_source_arg == &tp_wakeup);
	REQUIRE(wakeup_duration == 2000);
	REQUIRE(!wakeup_hard);
	return true;
}

static bool test_gesture_single(void)
{
	struct platform_device pdev = { 0 };
	struct workqueue_struct wq = { 0 };
	char event[] = "single_tap=true";

	reset_state();
	ufp_tp_ops.pdev = &pdev;
	ufp_tp_ops.single_tap_work.wq = &wq;
	ufp_report_gesture_uevent(event);
	REQUIRE(ufp_tp_ops.single_tap_pending == 1);
	REQUIRE(delayed_calls == 1);
	REQUIRE(delayed_value == 150);
	return true;
}

static bool test_gesture_double(void)
{
	struct platform_device pdev = { 0 };
	struct workqueue_struct wq = { 0 };
	char event[] = "double_tap=true";

	reset_state();
	ufp_tp_ops.pdev = &pdev;
	ufp_tp_ops.single_tap_work.wq = &wq;
	ufp_report_gesture_uevent(event);
	REQUIRE(ufp_tp_ops.single_tap_pending == 0);
	REQUIRE(delayed_calls == 1);
	REQUIRE(delayed_value == 0);
	return true;
}

static bool test_gesture_schedule_arguments(void)
{
	struct platform_device pdev = { 0 };
	struct workqueue_struct wq = { 0 };
	char event[] = "double_tap=true";

	reset_state();
	ufp_tp_ops.pdev = &pdev;
	ufp_tp_ops.single_tap_work.wq = &wq;
	ufp_report_gesture_uevent(event);
	REQUIRE(delayed_cpu == 32);
	REQUIRE(delayed_wq == &wq);
	REQUIRE(delayed_work_arg ==
		(struct delayed_work *)&ufp_tp_ops.single_tap_work);
	return true;
}

static bool test_gesture_log(void)
{
	struct platform_device pdev = { 0 };
	char event[] = "other=true";

	reset_state();
	ufp_tp_ops.pdev = &pdev;
	ufp_report_gesture_uevent(event);
	REQUIRE(log_calls == 1);
	REQUIRE(strcmp(log_formats[0], "\0016tpd_ufp_info: %s\n") == 0);
	REQUIRE(log_arguments[0] == event);
	return true;
}

static void prepare_isr(struct syna_tcm *tcm,
			struct syna_hw_interface *hw,
			struct tcm_dev *dev)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(hw, 0, sizeof(*hw));
	tcm->tcm_dev = dev;
	tcm->hw_if = hw;
	hw->irq_gpio = 19;
	hw->irq_on_state = 1;
	gpio_input_value = 1;
}

static bool test_isr_bypass_wait(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	tcm.pm_resume_wait_bypass = 1;
	REQUIRE(syna_dev_isr(4, &tcm) == IRQ_HANDLED);
	REQUIRE(completion_wait_calls == 0);
	REQUIRE(event_calls == 1);
	return true;
}

static bool test_isr_wait_disabled(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	tcm.pm_resume_wait_enabled = 0;
	REQUIRE(syna_dev_isr(4, &tcm) == IRQ_HANDLED);
	REQUIRE(completion_wait_calls == 0);
	return true;
}

static bool test_isr_wait_success(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	tcm.pm_resume_wait_enabled = 1;
	completion_result = 2;
	(void)syna_dev_isr(4, &tcm);
	REQUIRE(completion_wait_calls == 1);
	REQUIRE(completion_arg == &tcm.pm_resume_completion);
	REQUIRE(completion_timeout == 175);
	REQUIRE(event_calls == 1);
	return true;
}

static bool test_isr_wait_timeout(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	tcm.pm_resume_wait_enabled = 1;
	completion_result = 0;
	REQUIRE(syna_dev_isr(4, &tcm) == IRQ_HANDLED);
	REQUIRE(gpio_get_calls == 0);
	REQUIRE(event_calls == 0);
	REQUIRE(strstr(log_formats[0], "Bus don't resume") != NULL);
	return true;
}

static bool test_isr_inactive_gpio(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	gpio_input_value = 0;
	REQUIRE(syna_dev_isr(4, &tcm) == IRQ_HANDLED);
	REQUIRE(gpio_to_desc_calls == 1);
	REQUIRE(gpio_get_calls == 1);
	REQUIRE(event_calls == 0);
	return true;
}

static bool test_isr_event_arguments(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	(void)syna_dev_isr(4, &tcm);
	REQUIRE(event_tcm == (__int64)(uintptr_t)&dev);
	REQUIRE(event_code != NULL);
	REQUIRE(event_initial_value == 0);
	REQUIRE(event_buffer == (__int64)(uintptr_t)&tcm.event_data);
	return true;
}

static bool test_isr_pid(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	current_task.pid = 9876;
	(void)syna_dev_isr(99, &tcm);
	REQUIRE(tcm.isr_pid == 9876);
	return true;
}

static bool test_isr_event_failure(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	event_result = -5;
	REQUIRE(syna_dev_isr(4, &tcm) == IRQ_HANDLED);
	REQUIRE(log_calls == 1);
	REQUIRE(strstr(log_formats[0], "Fail to get event data") != NULL);
	return true;
}

static bool test_isr_gpio_arguments(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	hw.irq_gpio = 123;
	hw.irq_on_state = -7;
	gpio_input_value = -7;
	(void)syna_dev_isr(4, &tcm);
	REQUIRE(last_gpio == 123);
	REQUIRE(event_calls == 1);
	return true;
}

static bool test_isr_always_handled(void)
{
	struct syna_tcm tcm;
	struct syna_hw_interface hw;
	struct tcm_dev dev = { 0 };

	reset_state();
	prepare_isr(&tcm, &hw, &dev);
	gpio_input_value = 99;
	REQUIRE(syna_dev_isr(-1, &tcm) == IRQ_HANDLED);
	event_result = -12;
	gpio_input_value = hw.irq_on_state;
	REQUIRE(syna_dev_isr(0, &tcm) == IRQ_HANDLED);
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "poll_empty", test_poll_empty },
		{ "poll_frame_ready", test_poll_frame_ready },
		{ "poll_callback", test_poll_callback },
		{ "poll_null_qproc", test_poll_null_qproc },
		{ "reset_absent_gpio", test_reset_absent_gpio },
		{ "reset_active_high", test_reset_active_high },
		{ "reset_active_low", test_reset_active_low },
		{ "reset_delays", test_reset_delays },
		{ "reset_zero_active_delay", test_reset_zero_active_delay },
		{ "reset_log", test_reset_log },
		{ "screen_null", test_screen_null },
		{ "screen_success", test_screen_success },
		{ "screen_dynamic_arguments", test_screen_dynamic_arguments },
		{ "screen_failure", test_screen_failure },
		{ "gesture_generic_uevent", test_gesture_generic_uevent },
		{ "gesture_environment", test_gesture_environment },
		{ "gesture_wakeup", test_gesture_wakeup },
		{ "gesture_single", test_gesture_single },
		{ "gesture_double", test_gesture_double },
		{ "gesture_schedule_arguments", test_gesture_schedule_arguments },
		{ "gesture_log", test_gesture_log },
		{ "isr_bypass_wait", test_isr_bypass_wait },
		{ "isr_wait_disabled", test_isr_wait_disabled },
		{ "isr_wait_success", test_isr_wait_success },
		{ "isr_wait_timeout", test_isr_wait_timeout },
		{ "isr_inactive_gpio", test_isr_inactive_gpio },
		{ "isr_event_arguments", test_isr_event_arguments },
		{ "isr_pid", test_isr_pid },
		{ "isr_event_failure", test_isr_event_failure },
		{ "isr_gpio_arguments", test_isr_gpio_arguments },
		{ "isr_always_handled", test_isr_always_handled },
	};
	size_t passed = 0;
	size_t index;

	for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
		if (tests[index].run()) {
			printf("PASS %s\n", tests[index].name);
			passed++;
		} else {
			printf("FAIL %s\n", tests[index].name);
		}
	}
	printf("SUMMARY %zu/%zu passed\n", passed,
	       sizeof(tests) / sizeof(tests[0]));
	return passed == sizeof(tests) / sizeof(tests[0]) ? 0 : 1;
}
