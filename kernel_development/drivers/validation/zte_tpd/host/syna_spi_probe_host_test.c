#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define __int8 char
#define SP_EL0 0
typedef uint8_t _BYTE;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;

struct device { unsigned char bytes[64]; };
struct spi_device {
	unsigned char prefix[744];
	struct device dev;
	unsigned char tail[512];
};
struct property { unsigned char bytes[16]; };

static unsigned char stack_guard[2048];
static unsigned char device_storage[256];
static struct property present_property;
static int property_mode;
static int spi_setup_result;
static int allocation_available;
static int gpio_result;
static int failures;
static unsigned int gpio_free_calls;
static unsigned int regulator_put_calls;
static unsigned int kfree_calls;

int dword_C40, dword_C44, dword_C48, dword_C80, dword_C84, dword_C88;
int dword_C8C, dword_CD0, dword_CD4, dword_CD8, dword_CDC, dword_CE0;
int dword_CF8, dword_D00, dword_D04, dword_D08, dword_D20, dword_D28;
int dword_D2C, dword_D30, dword_D34, dword_D38, dword_D48, dword_D4C;
int dword_D58;
__int64 p_device, qword_BE8, qword_BF4, qword_C90, qword_CE8, qword_CF0;
__int64 qword_D10, qword_D18, qword_D40, qword_D50;
void *rx_buf, *tx_buf, *xfer;
__int64 syna_spi_hw_if;
int syna_pal_mutex_alloc___key_1;

#define STRING(name) static const char name[] = #name
STRING(unk_33087); STRING(unk_33763); STRING(unk_3424B); STRING(unk_34E9A);
STRING(unk_34EE8); STRING(unk_36260); STRING(unk_3709F); STRING(unk_37122);
STRING(unk_3782F); STRING(unk_3785E); STRING(unk_38379); STRING(unk_38E81);
STRING(unk_38EC4); STRING(unk_394A5); STRING(unk_3AA95); STRING(unk_3AAC8);
STRING(unk_3BE43); STRING(unk_3BFC2); STRING(unk_3C5CC); STRING(unk_3D206);
STRING(unk_3D259); STRING(unk_C50); STRING(unk_CA0); STRING(unk_D3C);

static void *_ReadStatusReg(int selector)
{
	if (selector != 0)
		failures++;
	return stack_guard;
}

static int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

static void _mutex_init(void *lock, const char *name, void *key)
{
	(void)lock; (void)name; (void)key;
}

static void *devm_regulator_get(__int64 device)
{
	(void)device;
	return 0;
}

static void devm_regulator_put(__int64 regulator, __int64 argument)
{
	(void)regulator; (void)argument; regulator_put_calls++;
}

static void gpio_free(unsigned int gpio, __int64 argument)
{
	(void)gpio; (void)argument; gpio_free_calls++;
}

static void devm_kfree(__int64 device, void *memory)
{
	(void)device; (void)memory; kfree_calls++;
}

static int spi_setup(__int64 spi)
{
	(void)spi;
	return spi_setup_result;
}

static void *_kmalloc_cache_noprof(void *cache, size_t size, unsigned int flags)
{
	(void)cache; (void)flags;
	return allocation_available ? calloc(1, size) : NULL;
}

static void syna_ts_check_dt(struct device *device)
{
	(void)device;
}

static bool selected_property(const char *name)
{
	if (property_mode == 1)
		return strcmp(name, "synaptics,io-switch-gpio") == 0;
	if (property_mode == 2)
		return strcmp(name, "synaptics,irq-gpio") == 0;
	return false;
}

static struct property *of_find_property(__int64 node, const char *name, int index)
{
	(void)node; (void)index;
	if (!selected_property(name))
		return NULL;
	*(unsigned int *)(present_property.bytes + 8) = 4;
	return &present_property;
}

static int of_get_named_gpio(__int64 node, const char *name, int index)
{
	(void)node; (void)name; (void)index;
	return 5;
}

static int of_property_read_variable_u32_array(
	__int64 node, const char *name, void *out, size_t min, size_t max)
{
	(void)node; (void)name; (void)min; (void)max;
	*(unsigned int *)out = 1;
	return 0;
}

static int of_property_read_string(__int64 node, const char *name, const char **out)
{
	(void)node; (void)name; (void)out;
	return 0;
}

static unsigned int syna_spi_get_gpio(unsigned int gpio, int direction)
{
	(void)gpio; (void)direction;
	return (unsigned int)gpio_result;
}

#include "../../../reconstructed/zte_tpd/syna_spi_probe.c"

static void expect(bool condition, const char *name)
{
	if (!condition) {
		fprintf(stderr, "FAIL %s\n", name);
		failures++;
	}
}

static void reset_state(void)
{
	memset(device_storage, 0, sizeof(device_storage));
	memset(&present_property, 0, sizeof(present_property));
	property_mode = 0;
	spi_setup_result = 0;
	allocation_available = 1;
	gpio_result = 0;
	gpio_free_calls = regulator_put_calls = kfree_calls = 0;
	p_device = (__int64)(uintptr_t)device_storage;
	rx_buf = tx_buf = xfer = NULL;
	syna_spi_hw_if = 0;
}

static void run_case(const char *name, int mode, int setup, int alloc,
			     int gpio, int expected)
{
	struct spi_device spi;
	int result;

	memset(&spi, 0, sizeof(spi));
	reset_state();
	property_mode = mode;
	spi_setup_result = setup;
	allocation_available = alloc;
	gpio_result = gpio;
	result = syna_spi_probe(&spi);
	expect(result == expected, name);
	expect((int)syna_spi_hw_if == (int)(uintptr_t)&spi, "hw interface assignment");
	void *bus_resource = *(void **)((unsigned char *)&spi + 960);
	expect((bus_resource != NULL) == (alloc && setup == 0),
	       "bus resource allocation contract");
	/* Reclaim the host-test allocation after the probe returns. */
	free(bus_resource);
	*(void **)((unsigned char *)&spi + 960) = NULL;
}

int main(void)
{
	run_case("default success", 0, 0, 1, 0, 0);
	run_case("spi setup failure", 0, -5, 1, 0, -5);
	run_case("allocation failure", 0, 0, 0, 0, -12);
	run_case("io switch gpio failure", 1, 0, 1, -517, -517);
	run_case("irq gpio failure", 2, 0, 1, -517, -517);
	if (!failures)
		puts("PASS syna_spi_probe host tests (5 cases)");
	return failures ? 1 : 0;
}
