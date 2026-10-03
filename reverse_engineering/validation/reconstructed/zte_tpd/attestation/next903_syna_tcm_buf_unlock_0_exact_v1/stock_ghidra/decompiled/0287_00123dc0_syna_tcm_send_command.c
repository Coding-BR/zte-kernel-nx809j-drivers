
void syna_tcm_send_command
               (long param_1,uint param_2,undefined8 param_3,ulong param_4,byte *param_5,
               long param_6,int param_7)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  ulong uVar4;
  undefined *puVar5;
  byte local_5c [4];
  long local_58;
  
  lVar1 = sp_el0;
  local_58 = *(long *)(lVar1 + 0x710);
  local_5c[0] = 0;
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_send_command");
    uVar4 = 0xffffff0f;
  }
  else {
    if (param_7 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_7 = *(int *)(param_1 + 0x20c);
        param_4 = param_4 & 0xffffffff;
        _printk(&DAT_0013c851,"syna_tcm_send_command");
      }
      else {
        param_7 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x123e44);
      (*pcVar2)();
    }
    uVar4 = (**(code **)(param_1 + 0x398))(param_1,param_2,param_3,param_4,local_5c,param_7);
    if ((int)uVar4 < 0) {
      uVar4 = uVar4 & 0xffffffff;
      _printk(&DAT_0013780d,"syna_tcm_send_command",param_2 & 0xff);
    }
    if (param_5 != (byte *)0x0) {
      *param_5 = local_5c[0];
    }
    if (param_6 != 0) {
      if (local_5c[0] - 0x10 < 0xef) {
        if (*(int *)(param_1 + 0x10c) == 0) goto LAB_00123f08;
        uVar4 = uVar4 & 0xffffffff;
        iVar3 = syna_tcm_buf_copy(param_6,param_1 + 0x100);
        if (-1 < iVar3) goto LAB_00123f08;
        puVar5 = &DAT_0013c81f;
      }
      else {
        if ((0xe < local_5c[0] - 1) || (*(int *)(param_1 + 0x154) == 0)) goto LAB_00123f08;
        uVar4 = uVar4 & 0xffffffff;
        iVar3 = syna_tcm_buf_copy(param_6,param_1 + 0x148);
        if (-1 < iVar3) goto LAB_00123f08;
        puVar5 = &DAT_0013d583;
      }
      _printk(puVar5,"syna_tcm_send_command",local_5c[0]);
      uVar4 = 0xffffff0d;
    }
  }
LAB_00123f08:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}

