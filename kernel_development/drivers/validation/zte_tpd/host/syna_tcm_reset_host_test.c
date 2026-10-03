#define _GNU_SOURCE
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define _DWORD unsigned int
#define _QWORD unsigned long long
#define _BYTE unsigned char
#define __fastcall

struct tcm_dev {
	unsigned char opaque;
};

static char unk_32B5F[] = "post reset failed";
static char unk_3365A[] = "invalid tcm";
static char unk_39AB7[] = "send command failed";
static char unk_3BA3F[] = "using default delay";

__asm__(
    ".section .text.host_kcfi_stubs,\"ax\",@progbits\n"
    ".align 2\n"
    ".long 0x24203a8e\n"
    ".global host_send_success\n"
    ".type host_send_success,@function\n"
    "host_send_success:\n"
    "xor %eax,%eax\n"
    "ret\n"
    ".align 2\n"
    ".long 0x24203a8e\n"
    ".global host_send_failure\n"
    ".type host_send_failure,@function\n"
    "host_send_failure:\n"
    "mov $-5,%eax\n"
    "ret\n"
    ".align 2\n"
    ".long 0xc069e464\n"
    ".global host_report_success\n"
    ".type host_report_success,@function\n"
    "host_report_success:\n"
    "xor %eax,%eax\n"
    "ret\n"
);

extern int host_send_success(void);
extern int host_send_failure(void);
extern int host_report_success(void);

static unsigned int printk_calls;

int printk(const void *format, ...)
{

	(void)format;
	printk_calls++;
	return 0;
}

static void __break(unsigned int reason)
{

	(void)reason;
	abort();
}

#include "../../../reconstructed/zte_tpd/syna_tcm_reset.c"

static void put_ptr(unsigned char *memory, size_t offset, void *value)
{
	uintptr_t raw = (uintptr_t)value;
	memcpy(memory + offset, &raw, sizeof(raw));
}

static void put_u32(unsigned char *memory, size_t offset, uint32_t value)
{
	memcpy(memory + offset, &value, sizeof(value));
}

static int test_null_tcm(void)
{
	printk_calls = 0;
	return syna_tcm_reset(NULL, 0) == -241 && printk_calls == 1;
}

static int test_send_success(void)
{
	unsigned char tcm[0x2400];
	unsigned char config[32];
	void *send_stub = (void *)host_send_success;
	int passed;
	memset(tcm, 0, sizeof(tcm));
	memset(config, 0, sizeof(config));
	put_ptr(tcm, 0x48, config);
	put_u32(tcm, 0x1ec, 5);
	put_ptr(tcm, 0x398, send_stub);
	tcm[0x81] = 7;
	printk_calls = 0;
	passed = syna_tcm_reset((struct tcm_dev *)tcm, 100) == 0 &&
			tcm[9] == 7 && printk_calls == 0;
	return passed;
}

static int test_send_failure(void)
{
	unsigned char tcm[0x2400];
	unsigned char config[32];
	void *send_stub = (void *)host_send_failure;
	int passed;
	memset(tcm, 0, sizeof(tcm));
	memset(config, 0, sizeof(config));
	put_ptr(tcm, 0x48, config);
	put_ptr(tcm, 0x398, send_stub);
	printk_calls = 0;
	passed = syna_tcm_reset((struct tcm_dev *)tcm, 100) == -5 && printk_calls == 1;
	return passed;
}

static int test_post_reset_success(void)
{
	unsigned char tcm[0x2400];
	unsigned char config[32];
	void *send_stub = (void *)host_send_success;
	void *report_stub = (void *)host_report_success;
	int passed;
	memset(tcm, 0, sizeof(tcm));
	memset(config, 0, sizeof(config));
	put_ptr(tcm, 0x48, config);
	put_ptr(tcm, 0x398, send_stub);
	put_ptr(tcm, 0x23d8, (void *)(uintptr_t)0x1234);
	put_ptr(tcm, 0x23e0, report_stub);
	printk_calls = 0;
	passed = syna_tcm_reset((struct tcm_dev *)tcm, 100) == 0 && printk_calls == 0;
	return passed;
}

int main(void)
{
	unsigned int tests = 0;
	unsigned int failures = 0;

	#define CHECK(name) do { int ok = (name)(); tests++; printf("%s %s\n", ok ? "PASS" : "FAIL", #name); failures += !ok; } while (0)
	CHECK(test_null_tcm);
	CHECK(test_send_success);
	CHECK(test_send_failure);
	CHECK(test_post_reset_success);
	printf("SUMMARY tests=%u failures=%u\n", tests, failures);
	return failures ? 1 : 0;
}
