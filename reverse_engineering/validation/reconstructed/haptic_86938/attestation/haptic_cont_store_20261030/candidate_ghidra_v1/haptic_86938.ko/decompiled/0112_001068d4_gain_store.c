
long gain_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined4 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_001089f0,"haptic_hv",0x9b0,"gain_store",local_3c);
    mutex_lock(lVar3 + 0x248);
    *(undefined4 *)(lVar3 + -0x74) = local_3c;
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x88);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1069ac);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

