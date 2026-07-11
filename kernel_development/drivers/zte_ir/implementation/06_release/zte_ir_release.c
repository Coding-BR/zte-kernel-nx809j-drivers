static int zte_ir_release(struct inode *inode, struct file *file)
{
	struct zte_ir_runtime *runtime;
	bool free_runtime = false;
	int result = 0;

	(void)inode;
	if (!file)
		return -EINVAL;
	runtime = file->private_data;
	if (!runtime)
		return -ENODEV;

	mutex_lock(&zte_ir_device_list_lock);
	file->private_data = NULL;
	if (!runtime->users) {
		pr_debug("zte_ir: release user counter underflow\n");
		result = -EIO;
		goto out_unlock;
	}

	runtime->users--;
	if (runtime->removed && !runtime->users)
		free_runtime = true;

out_unlock:
	mutex_unlock(&zte_ir_device_list_lock);
	if (free_runtime) {
		pr_debug("zte_ir: releasing removed runtime\n");
		kfree(runtime);
	}
	return result;
}
