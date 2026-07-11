static void zte_ir_remove(struct spi_device *spi)
{
	struct zte_ir_runtime *runtime;
	unsigned long flags;
	bool free_runtime;

	if (!spi)
		return;
	runtime = spi_get_drvdata(spi);
	if (!runtime)
		return;

	mutex_lock(&zte_ir_device_list_lock);
	mutex_lock(&runtime->stock.buf_lock);
	runtime->removed = true;

	spin_lock_irqsave(&runtime->stock.spi_lock, flags);
	runtime->stock.spi = NULL;
	spin_unlock_irqrestore(&runtime->stock.spi_lock, flags);
	spi_set_drvdata(spi, NULL);

	list_del_init(&runtime->stock.device_entry);
	device_destroy(zte_ir_class, runtime->stock.devt);
	clear_bit(ZTE_IR_FIRST_MINOR, &zte_ir_minors);
	free_runtime = !runtime->users;

	mutex_unlock(&runtime->stock.buf_lock);
	mutex_unlock(&zte_ir_device_list_lock);

	if (free_runtime) {
		dev_dbg(&spi->dev, "zte_ir: remove freed runtime\n");
		kfree(runtime);
	} else {
		dev_dbg(&spi->dev, "zte_ir: remove deferred runtime free\n");
	}
}
