
void syna_tcm_wait_for_report(long param_1,char param_2,long param_3,uint param_4,uint param_5)

{
  uint uVar1;
  undefined1 *puVar2;
  undefined8 uVar3;
  long lVar4;
  char local_5c [4];
  long local_58;
  
  lVar4 = sp_el0;
  local_58 = *(long *)(lVar4 + 0x710);
  local_5c[0] = '\0';
  if (param_1 == 0) {
    puVar2 = &DAT_00168ac4;
  }
  else {
    if (param_3 != 0) {
      if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001692c2,"syna_tcm_wait_for_report");
      }
      lVar4 = *(long *)(param_1 + 0x48);
      uVar1 = param_4;
      if (*(char *)(lVar4 + 0x14) == '\x01') {
        if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016d602,"syna_tcm_enable_irq");
        }
        if (*(long *)(lVar4 + 0x38) != 0) {
                    /* WARNING: Subroutine does not return */
          mutex_lock(param_1 + 0x50);
        }
      }
      while( true ) {
        if (0 < (int)param_4) {
          msleep(param_4);
        }
        uVar3 = syna_tcm_get_event_data(param_1,local_5c,param_3);
        if ((((-1 < (int)uVar3) && (local_5c[0] == param_2)) && (*(int *)(param_3 + 0xc) != 0)) ||
           (param_5 <= uVar1)) break;
        uVar1 = uVar1 + param_4;
      }
      if (false) {
        if (*(long *)(param_1 + 0x48) == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016d602,"syna_tcm_enable_irq");
        }
        if (*(long *)(*(long *)(param_1 + 0x48) + 0x38) != 0) {
                    /* WARNING: Subroutine does not return */
          mutex_lock(param_1 + 0x50);
        }
      }
      if ((param_5 <= uVar1) && ((local_5c[0] != param_2 || (*(int *)(param_3 + 0xc) == 0)))) {
        uVar3 = 0xffffff0c;
      }
      lVar4 = sp_el0;
      if (*(long *)(lVar4 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(uVar3);
      }
      return;
    }
    puVar2 = &DAT_0016feea;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_tcm_wait_for_report");
}

