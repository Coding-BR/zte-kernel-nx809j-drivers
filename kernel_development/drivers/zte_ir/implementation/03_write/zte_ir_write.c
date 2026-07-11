static ssize_t zte_ir_write(struct file *file,
			    const char __user *buffer,
			    size_t count,
			    loff_t *position)
{
	struct zte_ir_runtime *runtime;
	struct spi_device *spi = NULL;
	struct spi_transfer transfer = { 0 };
	struct spi_message message;
	u32 *pulses = NULL;
	size_t word_count = 0;
	ssize_t result;

	(void)position;
	if (!file || !buffer)
		return -EINVAL;

	runtime = file->private_data;
	if (!runtime)
		return -ENODEV;
	if (!count || count % sizeof(*pulses))
		return -EINVAL;
	if (count > ZTE_IR_TX_WORD_CAPACITY * sizeof(*pulses))
		return -E2BIG;

	mutex_lock(&runtime->stock.buf_lock);
	if (READ_ONCE(runtime->removed)) {
		result = -ESHUTDOWN;
		goto out_unlock;
	}

	pulses = memdup_user(buffer, count);
	if (IS_ERR(pulses)) {
		result = PTR_ERR(pulses);
		pulses = NULL;
		goto out_unlock;
	}

	spi = zte_ir_spi_get(runtime);
	if (!spi) {
		result = -ESHUTDOWN;
		goto out_free_pulses;
	}

	result = zte_ir_encode_pulses(runtime, pulses,
				      count / sizeof(*pulses),
				      runtime->stock.speed_hz,
				      &word_count);
	if (result)
		goto out_put_spi;

	spi_message_init(&message);
	transfer.tx_buf = runtime->stock.tx_buf;
	transfer.len = word_count * sizeof(runtime->stock.tx_buf[0]);
	transfer.speed_hz = runtime->stock.speed_hz;
	spi_message_add_tail(&transfer, &message);

	dev_dbg(&spi->dev, "transmitting %zu IR words\n", word_count);
	result = spi_sync(spi, &message);
	if (result) {
		dev_dbg(&spi->dev, "IR transfer failed: %zd\n", result);
		goto out_put_spi;
	}

	result = count;

out_put_spi:
	spi_dev_put(spi);
out_free_pulses:
	kfree(pulses);
out_unlock:
	mutex_unlock(&runtime->stock.buf_lock);
	return result;
}
