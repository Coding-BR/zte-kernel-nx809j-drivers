/* SPDX-License-Identifier: GPL-2.0-only */

#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

#define ZTE_IR_TX_WORD_CAPACITY       40000U
#define ZTE_IR_SPI_WORDS_PER_CARRIER  16U
#define ZTE_IR_DT_MAX_SPI_HZ          5000000U
#define ZTE_IR_DEFAULT_SPI_SPEED_HZ   608000U
#define check_mul_overflow(a, b, out) __builtin_mul_overflow((a), (b), (out))
#define check_add_overflow(a, b, out) __builtin_add_overflow((a), (b), (out))
#define lockdep_assert_held(lock)     ((void)(lock))
#define pr_debug(...)                 ((void)0)

struct zte_ir_runtime {
	struct {
		u16 tx_buf[ZTE_IR_TX_WORD_CAPACITY];
		u16 pattern_high;
		u16 pattern_low;
		int buf_lock;
	} stock;
};

#include "zte_ir_encode_pulses.c"

#define SENTINEL 0xa5a5U

static struct zte_ir_runtime runtime;
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

static void reset_runtime(void)
{
	size_t index;

	memset(&runtime, 0, sizeof(runtime));
	for (index = 0; index < ZTE_IR_TX_WORD_CAPACITY; index++)
		runtime.stock.tx_buf[index] = SENTINEL;
	runtime.stock.pattern_high = 0x001f;
	runtime.stock.pattern_low = 0x0000;
}

static void test_invalid_inputs(void)
{
	u32 pulse = 10;
	size_t words = 99;

	expect_int("null output", zte_ir_encode_pulses(&runtime, &pulse, 1,
			ZTE_IR_DEFAULT_SPI_SPEED_HZ, NULL), -EINVAL);
	expect_int("null runtime", zte_ir_encode_pulses(NULL, &pulse, 1,
			ZTE_IR_DEFAULT_SPI_SPEED_HZ, &words), -EINVAL);
	expect_int("null runtime output reset", words, 0);
	expect_int("null pulses", zte_ir_encode_pulses(&runtime, NULL, 1,
			ZTE_IR_DEFAULT_SPI_SPEED_HZ, &words), -EINVAL);
	expect_int("zero pulses", zte_ir_encode_pulses(&runtime, &pulse, 0,
			ZTE_IR_DEFAULT_SPI_SPEED_HZ, &words), -EINVAL);
	expect_int("too many pulses", zte_ir_encode_pulses(&runtime, &pulse,
			ZTE_IR_TX_WORD_CAPACITY + 1ULL,
			ZTE_IR_DEFAULT_SPI_SPEED_HZ, &words), -E2BIG);
	expect_int("zero speed", zte_ir_encode_pulses(&runtime, &pulse, 1, 0,
			&words), -EINVAL);
	expect_int("sub-carrier speed", zte_ir_encode_pulses(&runtime, &pulse,
			1, 15, &words), -EINVAL);
	expect_int("speed above DT", zte_ir_encode_pulses(&runtime, &pulse, 1,
			ZTE_IR_DT_MAX_SPI_HZ + 1U, &words), -EINVAL);
}

static void test_nominal_pattern(void)
{
	const u32 pulses[] = { 1000, 500, 26 };
	size_t words = 0;
	size_t index;
	int result;

	reset_runtime();
	result = zte_ir_encode_pulses(&runtime, pulses, 3,
				      ZTE_IR_DEFAULT_SPI_SPEED_HZ, &words);
	expect_int("nominal result", result, 0);
	expect_int("nominal words", words, 58);
	for (index = 0; index < 38; index++)
		expect_int("high pattern", runtime.stock.tx_buf[index], 0x001f);
	for (; index < 57; index++)
		expect_int("low pattern", runtime.stock.tx_buf[index], 0x0000);
	expect_int("third high pattern", runtime.stock.tx_buf[57], 0x001f);
	expect_int("no overrun", runtime.stock.tx_buf[58], SENTINEL);
}

static void test_rounding_and_zero_length_pulse(void)
{
	const u32 pulses[] = { 13, 14 };
	size_t words = 0;

	reset_runtime();
	expect_int("rounding result", zte_ir_encode_pulses(&runtime, pulses, 2,
			ZTE_IR_DEFAULT_SPI_SPEED_HZ, &words), 0);
	expect_int("rounding words", words, 1);
	expect_int("zero-length pulse preserves phase", runtime.stock.tx_buf[0],
		   0x0000);
	expect_int("rounding no overrun", runtime.stock.tx_buf[1], SENTINEL);
}

static void test_capacity_boundary(void)
{
	const u32 accepted[] = { 1052605 };
	const u32 rejected[] = { 1052632 };
	size_t words = 0;

	reset_runtime();
	expect_int("39999 result", zte_ir_encode_pulses(&runtime, accepted, 1,
			ZTE_IR_DEFAULT_SPI_SPEED_HZ, &words), 0);
	expect_int("39999 words", words, 39999);
	expect_int("39999 last word", runtime.stock.tx_buf[39998], 0x001f);
	expect_int("39999 no overrun", runtime.stock.tx_buf[39999], SENTINEL);

	reset_runtime();
	words = 77;
	expect_int("40000 rejected", zte_ir_encode_pulses(&runtime, rejected, 1,
			ZTE_IR_DEFAULT_SPI_SPEED_HZ, &words), -E2BIG);
	expect_int("rejected output reset", words, 0);
	expect_int("rejected buffer untouched", runtime.stock.tx_buf[0], SENTINEL);
}

int main(void)
{
	reset_runtime();
	test_invalid_inputs();
	test_nominal_pattern();
	test_rounding_and_zero_length_pulse();
	test_capacity_boundary();
	printf("checks=%u failures=%u\n", checks, failures);
	return failures ? 1 : 0;
}
