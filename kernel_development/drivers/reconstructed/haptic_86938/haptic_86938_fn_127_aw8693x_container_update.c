// SPDX-License-Identifier: GPL-2.0
#include <asm/byteorder.h>
#include <linux/delay.h>
#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/printk.h>
#include <linux/string.h>
#include <linux/types.h>

struct aw_haptic;
struct aw_haptic_container {
	int len;
	u8 data[];
};

extern void aw8693x_stop(struct aw_haptic *haptic);
extern int i2c_w_bits(struct aw_haptic *haptic, u8 reg, u32 mask, u8 value);
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);
extern int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data,
		       u32 length);
extern void usleep_range_state(unsigned long min, unsigned long max,
			       u32 state);
	__attribute__((no_sanitize("bounds")))
int aw8693x_container_update(struct aw_haptic *haptic,
			     struct aw_haptic_container *container)
{
	u8 readback[0x400] = { 0 };
	u8 address_bytes[2];
	u8 ram_address_bytes[3];
	u32 base_address;
	u32 cursor;
	u8 address_offset;
	u8 *container_data;
	int remaining;
	int chunk;
	int result = 0;

	mutex_lock((struct mutex *)((u8 *)haptic + 0x2f0));
	*(u16 *)((u8 *)haptic + 0x45e) = 0x0204;
	aw8693x_stop(haptic);
	(void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 0x04);
	usleep_range_state(500, 600, 2);

	address_offset = *((u8 *)haptic + 0x45f);
#if defined(__aarch64__)
	asm volatile("add %0, %1, #4"
		     : "=r"(container_data)
		     : "r"(container));
#else
	container_data = container->data;
#endif
	asm volatile("" : : "r"(container_data) : "memory");
	{
		u16 encoded_address =
			*(u16 *)(container_data + address_offset);
		asm volatile("" : : "r"(encoded_address)
			     : "x0", "x1", "x2", "x3", "memory");

#if defined(__aarch64__)
		u32 decoded_address;

		asm volatile("rev16 %w0, %w1"
			     : "=r"(decoded_address)
			     : "r"((u32)encoded_address));
		base_address = decoded_address;
#else
		base_address = (u32)__builtin_bswap16(encoded_address);
#endif
	}
	*(u32 *)((u8 *)haptic + 0x458) = base_address;
	printk("\0016[%s][%04d]%s: base_addr = %d\n",
	       "haptic_hv", 0x657, __func__, base_address);

	base_address = *(u32 *)((u8 *)haptic + 0x458);
	ram_address_bytes[0] = (u8)((base_address >> 5) & 0xf0);
	remaining = base_address - (base_address >> 2);
	ram_address_bytes[0] |= (u8)((remaining >> 8) & 0x0f);
	ram_address_bytes[1] = (u8)(base_address >> 1);
	ram_address_bytes[2] = (u8)remaining;
	(void)i2c_w_bytes(haptic, 0x2f, ram_address_bytes, 3);
	(void)i2c_r_bytes(haptic, 0x2f, ram_address_bytes, 3);
	printk("\0016[%s][%04d]%s: almost_empty_threshold = %d\n",
	       "haptic_hv", 0x665, __func__,
	       ((u16)(ram_address_bytes[0] >> 4) << 8) |
		       ram_address_bytes[1]);
	printk("\0016[%s][%04d]%s: almost_full_threshold = %d\n",
	       "haptic_hv", 0x668, __func__,
	       ((u16)(ram_address_bytes[0] & 0x0f) << 8) |
		       ram_address_bytes[2]);

	base_address = *(u32 *)((u8 *)haptic + 0x458);
	address_bytes[0] = (u8)(base_address >> 8);
	address_bytes[1] = (u8)base_address;
	(void)i2c_w_bits(haptic, 0x2d, 0xffffffe0U,
			 (u8)(base_address >> 8));
	(void)i2c_w_bytes(haptic, 0x2e, &address_bytes[1], 1);
	base_address = *(u32 *)((u8 *)haptic + 0x458);
	address_bytes[0] = (u8)(base_address >> 8);
	address_bytes[1] = (u8)base_address;
	(void)i2c_w_bytes(haptic, 0x40, address_bytes, 2);

