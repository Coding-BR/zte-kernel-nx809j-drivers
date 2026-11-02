void zte_touch_deinit(void)
{
	/* The stock body drains report work and removes its interfaces. */
	tpd_workqueue_lifecycle_close();
	zte_touch_deinit_stock_exact();
	tpd_workqueue_lifecycle_deinit();
	ufp_mac_lifecycle_clear_device();
}
