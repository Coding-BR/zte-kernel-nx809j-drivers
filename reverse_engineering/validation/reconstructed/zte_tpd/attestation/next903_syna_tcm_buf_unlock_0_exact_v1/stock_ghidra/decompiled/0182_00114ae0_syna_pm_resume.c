
undefined8 syna_pm_resume(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x98);
  _printk(&DAT_00137619,"syna_pm_resume");
  *(undefined1 *)(lVar1 + 0x578) = 0;
  complete(lVar1 + 0x558);
  return 0;
}

