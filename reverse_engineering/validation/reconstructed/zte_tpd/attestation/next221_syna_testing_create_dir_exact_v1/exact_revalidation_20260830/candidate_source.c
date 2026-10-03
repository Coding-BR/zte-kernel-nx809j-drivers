int syna_testing_create_dir(struct syna_tcm *tcm)
{
	int result;

	tcm->testing_dir = kobject_create_and_add("testing", tcm->sysfs_dir);
	if (!tcm->testing_dir) {
		printk("\0013[error] %s: Fail to create testing directory\n",
		       "syna_testing_create_dir");
		return -EINVAL;
	}

	result = sysfs_create_group(tcm->testing_dir, &attr_testing_group);
	if (result < 0) {
		printk("\0013[error] %s: Fail to create sysfs group\n",
		       "syna_testing_create_dir");
		kobject_put(tcm->testing_dir);
		return result;
	}

	return 0;
}
