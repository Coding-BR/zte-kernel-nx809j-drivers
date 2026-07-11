/* SPDX-License-Identifier: GPL-2.0-only */

#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long ssize_t;
typedef long long loff_t;

#define __user
#define ZTE_IR_TX_WORD_CAPACITY       40000U
#define ZTE_IR_SPI_WORDS_PER_CARRIER  16U
#define ZTE_IR_DT_MAX_SPI_HZ          5000000U
#define ZTE_IR_DEFAULT_SPI_SPEED_HZ   608000U
#define check_mul_overflow(a, b, out) __builtin_mul_overflow((a), (b), (out))
#define check_add_overflow(a, b, out) __builtin_add_overflow((a), (b), (out))
#define READ_ONCE(value)              (value)
#define pr_debug(...)                 ((void)0)
#define dev_dbg(...)                  ((void)0)

#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR(pointer) ((uintptr_t)(pointer) >= (uintptr_t)-4095)

struct fake_lock {
	int held;
};

struct device {
	int unused;
};

struct spi_device {
	struct device dev;
	int available;
	int refs;
};

struct zte_ir_runtime {
	struct {
		u16 tx_buf[ZTE_IR_TX_WORD_CAPACITY];
		u16 pattern_high;
		u16 pattern_low;
		u32 speed_hz;
		struct spi_device *spi;
		struct fake_lock spi_lock;
		struct fake_lock buf_lock;
	} stock;
	unsigned int users;
	int removed;
};

struct file {
	void *private_data;
};

struct spi_transfer {
	const void *tx_buf;
	void *rx_buf;
	unsigned int len;
	u32 speed_hz;
	u8 bits_per_word;
	u8 cs_change;
};

struct spi_message {
	struct spi_transfer *transfer;
};

static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int spin_lock_calls;
static unsigned int spin_unlock_calls;
static unsigned int lock_assert_failures;
static unsigned int allocation_calls;
static unsigned int free_calls;
static unsigned int get_calls;
static unsigned int put_calls;
static unsigned int sync_calls;
static int fail_memdup;
static int configured_sync_result;
static struct spi_transfer captured_transfer;

static void fake_mutex_lock(struct fake_lock *lock)
{
	mutex_lock_calls++;
	if (lock->held)
		lock_assert_failures++;
	lock->held = 1;
}

static void fake_mutex_unlock(struct fake_lock *lock)
{
	mutex_unlock_calls++;
	if (!lock->held)
		lock_assert_failures++;
	lock->held = 0;
}

static void fake_spin_lock(struct fake_lock *lock, unsigned long *flags)
{
	spin_lock_calls++;
	*flags = 0x55;
	if (lock->held)
		lock_assert_failures++;
	lock->held = 1;
}

static void fake_spin_unlock(struct fake_lock *lock, unsigned long flags)
{
	spin_unlock_calls++;
	if (!lock->held || flags != 0x55)
		lock_assert_failures++;
	lock->held = 0;
}

static void fake_lockdep_assert_held(struct fake_lock *lock)
{
	if (!lock->held)
		lock_assert_failures++;
}

#define mutex_lock(lock) fake_mutex_lock(lock)
#define mutex_unlock(lock) fake_mutex_unlock(lock)
#define spin_lock_irqsave(lock, flags) fake_spin_lock((lock), &(flags))
#define spin_unlock_irqrestore(lock, flags) fake_spin_unlock((lock), (flags))
#define lockdep_assert_held(lock) fake_lockdep_assert_held(lock)

static struct spi_device *spi_dev_get(struct spi_device *spi)
{
	if (!spi || !spi->available)
		return NULL;
	get_calls++;
	spi->refs++;
	return spi;
}

static void spi_dev_put(struct spi_device *spi)
{
	if (!spi)
		return;
	put_calls++;
	spi->refs--;
}

static void *memdup_user(const void *buffer, size_t count)
{
	void *copy;

	if (fail_memdup)
		return ERR_PTR(-ENOMEM);
	copy = malloc(count);
	if (!copy)
		return ERR_PTR(-ENOMEM);
	memcpy(copy, buffer, count);
	allocation_calls++;
	return copy;
}

