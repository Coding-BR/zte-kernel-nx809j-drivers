
void syna_tcm_update_cs_config
               (long param_1,undefined1 *param_2,uint param_3,int param_4,int param_5)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  long lVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  ulong uVar10;
  undefined4 uVar11;
  ulong uVar12;
  undefined4 uVar13;
  long local_148;
  undefined8 local_140;
  int iStack_13c;
  undefined8 local_138;
  undefined8 uStack_130;
  undefined8 local_128;
  undefined8 uStack_120;
  undefined8 local_118;
  undefined8 uStack_110;
  ulong local_108;
  undefined8 local_100;
  undefined8 local_f8;
  undefined8 uStack_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  long local_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  local_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  local_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f8 = 0;
  uStack_f0 = 0;
  local_108 = 0;
  local_100 = 0;
  local_118 = 0;
  uStack_110 = 0;
  local_128 = 0;
  uStack_120 = 0;
  local_138 = 0;
  uStack_130 = 0;
  local_148 = 0;
  local_140 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00168a84;
  }
  else {
    if (param_2 != (undefined1 *)0x0) {
      uVar12 = (ulong)param_3;
      if (param_3 != 0) {
        local_78 = 0;
        uStack_70 = 0;
        local_88 = 0;
        local_80 = 0;
        local_98 = 0;
        uStack_90 = 0;
        local_a8 = 0;
        uStack_a0 = 0;
        uStack_b0 = 0;
        local_c8 = 0;
        local_d8 = 0;
        uStack_d0 = 0;
        local_e8 = 0;
        uStack_e0 = 0;
        local_f8 = 0;
        uStack_f0 = 0;
        local_100 = 0;
        if (param_5 == 0) {
          uVar11 = 0;
          uVar13 = 0;
        }
        else {
          uVar13 = *(undefined4 *)(param_1 + 0x20c);
          uVar11 = *(undefined4 *)(param_1 + 0x1e8);
        }
        local_c0 = 0;
        local_b8 = 0;
        __mutex_init(&uStack_b0,"(struct mutex *)ptr",&DAT_0015e0d4);
        local_108 = local_108 & 0xffffffffffffff00;
        local_148 = 0;
        local_140 = 0;
        __mutex_init(&local_138,"(struct mutex *)ptr",&DAT_0015e0d4);
        *(undefined4 *)(param_1 + 0x388) = 1;
        iVar3 = syna_tcm_set_up_flash_access(param_1,&local_100,uVar13,uVar11);
        if (iVar3 < 0) {
          puVar5 = &DAT_00167f0e;
        }
        else {
          iVar3 = syna_tcm_read_flash_boot_config(param_1,&local_100,&local_148,uVar13);
          if (iVar3 < 0) {
            puVar5 = &DAT_0016c98a;
          }
          else {
            iVar3 = 0x80;
            do {
              if ((*(char *)(local_148 + (ulong)((iStack_13c + iVar3) - 0x87)) < '\0') &&
                 (-1 < *(char *)(local_148 + (ulong)((iStack_13c + iVar3) - 0x8f)))) {
                iVar2 = iStack_13c + iVar3;
                break;
              }
              iVar3 = iVar3 + -8;
              iVar2 = iStack_13c;
            } while (iVar3 != 0);
            uVar7 = iVar2 - 0x88;
            if (uVar7 < param_3) {
              puVar5 = &DAT_001715a6;
            }
            else if (local_d8._4_4_ == 0) {
              puVar5 = &DAT_0016a000;
            }
            else {
              if (param_4 == 0) {
                uVar8 = 0;
              }
              else {
                uVar8 = 0;
                if (local_d8._4_4_ != 0) {
                  uVar8 = ((param_4 + local_d8._4_4_) - 1) / local_d8._4_4_;
                }
                uVar8 = uVar8 * local_d8._4_4_;
              }
              do {
                if (*(char *)(local_148 + (ulong)uVar8) == '\0') {
                  uVar9 = 0;
                  uVar10 = (ulong)local_d8._4_4_;
                  while (*(char *)(local_148 + (ulong)(uVar8 + uVar9)) == '\0') {
                    uVar10 = uVar10 - 1;
                    uVar9 = uVar9 + 1;
                    if (uVar10 == 0) goto LAB_00137e8c;
                  }
                  if (local_d8._4_4_ <= uVar9) break;
                }
                uVar8 = uVar8 + local_d8._4_4_;
              } while (uVar8 < uVar7);
LAB_00137e8c:
              if (uVar8 <= uVar7) {
                uVar7 = 0;
                if (local_d8._4_4_ != 0) {
                  uVar7 = ((param_3 + local_d8._4_4_) - 1) / local_d8._4_4_;
                }
                uVar9 = uVar8;
                do {
                  uVar12 = uVar12 - 1;
                  *(undefined1 *)(local_148 + (ulong)uVar9) = *param_2;
                  uVar9 = uVar9 + 1;
                  param_2 = param_2 + 1;
                } while (uVar12 != 0);
                local_78._4_4_ = uVar7 * local_d8._4_4_;
                iVar3 = syna_tcm_write_flash
                                  (param_1,&local_100,(int)local_c8 + uVar8,local_148 + (ulong)uVar8
                                   ,uVar7 * local_d8._4_4_,param_5);
                if (-1 < iVar3) {
                  iVar3 = local_78._4_4_;
                }
                if (*(char *)(param_1 + 9) == '\v') {
                  syna_tcm_switch_fw_mode(param_1,1,uVar11);
                }
                lVar1 = local_148;
                *(undefined4 *)(param_1 + 0x388) = 0;
                if ((char)local_108 != '\0') {
                  _printk(&DAT_00169d8a,"syna_tcm_buf_release");
                  return;
                }
                lVar6 = syna_request_managed_device();
                if (lVar6 == 0) {
                  _printk(&DAT_00171996,"syna_pal_mem_free");
                  return;
                }
                if (lVar1 != 0) {
                  devm_kfree(lVar6,lVar1);
                }
                lVar1 = local_c0;
                local_140 = 0;
                local_108 = local_108 & 0xffffffffffffff00;
                if ((char)local_80 == '\0') {
                  lVar6 = syna_request_managed_device();
                  if (lVar6 == 0) {
                    _printk(&DAT_00171996,"syna_pal_mem_free");
                    return;
                  }
                  if (lVar1 != 0) {
                    devm_kfree(lVar6,lVar1);
                  }
                  lVar1 = sp_el0;
                  if (*(long *)(lVar1 + 0x710) == local_68) {
                    return;
                  }
                    /* WARNING: Subroutine does not return */
                  __stack_chk_fail(iVar3);
                }
                _printk(&DAT_00169d8a,"syna_tcm_buf_release");
                return;
              }
              puVar5 = &DAT_0016c3ca;
            }
          }
        }
        _printk(puVar5,"syna_tcm_update_cs_config");
        return;
      }
    }
    puVar4 = &DAT_00169fe0;
  }
  _printk(puVar4,"syna_tcm_update_cs_config");
  return;
}

