void syna_dev_free_input_events(struct syna_tcm *tcm)
{
	struct input_dev *input;
	struct mutex *report_lock;
	u8 *ufp_state;
	unsigned int slot;

	input = *(struct input_dev **)((u8 *)tcm + 0x3b0);
	if (!input)
		return;

	report_lock = (struct mutex *)((u8 *)tcm + 0x278);
	mutex_lock(report_lock);
	for (slot = 0; slot != 10; slot++) {
#ifdef __aarch64__
		register int release_state __asm__("w2");

		input_event(input, EV_ABS, ABS_MT_SLOT, slot);
		input_mt_report_slot_state(input, 0, false);
		asm volatile("" : "=r"(release_state));
#else
		int release_state = 0;

		input_event(input, EV_ABS, ABS_MT_SLOT, slot);
		input_mt_report_slot_state(input, 0, false);
#endif
		tpd_touch_release((__int64)input, slot, release_state);
		one_key_report(0, -1, -1, slot);
	}
	input_event(input, EV_KEY, BTN_TOUCH, 0);
	input_event(input, EV_KEY, BTN_TOOL_FINGER, 0);
	ufp_state = &ufp_tp_ops.field_a0;
	if (ufp_state[0] | ufp_state[1]) {
		ufp_state[2] = 1;
		printk("\0016[info ] %s: areameet down,free point flag need true",
		       "syna_dev_free_input_events");
	}
	report_ufp_uevent(0);
	input_event(input, EV_SYN, SYN_REPORT, 0);
	mutex_unlock(report_lock);
}
