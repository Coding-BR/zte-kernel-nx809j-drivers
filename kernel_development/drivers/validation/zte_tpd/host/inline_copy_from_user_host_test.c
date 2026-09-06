#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define _DEFS_H
#define __user
#define likely(value) (value)

static int g_should_fail;
static int g_masked_access;
static int g_access_ok;
static unsigned long g_raw_residual;
static unsigned int g_might_fault_calls;
static unsigned int g_access_ok_calls;
static unsigned int g_barrier_calls;
static unsigned int g_raw_copy_calls;
static unsigned int g_before_calls;
static unsigned int g_after_calls;

static void might_fault(void)
{
	++g_might_fault_calls;
}

static int should_fail_usercopy(void)
{
	return g_should_fail;
}

static int can_do_masked_user_access(void)
{
	return g_masked_access;
}

static const void *mask_user_address(const void *from)
{
	return from;
}

static int access_ok(const void *from, unsigned long n)
{
	(void)from;
	(void)n;
	++g_access_ok_calls;
	return g_access_ok;
}

static void barrier_nospec(void)
{
	++g_barrier_calls;
}

static void instrument_copy_from_user_before(void *to, const void *from,
						     unsigned long n)
{
	(void)to;
	(void)from;
	(void)n;
	++g_before_calls;
}

static void instrument_copy_from_user_after(void *to, const void *from,
						    unsigned long n,
						    unsigned long left)
{
	(void)to;
	(void)from;
	(void)n;
	(void)left;
	++g_after_calls;
}

static unsigned long raw_copy_from_user(void *to, const void *from,
						unsigned long n)
{
	unsigned long copied = n - g_raw_residual;

	++g_raw_copy_calls;
	if (copied > n)
		copied = n;
	memcpy(to, from, copied);
	return n - copied;
}

#include "../../../reconstructed/zte_tpd/_inline_copy_from_user.c"

static void fail(const char *case_name, const char *message)
{
	fprintf(stderr, "FAIL %s: %s\n", case_name, message);
	exit(1);
}

static void expect(int condition, const char *case_name, const char *message)
{
	if (!condition)
		fail(case_name, message);
}

static void reset_state(void)
{
	g_should_fail = 0;
	g_masked_access = 0;
	g_access_ok = 1;
	g_raw_residual = 0;
	g_might_fault_calls = 0;
	g_access_ok_calls = 0;
	g_barrier_calls = 0;
	g_raw_copy_calls = 0;
	g_before_calls = 0;
	g_after_calls = 0;
}

static void test_normal_success(void)
{
	const char *name = "normal_success";
	const char input[] = "ABCD";
	char output[sizeof(input)] = {0};

	reset_state();
	expect(zte_inline_copy_from_user(output, input, sizeof(input)) == 0,
	       name, "success result differs");
	expect(memcmp(output, input, sizeof(input)) == 0, name,
	       "success bytes differ");
	expect(g_might_fault_calls == 1 && g_access_ok_calls == 1,
	       name, "normal access checks differ");
	expect(g_barrier_calls == 1 && g_raw_copy_calls == 1,
	       name, "normal copy path differs");
	expect(g_before_calls == 1 && g_after_calls == 1, name,
	       "instrumentation callbacks differ");
}

static void test_masked_success_skips_access_ok(void)
{
	const char *name = "masked_success_skips_access_ok";
	const char input[] = "MASK";
	char output[sizeof(input)] = {0};

	reset_state();
	g_masked_access = 1;
	g_access_ok = 0;
	expect(zte_inline_copy_from_user(output, input, sizeof(input)) == 0,
	       name, "masked success result differs");
	expect(memcmp(output, input, sizeof(input)) == 0, name,
	       "masked bytes differ");
	expect(g_access_ok_calls == 0 && g_barrier_calls == 0, name,
	       "masked path performed normal access checks");
	expect(g_raw_copy_calls == 1, name, "masked path skipped copy");
}

static void test_access_denied_zeroes_destination(void)
{
	const char *name = "access_denied_zeroes_destination";
	const char input[] = "DENY";
	char output[sizeof(input)];

	reset_state();
	g_access_ok = 0;
	memset(output, 0x5a, sizeof(output));
	expect(zte_inline_copy_from_user(output, input, sizeof(input)) == sizeof(input),
	       name, "access denial result differs");
	for (size_t i = 0; i < sizeof(output); ++i)
		expect(output[i] == 0, name, "denied destination was not zeroed");
	expect(g_raw_copy_calls == 0 && g_after_calls == 0, name,
	       "denied path performed a raw copy");
}

static void test_partial_copy_zeroes_tail(void)
{
	const char *name = "partial_copy_zeroes_tail";
	const char input[] = "PARTIAL";
	char output[sizeof(input)];

	reset_state();
	g_raw_residual = 3;
	memset(output, 0x5a, sizeof(output));
	expect(zte_inline_copy_from_user(output, input, sizeof(input)) == 3,
	       name, "partial result differs");
	expect(memcmp(output, input, sizeof(input) - 3) == 0, name,
	       "partial copied bytes differ");
	for (size_t i = sizeof(input) - 3; i < sizeof(output); ++i)
		expect(output[i] == 0, name, "partial tail was not zeroed");
	expect(g_after_calls == 1, name, "partial after hook missing");
}

static void test_forced_failure_zeroes_destination(void)
{
	const char *name = "forced_failure_zeroes_destination";
	const char input[] = "FAIL";
	char output[sizeof(input)];

	reset_state();
	g_should_fail = 1;
	memset(output, 0x5a, sizeof(output));
	expect(zte_inline_copy_from_user(output, input, sizeof(input)) == sizeof(input),
	       name, "forced failure result differs");
	for (size_t i = 0; i < sizeof(output); ++i)
		expect(output[i] == 0, name, "forced failure destination was not zeroed");
	expect(g_access_ok_calls == 0 && g_raw_copy_calls == 0, name,
	       "forced failure reached the access path");
}

int main(void)
{
	test_normal_success();
	test_masked_success_skips_access_ok();
	test_access_denied_zeroes_destination();
	test_partial_copy_zeroes_tail();
	test_forced_failure_zeroes_destination();
	puts("PASS _inline_copy_from_user host tests (5 cases)");
	return 0;
}
