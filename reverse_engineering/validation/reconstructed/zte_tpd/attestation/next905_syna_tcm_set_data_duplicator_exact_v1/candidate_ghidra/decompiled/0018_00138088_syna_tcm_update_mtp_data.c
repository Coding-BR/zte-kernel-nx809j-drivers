
ulong syna_tcm_update_mtp_data(long param_1,void *param_2,uint param_3,int param_4,int param_5)

{
  int iVar1;
  uint uVar2;
  long lVar3;
  void *__dest;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  undefined4 uVar7;
  ulong uVar8;
  undefined4 uVar9;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  byte *local_d0;
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
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  local_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  local_d0 = (byte *)0x0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f0 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00168a84;
  }
  else {
    if (param_2 != (void *)0x0) {
      uVar8 = (ulong)param_3;
      if (param_3 != 0) {
        if (param_5 == 0) {
          uVar7 = 0;
          uVar9 = 0;
        }
        else {
          uVar9 = *(undefined4 *)(param_1 + 0x20c);
          uVar7 = *(undefined4 *)(param_1 + 0x1e8);
        }
        local_b0 = 0;
        local_a8 = 0;
        __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e0d4);
        *(undefined4 *)(param_1 + 0x388) = 1;
        iVar1 = FUN_00134e78(param_1,&local_f0,uVar9,uVar7);
        if (iVar1 < 0) {
          puVar6 = &DAT_00167f0e;
        }
        else {
          if (*local_d0 < 3) {
            uVar8 = _printk(&DAT_00169912,"syna_tcm_update_mtp_data");
            return uVar8;
          }
          if (local_c8._4_4_ != 0) {
            if (param_4 == 0) {
              iVar1 = 0;
            }
            else {
              uVar2 = 0;
              if (local_c8._4_4_ != 0) {
                uVar2 = ((param_4 + local_c8._4_4_) - 1) / local_c8._4_4_;
              }
              iVar1 = uVar2 * local_c8._4_4_;
            }
            uVar2 = 0;
            if (local_c8._4_4_ != 0) {
              uVar2 = ((param_3 + local_c8._4_4_) - 1) / local_c8._4_4_;
            }
            uVar2 = uVar2 * local_c8._4_4_;
            local_68._4_4_ = uVar2;
            lVar3 = syna_request_managed_device();
            if (lVar3 == 0) {
              puVar6 = &DAT_00171996;
            }
            else {
              if (0 < (int)uVar2) {
                __dest = (void *)devm_kmalloc(lVar3,uVar2,0xdc0);
                if (__dest == (void *)0x0) {
                  uVar8 = _printk(&DAT_00167f0e,"syna_tcm_update_mtp_data");
                  return uVar8;
                }
                if (local_68._4_4_ < param_3) {
                  uVar8 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar8,local_68._4_4_,uVar8);
                  return uVar8;
                }
                if (uVar2 < param_3) {
                    /* WARNING: Subroutine does not return */
                  __fortify_panic(0x11,uVar2);
                }
                memcpy(__dest,param_2,uVar8);
                uVar2 = FUN_00137a00(param_1,&local_f0,local_b8._4_4_ + iVar1,__dest,local_68._4_4_,
                                     param_5);
                if (-1 < (int)uVar2) {
                  uVar2 = local_68._4_4_;
                }
                if (*(char *)(param_1 + 9) == '\v') {
                  syna_tcm_switch_fw_mode(param_1,1,uVar7);
                }
                lVar3 = local_b0;
                *(undefined4 *)(param_1 + 0x388) = 0;
                if ((char)local_70 == '\0') {
                  lVar4 = syna_request_managed_device();
                  if (lVar4 == 0) {
                    uVar8 = _printk(&DAT_00171996,"syna_pal_mem_free");
                    return uVar8;
                  }
                  if (lVar3 != 0) {
                    devm_kfree(lVar4,lVar3);
                  }
                  lVar3 = sp_el0;
                  if (*(long *)(lVar3 + 0x710) == local_58) {
                    return (ulong)uVar2;
                  }
                    /* WARNING: Subroutine does not return */
                  __stack_chk_fail();
                }
                uVar8 = _printk(&DAT_00169d8a,"syna_tcm_buf_release");
                return uVar8;
              }
              puVar6 = &DAT_0016da92;
            }
            uVar8 = _printk(puVar6,"syna_pal_mem_alloc");
            return uVar8;
          }
          puVar6 = &DAT_0016a000;
        }
        uVar8 = _printk(puVar6,"syna_tcm_update_mtp_data");
        return uVar8;
      }
    }
    puVar5 = &DAT_0016c9b2;
  }
  uVar8 = _printk(puVar5,"syna_tcm_update_mtp_data");
  return uVar8;
}

