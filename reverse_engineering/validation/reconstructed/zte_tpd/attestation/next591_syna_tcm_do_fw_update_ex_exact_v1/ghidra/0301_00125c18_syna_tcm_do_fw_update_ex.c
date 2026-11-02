
void syna_tcm_do_fw_update_ex
               (long param_1,int *param_2,uint param_3,undefined4 param_4,undefined4 param_5,
               int param_6,byte param_7)

{
  uint uVar1;
  long lVar2;
  int iVar3;
  undefined1 *puVar4;
  long lVar5;
  undefined *puVar6;
  ulong uVar7;
  undefined4 uVar8;
  ulong local_f0 [2];
  undefined8 local_e0;
  int *local_d8;
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
  
  lVar2 = sp_el0;
  local_58 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      local_68 = 0;
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
      local_d8 = (int *)0x0;
      uStack_d0 = 0;
      local_f0[1] = 0;
      local_e0 = 0;
      local_f0[0] = (ulong)param_3;
      if (param_6 == 0) {
        uVar8 = 0;
      }
      else {
        uVar8 = *(undefined4 *)(param_1 + 0x20c);
      }
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_e0 = CONCAT44(local_e0._4_4_,*param_2);
      local_d8 = param_2;
      _printk(&DAT_0013484b,"syna_tcm_do_fw_update_ex");
      *(undefined4 *)(param_1 + 0x388) = 1;
      if (*(char *)(param_1 + 9) == '\v') {
        uVar1 = (uint)local_f0[0] | 9;
        uVar7 = (ulong)uVar1;
        local_f0[0] = local_f0[0] | 9;
      }
      else {
        uVar7 = local_f0[0] & 0xffffffff;
        uVar1 = (uint)local_f0[0];
        if (*(char *)(param_1 + 9) == '\x01') {
          if (*(short *)(param_1 + 0xb2) != 0) {
            uVar7 = (ulong)((uint)local_f0[0] | 9);
            local_f0[0] = local_f0[0] | 9;
          }
          uVar1 = (uint)uVar7;
        }
      }
      if ((uVar1 >> 3 & 1) != 0) {
        local_68 = CONCAT44(local_68._4_4_ + local_d8[0x10],(undefined4)local_68);
      }
      if ((uVar7 & 1) != 0) {
        local_68 = CONCAT44(local_68._4_4_ + local_d8[0x20],(undefined4)local_68);
      }
      iVar3 = syna_tcm_set_up_flash_access(param_1,local_f0,uVar8,param_6);
      if (iVar3 < 0) {
        puVar6 = &DAT_00133487;
LAB_00125de4:
        _printk(puVar6,"syna_tcm_do_fw_update_ex");
      }
      else {
        if (*(char *)(param_1 + 9) == '\v') {
          if (((uint)local_f0[0] >> 3 & 1) != 0) {
            iVar3 = syna_tcm_update_flash_block
                              (param_1,local_f0,local_d8 + 0xc,param_4,param_5,
                               (byte)local_68 & param_7 & 1);
            if (iVar3 < 0) {
              puVar6 = &DAT_001334b2;
              goto LAB_00125de4;
            }
          }
          if ((((uint)local_f0[0] & 1) != 0) &&
             (iVar3 = syna_tcm_update_flash_block
                                (param_1,local_f0,local_d8 + 0x1c,param_4,param_5,0), iVar3 < 0)) {
            puVar6 = &DAT_0013972c;
            goto LAB_00125de4;
          }
          _printk(&DAT_00136e7e,"syna_tcm_do_fw_update_ex");
        }
        else {
          _printk(&DAT_00132995,"syna_tcm_do_fw_update_ex");
        }
        iVar3 = syna_tcm_reset(param_1,param_6);
        if (iVar3 < 0) {
          puVar6 = &DAT_0013a66c;
          goto LAB_00125de4;
        }
      }
      *(undefined4 *)(param_1 + 0x388) = 0;
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar2 = local_b0;
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar2 != 0) {
        devm_kfree(lVar5,lVar2);
      }
      goto LAB_00125c78;
    }
    puVar4 = &DAT_00138b6e;
  }
  _printk(puVar4,"syna_tcm_do_fw_update_ex");
  iVar3 = -0xf1;
LAB_00125c78:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar3);
}

