void syna_sysfs_remove_dir(struct syna_tcm *tcm)
{
	if (!tcm) {
		printk("\0013[error] %s: Invalid tcm device handle\n",
		       "syna_sysfs_remove_dir");
		return;
	}

	if (!tcm->sysfs_dir)
		return;

	syna_testing_remove_dir(tcm);

	if (tcm->utility_dir) {
		sysfs_remove_group(tcm->utility_dir, &attr_debug_group);
		kobject_put(tcm->utility_dir);
	}

	sysfs_remove_group(tcm->sysfs_dir, &attr_group);
	kobject_put(tcm->sysfs_dir);
}
