int syna_open(struct inode *inode, struct file *filp)
{
  (void)inode;
  filp->private_data = (char *)filp->private_data - 0x4a0;
  printk(KERN_INFO "[info ] %s: zte_evice open\n", "syna_open");
  return 0;
}
