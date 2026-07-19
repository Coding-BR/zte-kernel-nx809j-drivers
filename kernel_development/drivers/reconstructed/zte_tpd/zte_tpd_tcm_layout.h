/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_TCM_LAYOUT_H
#define _ZTE_TPD_TCM_LAYOUT_H

struct tcm_dev;

typedef void (*tcm_lifecycle_fn)(struct tcm_dev *tcm);

typedef int (*tcm_write_message_fn)(struct tcm_dev *tcm, u8 command,
				    u8 *payload, u32 length,
				    u8 *response_code, u32 delay_ms);

typedef int (*tcm_custom_touch_callback_fn)(u8 entity_code,
					    const u8 *config_data,
					    u32 *config_offset,
					    const u8 *report_data,
					    u32 *report_offset,
					    u32 report_size,
					    void *callback_data);

typedef int (*tcm_post_reset_callback_fn)(void *callback_data);

typedef int (*tcm_data_duplicator_fn)(u8 report_code,
				      const u8 *payload,
				      u32 length,
				      void *callback_data);

struct tcm_data_duplicator_slot {
	void *callback_data;
	tcm_data_duplicator_fn callback;
};

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
	tcm_lifecycle_fn terminate;
	u8 reserved_03a8[0x08];
	void *reset_callback;
	void *custom_touch_callback_data;
	tcm_custom_touch_callback_fn custom_touch_callback;
	void *custom_gesture_callback_data;
	tcm_custom_touch_callback_fn custom_gesture_callback;
	u8 reserved_03d8[0x1000];
	struct tcm_data_duplicator_slot data_duplicators[256];
	void *post_reset_context;
	tcm_post_reset_callback_fn post_reset_callback;
};

static_assert(offsetof(struct tcm_dev, firmware_mode) == 0x09);
static_assert(offsetof(struct tcm_dev, transport) == 0x48);
static_assert(offsetof(struct tcm_dev, command_delay_ms) == 0x20c);
static_assert(offsetof(struct tcm_dev, write_message) == 0x398);
static_assert(offsetof(struct tcm_dev, terminate) == 0x3a0);
static_assert(offsetof(struct tcm_dev, reset_callback) == 0x3b0);
static_assert(offsetof(struct tcm_dev, custom_touch_callback_data) == 0x3b8);
static_assert(offsetof(struct tcm_dev, custom_touch_callback) == 0x3c0);
static_assert(offsetof(struct tcm_dev, custom_gesture_callback_data) == 0x3c8);
static_assert(offsetof(struct tcm_dev, custom_gesture_callback) == 0x3d0);
static_assert(offsetof(struct tcm_dev, data_duplicators) == 0x13d8);
static_assert(sizeof(struct tcm_data_duplicator_slot) == 0x10);
static_assert(offsetof(struct tcm_dev, post_reset_context) == 0x23d8);
static_assert(offsetof(struct tcm_dev, post_reset_callback) == 0x23e0);
static_assert(sizeof(struct tcm_dev) == 0x23e8);

#endif
