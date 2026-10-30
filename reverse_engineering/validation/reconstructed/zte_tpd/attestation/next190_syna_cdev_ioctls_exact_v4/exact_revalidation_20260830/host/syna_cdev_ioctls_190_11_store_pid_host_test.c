#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_11_store_pid.c"

struct observed_copy {
	unsigned int calls;
	uint64_t destination;
	size_t length;
	struct syna_cdev_ioctls_190_11_reply reply;
	size_t result;
};

struct observed_log {
	unsigned int calls;
	const char *name;
};

static size_t observe_copy(uint64_t destination, const void *source,
			   size_t length, void *cookie)
{
	struct observed_copy *observed = cookie;

	observed->calls++;
	observed->destination = destination;
	observed->length = length;
	memcpy(&observed->reply, source, sizeof(observed->reply));
	return observed->result;
}

static void observe_log(const char *route_name, void *cookie)
{
	struct observed_log *observed = cookie;

	observed->calls++;
	observed->name = route_name;
}

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

static int test_normal_reply_is_identity(void)
{
	struct observed_copy copy = {0};
	struct observed_log log = {0};
	struct syna_cdev_ioctls_190_11_context context = {
		.status_byte = 0,
		.status_word = 0,
		.user_address_mask = UINT64_C(0xff7fffffffffffff),
		.copy_to_user = observe_copy,
		.log = observe_log,
		.copy_cookie = &copy,
		.log_cookie = &log,
	};
	struct syna_cdev_ioctls_190_11_reply reply = {
		.low = UINT64_C(0x1122334455667788),
		.high = UINT64_C(0x99aabbccddeeff00),
	};
	int32_t result;

	result = syna_cdev_ioctls_190_11_store_pid(&context, &reply,
						 UINT64_C(0x1000));
	if (expect(result == 0, "normal route return") ||
	    expect(log.calls == 1 && strcmp(log.name,
							 "syna_cdev_ioctl_store_pid") == 0,
							 "store-pid log contract"))
		return 1;

	return 0;
}

static int test_masked_address_and_reply_copy(void)
{
	struct observed_copy copy = {0};
	struct observed_log log = {0};
	struct syna_cdev_ioctls_190_11_context context = {
		.status_byte = 0x20,
		.status_word = 0,
		.user_address_mask = UINT64_C(0x0000ffffffffffff),
		.copy_to_user = observe_copy,
		.log = observe_log,
		.copy_cookie = &copy,
		.log_cookie = &log,
	};
	struct syna_cdev_ioctls_190_11_reply reply = {
		.low = UINT64_C(0x1234567890abcdef),
		.high = UINT64_C(0xfedcba0987654321),
	};
	int32_t result;

	result = syna_cdev_ioctls_190_11_store_pid(&context, &reply,
						 UINT64_C(0xabcd000000001234));
	if (expect(result == 0, "masked route return") ||
	    expect(copy.calls == 1 && copy.destination == UINT64_C(0x1234) &&
			   copy.length == 16U && memcmp(&copy.reply, &reply,
								 sizeof(reply)) == 0,
			   "masked destination or reply payload"))
		return 1;

	return 0;
}

static int test_invalid_address_skips_copy(void)
{
	struct observed_copy copy = {0};
	struct observed_log log = {0};
	struct syna_cdev_ioctls_190_11_context context = {
		.status_byte = 0,
		.status_word = 0,
		.user_address_mask = UINT64_MAX,
		.copy_to_user = observe_copy,
		.log = observe_log,
		.copy_cookie = &copy,
		.log_cookie = &log,
	};
	struct syna_cdev_ioctls_190_11_reply reply = {0};

	if (expect(syna_cdev_ioctls_190_11_store_pid(&context, &reply,
						 UINT64_C(0x7ffffffff1)) == -52,
						 "invalid-address return"))
		return 1;
	return expect(copy.calls == 0, "invalid address copied data");
}

static int test_copy_failure_returns_stock_error(void)
{
	struct observed_copy copy = {.result = 16U};
	struct observed_log log = {0};
	struct syna_cdev_ioctls_190_11_context context = {
		.status_byte = 0,
		.status_word = UINT64_C(0x4000000),
		.user_address_mask = UINT64_C(0x0000ffffffffffff),
		.copy_to_user = observe_copy,
		.log = observe_log,
		.copy_cookie = &copy,
		.log_cookie = &log,
	};
	struct syna_cdev_ioctls_190_11_reply reply = {0};

	if (expect(syna_cdev_ioctls_190_11_store_pid(&context, &reply,
						 UINT64_C(0x2000)) == -52,
						 "copy-failure return"))
		return 1;
	return expect(copy.calls == 1 && copy.length == 16U,
			      "copy-failure call contract");
}

int main(void)
{
	if (test_normal_reply_is_identity() ||
	    test_masked_address_and_reply_copy() ||
	    test_invalid_address_skips_copy() ||
	    test_copy_failure_returns_stock_error())
		return 1;

	puts("PASS syna_cdev_ioctls_190_11_store_pid host tests (4 cases)");
	return 0;
}
