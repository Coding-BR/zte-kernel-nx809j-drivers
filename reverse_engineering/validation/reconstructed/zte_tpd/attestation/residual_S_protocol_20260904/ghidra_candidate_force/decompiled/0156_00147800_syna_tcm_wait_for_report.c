
void syna_tcm_wait_for_report(long param_1,char param_2,long param_3,uint param_4,uint param_5)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *puVar4;
  ulong uVar5;
  long lVar6;
  bool bVar7;
  char local_5c [4];
  long local_58;
  
  lVar6 = sp_el0;
  local_58 = *(long *)(lVar6 + 0x710);
  local_5c[0] = '\0';
  if (param_1 == 0) {
    puVar4 = &DAT_00168a84;
LAB_001478d4:
                    /* WARNING: Subroutine does not return */
    _printk(puVar4,"syna_tcm_wait_for_report");
  }
  if (param_3 == 0) {
    puVar4 = &DAT_0016feaa;
    goto LAB_001478d4;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00169282,"syna_tcm_wait_for_report");
  }
  lVar6 = *(long *)(param_1 + 0x48);
  uVar1 = param_4;
  if (*(char *)(lVar6 + 0x14) == '\x01') {
    if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
    }
    if (*(long *)(lVar6 + 0x38) != 0) {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar6 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1478a0);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(lVar6 + 0x38))(lVar6,0);
      mutex_unlock(param_1 + 0x50);
      bVar7 = iVar3 < 1;
      goto joined_r0x00147930;
    }
  }
  bVar7 = true;
joined_r0x00147930:
  while( true ) {
    if (0 < (int)param_4) {
      msleep(param_4);
    }
    uVar5 = syna_tcm_get_event_data(param_1,local_5c,param_3);
    if ((((-1 < (int)uVar5) && (local_5c[0] == param_2)) && (*(int *)(param_3 + 0xc) != 0)) ||
       (param_5 <= uVar1)) break;
    uVar1 = uVar1 + param_4;
  }
  lVar6 = *(long *)(param_1 + 0x48);
  if (!bVar7 && ((*(byte *)(lVar6 + 0x14) ^ 0xff) & 1) == 0) {
    if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
    }
    if (*(long *)(lVar6 + 0x38) != 0) {
      uVar5 = uVar5 & 0xffffffff;
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar6 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1479c8);
        (*pcVar2)();
      }
      (**(code **)(lVar6 + 0x38))(lVar6,1);
      mutex_unlock(param_1 + 0x50);
    }
  }
  if ((param_5 <= uVar1) && ((local_5c[0] != param_2 || (*(int *)(param_3 + 0xc) == 0)))) {
    uVar5 = 0xffffff0c;
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  return;
}