	cursor = *((u8 *)haptic + 0x45e);
	remaining = container->len;
	if ((s32)cursor < remaining) {
		do {
			remaining -= (s32)cursor;
			chunk = remaining < 0x800 ? remaining : 0x800;
			(void)i2c_w_bytes(haptic, 0x42,
					  container_data + (s32)cursor, chunk);
			remaining = container->len;
			cursor += chunk;
		} while ((s32)cursor < remaining);
	}

	base_address = *(u32 *)((u8 *)haptic + 0x458);
	address_bytes[0] = (u8)(base_address >> 8);
	address_bytes[1] = (u8)base_address;
	(void)i2c_w_bytes(haptic, 0x40, address_bytes, 2);

	cursor = *((u8 *)haptic + 0x45e);
	remaining = container->len;
	if ((s32)cursor < remaining) {
		do {
			remaining -= (s32)cursor;
			chunk = remaining < 0x400 ? remaining : 0x400;
			(void)i2c_r_bytes(haptic, 0x42, readback, chunk);
			{
				long compare_bound;
				u32 compare_limit;
				unsigned long index;
				u8 *container_chunk;

#if defined(__aarch64__)
				asm volatile("sxtw %0, %w3\n\t"
					     "add %1, %5, %w4, sxtw\n\t"
					     "mov %x2, xzr"
					     : "=r"(compare_bound), "=r"(container_chunk),
						     "=r"(index)
					     : "r"(remaining), "r"(cursor),
					       "r"(container_data));
#else
				compare_bound = (long)remaining;
				container_chunk = container_data + (s32)cursor;
					index = 0;
#endif
				compare_bound = compare_bound < 0x400 ?
					compare_bound : 0x400;
				compare_limit = (u32)compare_bound;

			compare_loop:
#if defined(__aarch64__)
				if ((u32)index > 0x3ff)
					__builtin_trap();
#else
				if (index > 0x3ff)
					__builtin_trap();
#endif
				{
					u32 ram_byte;
					u32 file_byte;

					asm volatile("ldrb %w0, [%2, %4]\n\t"
						     "ldrb %w1, [%3, %4]"
						     : "=&r"(ram_byte), "=&r"(file_byte)
						     : "r"(readback), "r"(container_chunk),
						       "r"(index));
					if (ram_byte != file_byte) {
					printk("\0013[%s][%04d]%s: check ramdata error, addr=0x%04x, ram_data=0x%02x, file_data=0x%02x\n",
					       "haptic_hv", 0x630,
					       "aw8693x_check_ram_data", (u32)index,
					       ram_byte, file_byte);
					printk("\0013[%s][%04d]%s: ram data check sum error\n",
					       "haptic_hv", 0x687, __func__);
					result = -ERANGE;
					goto out;
					}
				}
				asm volatile("add %x0, %x0, #1" : "+r"(index));
#if defined(__aarch64__)
				asm goto volatile("cmp %w0, %w1\n\tb.ne %l[compare_loop]"
						   :
						   : "r"(compare_limit), "r"(index)
						   : "cc"
						   : compare_loop);
#else
				if (index != compare_limit)
					goto compare_loop;
#endif
			}
			remaining = container->len;
			cursor += chunk;
		} while ((s32)cursor < remaining);
	}

	printk("\0016[%s][%04d]%s: ram data check sum pass\n",
	       "haptic_hv", 0x689, __func__);
	goto out;

out:
	(void)i2c_w_bits(haptic, 0x45, 0xfffffffbU, 0);
	mutex_unlock((struct mutex *)((u8 *)haptic + 0x2f0));
	return result;
}
