
uint syna_tcm_update_mtp_data(long param_1,void *param_2,uint param_3,int param_4,int param_5)

{
  uint uVar1;
  long lVar2;
  void *__dest;
  long lVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  undefined4 uVar6;
  ulong __n;
  undefined4 uVar7;
  int iVar8;
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
  undefined4 local_68;
  uint uStack_64;
  undefined8 uStack_60;
  long local_58;
  
  lVar2 = sp_el0;
  local_58 = *(long *)(lVar2 + 0x710);
  local_68 = 0;
  uStack_64 = 0;
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
    puVar4 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != (void *)0x0) && (__n = (ulong)param_3, param_3 != 0)) {
      if (param_5 == 0) {
        uVar6 = 0;
        uVar7 = 0;
      }
      else {
        uVar7 = *(undefined4 *)(param_1 + 0x20c);
        uVar6 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 *)(param_1 + 0x388) = 1;
      uVar1 = syna_tcm_set_up_flash_access(param_1,&local_f0,uVar7,uVar6);
      if ((int)uVar1 < 0) {
        puVar5 = &DAT_00133487;
LAB_00127d9c:
        _printk(puVar5,"syna_tcm_update_mtp_data");
      }
      else if (*local_d0 < 3) {
        _printk(&DAT_00134e2d,"syna_tcm_update_mtp_data");
      }
      else {
        if (local_c8._4_4_ == 0) {
          puVar5 = &DAT_00135501;
          goto LAB_00127d9c;
        }
        if (param_4 == 0) {
          iVar8 = 0;
        }
        else {
          uVar1 = 0;
          if (local_c8._4_4_ != 0) {
            uVar1 = ((param_4 + local_c8._4_4_) - 1) / local_c8._4_4_;
          }
          iVar8 = uVar1 * local_c8._4_4_;
        }
        uVar1 = 0;
        if (local_c8._4_4_ != 0) {
          uVar1 = ((param_3 + local_c8._4_4_) - 1) / local_c8._4_4_;
        }
        uVar1 = uVar1 * local_c8._4_4_;
        uStack_64 = uVar1;
        lVar2 = syna_request_managed_device();
        if (lVar2 == 0) {
          puVar5 = &DAT_0013ccb3;
LAB_00127dc0:
          _printk(puVar5,"syna_pal_mem_alloc");
        }
        else {
          if ((int)uVar1 < 1) {
            puVar5 = &DAT_00138e98;
            goto LAB_00127dc0;
          }
          __dest = (void *)devm_kmalloc(lVar2,uVar1,0xdc0);
          if (__dest != (void *)0x0) {
            if (uStack_64 < param_3) {
              _printk(&DAT_0013a172,"syna_pal_mem_cpy",__n,uStack_64,__n);
            }
            else {
              if (uVar1 < param_3) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(0x11,uVar1);
              }
              memcpy(__dest,param_2,__n);
            }
            uVar1 = syna_tcm_write_flash
                              (param_1,&local_f0,local_b8._4_4_ + iVar8,__dest,uStack_64,param_5);
            if (-1 < (int)uVar1) {
              uVar1 = uStack_64;
            }
            goto LAB_00127ca0;
          }
        }
        _printk(&DAT_00133487,"syna_tcm_update_mtp_data");
        uVar1 = 0xffffff0d;
      }
LAB_00127ca0:
      if (*(char *)(param_1 + 9) == '\v') {
        syna_tcm_switch_fw_mode(param_1,1,uVar6);
      }
      *(undefined4 *)(param_1 + 0x388) = 0;
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar2 = local_b0;
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar2 != 0) {
        devm_kfree(lVar3,lVar2);
      }
      goto LAB_00127ce0;
    }
    puVar4 = &DAT_00137e1c;
  }
  _printk(puVar4,"syna_tcm_update_mtp_data");
  uVar1 = 0xffffff0f;
LAB_00127ce0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar1;
}

