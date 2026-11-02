
void syna_dev_reflash_startup_work(long param_1)

{
  int iVar1;
  
  wait_for_completion_timeout(param_1 + 0x1c0,0xfa);
  if ((*(byte *)(param_1 + 0x1bb) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180215,"syna_dev_reflash_startup_work");
  }
  pm_stay_awake(*(long *)(param_1 + -0x3c0) + 0x10);
  iVar1 = syna_dev_do_reflash(param_1 + -0x3c8,0);
  if (iVar1 < 0) {
    pm_relax(*(long *)(param_1 + -0x3c0) + 0x10);
    return;
  }
  func_0x00153278(param_1 + -0x3c8);
  return;
}

