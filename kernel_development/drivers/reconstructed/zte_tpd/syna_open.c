int syna_open(struct inode *inode, struct file *filp)
{
  __int64 a2 = (__int64)filp;

  (void)inode;
  *(_QWORD *)(a2 + 32) -= 1184LL;
  printk(unk_3BF68, "syna_open", 0LL);
  return 0;
}
