/* SPDX-License-Identifier: GPL-2.0-only */

static int fp_finger[10];
static bool area_meet_down;

static const char *const tppower_to_str[3] = {
	"TP_POWER_STATUS=2",
	"TP_POWER_STATUS=1",
	"TP_POWER_STATUS=3",
};

static __always_inline bool uf_touch_point_inside(int x, int y)
{
	u8 *cdev = (u8 *)(unsigned long)tpd_cdev;
	u16 center_x;
	u16 center_y;
	u16 radius;

	if (!cdev)
		return false;
	center_x = *(u16 *)(cdev + 0x1e);
	center_y = *(u16 *)(cdev + 0x20);
	radius = *(u16 *)(cdev + 0x22);

	return x > (int)((u32)center_x - radius) &&
	       x < (int)((u32)center_x + radius) &&
	       y > (int)((u32)center_y - radius) &&
	       y < (int)((u32)center_y + radius);
}

void uf_touch_report(int active, int x, int y, int finger_id)
{
	char *envp[3];

	/* The stock image traps here; rejecting the index preserves kernel uptime. */
	if (finger_id < 0 || finger_id >= (int)ARRAY_SIZE(fp_finger))
		return;

	if (active) {
		if (!uf_touch_point_inside(x, y))
			return;
		if (fp_finger[finger_id] || area_meet_down)
			return;
		fp_finger[finger_id] = 1;
		area_meet_down = true;
		envp[0] = "areameet_down=true";
	} else {
		if (!fp_finger[finger_id])
			return;
		fp_finger[finger_id] = 0;
		area_meet_down = false;
		envp[0] = "areameet_up=true";
	}

	if (!ufp_tp_ops.pdev) {
		pr_err("zte_tpd: UFP platform device is unavailable\n");
		return;
	}
	if (current_lcd_state < 0 ||
	    current_lcd_state >= (int)ARRAY_SIZE(tppower_to_str)) {
		pr_err("zte_tpd: invalid LCD power state %d\n", current_lcd_state);
		return;
	}

	envp[1] = (char *)tppower_to_str[current_lcd_state];
	envp[2] = NULL;
	kobject_uevent_env(&ufp_tp_ops.pdev->dev.kobj, KOBJ_CHANGE, envp);
	pr_debug("zte_tpd: %s, lcd state=%s\n", envp[0], envp[1]);
}
