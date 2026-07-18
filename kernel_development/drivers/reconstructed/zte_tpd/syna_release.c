int syna_release(struct inode *inode, struct file *filp)
{
  (void)inode;
  (void)filp;
  printk(unk_3A388, "syna_release", 0LL);
  return 0;
}
