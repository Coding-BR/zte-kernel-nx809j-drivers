/* SPDX-License-Identifier: GPL-2.0 */
#include <stddef.h>
#include <stdio.h>
#include <string.h>

#ifndef CANDIDATE_SOURCE
#error "CANDIDATE_SOURCE must name the source under test"
#endif

#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)

#include <linux/i2c.h>
#include <linux/types.h>

struct aw_haptic;
int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);
int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);

#include STRINGIFY(CANDIDATE_SOURCE)

static struct i2c_adapter adapter = { .marker = 0x8693 };
static struct i2c_client client = { .addr = 0x5a, .adapter = &adapter };
static unsigned char haptic_storage[0x330];
static struct aw_haptic *const haptic = (struct aw_haptic *)haptic_storage;
static int transfer_result;
static int write_result;
static u8 read_value;
static u8 expected_reg;
static u8 observed_reg;
static u8 written_value;
static u32 written_length;
static unsigned int transfer_calls;
static unsigned int write_calls;
static unsigned int printk_calls;
static int transfer_shape_ok;

int i2c_transfer(struct i2c_adapter *observed_adapter,
		 struct i2c_msg *messages, int count)
{
	transfer_calls++;
	transfer_shape_ok = observed_adapter == &adapter && count == 2 &&
		messages[0].addr == client.addr && messages[0].flags == 0 &&
		messages[0].len == 1 && messages[0].buf != NULL &&
		messages[1].addr == client.addr && messages[1].flags == I2C_M_RD &&
		messages[1].len == 1 && messages[1].buf != NULL;
	if (messages[0].buf != NULL)
		observed_reg = messages[0].buf[0];
	if (transfer_result == 2 && messages[1].buf != NULL)
		messages[1].buf[0] = read_value;
	return transfer_result;
}

int i2c_w_bytes(struct aw_haptic *observed_haptic, u8 reg, u8 *data, u32 length)
{
	write_calls++;
	expected_reg = reg;
	written_length = length;
	written_value = data == NULL ? 0 : data[0];
	if (observed_haptic != haptic)
		return -9001;
	return write_result;
}

int printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

static void reset_case(int transfer, int write, u8 old_value)
{
	struct i2c_client *client_pointer = &client;
	memset(haptic_storage, 0, sizeof(haptic_storage));
	memcpy(haptic_storage + 0x328, &client_pointer, sizeof(client_pointer));
	transfer_result = transfer;
	write_result = write;
	read_value = old_value;
	expected_reg = 0;
	observed_reg = 0;
	written_value = 0;
	written_length = 0;
	transfer_calls = 0;
	write_calls = 0;
	printk_calls = 0;
	transfer_shape_ok = 0;
}

static int fail(const char *message)
{
	fprintf(stderr, "FAIL: %s\n", message);
	return 1;
}

int main(void)
{
	int result;

	reset_case(2, 1, 0xa5);
	result = i2c_w_bits(haptic, 0x2a, 0xf0, 0x03);
	if (result != 0)
		return fail("successful read/write must return zero");
	if (transfer_calls != 1 || !transfer_shape_ok)
		return fail("expected one two-message register read");
	if (observed_reg != 0x2a)
		return fail("first I2C message register mismatch");
	if (write_calls != 1 || expected_reg != 0x2a || written_length != 1)
		return fail("expected one byte write to the same register");
	if (written_value != 0xa3)
		return fail("masked byte mismatch");
	if (printk_calls != 0)
		return fail("successful transaction must not log an error");

	reset_case(-121, 1, 0xa5);
	result = i2c_w_bits(haptic, 0x2a, 0xf0, 0x03);
	if (result != -121 || write_calls != 0 || printk_calls != 2)
		return fail("negative read error must be returned and logged without write");

	reset_case(1, 1, 0xa5);
	result = i2c_w_bits(haptic, 0x2a, 0xf0, 0x03);
	if (result != -6 || write_calls != 0 || printk_calls != 2)
		return fail("short read must return -6 and must not write");

	reset_case(2, -5, 0xa5);
	result = i2c_w_bits(haptic, 0x2a, 0xf0, 0x03);
	if (result != -5 || write_calls != 1 || printk_calls != 1)
		return fail("negative write result must be returned and logged");

	puts("PASS: register read, mask update, write, and error contracts");
	return 0;
}
