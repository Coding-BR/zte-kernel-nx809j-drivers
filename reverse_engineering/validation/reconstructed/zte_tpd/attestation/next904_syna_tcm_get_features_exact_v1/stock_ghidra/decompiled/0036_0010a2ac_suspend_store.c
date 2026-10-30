
undefined8 suspend_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00133167,"suspend_store");
    mutex_lock(lVar2 + 0xc60);
    if (local_2c == *(byte *)(lVar2 + 0x16)) {
      _printk(&DAT_0013d8c7,"suspend_store");
    }
    else {
      pcVar4 = *(code **)(lVar2 + 0xe60);
      *(bool *)(lVar2 + 0x16) = local_2c != 0;
      if (pcVar4 != (code *)0x0) {
        if (*(int *)(pcVar4 + -4) != 0x38d5b490) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10a394);
          (*pcVar4)();
        }
        (*pcVar4)(lVar2,0);
      }
    }
    mutex_unlock(lVar2 + 0xc60);
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

