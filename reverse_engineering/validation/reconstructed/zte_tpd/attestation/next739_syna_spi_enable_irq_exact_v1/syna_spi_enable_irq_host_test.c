/* SPDX-License-Identifier: GPL-2.0-only */
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

struct syna_hw_interface;

struct tcm_hw_platform {
	struct syna_hw_interface *owner;
	u8 bus_type;
	u8 reserved_0009[0x03];
	u32 rd_chunk_size;
	u32 wr_chunk_size;
	u8 reserved_0014[0x0c];
	void *read;
	void *write;
	void *wait_irq;
	int (*enable_irq)(struct tcm_hw_platform *platform, bool enable);
};

struct mutex {
	u8 opaque[0x30];
};

struct syna_hw_attn_data {
	int irq_gpio;
	int irq_on_state;
	unsigned long irq_flags;
	int irq_id;
	u8 irq_enabled;
	u8 reserved_0015[0x03];
	struct mutex irq_en_mutex;
};

struct syna_hw_interface {
	void *spi;
	struct tcm_hw_platform tcm_platform;
	u8 reserved_0048[0x60];
	struct syna_hw_attn_data bdata_attn;
	u8 reserved_00f0[0xa0];
};

_Static_assert(sizeof(struct tcm_hw_platform) == 0x40,
	       "tcm_hw_platform size");
_Static_assert(offsetof(struct syna_hw_interface, tcm_platform) == 0x08,
	       "tcm platform offset");
_Static_assert(offsetof(struct syna_hw_interface, bdata_attn.irq_id) == 0xb8,
	       "irq_id offset");
_Static_assert(offsetof(struct syna_hw_interface,
			bdata_attn.irq_enabled) == 0xbc,
	       "irq_enabled offset");
_Static_assert(offsetof(struct syna_hw_interface,
			bdata_attn.irq_en_mutex) == 0xc0,
	       "irq mutex offset");
_Static_assert(sizeof(struct syna_hw_interface) == 0x190,
	       "syna_hw_interface size");

static char captured_log[1024];
static size_t captured_log_length;
static struct mutex *expected_mutex;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int enable_calls;
static unsigned int disable_calls;
static unsigned int observed_irq;
static bool locked;
static bool irq_called_while_locked;
static unsigned int failures;

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, \
			#condition); \
		failures++; \
	} \
} while (0)

static int host_printk(const char *format, ...)
{
	va_list args;
	int written;

	va_start(args, format);
	written = vsnprintf(captured_log + captured_log_length,
			    sizeof(captured_log) - captured_log_length,
			    format, args);
	va_end(args);
	if (written > 0) {
		size_t available = sizeof(captured_log) - captured_log_length;

		captured_log_length += (size_t)written < available ?
			(size_t)written : available - 1;
	}

	return written;
}

static void host_mutex_lock(struct mutex *mutex)
{
	CHECK(mutex == expected_mutex);
	CHECK(!locked);
	lock_calls++;
	locked = true;
}

static void host_mutex_unlock(struct mutex *mutex)
{
	CHECK(mutex == expected_mutex);
	CHECK(locked);
	unlock_calls++;
	locked = false;
}

static void host_enable_irq(unsigned int irq)
{
	enable_calls++;
	observed_irq = irq;
	irq_called_while_locked = locked;
}

static void host_disable_irq_nosync(unsigned int irq)
{
	disable_calls++;
	observed_irq = irq;
	irq_called_while_locked = locked;
}

#define printk host_printk
#define mutex_lock host_mutex_lock
#define mutex_unlock host_mutex_unlock
#define enable_irq host_enable_irq
#define disable_irq_nosync host_disable_irq_nosync
#define likely(condition) __builtin_expect(!!(condition), 1)

#include "../../../reconstructed/zte_tpd/syna_spi_enable_irq.c"

