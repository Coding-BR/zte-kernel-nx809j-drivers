#include "defs.h"

void tpd_probe_kobject_put(struct kobject *kobj)
{
	struct kobject **slot;

	if (!kobj)
		return;

	if (tpd_cdev) {
		slot = (struct kobject **)(tpd_cdev + 0xc50);
		if (READ_ONCE(*slot) == kobj)
			WRITE_ONCE(*slot, NULL);
	}

	kobject_put(kobj);
}

void zte_touch_probe_failure_cleanup(void)
{
	char *cdev = (char *)(unsigned long)READ_ONCE(tpd_cdev);
	struct platform_device *parent;
	struct platform_device *child;
	struct kobject *fwupdate;

	if (!cdev)
		return;

	parent = *(struct platform_device **)(cdev + 0xdc8);
	child = *(struct platform_device **)(cdev + 0xdd0);
	fwupdate = *(struct kobject **)(cdev + 0xc50);

	ufp_mac_lifecycle_clear_device();
	if (tpd_proc_dir)
		tpd_proc_deinit();

	if (fwupdate) {
		sysfs_remove_bin_file(fwupdate, &fwimage_attr);
		*(struct kobject **)(cdev + 0xc50) = NULL;
		kobject_put(fwupdate);
	}

	*(void (**)(u8))(cdev + 0xea0) = NULL;
	if (child)
		zte_touch_pdev_unregister();

	if (parent)
		platform_set_drvdata(parent, NULL);
	WRITE_ONCE(tpd_cdev, 0);
}
