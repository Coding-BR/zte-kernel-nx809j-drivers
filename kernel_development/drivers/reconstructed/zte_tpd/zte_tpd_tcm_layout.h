/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_TCM_LAYOUT_H
#define _ZTE_TPD_TCM_LAYOUT_H

struct tcm_dev;

typedef u64 tcm_unaligned_u64
	__attribute__((aligned(1), may_alias));

typedef void (*tcm_lifecycle_fn)(struct tcm_dev *tcm);

typedef int (*tcm_read_message_fn)(struct tcm_dev *tcm, u8 *code);

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

/*
 * TCM protocol payloads. Multi-byte wire values remain byte arrays because
 * several fields are unaligned and their byte order is protocol-defined.
 */
struct tcm_identification_info {
	u8 version;
	u8 mode;
	u8 part_number[0x10];
	u8 build_id[0x04];
	u8 max_write_size[0x02];
	u8 reserved_18[0x18];
};

struct tcm_application_info {
	u8 version[0x02];
	u8 status[0x02];
	u8 static_config_size[0x02];
	u8 dynamic_config_size[0x02];
	u8 app_config_start_write_block[0x02];
	u8 app_config_size[0x02];
	u8 max_touch_report_config_size[0x02];
	u8 max_touch_report_payload_size[0x02];
	u8 customer_config_id[0x10];
	u8 max_x[0x02];
	u8 max_y[0x02];
	u8 max_objects[0x02];
	u8 num_of_buttons[0x02];
	u8 num_of_image_rows[0x02];
	u8 num_of_image_cols[0x02];
	u8 has_hybrid_data[0x02];
	u8 num_of_force_elecs[0x02];
};

struct tcm_boot_info {
	u8 version;
	u8 reserved_01[0x03];
	u8 write_block_size_words;
	u8 erase_page_size_words[0x02];
	u8 max_write_payload_size[0x02];
	u8 reserved_09[0x0b];
	u8 v3_page_size_words;
	u8 reserved_15[0x0b];
};

struct tcm_features_info {
	u8 raw[0x10];
};

struct tcm_buffer {
	u8 *data;
	u32 buf_size;
	u32 data_length;
	u8 mutex[0x30];
	u8 lock_depth;
	u8 reserved_41[0x07];
};

