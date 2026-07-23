/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_SYNA_LAYOUT_H
#define _ZTE_TPD_SYNA_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/completion.h>
#include <linux/mutex.h>
#include <linux/platform_device.h>
#include <linux/stddef.h>
#include <linux/types.h>
#include <linux/wait.h>
#include <linux/workqueue.h>

struct tcm_dev;
struct spi_device;
struct syna_hw_interface;

/*
 * TouchComm's transport-facing interface is embedded at offset 0x08 in the
 * platform object. Its nominal tag is part of the stock KCFI contract.
 */
struct tcm_hw_platform {
	struct syna_hw_interface *owner;
	u8 bus_type;
	u8 reserved_0009[0x03];
	u32 rd_chunk_size;
	u32 wr_chunk_size;
	u8 reserved_0014[0x0c];
	int (*read)(struct tcm_hw_platform *platform, u8 *data, u32 length);
	int (*write)(struct tcm_hw_platform *platform, u8 *data, u32 length);
	void *wait_irq;
	int (*enable_irq)(struct tcm_hw_platform *platform, bool enable);
};

struct syna_hw_attn_data {
	int irq_gpio;
	int irq_on_state;
	unsigned long irq_flags;
	int irq_id;
	u8 irq_enabled;
	u8 reserved_0015[0x03];
	struct mutex irq_en_mutex;
};

/*
 * Partial hardware interface overlay. Every named member is tied to an
 * access in the NX809J stock ELF; unresolved regions remain explicit bytes.
 */
struct syna_hw_interface {
	struct spi_device *spi;
	struct tcm_hw_platform tcm_platform;
	u8 reserved_0048[0x60];
	union {
		struct syna_hw_attn_data bdata_attn;
		struct {
			int irq_gpio;
			int irq_on_state;
			unsigned long irq_flags;
			int irq_id;
			u8 irq_enabled;
			u8 reserved_00bd[0x03];
			struct mutex irq_en_mutex;
		};
	};
	int reset_gpio;
	int reset_on_state;
	u32 reset_delay_ms;
	u32 reset_active_ms;
	u8 reserved_0100[0x80];
	void *power_on;
	void (*hw_reset)(struct syna_hw_interface *hw_if);
};

struct syna_event_data_buffer {
	u8 opaque[0x48];
};

struct syna_delayed_work_layout {
	unsigned long work_data;
	struct list_head work_entry;
	work_func_t work_func;
	u8 timer[0x48];
	struct workqueue_struct *wq;
};

/*
 * Partial Synaptics application-device overlay. The object is allocated as
 * 0x6d0 bytes by the stock probe; this overlay stops at the last field used
 * by the current reconstruction group.
 */
struct syna_tcm {
	struct tcm_dev *tcm_dev;
	struct platform_device *pdev;
	u8 reserved_0010[0x260];
	struct syna_hw_interface *hw_if;
	u8 reserved_0278[0x30];
	struct syna_event_data_buffer event_data;
	pid_t isr_pid;
	u8 reserved_02f4[0xa4];
	struct kobject *sysfs_dir;
	u8 reserved_03a0[0xa8];
	wait_queue_head_t frame_wait;
	u8 reserved_0460[0x08];
	u32 frame_available;
	u8 reserved_046c[0xec];
	struct completion pm_resume_completion;
	u8 pm_resume_wait_enabled;
	u8 reserved_0579[0x03];
	u32 pm_resume_wait_bypass;
};

struct ufp_tp_ops_struct {
	union {
		struct {
			struct platform_device *pdev;
			union {
				int single_tap_pending;
				int field_8;
			};
			union {
				int field_0c;
				int field_c;
			};
			struct syna_delayed_work_layout single_tap_work;
		};
		struct {
			u8 reserved_0000[0x80];
			struct completion gesture_complete;
			u8 field_a0;
			u8 field_a1;
			u8 field_a2;
		};
		u8 opaque[0xa8];
	};
};

static_assert(offsetof(struct tcm_hw_platform, owner) == 0x00);
static_assert(offsetof(struct tcm_hw_platform, bus_type) == 0x08);
static_assert(offsetof(struct tcm_hw_platform, rd_chunk_size) == 0x0c);
static_assert(offsetof(struct tcm_hw_platform, wr_chunk_size) == 0x10);
static_assert(offsetof(struct tcm_hw_platform, read) == 0x20);
static_assert(offsetof(struct tcm_hw_platform, write) == 0x28);
static_assert(offsetof(struct tcm_hw_platform, wait_irq) == 0x30);
static_assert(offsetof(struct tcm_hw_platform, enable_irq) == 0x38);
static_assert(sizeof(struct tcm_hw_platform) == 0x40);

