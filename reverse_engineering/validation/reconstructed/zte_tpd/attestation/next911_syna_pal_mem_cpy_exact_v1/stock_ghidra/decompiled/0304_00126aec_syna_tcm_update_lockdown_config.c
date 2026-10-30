
void syna_tcm_update_lockdown_config(long param_1,int *param_2,int param_3)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  long local_138;
  undefined8 local_130;
  int iStack_12c;
  undefined8 local_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_110;
  undefined8 uStack_108;
  undefined8 local_100;
  ulong local_f8;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar1 = sp_el0;
  local_58 = *(long *)(lVar1 + 0x710);
  local_100 = 0;
  local_f8 = 0;
  local_110 = 0;
  uStack_108 = 0;
  local_120 = 0;
  uStack_118 = 0;
  local_128 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      if (((char)param_2[0x9c] != '\x01') || (*(long *)(param_2 + 0x9e) == 0)) {
        uVar6 = syna_tcm_get_partition_id_string((char)param_2[0xa2]);
        _printk(&DAT_0013d630,"syna_tcm_update_lockdown_config",uVar6);
        iVar2 = -0xf1;
        goto LAB_00126cf8;
      }
      if ((uint)param_2[0xa0] < 8) {
        _printk(&DAT_00134294,"syna_tcm_update_lockdown_config",param_2[0xa0],8);
        iVar2 = -0xf1;
        goto LAB_00126cf8;
      }
      uStack_60 = 0;
      local_78 = 0;
      local_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      uStack_a0 = 0;
      local_b8 = 0;
      local_c8 = 0;
      uStack_c0 = 0;
      local_d8 = 0;
      uStack_d0 = 0;
      local_e8 = 0;
      uStack_e0 = 0;
      local_f0 = 0;
      local_68 = 0x800000000;
      if (param_3 == 0) {
        uVar7 = 0;
        uVar8 = 0;
      }
      else {
        uVar8 = *(undefined4 *)(param_1 + 0x20c);
        uVar7 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_f8 = local_f8 & 0xffffffffffffff00;
      local_138 = 0;
      local_130 = 0;
      __mutex_init(&local_128,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 *)(param_1 + 0x388) = 1;
      iVar2 = syna_tcm_set_up_flash_access(param_1,&local_f0,uVar8,uVar7);
      if (iVar2 < 0) {
        puVar5 = &DAT_00133487;
LAB_00126e18:
        _printk(puVar5,"syna_tcm_update_lockdown_config");
      }
      else {
        iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_f0,&local_138,uVar8);
        if (iVar2 < 0) {
          puVar5 = &DAT_00137df4;
          goto LAB_00126e18;
        }
        if (*(char *)(local_138 + (ulong)(iStack_12c - 7)) < '\0') {
          _printk(&DAT_0013618c,"syna_tcm_update_lockdown_config");
          iVar2 = 0;
        }
        else {
          iVar2 = syna_tcm_check_flash_block(param_1,&local_f0,param_2 + 0x9c);
          if (iVar2 < 1) {
            uVar6 = syna_tcm_get_partition_id_string((char)param_2[0xa2]);
            _printk(&DAT_0013bb55,"syna_tcm_update_lockdown_config",uVar6);
          }
          else {
            iVar2 = syna_tcm_write_flash
                              (param_1,&local_f0,(int)local_b8 + (param_2[0xa0] - 8U),
                               *(long *)(param_2 + 0x9e) + (ulong)(param_2[0xa0] - 8U),8,param_3);
            if (-1 < iVar2) {
              iVar2 = 8;
            }
          }
        }
      }
      if (*(char *)(param_1 + 9) == '\v') {
        syna_tcm_switch_fw_mode(param_1,1,uVar7);
      }
      *(undefined4 *)(param_1 + 0x388) = 0;
      if ((char)local_f8 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_138;
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar3,lVar1);
      }
      local_130 = 0;
      local_f8 = local_f8 & 0xffffffffffffff00;
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_b0;
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar3,lVar1);
      }
      goto LAB_00126cf8;
    }
    puVar4 = &DAT_00138b6e;
  }
  _printk(puVar4,"syna_tcm_update_lockdown_config");
  iVar2 = -0xf1;
LAB_00126cf8:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar2);
  }
  return;
}

