// SPDX-License-Identifier: GPL-2.0
#include <linux/of.h>
#include <linux/printk.h>
#include <linux/string.h>
#include <linux/types.h>

struct device;
struct aw_haptic;

void aw8693x_parse_dt(struct device *dev, struct aw_haptic *aw,
		      struct device_node *np)
{
	u8 *object = (u8 *)aw;
	u8 duration_time[3] = { 0 };
	u8 trig_config[24] = { 0 };
	int ret;

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_gain_bypass", object + 0x4c1, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_gain_bypass not found\n",
		       "haptic_hv", 0x6ae, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_uvlo_vol_default", object + 0x4c2, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_uvlo_vol_default not found\n",
		       "haptic_hv", 0x6b2, __func__);

	ret = of_property_read_variable_u32_array(
		np, "f0_pre", (u32 *)(object + 0x468), 1, 0);
	if (ret < 0)
		printk(KERN_INFO "[%s][%04d]%s: f0_pre not found\n",
		       "haptic_hv", 0x6b6, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_f0_cali_percent", object + 0x462, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_f0_cali_percent not found\n",
		       "haptic_hv", 0x6ba, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_cont_smart_loop", object + 0x4c3, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_cont_smart_loop not found\n",
		       "haptic_hv", 0x6be, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_cont_drv1_lvl", object + 0x49a, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_cont_drv1_lvl not found\n",
		       "haptic_hv", 0x6c2, __func__);

	ret = of_property_read_variable_u32_array(
		np, "aw8693x_cont_lra_vrms", (u32 *)(object + 0x4c4), 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_cont_lra_vrms not found\n",
		       "haptic_hv", 0x6c6, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_cont_drv1_time", object + 0x4a0, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_cont_drv1_time not found\n",
		       "haptic_hv", 0x6ca, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_cont_drv2_time", object + 0x4a1, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_cont_drv2_time not found\n",
		       "haptic_hv", 0x6ce, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_cont_brk_time", object + 0x49d, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_cont_brk_time not found\n",
		       "haptic_hv", 0x6d2, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_cont_track_margin", object + 0x4a3, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_cont_track_margin not found\n",
		       "haptic_hv", 0x6d7, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_cont_brk_gain", object + 0x49f, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_cont_brk_gain not found\n",
		       "haptic_hv", 0x6db, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_d2s_gain", object + 0x495, 1, 0);
	if (ret < 0)
		printk(KERN_INFO "[%s][%04d]%s: aw8693x_d2s_gain not found\n",
		       "haptic_hv", 0x6df, __func__);

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_duration_time", duration_time, 3, 0);
	if (ret >= 0) {
		memcpy(object + 0x464, duration_time, sizeof(duration_time));
	} else {
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_duration_time not found\n",
		       "haptic_hv", 0x6e4, __func__);
	}

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_trig_config", trig_config, 24, 0);
	if (ret >= 0) {
		memcpy(object + 0x4a5, trig_config, sizeof(trig_config));
	} else {
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_trig_config not found\n",
		       "haptic_hv", 0x6eb, __func__);
	}

	ret = of_property_read_variable_u8_array(
		np, "aw8693x_bst_vol_default", object + 0x463, 1, 0);
	if (ret < 0)
		printk(KERN_INFO
		       "[%s][%04d]%s: aw8693x_bst_vol_default not found\n",
		       "haptic_hv", 0x6f2, __func__);

	*(bool *)(object + 0x4c0) =
		of_find_property(np, "aw8693x_is_enabled_track_en", NULL) != NULL;
	printk(KERN_INFO "[%s][%04d]%s: track en = %d\n",
	       "haptic_hv", 0x6f6, __func__,
	       *(bool *)(object + 0x4c0));

	*(bool *)(object + 0x4bd) =
		of_find_property(np, "aw8693x_is_enabled_auto_bst", NULL) != NULL;
	printk(KERN_INFO "[%s][%04d]%s: auto bst = %d\n",
	       "haptic_hv", 0x6fa, __func__,
	       *(bool *)(object + 0x4bd));

	*(bool *)(object + 0x4bf) =
		of_find_property(np, "aw8693x_is_enabled_one_wire", NULL) != NULL;
	printk(KERN_INFO "[%s][%04d]%s: onewire = %d\n",
	       "haptic_hv", 0x6fe, __func__,
	       *(bool *)(object + 0x4bf));
}
