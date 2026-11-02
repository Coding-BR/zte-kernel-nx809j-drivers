// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>

struct aw_haptic;
extern int i2c_w_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length);

void aw8693x_set_ram_addr(struct aw_haptic *haptic)
{
	u16 address = *(u16 *)((u8 *)haptic + 0x458U);
	u16 wire_address = (u16)((address >> 8) | (address << 8));

	(void)i2c_w_bytes(haptic, 0x40U, (u8 *)&wire_address, 2U);
}