static_assert(offsetof(struct syna_hw_attn_data, irq_gpio) == 0x00);
static_assert(offsetof(struct syna_hw_attn_data, irq_on_state) == 0x04);
static_assert(offsetof(struct syna_hw_attn_data, irq_flags) == 0x08);
static_assert(offsetof(struct syna_hw_attn_data, irq_id) == 0x10);
static_assert(offsetof(struct syna_hw_attn_data, irq_enabled) == 0x14);
static_assert(offsetof(struct syna_hw_attn_data, irq_en_mutex) == 0x18);
static_assert(sizeof(struct syna_hw_attn_data) == 0x48);

static_assert(offsetof(struct syna_hw_interface, tcm_platform) == 0x08);
static_assert(offsetof(struct syna_hw_interface, tcm_platform.read) == 0x28);
static_assert(offsetof(struct syna_hw_interface, tcm_platform.write) == 0x30);
static_assert(offsetof(struct syna_hw_interface, tcm_platform.enable_irq) == 0x40);
static_assert(offsetof(struct syna_hw_interface, irq_gpio) == 0xa8);
static_assert(offsetof(struct syna_hw_interface, irq_on_state) == 0xac);
static_assert(offsetof(struct syna_hw_interface, irq_flags) == 0xb0);
static_assert(offsetof(struct syna_hw_interface, irq_id) == 0xb8);
static_assert(offsetof(struct syna_hw_interface, irq_enabled) == 0xbc);
static_assert(offsetof(struct syna_hw_interface, irq_en_mutex) == 0xc0);
static_assert(offsetof(struct syna_hw_interface, reset_gpio) == 0xf0);
static_assert(offsetof(struct syna_hw_interface, reset_on_state) == 0xf4);
static_assert(offsetof(struct syna_hw_interface, reset_delay_ms) == 0xf8);
static_assert(offsetof(struct syna_hw_interface, reset_active_ms) == 0xfc);
static_assert(offsetof(struct syna_hw_interface, power_on) == 0x180);
static_assert(offsetof(struct syna_hw_interface, hw_reset) == 0x188);
static_assert(sizeof(struct syna_hw_interface) == 0x190);

static_assert(offsetof(struct syna_tcm, tcm_dev) == 0x00);
static_assert(offsetof(struct syna_tcm, pdev) == 0x08);
static_assert(offsetof(struct syna_tcm, hw_if) == 0x270);
static_assert(offsetof(struct syna_tcm, event_data) == 0x2a8);
static_assert(offsetof(struct syna_tcm, isr_pid) == 0x2f0);
static_assert(offsetof(struct syna_tcm, sysfs_dir) == 0x398);
static_assert(offsetof(struct syna_tcm, frame_wait) == 0x448);
static_assert(offsetof(struct syna_tcm, frame_available) == 0x468);
static_assert(offsetof(struct syna_tcm, pm_resume_completion) == 0x558);
static_assert(offsetof(struct syna_tcm, pm_resume_wait_enabled) == 0x578);
static_assert(offsetof(struct syna_tcm, pm_resume_wait_bypass) == 0x57c);
static_assert(sizeof(struct syna_tcm) == 0x580);

static_assert(offsetof(struct syna_delayed_work_layout, wq) == 0x68);
static_assert(offsetof(struct syna_delayed_work_layout, work_entry) == 0x08);
static_assert(offsetof(struct syna_delayed_work_layout, work_func) == 0x18);
static_assert(offsetof(struct syna_delayed_work_layout, timer) == 0x20);
static_assert(sizeof(struct syna_delayed_work_layout) == 0x70);
static_assert(offsetof(struct ufp_tp_ops_struct, pdev) == 0x00);
static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_pending) == 0x08);
static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_work) == 0x10);
static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_work.wq) == 0x78);
static_assert(offsetof(struct ufp_tp_ops_struct, gesture_complete) == 0x80);
static_assert(offsetof(struct ufp_tp_ops_struct, field_a0) == 0xa0);
static_assert(offsetof(struct ufp_tp_ops_struct, field_a1) == 0xa1);
static_assert(offsetof(struct ufp_tp_ops_struct, field_a2) == 0xa2);
static_assert(sizeof(struct ufp_tp_ops_struct) == 0xa8);

#endif
