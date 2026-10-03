loff_t syna_cdev_llseek(struct file *file, loff_t offset, int whence)
{
  (void)file;
  (void)offset;
  (void)whence;
  return -22;
}
