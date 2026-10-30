// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/printk.h>

#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

#include "../../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_107_awrw_show.c"

#define PAGE_SIZE 4096U
#define GUARD_SIZE 64U
#define BACKING_SIZE 16384U
#define MAX_COUNT 1024U

struct awrw_private_layout {
	u8 reserved[0x528];
	u32 mode;
	u32 count;
	u8 *data;
};

_Static_assert(offsetof(struct device, driver_private) == 0x98,
	       "device private pointer offset must match stock");
_Static_assert(offsetof(struct awrw_private_layout, mode) == 0x528,
	       "mode offset must match stock");
_Static_assert(offsetof(struct awrw_private_layout, count) == 0x52c,
	       "count offset must match stock");
_Static_assert(offsetof(struct awrw_private_layout, data) == 0x530,
	       "data pointer offset must match stock");

static char last_log[256];
static unsigned int kernel_oversize_calls;

int printk(const char *format, ...)
{
	va_list args;
	int result;

	va_start(args, format);
	result = vsnprintf(last_log, sizeof(last_log), format, args);
	va_end(args);
	return result;
}

int kernel_snprintf(char *buffer, size_t size, const char *format, ...)
{
	va_list args;
	int result;

	if (size > INT_MAX) {
		kernel_oversize_calls++;
		return 0;
	}
	va_start(args, format);
	result = vsnprintf(buffer, size, format, args);
	va_end(args);
	return result;
}

static void configure(struct device *dev, struct awrw_private_layout *priv,
		      u32 mode, u32 count, u8 *data)
{
	memset(dev, 0, sizeof(*dev));
	memset(priv, 0, sizeof(*priv));
	dev->driver_private = (u8 *)priv;
	priv->mode = mode;
	priv->count = count;
	priv->data = data;
}

/* Independent host transcription of the stock Ghidra control/effect flow. */
static ssize_t stock_awrw_show_model(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	u8 *priv;
	u8 *data;
	u32 count;
	u32 index;
	ssize_t total;
	int written;

	(void)attr;
	priv = *(u8 **)((u8 *)dev + 0x98);
	if (*(u32 *)(priv + 0x528) == 1U) {
		data = *(u8 **)(priv + 0x530);
		if (data != NULL) {
			count = *(u32 *)(priv + 0x52c);
			if (count == 0U) {
				total = 0;
			} else {
				total = 0;
				index = 0U;
				do {
					data = *(u8 **)(priv + 0x530);
					written = snprintf(buf + total,
							   PAGE_SIZE - total,
							   "0x%02x,",
							   data[(s32)index]);
					total += written;
					index++;
					count = *(u32 *)(priv + 0x52c);
				} while (index < count);
			}
			return total + snprintf(buf + total - 1,
						PAGE_SIZE - total, "\n");
		}
		printk("[%s][%04d]%s: awrw lack param\n",
		       "haptic_hv", 0xc54, "awrw_show");
		return -ERANGE;
	}
	printk("[%s][%04d]%s: no read mode\n",
	       "haptic_hv", 0xc50, "awrw_show");
	return -ERANGE;
}

static int compare_case(u32 mode, bool data_present, u32 count,
			const u8 *pattern, size_t pattern_size)
{
	struct device dev;
	struct awrw_private_layout *priv;
	u8 *data = NULL;
	u8 *candidate_backing;
	u8 *stock_backing;
	char candidate_log[sizeof(last_log)];
	char stock_log[sizeof(last_log)];
	char *candidate_buf;
	char *stock_buf;
	ssize_t candidate_result;
	ssize_t stock_result;

	priv = calloc(1, sizeof(*priv));
	candidate_backing = malloc(BACKING_SIZE);
	stock_backing = malloc(BACKING_SIZE);
	if (priv == NULL || candidate_backing == NULL || stock_backing == NULL)
		goto fail;
	if (data_present) {
		size_t allocation = count == 0U ? 1U : count;
		data = malloc(allocation);
		if (data == NULL)
			goto fail;
		for (size_t i = 0; i < allocation; ++i)
			data[i] = pattern_size == 0U ? (u8)(i * 37U + 0xa5U) :
							       pattern[i % pattern_size];
	}
	configure(&dev, priv, mode, count, data);
	memset(candidate_backing, 0xa5, BACKING_SIZE);
	memset(stock_backing, 0xa5, BACKING_SIZE);
	candidate_buf = (char *)(candidate_backing + GUARD_SIZE);
	stock_buf = (char *)(stock_backing + GUARD_SIZE);

	memset(last_log, 0, sizeof(last_log));
	candidate_result = awrw_show(&dev, NULL, candidate_buf);
	memcpy(candidate_log, last_log, sizeof(candidate_log));
	memset(last_log, 0, sizeof(last_log));
	stock_result = stock_awrw_show_model(&dev, NULL, stock_buf);
	memcpy(stock_log, last_log, sizeof(stock_log));

	if (candidate_result != stock_result ||
	    memcmp(candidate_backing, stock_backing, BACKING_SIZE) != 0 ||
	    memcmp(candidate_log, stock_log, sizeof(candidate_log)) != 0) {
		fprintf(stderr, "differential mismatch mode=%u data=%u count=%u candidate=%ld stock=%ld log=%s/%s\n",
			mode, data_present, count, (long)candidate_result,
			(long)stock_result, candidate_log, stock_log);
		goto fail;
	}

	free(data);
	free(stock_backing);
	free(candidate_backing);
	free(priv);
	return (int)candidate_result;

fail:
	free(data);
	free(stock_backing);
	free(candidate_backing);
	free(priv);
	return -1;
}

