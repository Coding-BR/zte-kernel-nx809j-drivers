#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long long
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
typedef unsigned long long uintptr_t_compat;
typedef unsigned long long u64;
struct device { unsigned char bytes[0x2e8]; void *of_node; };
struct panel_node { const char *name; };

static char DEVICE_NODE_NAME[100];
static unsigned long long active_panel;
static char unk_31E60[] = "panel";
static char unk_33BEE[] = "not_found";
static char unk_3351C[] = "defer";
static struct panel_node *nodes[8];
static int panel_results[8];
static int count_result;
static int parse_results[8];
static unsigned int parse_calls, find_calls, printk_calls, failures;
static const char *printk_names[16];
static unsigned int printk_arg_counts[16];
static unsigned char stack_guard[2048];

static int of_count_phandle_with_args(__int64 node, const char *name, int index)
{
	if (node != (__int64)(intptr_t)0x1234 || strcmp(name, "panel") != 0 || index != 0)
		failures++;
	return count_result;
}

static int _of_parse_phandle_with_args(__int64 node, const char *name, int index,
					       int cells, unsigned int entry, void *args)
{
	if (node != (__int64)(intptr_t)0x1234 || strcmp(name, "panel") != 0 || index != 0 || cells != 0)
		failures++;
	parse_calls++;
	if (parse_results[entry] == 0)
		((u64 *)args)[0] = (u64)(uintptr_t_compat)&nodes[entry]->name;
	return parse_results[entry];
}

static unsigned long long of_drm_find_panel(const char **node)
{
	unsigned int index = find_calls++;
	if (index >= 8)
		return (unsigned long long)-19;
	if (node && *node != nodes[index]->name)
		failures++;
	return (unsigned long long)(long long)panel_results[index];
}

static void *_ReadStatusReg(int selector)
{
	if (selector != 0)
		failures++;
	return stack_guard;
}

static int printk(const char *format, ...)
{
	va_list args;
	const char *name;
	unsigned int count = 0;

	(void)format;
	va_start(args, format);
	name = va_arg(args, const char *);
	count++;
	if (strcmp(name, "syna_ts_check_dt") != 0)
		failures++;
	if (format == unk_31E60)
		(void)va_arg(args, const char *), (void)va_arg(args, const char *), count += 2;
	if (printk_calls >= 16)
		failures++;
	printk_names[printk_calls] = name;
	printk_arg_counts[printk_calls] = count;
	printk_calls++;
	va_end(args);
	return 0;
}

#define SP_EL0 0
#define nullptr 0
#include "../../../reconstructed/zte_tpd/syna_ts_check_dt.c"

static void reset_trace(void)
{
	parse_calls = find_calls = printk_calls = 0;
	memset(parse_results, 0, sizeof(parse_results));
	memset(printk_names, 0, sizeof(printk_names));
	memset(printk_arg_counts, 0, sizeof(printk_arg_counts));
	memset(DEVICE_NODE_NAME, 0, sizeof(DEVICE_NODE_NAME));
	active_panel = 0;
}
static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}
static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}
static void setup_nodes(struct panel_node *first, struct panel_node *second)
{
	nodes[0] = first;
	nodes[1] = second ? second : first;
	panel_results[0] = panel_results[1] = -19;
}
static struct device make_device(void)
{
	struct device dev;
	memset(&dev, 0, sizeof(dev));
	dev.of_node = (void *)0x1234;
	return dev;
}
static void test_no_phandle(void)
{
	struct panel_node node = {"panel0"};
	struct device dev = make_device();
	setup_nodes(&node, NULL); reset_trace(); count_result = 0;
	expect_int("no phandle", syna_ts_check_dt(&dev), -19);
	expect_int("no phandle parse", parse_calls, 0);
	expect_int("no phandle find", find_calls, 0);
}
static void test_success_first(void)
{
	struct panel_node node = {"panel-main"};
	struct device dev = make_device();
	setup_nodes(&node, NULL); reset_trace(); count_result = 1; panel_results[0] = 0x123;
	expect_int("success", syna_ts_check_dt(&dev), 0);
	expect_int("success parse", parse_calls, 1);
	expect_int("success find", find_calls, 1);
	expect_true("active panel", active_panel == 0x123);
	expect_true("node name", strcmp(DEVICE_NODE_NAME, "panel-main") == 0);
	expect_int("node log args", printk_arg_counts[0], 3);
}
static void test_parse_error(void)
{
	struct panel_node node = {"panel-parse"};
	struct device dev = make_device();
	setup_nodes(&node, NULL); reset_trace(); count_result = 1; parse_results[0] = -1;
	expect_int("parse error", syna_ts_check_dt(&dev), -19);
	expect_int("parse error calls", find_calls, 1);
	expect_int("parse error logs", printk_calls, 1);
}
static void test_defer_then_success(void)
{
	struct panel_node first = {"panel-defer"};
	struct panel_node second = {"panel-ready"};
	struct device dev = make_device();
	setup_nodes(&first, &second); reset_trace(); count_result = 2;
	panel_results[0] = -517; panel_results[1] = 0x456;
	expect_int("defer success", syna_ts_check_dt(&dev), 0);
	expect_int("defer calls", find_calls, 2);
	expect_int("defer logs", printk_calls, 3);
	expect_true("defer active", active_panel == 0x456);
	expect_true("defer node", strcmp(DEVICE_NODE_NAME, "panel-ready") == 0);
}
static void test_last_error(void)
{
	struct panel_node first = {"panel-missing"};
	struct panel_node second = {"panel-defer"};
	struct device dev = make_device();
	setup_nodes(&first, &second); reset_trace(); count_result = 2;
	panel_results[0] = -19; panel_results[1] = -517;
	expect_int("last error", syna_ts_check_dt(&dev), -517);
	expect_int("last error calls", find_calls, 2);
	expect_int("last error logs", printk_calls, 4);
}
static void test_unknown_error_continues(void)
{
	struct panel_node first = {"panel-unknown"};
	struct panel_node second = {"panel-ready"};
	struct device dev = make_device();
	setup_nodes(&first, &second); reset_trace(); count_result = 2;
	panel_results[0] = -22; panel_results[1] = 0x789;
	expect_int("unknown then success", syna_ts_check_dt(&dev), 0);
	expect_int("unknown calls", find_calls, 2);
	expect_true("unknown active", active_panel == 0x789);
}
int main(void)
{
	test_no_phandle(); test_success_first(); test_parse_error();
	test_defer_then_success(); test_last_error(); test_unknown_error_continues();
	if (failures) return 1;
	puts("PASS syna_ts_check_dt host tests (6 scenarios)");
	return 0;
}
