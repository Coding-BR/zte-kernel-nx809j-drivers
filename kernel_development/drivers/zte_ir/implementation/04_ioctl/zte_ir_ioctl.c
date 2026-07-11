static long zte_ir_ioctl(struct file *file,
			 unsigned int command,
			 unsigned long argument)
{
	struct zte_ir_runtime *runtime;
	u64 speed_hz;
	int carrier_hz;
	long result = 0;

	if (!file || !file->private_data)
		return -ENODEV;
	if (command != ZTE_IR_IOC_SET_CARRIER) {
		pr_debug("zte_ir: unsupported ioctl command 0x%x\n", command);
		return -ENOTTY;
	}
	if (get_user(carrier_hz, (int __user *)argument))
		return -EFAULT;
	if (carrier_hz <= 0)
		return -EINVAL;

	speed_hz = (u64)carrier_hz * ZTE_IR_SPI_WORDS_PER_CARRIER;
	if (speed_hz > ZTE_IR_DT_MAX_SPI_HZ)
		return -EINVAL;

	runtime = file->private_data;
	mutex_lock(&runtime->stock.buf_lock);
	if (runtime->removed) {
		result = -ESHUTDOWN;
		goto out_unlock;
	}

	runtime->stock.speed_hz = (u32)speed_hz;
	pr_debug("zte_ir: carrier=%d Hz spi=%u Hz\n",
		 carrier_hz, runtime->stock.speed_hz);

out_unlock:
	mutex_unlock(&runtime->stock.buf_lock);
	return result;
}