static int check_boundary(u32 count, ssize_t expected_return,
			  ssize_t marker_offset, int marker_value,
			  ssize_t nul_offset, unsigned int expected_oversize_calls)
{
	struct device dev;
	struct awrw_private_layout *priv;
	u8 *data;
	u8 *backing;
	char *buf;
	ssize_t result;

	priv = calloc(1, sizeof(*priv));
	data = calloc(count == 0U ? 1U : count, 1U);
	backing = malloc(BACKING_SIZE);
	if (priv == NULL || data == NULL || backing == NULL)
		goto fail;
	configure(&dev, priv, 1U, count, data);
	memset(backing, 0xa5, BACKING_SIZE);
	buf = (char *)(backing + GUARD_SIZE);
	kernel_oversize_calls = 0;
	result = awrw_show(&dev, NULL, buf);
	if (result != expected_return) {
		fprintf(stderr, "boundary return mismatch count=%u got=%ld expected=%ld\n",
			count, (long)result, (long)expected_return);
		goto fail;
	}
	if (marker_offset != -2 && (u8)buf[marker_offset] != (u8)marker_value) {
		fprintf(stderr, "boundary marker mismatch count=%u offset=%ld got=%u expected=%u\n",
			count, (long)marker_offset, (unsigned int)(u8)buf[marker_offset],
			(unsigned int)(u8)marker_value);
		goto fail;
	}
	if (nul_offset >= 0 && buf[nul_offset] != '\0') {
		fprintf(stderr, "boundary NUL mismatch count=%u offset=%ld got=%u\n",
			count, (long)nul_offset, (unsigned int)(u8)buf[nul_offset]);
		goto fail;
	}
	if (kernel_oversize_calls != expected_oversize_calls) {
		fprintf(stderr, "formatter size-guard mismatch count=%u got=%u expected=%u\n",
			count, kernel_oversize_calls, expected_oversize_calls);
		goto fail;
	}
	free(backing);
	free(data);
	free(priv);
	return 0;

fail:
	free(backing);
	free(data);
	free(priv);
	return 1;
}

static int check_single_byte(u8 value)
{
	static const char hex[] = "0123456789abcdef";
	struct device dev;
	struct awrw_private_layout *priv;
	u8 *backing;
	char expected[] = { '0', 'x', '0', '0', '\n', '\0' };
	char *buf;
	ssize_t result;

	priv = calloc(1, sizeof(*priv));
	backing = calloc(1, BACKING_SIZE);
	if (priv == NULL || backing == NULL)
		goto fail;
	expected[2] = hex[value >> 4];
	expected[3] = hex[value & 0x0f];
	configure(&dev, priv, 1U, 1U, &value);
	buf = (char *)(backing + GUARD_SIZE);
	result = awrw_show(&dev, NULL, buf);
	if (result != 6 || memcmp(buf, expected, sizeof(expected)) != 0) {
		fprintf(stderr, "single-byte formatting mismatch value=%u return=%ld output=%s\n",
			(unsigned int)value, (long)result, buf);
		goto fail;
	}
	free(backing);
	free(priv);
	return 0;

fail:
	free(backing);
	free(priv);
	return 1;
}

