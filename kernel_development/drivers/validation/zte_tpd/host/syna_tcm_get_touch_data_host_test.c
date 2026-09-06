#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_get_touch_data.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static unsigned int reference_extract(const unsigned char *data,
					      unsigned int bit_offset,
					      unsigned int bit_count)
{
	unsigned int value = 0;

	for (unsigned int bit = 0; bit < bit_count; ++bit) {
		unsigned int source_bit = bit_offset + bit;
		unsigned int bit_value = (data[source_bit >> 3] >>
						  (source_bit & 7U)) & 1U;
		value |= bit_value << bit;
	}
	return value;
}

static void test_invalid_inputs(void)
{
	const unsigned char data[4] = { 0x12, 0x34, 0x56, 0x78 };
	unsigned int value = 0xfeedfaceU;

	expect_true(syna_tcm_get_touch_data(data, 1, 0, 0, &value) == -241,
			"zero bit count rejected");
	expect_true(syna_tcm_get_touch_data(data, 4, 0, 33, &value) == -241,
			"bit count above 32 rejected");
	expect_true(syna_tcm_get_touch_data(NULL, 4, 0, 8, &value) == -241,
			"null report rejected");
}

static void test_out_of_range(void)
{
	const unsigned char data[1] = { 0xff };
	unsigned int value = 0xfeedfaceU;

	expect_true(syna_tcm_get_touch_data(data, 1, 7, 2, &value) == 0,
			"out-of-range field returns success");
	expect_true(value == 0, "out-of-range field clears value");
}

static void test_field_boundaries(void)
{
	const unsigned char data[3] = { 0xb2, 0x4d, 0xe1 };
	unsigned int value = 0;

	expect_true(syna_tcm_get_touch_data(data, 3, 0, 8, &value) == 0 &&
				value == 0xb2, "byte-aligned field matches");
	expect_true(syna_tcm_get_touch_data(data, 3, 4, 8, &value) == 0 &&
				value == 0xdb, "cross-byte field matches");
	expect_true(syna_tcm_get_touch_data(data, 3, 3, 13, &value) == 0 &&
				value == reference_extract(data, 3, 13),
				"multi-byte field matches independent oracle");
}

static void test_all_supported_widths(void)
{
	const unsigned char data[5] = { 0x01, 0x23, 0x45, 0x67, 0x89 };

	for (unsigned int offset = 0; offset < 8; ++offset) {
		for (unsigned int count = 1; count <= 32; ++count) {
			unsigned int value = 0;
			unsigned int expected;

			if (offset + count > sizeof(data) * 8U)
				continue;
			expected = reference_extract(data, offset, count);
			expect_true(syna_tcm_get_touch_data(data, sizeof(data),
								 offset, count, &value) == 0 &&
							value == expected,
							"supported width matches oracle");
		}
	}
}

int main(void)
{
	test_invalid_inputs();
	test_out_of_range();
	test_field_boundaries();
	test_all_supported_widths();
	puts("PASS: syna_tcm_get_touch_data host contract");
	return 0;
}
