
void syna_work_charger_detect_work(long param_1)

{
  long lVar1;
  long lVar2;
  
  lVar1 = sp_el0;
  if (param_1 != 0x620) {
    _printk(&DAT_0016a7c8,"syna_work_charger_detect_work");
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != *(long *)(lVar1 + 0x710)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

