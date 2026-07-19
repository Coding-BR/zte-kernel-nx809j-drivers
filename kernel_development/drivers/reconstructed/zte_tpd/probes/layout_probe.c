// SPDX-License-Identifier: GPL-2.0-only
#include <linux/build_bug.h>
#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/stddef.h>
#include <linux/types.h>

#include "zte_tpd_tcm_layout.h"
#include "zte_tpd_testing_layout.h"

static_assert(sizeof(void *) == 8);

static_assert(sizeof(struct platform_device) == 0x3f0);
static_assert(offsetof(struct platform_device, dev) == 0x10);
static_assert(offsetof(struct device, release) == 0x328);
static_assert(offsetof(struct platform_device, dev) +
	      offsetof(struct device, release) == 0x338);

static_assert(offsetof(struct tcm_transport_overlay, flags) == 0x14);
static_assert(sizeof(struct tcm_transport_overlay) == 0x15);
static_assert(sizeof(struct tcm_identification_info) == 0x30);
static_assert(offsetof(struct tcm_identification_info, mode) == 0x01);
static_assert(offsetof(struct tcm_identification_info, build_id) == 0x12);
static_assert(offsetof(struct tcm_identification_info, max_write_size) == 0x16);
static_assert(sizeof(struct tcm_application_info) == 0x30);
static_assert(offsetof(struct tcm_application_info, status) == 0x02);
static_assert(offsetof(struct tcm_application_info, customer_config_id) == 0x10);
static_assert(offsetof(struct tcm_application_info, max_x) == 0x20);
static_assert(offsetof(struct tcm_application_info, num_of_image_rows) == 0x28);
static_assert(sizeof(struct tcm_boot_info) == 0x20);
static_assert(offsetof(struct tcm_boot_info, write_block_size_words) == 0x04);
static_assert(offsetof(struct tcm_boot_info, max_write_payload_size) == 0x07);
static_assert(offsetof(struct tcm_boot_info, v3_page_size_words) == 0x14);
static_assert(sizeof(struct tcm_features_info) == 0x10);
static_assert(sizeof(struct tcm_response_buffer) == 0x48);
static_assert(sizeof(struct tcm_dev) == 0x23e8);
static_assert(offsetof(struct tcm_dev, firmware_mode) == 0x09);
static_assert(offsetof(struct tcm_dev, build_id) == 0x0c);
static_assert(offsetof(struct tcm_dev, max_x) == 0x10);
static_assert(offsetof(struct tcm_dev, customer_config_id) == 0x24);
static_assert(offsetof(struct tcm_dev, identification_info) == 0x80);
static_assert(offsetof(struct tcm_dev, application_info) == 0xb0);
static_assert(offsetof(struct tcm_dev, boot_info) == 0xe0);
static_assert(offsetof(struct tcm_dev, response) == 0x148);
static_assert(offsetof(struct tcm_dev, response.data) == 0x148);
static_assert(offsetof(struct tcm_dev, response.buf_size) == 0x150);
static_assert(offsetof(struct tcm_dev, response.data_length) == 0x154);
static_assert(offsetof(struct tcm_dev, response.mutex) == 0x158);
static_assert(offsetof(struct tcm_dev, response.lock_depth) == 0x188);
static_assert(offsetof(struct tcm_dev, command_delay_ms) == 0x20c);
static_assert(offsetof(struct tcm_dev, write_message) == 0x398);
static_assert(offsetof(struct tcm_dev, check_max_rw_size) == 0x3b0);
static_assert(offsetof(struct tcm_dev, post_reset_context) == 0x23d8);
static_assert(offsetof(struct tcm_dev, post_reset_callback) == 0x23e0);

static_assert(sizeof(struct testing_item) == 0x178);
static_assert(offsetof(struct testing_item, version) == 0x00);
static_assert(offsetof(struct testing_item, id) == 0x04);
static_assert(offsetof(struct testing_item, name) == 0x08);
static_assert(offsetof(struct testing_item, result) == 0x10);
static_assert(offsetof(struct testing_item, run) == 0x18);
static_assert(offsetof(struct testing_item, limit_primary) == 0x38);
static_assert(offsetof(struct testing_item, limit_secondary) == 0x40);
static_assert(offsetof(struct testing_item, result_data) == 0xd8);
static_assert(offsetof(struct testing_item, result_aux) == 0xe0);

MODULE_DESCRIPTION("NX809J zte_tpd compile-time layout probe");
MODULE_LICENSE("GPL");
