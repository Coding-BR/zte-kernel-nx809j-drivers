extern void zte_touch_deinit(void);

void zte_touch_remove(struct platform_device *pdev)
{
	(void)pdev;
	printk("\0015tpd: end %s, %d\n", "zte_touch_remove", 2903);
	zte_touch_deinit();
}
