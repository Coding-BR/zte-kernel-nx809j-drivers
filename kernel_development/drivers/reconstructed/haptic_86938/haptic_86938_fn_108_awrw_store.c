// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler_attributes.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/i2c.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/slab.h>
#include <linux/string.h>
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);

struct awrw_ops {
	void *reserved0[7];
	void (*read_prepare)(struct aw_haptic *haptic);
	void *reserved1[22];
	void (*read_finish)(struct aw_haptic *haptic);
	void *reserved2[3];
	void (*read_config)(struct aw_haptic *haptic, u8 flag);
};

struct awrw_hex_token {
	u32 word;
	u8 terminator;
};

ssize_t awrw_store(struct device *dev, struct device_attribute *attr,
		   const char *buf, size_t count)
{
	struct awrw_hex_token token __uninitialized;
	u8 reg_byte __uninitialized;
	u8 converted __uninitialized;
	u32 field_mode __uninitialized;
	u32 field_count __uninitialized;
	u32 reg __uninitialized;
	struct i2c_msg messages[2] __uninitialized;
	struct aw_haptic *haptic;
	u8 *private_data;
	u8 *data;
	struct i2c_client *client;
	ssize_t result;
	u32 expected_len;
	u32 guard_count;
	u32 index;
	u32 offset;
	int parsed;
	int transfer_result;
	register const char *scan_buffer __asm__("x0");
	register const char *saved_buf __asm__("x20");
	register u8 *reg_buffer __asm__("x10");
	u32 count_snapshot;
	u32 mode_snapshot;
	u16 client_addr;
	struct i2c_adapter *adapter;

	saved_buf = buf;
	asm volatile("" : "+r"(saved_buf));
	result = count;
	(void)attr;
	private_data = *(u8 **)((u8 *)dev + 0x98);
	barrier();
	asm volatile("mov %0, x20" : "=r"(scan_buffer) : : "memory");
	converted = 0;
	barrier();
	token.terminator = 0;
	barrier();
	token.word = 0;
	barrier();
	field_count = 0;
	field_mode = 0;
	barrier();
	reg = 0;
	barrier();
	parsed = sscanf(scan_buffer, "%x %x %x", &field_mode, &field_count, &reg);
	if (parsed != 3) {
		printk(KERN_ERR "[%s][%04d]%s: param error\n",
		       "haptic_hv", 0xc94, "awrw_store");
		goto out;
	}
	count_snapshot = field_count;
	if (count_snapshot == 0) {
		printk(KERN_ERR "[%s][%04d]%s: param error\n",
		       "haptic_hv", 0xc6f, "awrw_store");
		result = -ERANGE;
		goto out;
	}

	mode_snapshot = field_mode;
	barrier();
	data = *(u8 **)(private_data + 0x530);
	barrier();
	*(u32 *)(private_data + 0x52c) = count_snapshot;
	*(u32 *)(private_data + 0x528) = mode_snapshot;
	if (data != NULL)
		kfree(data);
	haptic = (struct aw_haptic *)(private_data - 0xa8);
	data = kmalloc(field_count, GFP_KERNEL);
	*(u8 **)(private_data + 0x530) = data;

	if (field_mode == 1)
		goto read_mode;
	if (field_mode != 0)
		goto out;

	guard_count = *(volatile u32 *)&field_count;
	expected_len = guard_count * 5U;
	if (strlen(saved_buf) - 0xfU != expected_len) {
		printk(KERN_ERR "[%s][%04d]%s: param error\n",
		       "haptic_hv", 0xc79, "awrw_store");
		result = -ERANGE;
		goto out;
	}
	if (guard_count != 0) {
		index = 0;
		offset = 0xfU;
		do {
			token.word = *(u32 *)(saved_buf + (s32)offset);
			token.terminator = 0;
			parsed = kstrtou8((char *)&token.word, 0, &converted);
			if (parsed < 0) {
				printk(KERN_ERR "[%s][%04d]%s: param error\n",
				       "haptic_hv", 0xc81, "awrw_store");
				result = -ERANGE;
				goto out;
			}
			offset += 5U;
			data = *(u8 **)(private_data + 0x530);
			data[(s32)index] = converted;
			index++;
		} while (index < field_count);
	}

	mutex_lock((struct mutex *)(private_data + 0x248));
	(void)i2c_w_bytes(haptic, (u8)reg,
			  *(u8 **)(private_data + 0x530), field_count);
	goto unlock;

read_mode:
	mutex_lock((struct mutex *)(private_data + 0x248));
	(*(struct awrw_ops **)(private_data + 0x520))->read_prepare(haptic);
	(*(struct awrw_ops **)(private_data + 0x520))->read_config(haptic, 0);
	(*(struct awrw_ops **)(private_data + 0x520))->read_finish(haptic);

	client = *(struct i2c_client **)(private_data + 0x280);
	reg_byte = (u8)reg;
	data = *(u8 **)(private_data + 0x530);
	barrier();
	client_addr = client->addr;
	messages[0].flags = 0;
	messages[0].len = 1;
	barrier();
	reg_buffer = &reg_byte;
	asm volatile("" : "+r"(reg_buffer) : : "memory");
	messages[1].buf = data;
	barrier();
	messages[0].addr = client_addr;
	adapter = client->adapter;
	barrier();
	messages[1].addr = client_addr;
	/* Match the stock layout and store order of the two i2c_msg records. */
	asm volatile(
		"ldr w11, [sp, #0x10]\n\t"
		"str %x0, [sp, #0x30]\n\t"
		"mov %w0, #1\n\t"
		"strh wzr, [sp, #0x2e]\n\t"
		"strh %w0, [sp, #0x3a]\n\t"
		"strh w11, [sp, #0x3c]\n\t"
		"strh wzr, [sp, #0x3e]\n\t"
		: "+r"(reg_buffer)
		:
		: "x11", "memory");

	transfer_result = i2c_transfer(adapter, messages, 2);
	if (transfer_result < 0) {
		printk(KERN_ERR "[%s][%04d]%s: transfer failed.\n",
		       "haptic_hv", 0x65, "i2c_r_bytes");
	} else if (transfer_result != 2) {
		printk(KERN_ERR "[%s][%04d]%s: transfer failed(size error).\n",
		       "haptic_hv", 0x68, "i2c_r_bytes");
	}
unlock:
	mutex_unlock((struct mutex *)(private_data + 0x248));
out:
	return result;
}
