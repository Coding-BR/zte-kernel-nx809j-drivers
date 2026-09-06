
void syna_tcm_send_command
               (long param_1,uint param_2,undefined8 param_3,undefined4 param_4,byte *param_5,
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168a84,"syna_tcm_send_command");
  }
  if (param_7 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171524,"syna_tcm_send_command");
    }
    param_7 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x149ef4);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x398))(param_1,param_2,param_3,param_4,local_5c,param_7);
  if ((int)uVar4 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016c386,"syna_tcm_send_command",param_2 & 0xff);
  }
  if (param_5 != (byte *)0x0) {
    *param_5 = local_5c[0];
  }
  if (param_6 != 0) {
    if (local_5c[0] - 0x10 < 0xef) {
      if (*(int *)(param_1 + 0x10c) != 0) {
        uVar4 = uVar4 & 0xffffffff;
        iVar3 = syna_tcm_buf_copy(param_6,param_1 + 0x100);
        if (iVar3 < 0) {
          puVar5 = &DAT_001714f2;
LAB_00149f8c:
                    /* WARNING: Subroutine does not return */
          _printk(puVar5,"syna_tcm_send_command",local_5c[0]);
        }
      }
    }
    else if ((local_5c[0] - 1 < 0xf) && (*(int *)(param_1 + 0x154) != 0)) {
      uVar4 = uVar4 & 0xffffffff;
      iVar3 = syna_tcm_buf_copy(param_6,param_1 + 0x148);
      if (iVar3 < 0) {
        puVar5 = &DAT_00172280;
        goto LAB_00149f8c;
      }
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

