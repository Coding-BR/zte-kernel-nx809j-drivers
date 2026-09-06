int syna_spi_get_gpio(unsigned int gpio, int output, unsigned int state,
		      char *label)
{
#ifdef __aarch64__
	register const char *message __asm__("x8");
#else
	const char *message;
#endif
	__int64 descriptor;
	int result;

	result = scnprintf(label, 16, "tcm_gpio_%d\n", gpio);
	if (result < 0) {
		printk("\0013[error] %s: Fail to set GPIO label\n",
		       "syna_spi_get_gpio");
		return result;
	}

	result = gpio_request(gpio, label);
	if (result < 0) {
		message = "\0013[error] %s: Fail to request GPIO %d\n";
		goto log_gpio_error;
	}

	descriptor = gpio_to_desc(gpio);
	if (output)
		result = gpiod_direction_output_raw(descriptor, state);
	else
		result = gpiod_direction_input(descriptor);
	if (result >= 0)
		return 0;
	message = "\0013[error] %s: Fail to set GPIO %d direction\n";

log_gpio_error:
	/* Preserve the stock tail-merged error block without emitting code. */
	__asm__("" : "+r"(message), "+r"(result));
	printk(message, "syna_spi_get_gpio", gpio);
	return result;
}