static void reset_state(struct syna_hw_interface *hw_if)
{
	memset(hw_if, 0, sizeof(*hw_if));
	hw_if->tcm_platform.owner = hw_if;
	hw_if->bdata_attn.irq_id = 417;
	expected_mutex = &hw_if->bdata_attn.irq_en_mutex;
	memset(captured_log, 0, sizeof(captured_log));
	captured_log_length = 0;
	lock_calls = 0;
	unlock_calls = 0;
	enable_calls = 0;
	disable_calls = 0;
	observed_irq = 0;
	locked = false;
	irq_called_while_locked = false;
}

static bool log_contains(const char *text)
{
	return strstr(captured_log, text) != NULL;
}

static void check_balanced_lock(void)
{
	CHECK(lock_calls == 1);
	CHECK(unlock_calls == 1);
	CHECK(!locked);
}

static void test_invalid_owner(void)
{
	struct tcm_hw_platform platform = { 0 };

	reset_state(&(struct syna_hw_interface){ 0 });
	CHECK(syna_spi_enable_irq(&platform, true) == -6);
	CHECK(lock_calls == 0);
	CHECK(unlock_calls == 0);
	CHECK(enable_calls == 0);
	CHECK(disable_calls == 0);
	CHECK(log_contains("Invalid handle of hw_if"));
}

static void test_missing_irq(void)
{
	struct syna_hw_interface hw_if;

	reset_state(&hw_if);
	hw_if.bdata_attn.irq_id = 0;
	CHECK(syna_spi_enable_irq(&hw_if.tcm_platform, true) == -6);
	CHECK(lock_calls == 0);
	CHECK(unlock_calls == 0);
	CHECK(enable_calls == 0);
	CHECK(disable_calls == 0);
	CHECK(captured_log_length == 0);
}

static void test_enable_transition(void)
{
	struct syna_hw_interface hw_if;

	reset_state(&hw_if);
	CHECK(syna_spi_enable_irq(&hw_if.tcm_platform, true) == 1);
	check_balanced_lock();
	CHECK(enable_calls == 1);
	CHECK(disable_calls == 0);
	CHECK(observed_irq == 417);
	CHECK(irq_called_while_locked);
	CHECK(hw_if.bdata_attn.irq_enabled);
	CHECK(log_contains("Interrupt enabled"));
}

static void test_enable_idempotent(void)
{
	struct syna_hw_interface hw_if;

	reset_state(&hw_if);
	hw_if.bdata_attn.irq_enabled = true;
	CHECK(syna_spi_enable_irq(&hw_if.tcm_platform, true) == 0);
	check_balanced_lock();
	CHECK(enable_calls == 0);
	CHECK(disable_calls == 0);
	CHECK(hw_if.bdata_attn.irq_enabled);
	CHECK(log_contains("Interrupt already enabled"));
}

static void test_disable_transition(void)
{
	struct syna_hw_interface hw_if;

	reset_state(&hw_if);
	hw_if.bdata_attn.irq_enabled = true;
	CHECK(syna_spi_enable_irq(&hw_if.tcm_platform, false) == 1);
	check_balanced_lock();
	CHECK(enable_calls == 0);
	CHECK(disable_calls == 1);
	CHECK(observed_irq == 417);
	CHECK(irq_called_while_locked);
	CHECK(!hw_if.bdata_attn.irq_enabled);
	CHECK(log_contains("Interrupt disabled"));
}

static void test_disable_idempotent(void)
{
	struct syna_hw_interface hw_if;

	reset_state(&hw_if);
	CHECK(syna_spi_enable_irq(&hw_if.tcm_platform, false) == 0);
	check_balanced_lock();
	CHECK(enable_calls == 0);
	CHECK(disable_calls == 0);
	CHECK(log_contains("Interrupt already disabled"));
}

int main(void)
{
	test_invalid_owner();
	test_missing_irq();
	test_enable_transition();
	test_enable_idempotent();
	test_disable_transition();
	test_disable_idempotent();

	if (failures)
		return 1;

	puts("PASS syna_spi_enable_irq host tests (6 cases)");
	return 0;
}
