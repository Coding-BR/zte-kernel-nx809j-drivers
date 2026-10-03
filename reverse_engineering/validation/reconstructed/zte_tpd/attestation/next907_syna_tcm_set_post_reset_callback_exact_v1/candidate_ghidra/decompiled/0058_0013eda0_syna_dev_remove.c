
void syna_dev_remove(long param_1)

{
  if (*(long *)(param_1 + 0xa8) == 0) {
    _printk(&DAT_00181325,"syna_dev_remove");
    return;
  }
  _printk(&DAT_0017f318,"syna_dev_remove");
  return;
}

