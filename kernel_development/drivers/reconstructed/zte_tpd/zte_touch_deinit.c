void zte_touch_deinit(void)
{
	/* The stock body drains report work and removes its interfaces. */
	zte_touch_deinit_stock_exact();
	ufp_mac_lifecycle_clear_device();
}