/* Partial overlay containing only offsets proven by the NX809J stock ELF. */
struct tcm_dev {
	u8 reserved_0000[0x08];
	union {
		u16 detection_state;
		struct {
			u8 reserved_0008;
			u8 firmware_mode;
		};
	};
	u8 reserved_000a[0x02];
	u32 build_id;
	u32 max_x;
	u32 max_y;
	u32 max_objects;
	u32 num_of_image_rows;
	u32 num_of_image_cols;
	u8 customer_config_id[0x10];
	u8 reserved_0034[0x04];
	u32 max_read_size;
	u32 max_write_size;
	u32 host_max_read_size;
	u32 host_max_write_size;
	struct tcm_transport_overlay *transport;
	u8 reserved_0050[0x30];
	union {
		struct tcm_identification_info identification_info;
		struct {
			u8 protocol_version;
			u8 reserved_0081[0x15];
			u16 identify_max_write_size;
			u8 reserved_0098[0x18];
		};
	};
	struct tcm_application_info application_info;
	struct tcm_boot_info boot_info;
	struct tcm_buffer report_buf;
	union {
		struct tcm_buffer resp_buf;
		/* Legacy name retained while older reconstructed callers migrate. */
		struct tcm_buffer response;
	};
	u8 reserved_0190[0x58];
	u32 timing_01e8;
	u32 timing_01ec;
	u8 reserved_01f0[0x18];
	u32 timing_0208;
	u32 command_delay_ms;
	u32 timing_0210;
	u32 timing_0214;
	u32 timing_0218;
	u8 reserved_021c[0x24];
	struct tcm_buffer message_buf;
	u8 reserved_0288[0xf2];
	u8 predict_reading_enabled;
	u8 reserved_037b;
	u32 predict_reading_offset;
	u8 reserved_0380[0x10];
	tcm_read_message_fn read_message;
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

static_assert(offsetof(struct tcm_dev, detection_state) == 0x08);
static_assert(offsetof(struct tcm_dev, firmware_mode) == 0x09);
static_assert(offsetof(struct tcm_dev, build_id) == 0x0c);
static_assert(offsetof(struct tcm_dev, max_x) == 0x10);
static_assert(offsetof(struct tcm_dev, max_y) == 0x14);
static_assert(offsetof(struct tcm_dev, max_objects) == 0x18);
static_assert(offsetof(struct tcm_dev, num_of_image_rows) == 0x1c);
static_assert(offsetof(struct tcm_dev, num_of_image_cols) == 0x20);
static_assert(offsetof(struct tcm_dev, customer_config_id) == 0x24);
static_assert(offsetof(struct tcm_dev, max_read_size) == 0x38);
static_assert(offsetof(struct tcm_dev, max_write_size) == 0x3c);
static_assert(offsetof(struct tcm_dev, host_max_read_size) == 0x40);
static_assert(offsetof(struct tcm_dev, host_max_write_size) == 0x44);
static_assert(offsetof(struct tcm_dev, transport) == 0x48);
static_assert(offsetof(struct tcm_dev, protocol_version) == 0x80);
static_assert(offsetof(struct tcm_dev, identify_max_write_size) == 0x96);
static_assert(offsetof(struct tcm_dev, identification_info) == 0x80);
static_assert(offsetof(struct tcm_dev, application_info) == 0xb0);
static_assert(offsetof(struct tcm_dev, boot_info) == 0xe0);
static_assert(offsetof(struct tcm_dev, report_buf) == 0x100);
static_assert(offsetof(struct tcm_dev, report_buf.data_length) == 0x10c);
static_assert(offsetof(struct tcm_dev, resp_buf) == 0x148);
static_assert(offsetof(struct tcm_dev, response) == 0x148);
static_assert(offsetof(struct tcm_dev, response.data) == 0x148);
static_assert(offsetof(struct tcm_dev, response.buf_size) == 0x150);
static_assert(offsetof(struct tcm_dev, response.data_length) == 0x154);
static_assert(offsetof(struct tcm_dev, response.mutex) == 0x158);
static_assert(offsetof(struct tcm_dev, response.lock_depth) == 0x188);
static_assert(offsetof(struct tcm_dev, timing_01e8) == 0x1e8);
static_assert(offsetof(struct tcm_dev, timing_01ec) == 0x1ec);
static_assert(offsetof(struct tcm_dev, timing_0208) == 0x208);
static_assert(offsetof(struct tcm_dev, command_delay_ms) == 0x20c);
static_assert(offsetof(struct tcm_dev, timing_0210) == 0x210);
static_assert(offsetof(struct tcm_dev, timing_0214) == 0x214);
static_assert(offsetof(struct tcm_dev, timing_0218) == 0x218);
static_assert(offsetof(struct tcm_dev, message_buf) == 0x240);
static_assert(offsetof(struct tcm_dev, message_buf.data) == 0x240);
static_assert(offsetof(struct tcm_dev, message_buf.buf_size) == 0x248);
static_assert(offsetof(struct tcm_dev, message_buf.data_length) == 0x24c);
static_assert(offsetof(struct tcm_dev, message_buf.mutex) == 0x250);
static_assert(offsetof(struct tcm_dev, message_buf.lock_depth) == 0x280);
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
static_assert(sizeof(struct tcm_identification_info) == 0x30);
static_assert(offsetof(struct tcm_identification_info, mode) == 0x01);
static_assert(offsetof(struct tcm_identification_info, part_number) == 0x02);
static_assert(offsetof(struct tcm_identification_info, build_id) == 0x12);
static_assert(offsetof(struct tcm_identification_info, max_write_size) == 0x16);
static_assert(sizeof(struct tcm_application_info) == 0x30);
static_assert(offsetof(struct tcm_application_info, status) == 0x02);
static_assert(offsetof(struct tcm_application_info, customer_config_id) == 0x10);
static_assert(offsetof(struct tcm_application_info, max_x) == 0x20);
static_assert(offsetof(struct tcm_application_info, num_of_image_rows) == 0x28);
static_assert(sizeof(struct tcm_boot_info) == 0x20);
static_assert(offsetof(struct tcm_boot_info, write_block_size_words) == 0x04);
static_assert(offsetof(struct tcm_boot_info, erase_page_size_words) == 0x05);
static_assert(offsetof(struct tcm_boot_info, max_write_payload_size) == 0x07);
static_assert(offsetof(struct tcm_boot_info, v3_page_size_words) == 0x14);
static_assert(sizeof(struct tcm_features_info) == 0x10);
static_assert(sizeof(struct tcm_buffer) == 0x48);
static_assert(sizeof(struct tcm_dev) == 0x23e8);

#endif
