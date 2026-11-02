
undefined8 syna_dev_suspend(long param_1)

{
  if (*(int *)(*(long *)(param_1 + 0x98) + 0x57c) != 1) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171a94,"syna_dev_suspend");
}

