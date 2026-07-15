// SPDX-License-Identifier: GPL-2.0-only
#include <linux/build_bug.h>
#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/stddef.h>
#include <linux/types.h>

#include "zte_tpd_tcm_layout.h"

static_assert(sizeof(void *) == 8);

static_assert(sizeof(struct platform_device) == 0x3f0);
static_assert(offsetof(struct platform_device, dev) == 0x10);
static_assert(offsetof(struct device, release) == 0x328);
static_assert(offsetof(struct platform_device, dev) +
	      offsetof(struct device, release) == 0x338);

static_assert(offsetof(struct tcm_transport_overlay, flags) == 0x14);
static_assert(sizeof(struct tcm_transport_overlay) == 0x15);
static_assert(sizeof(struct tcm_dev) == 0x3a0);

MODULE_DESCRIPTION("NX809J zte_tpd compile-time layout probe");
MODULE_LICENSE("GPL");
