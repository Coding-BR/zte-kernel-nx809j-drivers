
void syna_tcm_erase_mtp_data(long param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  long lVar4;
  code *pcVar5;
  int iVar6;
  int iVar7;
  long lVar8;
  undefined8 uVar9;
  undefined4 uVar10;
  undefined1 local_e4;
  undefined1 uStack_e3;
  undefined2 uStack_e2;
  undefined8 local_e0;
  undefined8 uStack_d8;
  undefined8 local_d0;
  undefined8 uStack_c8;
  byte *local_c0;
  undefined8 local_b8;
  undefined8 local_b0;
  undefined8 uStack_a8;
  long local_a0;
  undefined8 uStack_98;
  undefined8 local_90;
  undefined8 uStack_88;
  undefined8 local_80;
  undefined8 uStack_78;
  undefined8 local_70;
  undefined8 uStack_68;
  undefined8 local_60;
  undefined8 local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_erase_mtp_data");
    return;
  }
  local_70 = 0;
  uStack_68 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_60 = 0;
  local_80 = 0;
  uStack_78 = 0;
  local_90 = 0;
  uStack_88 = 0;
  local_b0 = 0;
  uStack_a8 = 0;
  local_c0 = (byte *)0x0;
  local_b8 = 0;
  local_d0 = 0;
  uStack_c8 = 0;
  local_e0 = 0;
  uStack_d8 = 0;
  if (param_2 == 0) {
    uVar10 = 0;
    iVar7 = 0;
  }
  else {
    iVar7 = *(int *)(param_1 + 0x20c);
    uVar10 = *(undefined4 *)(param_1 + 0x1e8);
  }
  local_a0 = 0;
  uStack_98 = 0;
  __mutex_init(&local_90,"(struct mutex *)ptr",&DAT_0015e0d4);
  iVar6 = FUN_00138f78(param_1,&local_e0,iVar7,uVar10);
  if (iVar6 < 0) {
    _printk(&DAT_00167f0e,"syna_tcm_erase_mtp_data");
    return;
  }
  if (*local_c0 < 3) {
    _printk(&DAT_00169912,"syna_tcm_erase_mtp_data");
    return;
  }
  uStack_e2 = 0;
  uVar2 = 0;
  if ((uint)local_b8 != 0) {
    uVar2 = uStack_a8._4_4_ / (uint)local_b8;
  }
  uVar3 = 0;
  if ((uint)local_b8 != 0) {
    uVar3 = (((uint)local_b8 + (uint)local_b8 * local_c0[0x15]) - 1) / (uint)local_b8;
  }
  if ((uVar3 | uVar2) < 0x100) {
    uVar9 = 2;
    uVar1 = uVar3;
  }
  else {
    uVar1 = uVar2 >> 8;
    uVar9 = 4;
    uStack_e2 = (undefined2)uVar3;
  }
  iVar7 = uVar3 * iVar7;
  _local_e4 = CONCAT11((char)uVar1,(char)uVar2);
  if (*(char *)(param_1 + 9) != '\v') {
    _printk(&DAT_0016d1c4,"syna_tcm_reflash_send_command",*(char *)(param_1 + 9),uVar9);
    return;
  }
  if (iVar7 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_0016bea2,"syna_tcm_reflash_send_command",*(undefined4 *)(param_1 + 0x20c),uVar9);
      return;
    }
    iVar7 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x13adb4);
    (*pcVar5)();
  }
  iVar7 = (**(code **)(param_1 + 0x398))(param_1,0x11,&local_e4,uVar9,0,iVar7);
  if (iVar7 < 0) {
    _printk(&DAT_0016f442,"syna_tcm_reflash_send_command",0x11);
    return;
  }
  if (*(char *)(param_1 + 9) == '\v') {
    syna_tcm_switch_fw_mode(param_1,1,uVar10);
  }
  lVar4 = local_a0;
  if ((char)local_60 == '\0') {
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar4 != 0) {
      devm_kfree(lVar8,lVar4);
    }
    lVar4 = sp_el0;
    if (*(long *)(lVar4 + 0x710) == local_48) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0);
  }
  _printk(&DAT_00169d8a,"syna_tcm_buf_release");
  return;
}

