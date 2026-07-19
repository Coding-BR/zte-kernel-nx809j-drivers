void ufp_report_gesture_uevent(char *event)
{
	char *envp[] = { event, NULL };
	unsigned long delay;

	kobject_uevent_env(&ufp_tp_ops.pdev->dev.kobj, KOBJ_CHANGE, envp);
	pm_wakeup_ws_event(&tp_wakeup, 2000, false);

	if (!strcmp(event, "single_tap=true")) {
		ufp_tp_ops.single_tap_pending = 1;
		delay = 150;
	} else if (!strcmp(event, "double_tap=true")) {
		delay = 0;
	} else {
		goto report;
	}

	mod_delayed_work_on(32, ufp_tp_ops.single_tap_work.wq,
			    (struct delayed_work *)&ufp_tp_ops.single_tap_work,
			    delay);

report:
	printk(KERN_INFO "tpd_ufp_info: %s\n", event);
}
