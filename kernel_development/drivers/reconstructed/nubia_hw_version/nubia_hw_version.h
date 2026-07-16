/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _NUBIA_HW_VERSION_H
#define _NUBIA_HW_VERSION_H

#include <linux/build_bug.h>
#include <linux/pinctrl/consumer.h>
#include <linux/stddef.h>
#include <linux/types.h>

#define NUBIA_VERSION_LEN 12

struct nubia_hw_gpio_info {
	struct pinctrl *pinctrl;
	struct pinctrl_state *pull_up;
	struct pinctrl_state *pull_down;
};

struct nubia_pcb_gpio_map {
	u32 gpio1;
	u32 gpio2;
	u32 hw_id;
	char pcb_version[NUBIA_VERSION_LEN];
};

struct nubia_rf_band_gpio_map {
	u32 gpio1;
	u32 gpio2;
	char rf_band[NUBIA_VERSION_LEN];
};

static_assert(offsetof(struct nubia_hw_gpio_info, pinctrl) == 0x00);
static_assert(offsetof(struct nubia_hw_gpio_info, pull_up) == 0x08);
static_assert(offsetof(struct nubia_hw_gpio_info, pull_down) == 0x10);
static_assert(sizeof(struct nubia_hw_gpio_info) == 0x18);

static_assert(offsetof(struct nubia_pcb_gpio_map, gpio1) == 0x00);
static_assert(offsetof(struct nubia_pcb_gpio_map, gpio2) == 0x04);
static_assert(offsetof(struct nubia_pcb_gpio_map, hw_id) == 0x08);
static_assert(offsetof(struct nubia_pcb_gpio_map, pcb_version) == 0x0c);
static_assert(sizeof(struct nubia_pcb_gpio_map) == 0x18);

static_assert(offsetof(struct nubia_rf_band_gpio_map, gpio1) == 0x00);
static_assert(offsetof(struct nubia_rf_band_gpio_map, gpio2) == 0x04);
static_assert(offsetof(struct nubia_rf_band_gpio_map, rf_band) == 0x08);
static_assert(sizeof(struct nubia_rf_band_gpio_map) == 0x14);

int nubia_get_hw_id(void);
void nubia_get_hw_pcb_version(char *result);
int charger_100W(void);
int charger_80W(void);
char *nubia_get_rf_band_by_gpio(struct nubia_rf_band_gpio_map *table,
				unsigned int count);

#endif /* _NUBIA_HW_VERSION_H */
