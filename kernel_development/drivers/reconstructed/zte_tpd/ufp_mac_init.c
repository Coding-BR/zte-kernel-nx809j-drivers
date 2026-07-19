int ufp_mac_init(void)
{
	u8 *ops_base = (u8 *)&ufp_tp_ops.single_tap_pending;
	struct syna_delayed_work_layout *layout =
		(struct syna_delayed_work_layout *)(ops_base + 0x08);
	struct list_head *work_entry = &layout->work_entry;
	struct timer_list *timer = (struct timer_list *)layout->timer;
	void (*timer_fn)(struct timer_list *) = delayed_work_timer_fn;
	work_func_t work_fn = ufp_single_tap_work;
#ifdef __aarch64__
	register unsigned int timer_flags __asm__("x2");
	register struct lock_class_key *lock_key __asm__("x3");
	register const char *lock_name __asm__("x4");
#else
	unsigned int timer_flags;
	struct lock_class_key *lock_key;
	const char *lock_name;
#endif
	struct platform_device *pdev;
	struct workqueue_struct *wq;

	wq = alloc_workqueue("%s", 0x6000a, 1, "single_tap_cancel");
	barrier_data(ops_base);
	WRITE_ONCE(layout->work_data, 0xfffffffe00000UL);
	barrier_data(work_entry);
	barrier_data(timer_fn);
	layout->wq = wq;
	barrier_data(timer);
	WRITE_ONCE(layout->work_entry.next, work_entry);
	/* Keep the timer arguments live in the stock AArch64 instruction order. */
#ifdef __aarch64__
	asm volatile("mov %w0, #0x200000\n\t"
		     "mov %1, xzr"
		     : "=r"(timer_flags), "=r"(lock_key)
		     :
		     : "memory");
#else
	timer_flags = 0x200000;
	lock_key = NULL;
#endif
	WRITE_ONCE(layout->work_entry.prev, work_entry);
	barrier_data(work_fn);
#ifdef __aarch64__
	asm volatile("mov %0, xzr"
		     : "=r"(lock_name)
		     :
		     : "memory");
#else
	lock_name = NULL;
#endif
	WRITE_ONCE(layout->work_func, work_fn);
	init_timer_key(timer, timer_fn, timer_flags, lock_key, lock_name);
	*(int *)ops_base = 0;
	wakeup_source_add(&tp_wakeup);
	init_completion(&ufp_tp_ops.gesture_complete);
	ufp_tp_ops.field_a0 = 0;
	ufp_tp_ops.field_a1 = 0;
	ufp_tp_ops.field_a2 = 0;

	pdev = *(struct platform_device **)(tpd_cdev + 0xdd0);
	if (pdev)
		ufp_tp_ops.pdev = pdev;

	return 0;
}
