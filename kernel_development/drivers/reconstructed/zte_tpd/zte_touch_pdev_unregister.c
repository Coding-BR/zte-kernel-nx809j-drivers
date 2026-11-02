void zte_touch_pdev_unregister(void)
{
	char *cdev = (char *)(unsigned long)READ_ONCE(tpd_cdev);
	struct platform_device **slot;
	struct platform_device *pdev;

	if (!cdev)
		return;

	slot = (struct platform_device **)(cdev + 0xdd0);
	pdev = READ_ONCE(*slot);
	if (!pdev)
		return;

	WRITE_ONCE(*slot, NULL);
	WRITE_ONCE(*(void (**)(u8))(cdev + 0xea0), NULL);
	platform_device_unregister(pdev);
}
