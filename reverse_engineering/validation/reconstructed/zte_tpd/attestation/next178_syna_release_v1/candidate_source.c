int syna_release(struct inode *inode, struct file *filp)
{
  (void)inode;
  (void)filp;
  printk(KERN_INFO "[info ] %s: zte_evice close\n", "syna_release");
  return 0;
}
