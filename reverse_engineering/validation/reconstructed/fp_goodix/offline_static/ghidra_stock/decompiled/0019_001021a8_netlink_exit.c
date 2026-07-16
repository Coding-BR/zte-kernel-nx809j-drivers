
void netlink_exit(void)

{
  if (nl_sk != 0) {
    netlink_kernel_release();
    nl_sk = 0;
  }
  _printk(&DAT_0010389b);
  return;
}

