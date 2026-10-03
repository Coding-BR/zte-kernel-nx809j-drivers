void syna_spi_hw_reset(struct syna_hw_interface *hw_if)
{
	int reset_gpio;
	int reset_off_state;
	int reset_on_state;

	if (!hw_if->reset_gpio)
		return;

	reset_on_state = hw_if->reset_on_state;
	gpiod_set_raw_value(gpio_to_desc(hw_if->reset_gpio),
			    reset_on_state & 1);

	if ((int)hw_if->reset_active_ms > 0)
		msleep(hw_if->reset_active_ms);

	reset_gpio = hw_if->reset_gpio;
	reset_off_state = hw_if->reset_on_state == 0;
	gpiod_set_raw_value(gpio_to_desc(reset_gpio), reset_off_state);
	msleep(80);
	printk("\0016[info ] %s: Reset done\n", __func__);
}
