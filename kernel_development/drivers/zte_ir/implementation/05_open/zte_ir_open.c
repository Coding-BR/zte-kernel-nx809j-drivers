static int zte_ir_open(struct inode *inode, struct file *file)
{
	struct zte_ir_runtime *runtime;
	int result = -ENXIO;

	if (!inode || !file)
		return -EINVAL;

	mutex_lock(&zte_ir_device_list_lock);
	list_for_each_entry(runtime, &zte_ir_device_list, stock.device_entry) {
		if (runtime->stock.devt != inode->i_rdev || runtime->removed)
			continue;
		if (runtime->users == UINT_MAX) {
			result = -EMFILE;
			break;
		}

		runtime->users++;
		file->private_data = runtime;
		result = nonseekable_open(inode, file);
		if (result) {
			file->private_data = NULL;
			runtime->users--;
		}
		break;
	}
	mutex_unlock(&zte_ir_device_list_lock);

	if (result == -ENXIO)
		pr_debug("zte_ir: minor %u not available\n", iminor(inode));
	return result;
}
