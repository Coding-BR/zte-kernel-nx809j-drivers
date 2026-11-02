
void syna_dev_process_touch_report(char param_1,void *param_2,ulong param_3,undefined8 *param_4)

{
  long lVar1;
  int iVar2;
  uint uVar3;
  long lVar4;
  
  lVar4 = sp_el0;
  lVar4 = *(long *)(lVar4 + 0x710);
  if (param_4 == (undefined8 *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f0d8,"syna_dev_process_touch_report");
  }
  if (param_1 == '\x11') {
    if ((*(int *)((long)param_4 + 900) < 1) || (*(char *)((long)param_4 + 0x584) == '\x01')) {
      if (*(int *)(param_4 + 0xbc) != 0) {
        uVar3 = (uint)param_3;
        param_3 = param_3 & 0xffffffff;
        if (0x31fff < uVar3) {
          uVar3 = 0x32000;
        }
        memcpy((void *)param_4[0x8c],param_2,(ulong)uVar3);
        *(uint *)(param_4 + 0x87) = uVar3;
        *(undefined4 *)(param_4 + 0x8d) = 1;
        __wake_up(param_4 + 0x89,1,1,0);
      }
      iVar2 = syna_tcm_parse_touch_report(*param_4,param_2,param_3,param_4 + 2);
      if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00182107,"syna_dev_process_touch_report");
      }
      if (param_4[0x76] != 0) {
                    /* WARNING: Subroutine does not return */
        mutex_lock(param_4 + 0x4f);
      }
    }
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == lVar4) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180207,"syna_dev_process_touch_report",param_1);
}

