int zte_touch_pdev_register(void)
{
	char *cdev = (char *)(unsigned long)tpd_cdev;
	struct platform_device *pdev;
	int ret;

	printk("\0015tpd: %s", "zte_touch_pdev_register");
	pdev = platform_device_alloc("zte_touch", PLATFORM_DEVID_NONE);
	*(struct platform_device **)(cdev + 0xdd0) = pdev;
	if (!pdev) {
		printk("\0015tpd: %s failed to allocate platform device",
		       "zte_touch_pdev_register");
		*(void (**)(u8))(cdev + 0xea0) = NULL;
		return -ENOMEM;
	}

	ret = platform_device_add(pdev);
	if (ret < 0) {
		printk("\0015tpd: %s failed to add platform device ret=%d",
		       "zte_touch_pdev_register", ret);
		*(struct platform_device **)(cdev + 0xdd0) = NULL;
		*(void (**)(u8))(cdev + 0xea0) = NULL;
		platform_device_put(pdev);
		return ret;
	}

	*(void (**)(u8))(cdev + 0xea0) = tpd_report_uevent;
	return 0;
}
