static struct spi_device *zte_ir_spi_get(struct zte_ir_runtime *runtime)
{
	struct spi_device *spi;
	unsigned long flags;

	if (!runtime)
		return NULL;

	spin_lock_irqsave(&runtime->stock.spi_lock, flags);
	spi = spi_dev_get(runtime->stock.spi);
	spin_unlock_irqrestore(&runtime->stock.spi_lock, flags);

	if (!spi)
		pr_debug("zte_ir: SPI device unavailable\n");

	return spi;
}
