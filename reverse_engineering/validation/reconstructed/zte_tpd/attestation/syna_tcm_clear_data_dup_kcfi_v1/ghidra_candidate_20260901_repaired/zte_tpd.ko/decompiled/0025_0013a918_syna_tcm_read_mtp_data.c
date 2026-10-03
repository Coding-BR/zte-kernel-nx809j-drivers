
void syna_tcm_read_mtp_data(long param_1,void *param_2,uint param_3,undefined4 param_4,int param_5)

{
  void *pvVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  uint uVar7;
  ulong __n;
  undefined4 uVar8;
  undefined4 uVar9;
  void *local_148;
  ulong local_140;
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
  byte *local_e0;
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
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
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
  local_e0 = (byte *)0x0;
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
  local_148 = (void *)0x0;
  local_140 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00168a84;
  }
  else {
    if ((param_2 != (void *)0x0) && (__n = (ulong)param_3, param_3 != 0)) {
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
      local_e0 = (byte *)0x0;
      local_f8 = 0;
      uStack_f0 = 0;
      local_100 = 0;
      if (param_5 == 0) {
        uVar8 = 0;
        uVar9 = 0;
      }
      else {
        uVar9 = *(undefined4 *)(param_1 + 0x20c);
        uVar8 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_c0 = 0;
      local_b8 = 0;
      __mutex_init(&uStack_b0,"(struct mutex *)ptr",&DAT_0015e0d4);
      local_108 = local_108 & 0xffffffffffffff00;
      local_148 = (void *)0x0;
      local_140 = 0;
      __mutex_init(&local_138,"(struct mutex *)ptr",&DAT_0015e0d4);
      iVar2 = FUN_001391b0(param_1,&local_100,uVar9,uVar8);
      if (iVar2 < 0) {
        puVar6 = &DAT_00167f0e;
      }
      else {
        if (*local_e0 < 3) {
          _printk(&DAT_00169912,"syna_tcm_read_mtp_data");
          return;
        }
        if (local_d8._4_4_ == 0) {
          uVar7 = 0;
        }
        else {
          uVar7 = 0;
          if (local_d8._4_4_ != 0) {
            uVar7 = ((param_3 + local_d8._4_4_) - 1) / local_d8._4_4_;
          }
        }
        iVar2 = FUN_0013a4ac(param_1,&local_100,&local_148,uVar7 * local_d8._4_4_,param_4,param_5);
        if (-1 < iVar2) {
          if (local_148 == (void *)0x0) {
            _printk(&DAT_00173054,"syna_tcm_read_mtp_data");
            return;
          }
          if ((uint)local_140 < param_3) {
            _printk(&DAT_0016edc2,"syna_pal_mem_cpy",local_140 & 0xffffffff,__n,__n);
            return;
          }
          memcpy(param_2,local_148,__n);
          if (*(char *)(param_1 + 9) == '\v') {
            syna_tcm_switch_fw_mode(param_1,1,uVar8);
          }
          pvVar1 = local_148;
          if ((char)local_108 != '\0') {
            _printk(&DAT_00169d8a,"syna_tcm_buf_release");
            return;
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
            _printk(&DAT_00171996,"syna_pal_mem_free");
            return;
          }
          if (pvVar1 != (void *)0x0) {
            devm_kfree(lVar3,pvVar1);
          }
          lVar3 = local_c0;
          local_140 = 0;
          local_108 = local_108 & 0xffffffffffffff00;
          if ((char)local_80 != '\0') {
            _printk(&DAT_00169d8a,"syna_tcm_buf_release");
            return;
          }
          lVar4 = syna_request_managed_device();
          if (lVar4 == 0) {
            _printk(&DAT_00171996,"syna_pal_mem_free");
            return;
          }
          if (lVar3 != 0) {
            devm_kfree(lVar4,lVar3);
          }
          lVar3 = sp_el0;
          if (*(long *)(lVar3 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
            __stack_chk_fail(0);
          }
          return;
        }
        puVar6 = &DAT_0016e8d0;
      }
      _printk(puVar6,"syna_tcm_read_mtp_data");
      return;
    }
    puVar5 = &DAT_0016c9b2;
  }
  _printk(puVar5,"syna_tcm_read_mtp_data");
  return;
}

