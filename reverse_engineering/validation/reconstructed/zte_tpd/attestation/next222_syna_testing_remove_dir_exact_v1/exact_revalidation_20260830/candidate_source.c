void syna_testing_remove_dir(struct syna_tcm *tcm)
{
	if (!tcm->testing_dir)
		return;

	sysfs_remove_group(tcm->testing_dir, &attr_testing_group);
	kobject_put(tcm->testing_dir);
}
