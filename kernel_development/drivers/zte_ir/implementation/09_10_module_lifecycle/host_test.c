/* SPDX-License-Identifier: GPL-2.0-only */

#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __init
#define __exit
#define ZTE_IR_DRIVER_NAME "zte_ir"
#define ZTE_IR_CLASS_NAME  "zte_ir_class"
#define ZTE_IR_FIRST_MINOR 0U
#define ZTE_IR_MINOR_COUNT 1U
#define pr_info(...)       ((void)0)
#define pr_debug(...)      ((void)0)
#define ERR_PTR(error)     ((void *)(intptr_t)(error))
#define PTR_ERR(pointer)   ((long)(intptr_t)(pointer))
#define IS_ERR(pointer)    ((uintptr_t)(pointer) >= (uintptr_t)-4095)

struct file_operations {
	int marker;
};

struct class {
	int marker;
};

struct spi_driver {
	int marker;
};

static int zte_ir_major;
static struct class *zte_ir_class;
static const struct file_operations zte_ir_fops = { 1 };
static struct spi_driver zte_ir_spi_driver = { 2 };
static struct class fake_class;

static int configured_chrdev_result;
static int configured_spi_result;
static int configured_class_error;
static char events[32];
static size_t event_count;
static unsigned int captured_register_first_minor;
static unsigned int captured_register_count;
static const char *captured_register_name;
static const struct file_operations *captured_register_fops;
static unsigned int captured_unregister_first_minor;
static unsigned int captured_unregister_count;
static int captured_unregister_major;
static const char *captured_unregister_name;
static const char *captured_class_name;
static struct spi_driver *captured_spi_driver;

static void event(char value)
{
	if (event_count + 1 < sizeof(events)) {
		events[event_count++] = value;
		events[event_count] = '\0';
	}
}

static int __register_chrdev(unsigned int major,
			     unsigned int first_minor,
			     unsigned int count,
			     const char *name,
			     const struct file_operations *fops)
{
	(void)major;
	event('R');
	captured_register_first_minor = first_minor;
	captured_register_count = count;
	captured_register_name = name;
	captured_register_fops = fops;
	return configured_chrdev_result;
}

static void __unregister_chrdev(unsigned int major,
				unsigned int first_minor,
				unsigned int count,
				const char *name)
{
	event('U');
	captured_unregister_major = (int)major;
	captured_unregister_first_minor = first_minor;
	captured_unregister_count = count;
	captured_unregister_name = name;
}

static struct class *class_create(const char *name)
{
	event('C');
	captured_class_name = name;
	if (configured_class_error)
		return ERR_PTR(configured_class_error);
	return &fake_class;
}

static void class_destroy(struct class *class)
{
	(void)class;
	event('D');
}

static int spi_register_driver(struct spi_driver *driver)
{
	event('S');
	captured_spi_driver = driver;
	return configured_spi_result;
}

static void spi_unregister_driver(struct spi_driver *driver)
{
	event('X');
	captured_spi_driver = driver;
}

#include "../09_init/zte_ir_init.c"
#include "../10_exit/zte_ir_exit.c"

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
	if (actual && !strcmp(actual, expected))
		return;
	failures++;
	fprintf(stderr, "%s: string mismatch\n", name);
}

static void reset_state(void)
{
	zte_ir_major = 0;
	zte_ir_class = NULL;
	configured_chrdev_result = 489;
	configured_spi_result = 0;
	configured_class_error = 0;
	event_count = 0;
	events[0] = '\0';
	captured_register_first_minor = UINT32_MAX;
	captured_register_count = UINT32_MAX;
	captured_register_name = NULL;
	captured_register_fops = NULL;
	captured_unregister_first_minor = UINT32_MAX;
	captured_unregister_count = UINT32_MAX;
	captured_unregister_major = -1;
	captured_unregister_name = NULL;
	captured_class_name = NULL;
	captured_spi_driver = NULL;
}

static void test_success_and_exit(void)
{
	reset_state();
	expect_int("init success", zte_ir_init(), 0);
	expect_int("init order", strcmp(events, "RCS"), 0);
	expect_int("major stored", zte_ir_major, 489);
	expect_pointer("class stored", zte_ir_class, &fake_class);
	expect_int("register first minor", captured_register_first_minor, 0);
	expect_int("register count", captured_register_count, 1);
	expect_string("register name", captured_register_name, "zte_ir");
	expect_pointer("register fops", captured_register_fops, &zte_ir_fops);
	expect_string("class name", captured_class_name, "zte_ir_class");
	expect_pointer("registered spi driver", captured_spi_driver,
		       &zte_ir_spi_driver);

	event_count = 0;
	events[0] = '\0';
	zte_ir_exit();
	expect_int("exit order", strcmp(events, "XDU"), 0);
	expect_int("exit major reset", zte_ir_major, 0);
	expect_pointer("exit class reset", zte_ir_class, NULL);
	expect_int("unregister major", captured_unregister_major, 489);
	expect_int("unregister first minor", captured_unregister_first_minor, 0);
	expect_int("unregister count", captured_unregister_count, 1);
	expect_string("unregister name", captured_unregister_name, "zte_ir");
	expect_pointer("unregistered spi driver", captured_spi_driver,
		       &zte_ir_spi_driver);
}

static void test_chrdev_failure(void)
{
	reset_state();
	configured_chrdev_result = -EBUSY;
	expect_int("chrdev failure", zte_ir_init(), -EBUSY);
	expect_int("chrdev order", strcmp(events, "R"), 0);
	expect_int("chrdev major", zte_ir_major, 0);
	expect_pointer("chrdev class", zte_ir_class, NULL);
}

static void test_class_failure(void)
{
	reset_state();
	configured_class_error = -ENOMEM;
	expect_int("class failure", zte_ir_init(), -ENOMEM);
	expect_int("class failure order", strcmp(events, "RCU"), 0);
	expect_int("class failure major reset", zte_ir_major, 0);
	expect_pointer("class failure pointer reset", zte_ir_class, NULL);
	expect_int("class unregister major", captured_unregister_major, 489);
	expect_int("class unregister count", captured_unregister_count, 1);
}

static void test_spi_failure(void)
{
	reset_state();
	configured_spi_result = -EIO;
	expect_int("spi failure", zte_ir_init(), -EIO);
	expect_int("spi failure order", strcmp(events, "RCSDU"), 0);
	expect_int("spi failure major reset", zte_ir_major, 0);
	expect_pointer("spi failure class reset", zte_ir_class, NULL);
	expect_int("spi unregister major", captured_unregister_major, 489);
	expect_int("spi unregister count", captured_unregister_count, 1);
}

int main(void)
{
	test_success_and_exit();
	test_chrdev_failure();
	test_class_failure();
	test_spi_failure();
	printf("checks=%u failures=%u\n", checks, failures);
	return failures ? 1 : 0;
}