static void kfree(const void *pointer)
{
	if (!pointer)
		return;
	free_calls++;
	free((void *)pointer);
}

static void spi_message_init(struct spi_message *message)
{
	message->transfer = NULL;
}

static void spi_message_add_tail(struct spi_transfer *transfer,
				 struct spi_message *message)
{
	message->transfer = transfer;
}

static int spi_sync(struct spi_device *spi, struct spi_message *message)
{
	if (!spi || !message || !message->transfer)
		return -EINVAL;
	sync_calls++;
	captured_transfer = *message->transfer;
	return configured_sync_result;
}

#include "../01_spi_get/zte_ir_spi_get.c"
#include "../02_encode_pulses/zte_ir_encode_pulses.c"
#include "zte_ir_write.c"

#define SENTINEL 0xa5a5U

static struct zte_ir_runtime runtime;
static struct spi_device spi;
static struct file file;
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

static void expect_pointer(const char *name, const void *actual,
			   const void *expected)
{
	checks++;
	if (actual == expected)
		return;
	failures++;
	fprintf(stderr, "%s: pointer mismatch\n", name);
}

static void reset_state(void)
{
	size_t index;

	memset(&runtime, 0, sizeof(runtime));
	memset(&spi, 0, sizeof(spi));
	memset(&captured_transfer, 0xcc, sizeof(captured_transfer));
	for (index = 0; index < ZTE_IR_TX_WORD_CAPACITY; index++)
		runtime.stock.tx_buf[index] = SENTINEL;
	runtime.stock.pattern_high = 0x001f;
	runtime.stock.pattern_low = 0x0000;
	runtime.stock.speed_hz = ZTE_IR_DEFAULT_SPI_SPEED_HZ;
	runtime.stock.spi = &spi;
	spi.available = 1;
	file.private_data = &runtime;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
	spin_lock_calls = 0;
	spin_unlock_calls = 0;
	lock_assert_failures = 0;
	allocation_calls = 0;
	free_calls = 0;
	get_calls = 0;
	put_calls = 0;
	sync_calls = 0;
	fail_memdup = 0;
	configured_sync_result = 0;
}

static void expect_balanced_cleanup(const char *prefix,
				    unsigned int allocations,
				    unsigned int references)
{
	(void)prefix;
	expect_int("allocation count", allocation_calls, allocations);
	expect_int("free count", free_calls, allocations);
	expect_int("get count", get_calls, references);
	expect_int("put count", put_calls, references);
	expect_int("spi refs", spi.refs, 0);
	expect_int("mutex balanced", mutex_lock_calls, mutex_unlock_calls);
	expect_int("spin balanced", spin_lock_calls, spin_unlock_calls);
	expect_int("lock assertions", lock_assert_failures, 0);
	expect_int("buffer unlocked", runtime.stock.buf_lock.held, 0);
	expect_int("spi lock unlocked", runtime.stock.spi_lock.held, 0);
}

static void test_invalid_inputs(void)
{
	u32 pulse = 10;

	reset_state();
	expect_int("null file", zte_ir_write(NULL, (const char *)&pulse,
			 sizeof(pulse), NULL), -EINVAL);
	expect_int("null buffer", zte_ir_write(&file, NULL, sizeof(pulse), NULL),
		   -EINVAL);
	file.private_data = NULL;
	expect_int("null private data", zte_ir_write(&file, (const char *)&pulse,
			 sizeof(pulse), NULL), -ENODEV);
	file.private_data = &runtime;
	expect_int("zero count", zte_ir_write(&file, (const char *)&pulse, 0, NULL),
		   -EINVAL);
	expect_int("misaligned count", zte_ir_write(&file, (const char *)&pulse, 3,
			 NULL), -EINVAL);
	expect_int("oversized count", zte_ir_write(&file, (const char *)&pulse,
			 ZTE_IR_TX_WORD_CAPACITY * sizeof(u32) + sizeof(u32), NULL),
		   -E2BIG);
	expect_int("invalid path did not lock", mutex_lock_calls, 0);
}

