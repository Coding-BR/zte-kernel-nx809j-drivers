/* SPDX-License-Identifier: GPL-2.0-only */

static u8 one_key_finger[10];
static bool one_key_down;

static const char *const one_key_finger_id[10] = {
	"finger_id=0", "finger_id=1", "finger_id=2", "finger_id=3",
	"finger_id=4", "finger_id=5", "finger_id=6", "finger_id=7",
	"finger_id=8", "finger_id=9",
};

static __always_inline bool tpd_point_inside_ufp(int x, int y)
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

void one_key_report(int active, int x, int y, int finger_id)
{
	char *envp[3];

	/* The stock image traps here; rejecting the index preserves kernel uptime. */
	if (finger_id < 0 || finger_id >= (int)ARRAY_SIZE(one_key_finger))
		return;

	if (active) {
		if (!tpd_point_inside_ufp(x, y))
			return;
		if (one_key_finger[finger_id] || one_key_down)
			return;
		one_key_finger[finger_id] = 1;
		one_key_down = true;
		envp[0] = "fp_gesture_down=true";
	} else {
		if (!one_key_finger[finger_id])
			return;
		one_key_finger[finger_id] = 0;
		one_key_down = false;
		envp[0] = "fp_gesture_up=true";
	}

	if (!ufp_tp_ops.pdev) {
		pr_err("zte_tpd: UFP platform device is unavailable\n");
		return;
	}
	envp[1] = (char *)one_key_finger_id[finger_id];
	envp[2] = NULL;
	kobject_uevent_env(&ufp_tp_ops.pdev->dev.kobj, KOBJ_CHANGE, envp);
	pr_debug("zte_tpd: %s\n", envp[0]);
}
