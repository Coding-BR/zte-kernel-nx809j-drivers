
undefined8 syna_pm_suspend(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x98);
  _printk(&DAT_00133951,"syna_pm_suspend");
  *(undefined1 *)(lVar1 + 0x578) = 1;
  *(undefined4 *)(lVar1 + 0x558) = 0;
  return 0;
}

