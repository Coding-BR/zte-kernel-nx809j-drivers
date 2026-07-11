static int zte_ir_probe(struct spi_device *spi)
{
	struct zte_ir_runtime *runtime;
	struct device *device;
	int result;

	if (!spi)
		return -EINVAL;
	runtime = kzalloc(sizeof(*runtime), GFP_KERNEL);
	if (!runtime)
		return -ENOMEM;

	spin_lock_init(&runtime->stock.spi_lock);
	mutex_init(&runtime->stock.buf_lock);
	INIT_LIST_HEAD(&runtime->stock.device_entry);
	runtime->stock.pattern_high = 0x001f;
	runtime->stock.pattern_low = 0x0000;
	runtime->stock.speed_hz = ZTE_IR_DEFAULT_SPI_SPEED_HZ;
	runtime->stock.spi = spi;
	runtime->users = 0;
	runtime->removed = false;

	mutex_lock(&zte_ir_device_list_lock);
	if (test_bit(ZTE_IR_FIRST_MINOR, &zte_ir_minors)) {
		result = -ENODEV;
		goto out_unlock;
	}

	runtime->stock.devt = MKDEV(zte_ir_major, ZTE_IR_FIRST_MINOR);
	device = device_create(zte_ir_class, &spi->dev, runtime->stock.devt,
			       runtime, ZTE_IR_DRIVER_NAME);
	result = PTR_ERR_OR_ZERO(device);
	if (result)
		goto out_unlock;

	set_bit(ZTE_IR_FIRST_MINOR, &zte_ir_minors);
	list_add(&runtime->stock.device_entry, &zte_ir_device_list);
	mutex_unlock(&zte_ir_device_list_lock);

	spi_set_drvdata(spi, runtime);
	dev_dbg(&spi->dev, "zte_ir: probe speed=%u Hz\n",
		runtime->stock.speed_hz);
	return 0;

out_unlock:
	mutex_unlock(&zte_ir_device_list_lock);
	kfree(runtime);
	return result;
}
