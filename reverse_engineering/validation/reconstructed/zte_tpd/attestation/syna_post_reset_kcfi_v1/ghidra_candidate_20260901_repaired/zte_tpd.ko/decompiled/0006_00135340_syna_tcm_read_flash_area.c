
void syna_tcm_read_flash_area(long param_1,int param_2,long *param_3,int param_4)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  void *pvVar5;
  long lVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  undefined4 uVar10;
  ulong __n;
  uint uVar11;
  ulong uVar12;
  undefined8 local_148;
  undefined8 local_140;
  undefined8 uStack_138;
  undefined8 local_130;
  undefined8 uStack_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_110;
  undefined8 local_108;
  undefined8 local_100;
  undefined8 uStack_f8;
  undefined8 local_f0;
  undefined8 uStack_e8;
  undefined8 local_e0;
  undefined8 uStack_d8;
  undefined8 local_d0;
  ulong local_c8;
  undefined8 local_c0;
  undefined8 uStack_b8;
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
  
  lVar6 = sp_el0;
  local_68 = *(undefined8 *)(lVar6 + 0x710);
  local_c0 = 0;
  uStack_b8 = 0;
  local_d0 = 0;
  local_c8 = 0;
  local_e0 = 0;
  uStack_d8 = 0;
  local_f0 = 0;
  uStack_e8 = 0;
  local_100 = 0;
  uStack_f8 = 0;
  local_110 = 0;
  local_108 = 0;
  local_120 = 0;
  uStack_118 = 0;
  local_130 = 0;
  uStack_128 = 0;
  local_140 = 0;
  uStack_138 = 0;
  local_148 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00168a84;
