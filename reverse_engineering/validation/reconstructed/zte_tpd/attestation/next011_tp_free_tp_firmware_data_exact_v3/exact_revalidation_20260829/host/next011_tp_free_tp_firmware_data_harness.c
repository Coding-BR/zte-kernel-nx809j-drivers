#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;

#define EIO 5

static unsigned char cdev_memory[0x2000];
static long long tpd_cdev;
static unsigned int vfree_calls;
static unsigned int kfree_calls;

static void test_vfree(void *pointer)
{
	vfree_calls++;
	free(pointer);
}

static void test_kfree(void *pointer)
{
	kfree_calls++;
	free(pointer);
}

#define vfree(pointer) test_vfree((void *)(pointer))
#define kfree(pointer) test_kfree((void *)(pointer))

#include "../../../curated/zte_tpd/tp_free_tp_firmware_data.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return 1; \
	} \
} while (0)

static void reset_fixture(void)
{
	memset(cdev_memory, 0, sizeof(cdev_memory));
	tpd_cdev = (long long)(uintptr_t)cdev_memory;
	vfree_calls = 0;
	kfree_calls = 0;
}

static void set_descriptor(_QWORD *descriptor, void *data)
{
	descriptor[0] = 0x1234;
	descriptor[1] = (_QWORD)(uintptr_t)data;
	memcpy(cdev_memory + 0xc58, &descriptor, sizeof(descriptor));
}

int main(void)
{
	_QWORD *descriptor;
	void *data;

	reset_fixture();
	descriptor = calloc(2, sizeof(*descriptor));
	data = malloc(32);
	REQUIRE(descriptor != NULL && data != NULL);
	set_descriptor(descriptor, data);
	*(_QWORD *)(cdev_memory + 0x448) = 77;
	tp_free_tp_firmware_data();
	REQUIRE(vfree_calls == 1 && kfree_calls == 1);
	REQUIRE(*(_QWORD *)(cdev_memory + 0xc58) == 0);
	REQUIRE(*(_QWORD *)(cdev_memory + 0x448) == 0);
	puts("PASS test_descriptor_with_data_cleanup");

	reset_fixture();
	descriptor = calloc(2, sizeof(*descriptor));
	REQUIRE(descriptor != NULL);
	set_descriptor(descriptor, NULL);
	*(_QWORD *)(cdev_memory + 0x448) = 88;
	tp_free_tp_firmware_data();
	REQUIRE(vfree_calls == 0 && kfree_calls == 1);
	REQUIRE(*(_QWORD *)(cdev_memory + 0xc58) == 0);
	REQUIRE(*(_QWORD *)(cdev_memory + 0x448) == 0);
	puts("PASS test_descriptor_without_data_cleanup");

	reset_fixture();
	*(_QWORD *)(cdev_memory + 0xc58) = 0;
	*(_QWORD *)(cdev_memory + 0x448) = 99;
	tp_free_tp_firmware_data();
	REQUIRE(vfree_calls == 0 && kfree_calls == 0);
	REQUIRE(*(_QWORD *)(cdev_memory + 0x448) == 0);
	puts("PASS test_null_descriptor_reset");
	puts("SUMMARY total=3 passed=3 failed=0");
	return 0;
}
