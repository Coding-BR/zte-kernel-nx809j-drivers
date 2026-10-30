#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int8 char
#define _BYTE uint8_t
#define _DWORD uint32_t
#define _QWORD uint64_t
typedef int64_t __int64;

struct tcm_dev {
	unsigned char bytes[0x320];
};

char unk_3365A[] = "null-remove";
char unk_34845[] = "buffer-release";
char unk_3BE43[] = "pal-free";
char unk_3AC8E[] = "device-remove";

static int printk_calls;
static int buffer_release_logs;
static int pal_free_logs;
static int final_remove_logs;
static int request_calls;
static int kfree_calls;
static void *managed_device;
static uintptr_t freed_objects[16];
static uintptr_t freed_managers[16];

int printk(const char *format, ...)
{
	va_list args;
	const char *name;

	printk_calls++;
	va_start(args, format);
	name = va_arg(args, const char *);
	if (format == unk_34845)
		buffer_release_logs++;
	else if (format == unk_3BE43)
		pal_free_logs++;
	else if ((format == unk_3365A || format == unk_3AC8E) &&
		 strcmp(name, "syna_tcm_remove_device") == 0)
		final_remove_logs++;
	va_end(args);
	return 0;
}

__int64 syna_request_managed_device(void)
{
	request_calls++;
	return (__int64)(uintptr_t)managed_device;
}

void devm_kfree(__int64 manager, __int64 object)
{
	if (kfree_calls < (int)(sizeof(freed_objects) / sizeof(freed_objects[0]))) {
		freed_managers[kfree_calls] = (uintptr_t)manager;
		freed_objects[kfree_calls] = (uintptr_t)object;
	}
	kfree_calls++;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_remove_device.c"

static void expect(bool condition, const char *message)
{
	if (condition)
		return;
	fprintf(stderr, "FAIL syna_tcm_remove_device: %s\n", message);
	exit(EXIT_FAILURE);
}

static void reset_observations(void)
{
	printk_calls = 0;
	buffer_release_logs = 0;
	pal_free_logs = 0;
	final_remove_logs = 0;
	request_calls = 0;
	kfree_calls = 0;
	memset(freed_objects, 0, sizeof(freed_objects));
	memset(freed_managers, 0, sizeof(freed_managers));
	managed_device = NULL;
}

static void write_qword(struct tcm_dev *device, size_t offset, uintptr_t value)
{
	uint64_t stored = (uint64_t)value;

	memcpy(device->bytes + offset, &stored, sizeof(stored));
}

static uint64_t read_qword(const struct tcm_dev *device, size_t offset)
{
	uint64_t value;

	memcpy(&value, device->bytes + offset, sizeof(value));
	return value;
}

static void initialize_all_buffers(struct tcm_dev *device)
{
	static const size_t pointers[] = {0x2d0, 0x288, 0x240, 0x190, 0x100, 0x148};
	static const size_t reset_pointers[] = {0x2d8, 0x290, 0x248, 0x198, 0x108, 0x150};
	static const size_t flags[] = {0x310, 0x2c8, 0x280, 0x1d0, 0x140, 0x188};

	memset(device, 0, sizeof(*device));
	for (size_t i = 0; i < sizeof(pointers) / sizeof(pointers[0]); ++i) {
		write_qword(device, pointers[i], (uintptr_t)(0x1000U + i * 0x100U));
		write_qword(device, reset_pointers[i], (uintptr_t)(0x2000U + i * 0x100U));
		device->bytes[flags[i]] = 1;
	}
	write_qword(device, 0, 0x1111);
	write_qword(device, 72, 0x2222);
}

static void expect_clean_device(const struct tcm_dev *device)
{
	static const size_t reset_pointers[] = {0x2d8, 0x290, 0x248, 0x198, 0x108, 0x150};
	static const size_t flags[] = {0x310, 0x2c8, 0x280, 0x1d0, 0x140, 0x188};

	for (size_t i = 0; i < sizeof(reset_pointers) / sizeof(reset_pointers[0]); ++i) {
		expect(read_qword(device, reset_pointers[i]) == 0, "buffer reset pointer was not cleared");
		expect(device->bytes[flags[i]] == 0, "buffer flag was not cleared");
	}
	expect(read_qword(device, 0) == 0 && read_qword(device, 72) == 0,
	       "top-level pointers were not cleared");
}

int main(void)
{
	struct tcm_dev device;
	void *manager = (void *)(uintptr_t)0xfeed0000U;

	reset_observations();
	syna_tcm_remove_device(NULL);
	expect(printk_calls == 1 && final_remove_logs == 1,
	       "NULL input must emit only the final remove log");
	expect(request_calls == 0 && kfree_calls == 0,
	       "NULL input must not request a manager or free memory");

	reset_observations();
	initialize_all_buffers(&device);
	managed_device = manager;
	syna_tcm_remove_device(&device);
	expect(request_calls == 7, "managed path must request manager for six buffers and tcm");
	expect(kfree_calls == 7, "managed path must free six buffers and tcm");
	expect(buffer_release_logs == 6 && pal_free_logs == 0 && final_remove_logs == 1,
	       "managed path printk sequence/count mismatch");
	for (int i = 0; i < 7; ++i)
		expect(freed_managers[i] == (uintptr_t)manager, "devm_kfree manager mismatch");
	expect(freed_objects[6] == (uintptr_t)&device, "final devm_kfree object mismatch");
	expect_clean_device(&device);

	reset_observations();
	initialize_all_buffers(&device);
	managed_device = NULL;
	syna_tcm_remove_device(&device);
	expect(request_calls == 7 && kfree_calls == 0,
	       "unmanaged path request/free count mismatch");
	expect(buffer_release_logs == 6 && pal_free_logs == 7 && final_remove_logs == 1,
	       "unmanaged path printk sequence/count mismatch");
	expect_clean_device(&device);

	puts("PASS syna_tcm_remove_device host tests (3 cases)");
	return EXIT_SUCCESS;
}
