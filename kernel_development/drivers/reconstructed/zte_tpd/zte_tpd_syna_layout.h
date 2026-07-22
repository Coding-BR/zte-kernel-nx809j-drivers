/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_SYNA_LAYOUT_H
#define _ZTE_TPD_SYNA_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/completion.h>
#include <linux/platform_device.h>
#include <linux/stddef.h>
#include <linux/types.h>
#include <linux/wait.h>
#include <linux/workqueue.h>

struct tcm_dev;
struct spi_device;

/*
 * Partial hardware interface overlay. Every named member is tied to an
 * access in the NX809J stock ELF; unresolved regions remain explicit bytes.
 */
struct syna_hw_interface {
	struct spi_device *spi;
	u8 reserved_0008[0x20];
	void *read;
	void *write;
	u8 reserved_0038[0x08];
	void *enable_irq;
	u8 reserved_0048[0x60];
	int irq_gpio;
	int irq_on_state;
	u8 reserved_00b0[0x40];
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
	u8 reserved_02f4[0x154];
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

static_assert(offsetof(struct syna_hw_interface, read) == 0x28);
static_assert(offsetof(struct syna_hw_interface, write) == 0x30);
static_assert(offsetof(struct syna_hw_interface, enable_irq) == 0x40);
static_assert(offsetof(struct syna_hw_interface, irq_gpio) == 0xa8);
static_assert(offsetof(struct syna_hw_interface, irq_on_state) == 0xac);
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