static void test_removed_and_copy_failure(void)
{
	u32 pulse = 10;

	reset_state();
	runtime.removed = 1;
	expect_int("removed", zte_ir_write(&file, (const char *)&pulse,
			 sizeof(pulse), NULL), -ESHUTDOWN);
	expect_balanced_cleanup("removed", 0, 0);

	reset_state();
	fail_memdup = 1;
	expect_int("memdup failure", zte_ir_write(&file, (const char *)&pulse,
			 sizeof(pulse), NULL), -ENOMEM);
	expect_balanced_cleanup("memdup", 0, 0);
}

static void test_spi_unavailable(void)
{
	u32 pulse = 10;

	reset_state();
	runtime.stock.spi = NULL;
	expect_int("spi unavailable", zte_ir_write(&file, (const char *)&pulse,
			 sizeof(pulse), NULL), -ESHUTDOWN);
	expect_int("no sync without spi", sync_calls, 0);
	expect_balanced_cleanup("no spi", 1, 0);
}

static void test_encoder_limit(void)
{
	u32 pulse = 1052632;

	reset_state();
	expect_int("encoder limit", zte_ir_write(&file, (const char *)&pulse,
			 sizeof(pulse), NULL), -E2BIG);
	expect_int("no sync on encode error", sync_calls, 0);
	expect_balanced_cleanup("encode limit", 1, 1);
}

static void test_success(void)
{
	const u32 pulses[] = { 1000, 500, 26 };
	loff_t position = 1234;
	size_t index;

	reset_state();
	expect_int("write success", zte_ir_write(&file, (const char *)pulses,
			 sizeof(pulses), &position), sizeof(pulses));
	expect_int("sync called", sync_calls, 1);
	expect_pointer("transfer buffer", captured_transfer.tx_buf,
		       runtime.stock.tx_buf);
	expect_int("transfer length", captured_transfer.len, 116);
	expect_int("transfer speed", captured_transfer.speed_hz,
		   ZTE_IR_DEFAULT_SPI_SPEED_HZ);
	expect_int("bits per word inherited", captured_transfer.bits_per_word, 0);
	expect_int("chip select unchanged", captured_transfer.cs_change, 0);
	expect_pointer("rx buffer remains null", captured_transfer.rx_buf, NULL);
	expect_int("position unchanged", position, 1234);
	for (index = 0; index < 38; index++)
		expect_int("success high", runtime.stock.tx_buf[index], 0x001f);
	for (; index < 57; index++)
		expect_int("success low", runtime.stock.tx_buf[index], 0x0000);
	expect_int("success final high", runtime.stock.tx_buf[57], 0x001f);
	expect_int("success no overrun", runtime.stock.tx_buf[58], SENTINEL);
	expect_balanced_cleanup("success", 1, 1);
}

static void test_sync_failure_and_zero_words(void)
{
	u32 pulse = 100;
	u32 zero_pulse = 0;

	reset_state();
	configured_sync_result = -EIO;
	expect_int("sync failure", zte_ir_write(&file, (const char *)&pulse,
			 sizeof(pulse), NULL), -EIO);
	expect_int("failed sync called", sync_calls, 1);
	expect_balanced_cleanup("sync failure", 1, 1);

	reset_state();
	expect_int("zero word success", zte_ir_write(&file,
			 (const char *)&zero_pulse, sizeof(zero_pulse), NULL),
		   sizeof(zero_pulse));
	expect_int("zero word sync", sync_calls, 1);
	expect_int("zero transfer length", captured_transfer.len, 0);
	expect_balanced_cleanup("zero words", 1, 1);
}

int main(void)
{
	test_invalid_inputs();
	test_removed_and_copy_failure();
	test_spi_unavailable();
	test_encoder_limit();
	test_success();
	test_sync_failure_and_zero_words();
	printf("checks=%u failures=%u\n", checks, failures);
	return failures ? 1 : 0;
}
