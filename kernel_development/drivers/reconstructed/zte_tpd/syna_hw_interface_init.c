int syna_hw_interface_init(void)
{
	const char *message;
	int result;

	printk("\0016[info ] %s: hw interface in", "syna_hw_interface_init");
	result = platform_device_register(&syna_spi_device);
	if (result < 0) {
		message = "\0013[error] %s: Fail to register platform device\n";
	} else {
		p_device = (__int64)&syna_spi_device;
		result = _spi_register_driver(THIS_MODULE, &syna_spi_driver);
		if (__builtin_expect_with_probability(result < 0, 1, 0.55)) {
			message = "\0013[error] %s: Fail to add spi driver\n";
		} else {
			printk("\0016[info ] %s: hw interface end",
			       "syna_hw_interface_init");
			buf_size = 0;
			rx_buf = 0;
			tx_buf = 0;
			return result;
		}
	}

	printk(message, "syna_hw_interface_init");
	return result;
}
