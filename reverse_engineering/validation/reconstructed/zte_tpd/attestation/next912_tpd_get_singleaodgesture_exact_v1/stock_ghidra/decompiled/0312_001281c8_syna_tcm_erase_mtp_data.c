
void syna_tcm_erase_mtp_data(long param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  long lVar4;
  code *pcVar5;
  int iVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  undefined4 uVar10;
  int iVar11;
  undefined4 local_e4;
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
    _printk(&DAT_00133fd6,"syna_tcm_erase_mtp_data");
    iVar6 = -0xf1;
    goto LAB_0012836c;
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
    iVar11 = 0;
  }
  else {
    iVar11 = *(int *)(param_1 + 0x20c);
    uVar10 = *(undefined4 *)(param_1 + 0x1e8);
  }
  local_a0 = 0;
  uStack_98 = 0;
  __mutex_init(&local_90,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  iVar6 = syna_tcm_set_up_flash_access(param_1,&local_e0,iVar11,uVar10);
  if (iVar6 < 0) {
    puVar8 = &DAT_00133487;
LAB_00128480:
    _printk(puVar8,"syna_tcm_erase_mtp_data");
  }
  else if (*local_c0 < 3) {
    _printk(&DAT_00134e2d,"syna_tcm_erase_mtp_data");
  }
  else {
    local_e4._2_2_ = 0;
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
      local_e4._2_2_ = (undefined2)uVar3;
    }
    iVar11 = uVar3 * iVar11;
    local_e4._0_2_ = CONCAT11((char)uVar1,(char)uVar2);
    if (*(char *)(param_1 + 9) != '\v') {
      _printk(&DAT_001385ed,"syna_tcm_reflash_send_command",*(char *)(param_1 + 9),uVar9);
    }
    if (iVar11 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        iVar11 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_00137337,"syna_tcm_reflash_send_command",iVar11,uVar9);
      }
      else {
        iVar11 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x128320);
      (*pcVar5)();
    }
    iVar6 = (**(code **)(param_1 + 0x398))(param_1,0x11,&local_e4,uVar9,0,iVar11);
    if (iVar6 < 0) {
      _printk(&DAT_0013a7db,"syna_tcm_reflash_send_command",0x11);
      _printk(&DAT_00136f22,"syna_tcm_erase_flash",uVar2,uVar3);
      puVar8 = &DAT_00139cc5;
      goto LAB_00128480;
    }
    iVar6 = 0;
  }
  if (*(char *)(param_1 + 9) == '\v') {
    syna_tcm_switch_fw_mode(param_1,1,uVar10);
  }
  if ((char)local_60 != '\0') {
    _printk(&DAT_00135294,"syna_tcm_buf_release");
  }
  lVar4 = local_a0;
  lVar7 = syna_request_managed_device();
  if (lVar7 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else if (lVar4 != 0) {
    devm_kfree(lVar7,lVar4);
  }
LAB_0012836c:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar6);
  }
  return;
}

