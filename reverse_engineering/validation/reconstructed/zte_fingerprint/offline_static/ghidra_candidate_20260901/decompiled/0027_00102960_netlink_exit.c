
void netlink_exit(void)

{
  if (nl_sk != 0) {
    netlink_kernel_release();
    nl_sk = 0;
  }
  _printk(&DAT_00102d12,"netlink_exit");
  return;
}