LAB_001353b4:
    _printk(puVar4,"syna_tcm_read_flash_area");
    return;
  }
  if (param_3 == (long *)0x0) {
    puVar4 = &DAT_001707de;
    goto LAB_001353b4;
  }
  if (param_4 == 0) {
    uVar10 = 0;
  }
  else {
    uVar10 = *(undefined4 *)(param_1 + 0x1e8);
  }
  if ((*(char *)(param_1 + 9) != '\v') &&
     (iVar2 = syna_tcm_set_up_flash_access(param_1,&local_148,param_4,uVar10), iVar2 < 0)) {
    _printk(&DAT_00167f0e,"syna_tcm_read_flash_area");
    return;
  }
  local_c8 = local_c8 & 0xffffffffffffff00;
  local_108 = 0;
  local_100 = 0;
  __mutex_init(&uStack_f8,"(struct mutex *)ptr",&DAT_0015e0d4);
  if (param_2 < 0x15) {
    if (param_2 == 3) {
      if (*(char *)(param_1 + 9) == '\x01') {
        _printk(&DAT_0016b348,"syna_tcm_read_flash_app_config",1);
        return;
      }
      iVar2 = (uint)*(ushort *)(param_1 + 0xb8) * local_120._4_4_;
      if (iVar2 != 0) {
        uVar1 = *(ushort *)(param_1 + 0xba);
        uVar12 = (ulong)uVar1;
        if (uVar1 != 0) {
          pvVar5 = (void *)*param_3;
          __n = (ulong)*(uint *)(param_3 + 1);
          if (*(uint *)(param_3 + 1) < (uint)uVar1) {
            if (pvVar5 != (void *)0x0) {
              lVar6 = syna_request_managed_device();
              if (lVar6 == 0) {
                _printk(&DAT_00171996,"syna_pal_mem_free");
                return;
              }
              devm_kfree(lVar6,pvVar5);
            }
            lVar6 = syna_request_managed_device();
            if (lVar6 == 0) {
              _printk(&DAT_00171996,"syna_pal_mem_alloc");
              return;
            }
            pvVar5 = (void *)devm_kmalloc(lVar6,uVar12,0xdc0);
            *param_3 = (long)pvVar5;
            if (pvVar5 == (void *)0x0) {
              _printk(&DAT_0016c730,"syna_tcm_buf_alloc",(uint)uVar1);
              return;
            }
            *(uint *)(param_3 + 1) = (uint)uVar1;
            __n = uVar12;
          }
          memset(pvVar5,0,__n);
          *(undefined4 *)((long)param_3 + 0xc) = 0;
          iVar3 = syna_tcm_read_flash(param_1,iVar2,*param_3,uVar12,param_4);
          if (iVar3 < 0) {
            _printk(&DAT_0016ff96,"syna_tcm_read_flash_app_config",iVar2,(uint)uVar1);
            return;
          }
          *(uint *)((long)param_3 + 0xc) = (uint)uVar1;
          goto LAB_00135abc;
        }
      }
      _printk(&DAT_00170f50,"syna_tcm_read_flash_app_config");
      return;
    }
    if (param_2 != 6) {
LAB_00135594:
      _printk(&DAT_001692fa,"syna_tcm_read_flash_area");
      return;
    }
    iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_148,param_3,param_4);
    if (-1 < iVar2) goto LAB_00135abc;
    puVar8 = &DAT_00166d78;
    goto LAB_00135a70;
  }
  if (param_2 == 0x15) {
    iVar2 = syna_tcm_read_flash_boot_cs_config(param_1,&local_148,param_3,0,0,param_4);
joined_r0x0013551c:
    if (-1 < iVar2) {
LAB_00135abc:
      uVar9 = syna_tcm_get_partition_id_string(param_2);
      _printk(&DAT_0016dd58,"syna_tcm_read_flash_area",uVar9);
      return;
    }
  }
  else {
    if (param_2 != 0x16) {
      if (param_2 != 0x17) goto LAB_00135594;
      iVar2 = syna_tcm_read_flash_mtp_config(param_1,&local_148,param_3,0,0,param_4);
      goto joined_r0x0013551c;
    }
    local_78 = 0;
    local_70 = 0;
    local_88 = 0;
    uStack_80 = 0;
    local_98 = 0;
    uStack_90 = 0;
    local_a8 = 0;
    uStack_a0 = 0;
    local_b0 = 0;
    if (*(char *)(param_1 + 9) == '\x01') {
      _printk(&DAT_0016e95c,"syna_tcm_read_flash_boot_lockdown_config",1);
      return;
    }
    local_b0 = 0;
    local_a8 = 0;
    __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e0d4);
    iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_148,&local_b0,param_4);
    if (iVar2 < 0) {
      _printk(&DAT_0016c98a,"syna_tcm_read_flash_boot_lockdown_config");
      return;
    }
    uVar11 = *(uint *)(param_3 + 1);
    pvVar5 = (void *)*param_3;
    if (uVar11 < 8) {
      if (pvVar5 != (void *)0x0) {
        lVar6 = syna_request_managed_device();
        if (lVar6 == 0) {
          _printk(&DAT_00171996,"syna_pal_mem_free");
          return;
        }
        devm_kfree(lVar6,pvVar5);
      }
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_00171996,"syna_pal_mem_alloc");
        return;
      }
      uVar11 = 8;
      pvVar5 = (void *)devm_kmalloc(lVar6,8,0xdc0);
      *param_3 = (long)pvVar5;
      if (pvVar5 == (void *)0x0) {
        _printk(&DAT_0016c730,"syna_tcm_buf_alloc",8);
        return;
      }
      *(undefined4 *)(param_3 + 1) = 8;
    }
    memset(pvVar5,0,(ulong)uVar11);
    lVar6 = local_b0;
    *(undefined4 *)((long)param_3 + 0xc) = 0;
    if (*(char *)(local_b0 + (local_a8._4_4_ + -7)) < '\0') {
      iVar2 = local_a8._4_4_ + -8;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0xf)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x10;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x17)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x18;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x1f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x20;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x27)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x28;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x2f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x30;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x37)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x38;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x3f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x40;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x47)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x48;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x4f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x50;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x57)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x58;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x5f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x60;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x67)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x68;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x6f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x70;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x77)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x78;
    }
    else {
      iVar2 = -0x80;
      if (-1 < *(char *)(local_b0 + (local_a8._4_4_ + -0x7f))) {
        iVar2 = -0x88;
      }
      iVar2 = iVar2 + local_a8._4_4_;
    }
    if (((undefined8 *)*param_3 == (undefined8 *)0x0) ||
       ((undefined8 *)(local_b0 + iVar2) == (undefined8 *)0x0)) {
      _printk(&DAT_0016dd70,"syna_tcm_read_flash_boot_lockdown_config");
      return;
    }
    if (*(uint *)(param_3 + 1) < 8) {
      _printk(&DAT_0016edc2,"syna_pal_mem_cpy",8,*(uint *)(param_3 + 1),8);
      return;
    }
    *(undefined8 *)*param_3 = *(undefined8 *)(local_b0 + iVar2);
    *(undefined4 *)((long)param_3 + 0xc) = 8;
    *(uint *)(param_1 + 0x34) = (uint)(*(byte *)(local_b0 + (local_a8._4_4_ + -7)) >> 7);
    if ((char)local_70 != '\0') {
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      return;
    }
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar6 != 0) {
      devm_kfree(lVar7,lVar6);
    }
    if (true) goto LAB_00135abc;
  }
  puVar8 = &DAT_0016b304;
LAB_00135a70:
  _printk(puVar8,"syna_tcm_read_flash_area");
  return;
}

