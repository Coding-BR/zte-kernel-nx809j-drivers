/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_TCM_LAYOUT_H
#define _ZTE_TPD_TCM_LAYOUT_H

struct tcm_dev;

typedef void (*tcm_lifecycle_fn)(struct tcm_dev *tcm);

typedef int (*tcm_write_message_fn)(struct tcm_dev *tcm, u8 command,
				    u8 *payload, u32 length,
				    u8 *response_code, u32 delay_ms);

typedef int (*tcm_set_up_max_rw_size_fn)(struct tcm_dev *tcm,
					  u32 max_read_size,
					  u32 max_write_size);

typedef int (*tcm_check_max_rw_size_fn)(struct tcm_dev *tcm);

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

typedef tcm_data_duplicator_fn tcm_report_dispatcher_fn;

struct tcm_timings {
	u32 value_00;
	u32 value_04;
	u32 value_08;
	u32 value_0c;
	u32 value_10;
	u8 reserved_14[0x0c];
	u32 value_20;
	u32 value_24;
};

struct tcm_report_dispatcher_slot {
	void *callback_data;
	tcm_report_dispatcher_fn callback;
};

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
	u8 reserved_000a[0x2e];
	u32 max_read_size;
	u32 max_write_size;
	u32 host_max_read_size;
	u32 host_max_write_size;
	struct tcm_transport_overlay *transport;
	u8 reserved_0050[0x30];
	u8 protocol_version;
	u8 reserved_0081[0x15];
	u16 identify_max_write_size;
	u8 reserved_0098[0x150];
	u32 timing_01e8;
	u32 timing_01ec;
	u8 reserved_01f0[0x18];
	u32 timing_0208;
	u32 command_delay_ms;
	u32 timing_0210;
	u32 timing_0214;
	u32 timing_0218;
	u8 reserved_021c[0x15e];
	u8 predict_reading_enabled;
	u8 reserved_037b;
	u32 predict_reading_offset;
	u8 reserved_0380[0x10];
	void *read_message;
	tcm_write_message_fn write_message;
	tcm_lifecycle_fn terminate;
	tcm_set_up_max_rw_size_fn set_up_max_rw_size;
	tcm_check_max_rw_size_fn check_max_rw_size;
	void *custom_touch_callback_data;
	tcm_custom_touch_callback_fn custom_touch_callback;
	void *custom_gesture_callback_data;
	tcm_custom_touch_callback_fn custom_gesture_callback;
	struct tcm_report_dispatcher_slot report_dispatchers[256];
	struct tcm_data_duplicator_slot data_duplicators[256];
	void *post_reset_context;
	tcm_post_reset_callback_fn post_reset_callback;
};

static_assert(offsetof(struct tcm_dev, firmware_mode) == 0x09);
static_assert(offsetof(struct tcm_dev, max_read_size) == 0x38);
static_assert(offsetof(struct tcm_dev, max_write_size) == 0x3c);
static_assert(offsetof(struct tcm_dev, host_max_read_size) == 0x40);
static_assert(offsetof(struct tcm_dev, host_max_write_size) == 0x44);
static_assert(offsetof(struct tcm_dev, transport) == 0x48);
static_assert(offsetof(struct tcm_dev, protocol_version) == 0x80);
static_assert(offsetof(struct tcm_dev, identify_max_write_size) == 0x96);
static_assert(offsetof(struct tcm_dev, timing_01e8) == 0x1e8);
static_assert(offsetof(struct tcm_dev, timing_01ec) == 0x1ec);
static_assert(offsetof(struct tcm_dev, timing_0208) == 0x208);
static_assert(offsetof(struct tcm_dev, command_delay_ms) == 0x20c);
static_assert(offsetof(struct tcm_dev, timing_0210) == 0x210);
static_assert(offsetof(struct tcm_dev, timing_0214) == 0x214);
static_assert(offsetof(struct tcm_dev, timing_0218) == 0x218);
static_assert(offsetof(struct tcm_dev, predict_reading_enabled) == 0x37a);
static_assert(offsetof(struct tcm_dev, predict_reading_offset) == 0x37c);
static_assert(offsetof(struct tcm_dev, read_message) == 0x390);
static_assert(offsetof(struct tcm_dev, write_message) == 0x398);
static_assert(offsetof(struct tcm_dev, terminate) == 0x3a0);
static_assert(offsetof(struct tcm_dev, set_up_max_rw_size) == 0x3a8);
static_assert(offsetof(struct tcm_dev, check_max_rw_size) == 0x3b0);
static_assert(offsetof(struct tcm_dev, custom_touch_callback_data) == 0x3b8);
static_assert(offsetof(struct tcm_dev, custom_touch_callback) == 0x3c0);
static_assert(offsetof(struct tcm_dev, custom_gesture_callback_data) == 0x3c8);
static_assert(offsetof(struct tcm_dev, custom_gesture_callback) == 0x3d0);
static_assert(offsetof(struct tcm_dev, report_dispatchers) == 0x3d8);
static_assert(sizeof(struct tcm_timings) == 0x28);
static_assert(sizeof(struct tcm_report_dispatcher_slot) == 0x10);
static_assert(offsetof(struct tcm_dev, data_duplicators) == 0x13d8);
static_assert(sizeof(struct tcm_data_duplicator_slot) == 0x10);
static_assert(offsetof(struct tcm_dev, post_reset_context) == 0x23d8);
static_assert(offsetof(struct tcm_dev, post_reset_callback) == 0x23e0);
static_assert(sizeof(struct tcm_dev) == 0x23e8);

#endif
