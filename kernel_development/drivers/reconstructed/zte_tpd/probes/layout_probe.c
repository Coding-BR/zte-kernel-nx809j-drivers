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
static_assert(sizeof(struct tcm_dev) == 0x3a0);

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
