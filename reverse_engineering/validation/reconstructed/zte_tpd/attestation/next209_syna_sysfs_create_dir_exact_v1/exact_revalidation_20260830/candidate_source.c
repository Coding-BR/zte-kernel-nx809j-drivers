int syna_sysfs_create_dir(struct syna_tcm *tcm, struct platform_device *parent)
{
#ifdef __aarch64__
	register const char *message __asm__("x8");
#else
	const char *message;
#endif
	int result;

	tcm->sysfs_dir = kobject_create_and_add("sysfs", &parent->dev.kobj);
	if (!tcm->sysfs_dir) {
		printk("\0013[error] %s: Fail to create sysfs directory\n",
		       "syna_sysfs_create_dir");
		return -20;
	}

	result = sysfs_create_group(tcm->sysfs_dir, &attr_group);
	if (result < 0) {
		message = "\0013[error] %s: Fail to create sysfs group\n";
		__asm__("" : "+r"(message), "+r"(result));
		printk(message, "syna_sysfs_create_dir");
		goto put_sysfs_dir;
	}

	result = syna_testing_create_dir(tcm);
	if (result < 0) {
		message = "\0013[error] %s: Fail to create testing sysfs\n";
		__asm__("" : "+r"(message), "+r"(result));
		printk(message, "syna_sysfs_create_dir");
		sysfs_remove_group(tcm->sysfs_dir, &attr_group);
		goto put_sysfs_dir;
	}

	return 0;

put_sysfs_dir:
	kobject_put(tcm->sysfs_dir);
	return result;
}
