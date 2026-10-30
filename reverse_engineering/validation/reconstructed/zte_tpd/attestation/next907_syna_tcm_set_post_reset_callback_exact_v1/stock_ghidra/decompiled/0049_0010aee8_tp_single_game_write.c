
undefined8 tp_single_game_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
  code *pcVar5;
  int local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar4 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar4 == 0) {
    bVar3 = local_2c != 0;
    local_2c = 0;
    if (bVar3) {
      local_2c = 5;
    }
    _printk(&DAT_00138090,"tp_single_game_write");
    pcVar5 = *(code **)(lVar2 + 0xee0);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10afb0);
        (*pcVar5)();
      }
      (*pcVar5)(lVar2,local_2c);
    }
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

