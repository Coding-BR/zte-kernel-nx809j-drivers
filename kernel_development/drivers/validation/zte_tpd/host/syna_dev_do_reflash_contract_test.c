#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct firmware {
	const unsigned char *data;
	size_t size;
};

struct tcm_dev {
	unsigned char reserved[9];
	unsigned char firmware_mode;
};

struct device {
	void *parent;
};

struct platform_device {
	struct device dev;
};

struct syna_tcm {
	struct tcm_dev *tcm_dev;
	struct platform_device *pdev;
};

static const unsigned char expected_firmware[] = {0x53, 0x59, 0x4e, 0x41, 0x01};
static struct tcm_dev expected_tcm;
static struct platform_device expected_pdev;
static struct firmware expected_fw = {
	.data = expected_firmware,
	.size = sizeof(expected_firmware),
};
static unsigned int request_calls;
static unsigned int update_calls;
static unsigned int release_calls;
static const char *last_request_name;
static void *last_request_device;
static struct tcm_dev *last_update_tcm;
static const unsigned char *last_update_data;
static size_t last_update_size;
static unsigned int last_update_offset;
static bool last_update_force;
static int request_return;
static int update_return;
static unsigned int printk_calls;
static unsigned int failures;

static int test_request_firmware(const struct firmware **firmware,
					const char *name, void *device)
{
	request_calls++;
	last_request_name = name;
	last_request_device = device;
	if (request_return < 0)
		return request_return;
	*firmware = &expected_fw;
	return 0;
}

static void test_release_firmware(const struct firmware *firmware)
{
	release_calls++;
	if (firmware != &expected_fw)
		failures++;
}

static int test_syna_tcm_do_fw_update(struct tcm_dev *tcm,
					      const unsigned char *data,
					      size_t size, unsigned int offset,
					      bool force)
{
	update_calls++;
	last_update_tcm = tcm;
	last_update_data = data;
	last_update_size = size;
	last_update_offset = offset;
	last_update_force = force;
	return update_return;
}

static int test_printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

#define EINVAL 22
#define request_firmware test_request_firmware
#define release_firmware test_release_firmware
#define syna_tcm_do_fw_update test_syna_tcm_do_fw_update
#define printk test_printk
#include "../../../reconstructed/zte_tpd/syna_dev_do_reflash.c"
#undef request_firmware
#undef release_firmware
#undef syna_tcm_do_fw_update
#undef printk

static void reset_trace(void)
{
	request_calls = 0;
	update_calls = 0;
	release_calls = 0;
	last_request_name = NULL;
	last_request_device = NULL;
	last_update_tcm = NULL;
	last_update_data = NULL;
	last_update_size = 0;
	last_update_offset = 0;
	last_update_force = false;
	request_return = 0;
	update_return = 0;
	printk_calls = 0;
	expected_tcm.firmware_mode = 0x2a;
	expected_pdev.dev.parent = &expected_pdev;
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

static struct syna_tcm valid_tcm(void)
{
	struct syna_tcm tcm = {
		.tcm_dev = &expected_tcm,
		.pdev = &expected_pdev,
	};
	return tcm;
}

static void test_null_tcm(void)
{
	reset_trace();
	expect_int("null return", syna_dev_do_reflash(NULL, true), -EINVAL);
	expect_int("null request calls", request_calls, 0);
	expect_int("null update calls", update_calls, 0);
	expect_int("null release calls", release_calls, 0);
}

static void test_request_failure(void)
{
	struct syna_tcm tcm = valid_tcm();
	reset_trace();
	request_return = -2;
	expect_int("request failure return", syna_dev_do_reflash(&tcm, true), -2);
	expect_int("request failure calls", request_calls, 1);
	expect_true("request filename", last_request_name &&
			    strcmp(last_request_name, "syna_firmware.img") == 0);
	expect_true("request parent", last_request_device == expected_pdev.dev.parent);
	expect_int("request failure update calls", update_calls, 0);
	expect_int("request failure release calls", release_calls, 0);
}

static void test_update_success_and_force_mask(void)
{
	struct syna_tcm tcm = valid_tcm();
	reset_trace();
	expect_int("success return", syna_dev_do_reflash(&tcm, true), 0);
	expect_int("success request calls", request_calls, 1);
	expect_int("success update calls", update_calls, 1);
	expect_int("success release calls", release_calls, 1);
	expect_true("success update tcm", last_update_tcm == &expected_tcm);
	expect_true("success update data", last_update_data == expected_firmware);
	expect_int("success update size", last_update_size, sizeof(expected_firmware));
	expect_int("success update offset", last_update_offset, 0);
	expect_true("success force", last_update_force);

	reset_trace();
	expect_int("true success return", syna_dev_do_reflash(&tcm, true), 0);
	expect_true("true force", last_update_force);
}

static void test_update_failure_releases_firmware(void)
{
	struct syna_tcm tcm = valid_tcm();
	reset_trace();
	update_return = -5;
	expect_int("update failure return", syna_dev_do_reflash(&tcm, false), -5);
	expect_int("update failure calls", update_calls, 1);
	expect_int("update failure release calls", release_calls, 1);
	expect_true("update failure force false", !last_update_force);
}

int main(void)
{
	test_null_tcm();
	test_request_failure();
	test_update_success_and_force_mask();
	test_update_failure_releases_firmware();
	if (failures != 0)
		return 1;
	puts("PASS syna_dev_do_reflash host tests (7 cases)");
	return 0;
}
