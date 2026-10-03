#include <stdint.h>
#include <stdio.h>

static unsigned int raw_read_calls;
static int64_t observed_tcm_hcd;
static uint64_t observed_buffer;
static int64_t observed_request;
static uint32_t observed_length;
static int64_t raw_read_result;

static int64_t raw_read_spy(int64_t tcm_hcd, uint64_t buffer,
				   int64_t request, uint32_t length)
{
	raw_read_calls++;
	observed_tcm_hcd = tcm_hcd;
	observed_buffer = buffer;
	observed_request = request;
	observed_length = length;
	return raw_read_result;
}

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_13_raw_read_dispatch.c"

static void reset_observation(void)
{
	raw_read_calls = 0;
	observed_tcm_hcd = 0;
	observed_buffer = 0;
	observed_request = 0;
	observed_length = 0;
	raw_read_result = 0;
}

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

static int test_positive_result_and_exact_arguments(void)
{
	const int64_t tcm_hcd = INT64_C(0x1122334455667788);
	const uint64_t buffer = UINT64_C(0xfedcba9876543210);
	const int64_t request = INT64_C(0x0102030405060708);
	const uint32_t length = UINT32_C(0x10203040);

	reset_observation();
	raw_read_result = INT64_C(0x123456789);
	if (expect(syna_cdev_ioctls_190_13_raw_read_dispatch(
			tcm_hcd, buffer, request, length, raw_read_spy) ==
			raw_read_result, "positive result was not forwarded"))
		return 1;
	return expect(raw_read_calls == 1 && observed_tcm_hcd == tcm_hcd &&
			      observed_buffer == buffer && observed_request == request &&
			      observed_length == length,
			      "raw-read arguments were not preserved");
}

static int test_negative_result_is_forwarded(void)
{
	reset_observation();
	raw_read_result = INT64_C(-5);
	if (expect(syna_cdev_ioctls_190_13_raw_read_dispatch(
			INT64_C(-1), UINT64_C(0x8000000000000001), INT64_C(-2),
			UINT32_C(0xffffffff), raw_read_spy) == raw_read_result,
			"negative result was not forwarded"))
		return 1;
	return expect(raw_read_calls == 1 && observed_tcm_hcd == INT64_C(-1) &&
			      observed_buffer == UINT64_C(0x8000000000000001) &&
			      observed_request == INT64_C(-2) &&
			      observed_length == UINT32_C(0xffffffff),
			      "error-path arguments were not preserved");
}

int main(void)
{
	if (test_positive_result_and_exact_arguments())
		return 1;
	if (test_negative_result_is_forwarded())
		return 1;
	puts("PASS syna_cdev_ioctls_190_13_raw_read_dispatch: 2 cases");
	return 0;
}
