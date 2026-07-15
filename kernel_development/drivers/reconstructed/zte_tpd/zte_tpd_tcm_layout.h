/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_TCM_LAYOUT_H
#define _ZTE_TPD_TCM_LAYOUT_H

struct tcm_dev;

typedef int (*tcm_write_message_fn)(struct tcm_dev *tcm, u8 command,
				    u8 *payload, u32 length,
				    u8 *response_code, u32 delay_ms);

struct tcm_transport_overlay {
	u8 reserved_0000[0x14];
	u8 flags;
};

/* Partial overlay containing only offsets proven by the NX809J stock ELF. */
struct tcm_dev {
	u8 reserved_0000[0x09];
	u8 firmware_mode;
	u8 reserved_000a[0x3e];
	struct tcm_transport_overlay *transport;
	u8 reserved_0050[0x1bc];
	u32 command_delay_ms;
	u8 reserved_0210[0x188];
	tcm_write_message_fn write_message;
};

static_assert(offsetof(struct tcm_dev, firmware_mode) == 0x09);
static_assert(offsetof(struct tcm_dev, transport) == 0x48);
static_assert(offsetof(struct tcm_dev, command_delay_ms) == 0x20c);
static_assert(offsetof(struct tcm_dev, write_message) == 0x398);

#endif