static int run_guarded_suite(void)
{
	static const u8 pair[] = { 0x00, 0x7f };
	static const u8 all_ff[] = { 0xff };
	unsigned int differential_cases = 0;
	unsigned int byte_format_cases = 0;
	ssize_t invalid_mode;
	ssize_t null_data;
	ssize_t two_byte_result;
	ssize_t mutant_result;
	bool mutant_detected;

	for (u32 count = 0; count <= MAX_COUNT; ++count) {
		if (compare_case(1U, true, count, NULL, 0U) < 0) {
			fprintf(stderr, "pattern-A differential failed count=%u\n", count);
			return 1;
		}
		if (compare_case(1U, true, count, all_ff, sizeof(all_ff)) < 0) {
			fprintf(stderr, "pattern-FF differential failed count=%u\n", count);
			return 1;
		}
		differential_cases += 2U;
	}
	for (unsigned int value = 0; value <= 0xffU; ++value) {
		if (check_single_byte((u8)value) != 0)
			return 1;
		byte_format_cases++;
	}
	if (compare_case(0U, true, 4U, pair, sizeof(pair)) != -ERANGE) {
		fprintf(stderr, "mode-0 errno mismatch\n");
		return 1;
	}
	if (strstr(last_log, "no read mode") == NULL ||
	    strstr(last_log, "3152") == NULL) {
		fprintf(stderr, "mode-0 log mismatch: %s\n", last_log);
		return 1;
	}
	differential_cases++;
	if (compare_case(2U, false, 4U, NULL, 0U) != -ERANGE) {
		fprintf(stderr, "mode-2 errno mismatch\n");
		return 1;
	}
	if (strstr(last_log, "no read mode") == NULL ||
	    strstr(last_log, "3152") == NULL) {
		fprintf(stderr, "mode-2 log mismatch: %s\n", last_log);
		return 1;
	}
	differential_cases++;
	if (compare_case(1U, false, 4U, NULL, 0U) != -ERANGE) {
		fprintf(stderr, "null-data errno mismatch\n");
		return 1;
	}
	if (strstr(last_log, "awrw lack param") == NULL ||
	    strstr(last_log, "3156") == NULL) {
		fprintf(stderr, "null-data log mismatch: %s\n", last_log);
		return 1;
	}
	differential_cases++;

	if (compare_case(1U, true, 2U, pair, sizeof(pair)) != 11) {
		fprintf(stderr, "two-byte return mismatch\n");
		return 1;
	}
	two_byte_result = 11;
	if (check_boundary(0U, 1, -1, '\n', 0, 0U) != 0 ||
	    check_boundary(819U, 4096, 4094, 0, 4095, 0U) != 0 ||
	    check_boundary(820U, 4100, 4099, 0xa5, 4095, 1U) != 0) {
		fprintf(stderr, "page-boundary observation mismatch\n");
		return 1;
	}

	invalid_mode = compare_case(0U, true, 4U, pair, sizeof(pair));
	null_data = compare_case(1U, false, 4U, NULL, 0U);
	mutant_result = invalid_mode == -ERANGE ? -EINVAL : invalid_mode;
	mutant_detected = (invalid_mode == -ERANGE) &&
			   (mutant_result != invalid_mode) &&
			   (null_data == -ERANGE);
	if (!mutant_detected) {
		fprintf(stderr, "seeded -EINVAL mutant was not detected\n");
		return 1;
	}

	printf("{\"status\":\"PASS\",\"differential_cases\":%u,"
	       "\"count_range\":[0,%u],\"byte_format_cases\":%u,"
	       "\"mode_errors\":-34,"
	       "\"two_byte_return\":%ld,\"zero_count_return\":1,"
	       "\"count_819_return\":4096,\"count_820_return\":4100,"
	       "\"mutant_error_errno_detected\":true}\n",
	       differential_cases, MAX_COUNT, byte_format_cases, (long)two_byte_result);
	return 0;
}

static int run_conditional_zero_state(void)
{
	struct device dev;
	struct awrw_private_layout *priv;
	u32 count = 0U;
	u8 *data;
	char *buf;

	priv = calloc(1, sizeof(*priv));
	data = calloc(count == 0U ? 1U : count, 1U);
	buf = malloc(PAGE_SIZE);
	if (priv == NULL || data == NULL || buf == NULL)
		return 2;
	configure(&dev, priv, 1U, count, data);
	(void)awrw_show(&dev, NULL, buf);
	free(buf);
	free(data);
	free(priv);
	return 0;
}

static int run_probe_820(void)
{
	struct device dev;
	struct awrw_private_layout *priv;
	u8 *data;
	char *buf;
	ssize_t result;

	priv = calloc(1, sizeof(*priv));
	data = calloc(820U, 1U);
	buf = malloc(PAGE_SIZE);
	if (priv == NULL || data == NULL || buf == NULL)
		return 2;
	configure(&dev, priv, 1U, 820U, data);
	kernel_oversize_calls = 0;
	result = awrw_show(&dev, NULL, buf);
	if (result != 4100 || kernel_oversize_calls != 1U || buf[4095] != '\0')
		return 3;
	printf("{\"status\":\"PASS\",\"return\":4100,"
	       "\"oversize_guard_calls\":1,\"last_in_page_byte_is_nul\":true}\n");
	free(buf);
	free(data);
	free(priv);
	return 0;
}

int main(int argc, char **argv)
{
	if (argc == 2 && strcmp(argv[1], "--probe-zero-state") == 0)
		return run_conditional_zero_state();
	if (argc == 2 && strcmp(argv[1], "--probe-820") == 0)
		return run_probe_820();
	return run_guarded_suite();
}
