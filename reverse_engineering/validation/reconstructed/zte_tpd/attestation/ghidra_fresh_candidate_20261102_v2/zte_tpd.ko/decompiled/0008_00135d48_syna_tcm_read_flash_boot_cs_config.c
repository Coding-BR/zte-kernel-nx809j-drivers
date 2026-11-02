
undefined8
syna_tcm_read_flash_boot_cs_config
          (long param_1,long param_2,long *param_3,uint param_4,int param_5,undefined4 param_6)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  byte bVar7;
  long lVar8;
  long lVar9;
  ulong uVar10;
  ulong uVar11;
  byte *pbVar12;
  void *local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 local_60;
  long local_58;
  
  lVar8 = sp_el0;
  local_58 = *(long *)(lVar8 + 0x710);
  local_68 = 0;
  local_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = (void *)0x0;
  if (param_2 == 0) {
    puVar5 = &DAT_0016936a;
LAB_00136080:
                    /* WARNING: Subroutine does not return */
    _printk(puVar5,"syna_tcm_read_flash_boot_cs_config");
  }
  if (param_3 == (long *)0x0) {
    puVar5 = &DAT_0016a6a4;
    goto LAB_00136080;
  }
  if (*(char *)(param_1 + 9) == '\x01') {
    puVar6 = &DAT_0016e922;
    bVar7 = 1;
LAB_00136120:
                    /* WARNING: Subroutine does not return */
    _printk(puVar6,"syna_tcm_read_flash_boot_cs_config",bVar7);
  }
  pbVar12 = *(byte **)(param_2 + 0x20);
  bVar7 = *pbVar12;
  if ((bVar7 | 2) != 3) {
    puVar6 = &DAT_00171d34;
    goto LAB_00136120;
  }
  uVar10 = (ulong)param_4;
  local_a0 = (void *)0x0;
  local_98 = 0;
  __mutex_init(&uStack_90,"(struct mutex *)ptr",&DAT_0015e0d4);
  pvVar4 = local_a0;
  if (param_4 == 0) {
    iVar2 = syna_tcm_read_flash_boot_config(param_1,param_2,&local_a0,param_6);
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c98a,"syna_tcm_read_flash_boot_cs_config");
    }
    uVar1 = local_98._4_4_;
    uVar11 = (ulong)local_98._4_4_;
    uVar10 = (ulong)*(uint *)(param_3 + 1);
    pvVar4 = (void *)*param_3;
    if (*(uint *)(param_3 + 1) < local_98._4_4_) {
      if (pvVar4 != (void *)0x0) {
        lVar8 = syna_request_managed_device();
        if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00171996,"syna_pal_mem_free");
        }
        devm_kfree(lVar8,pvVar4);
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        puVar6 = &DAT_00171996;
LAB_00136258:
                    /* WARNING: Subroutine does not return */
        _printk(puVar6,"syna_pal_mem_alloc");
      }
      if ((int)uVar1 < 1) {
        puVar6 = &DAT_0016da92;
        goto LAB_00136258;
      }
      pvVar4 = (void *)devm_kmalloc(lVar8,uVar11,0xdc0);
      *param_3 = (long)pvVar4;
      if (pvVar4 == (void *)0x0) {
        uVar10 = (ulong)uVar1;
        goto LAB_0013627c;
      }
      *(uint *)(param_3 + 1) = uVar1;
      uVar10 = uVar11;
    }
    memset(pvVar4,0,uVar10);
    iVar2 = 0x80;
    *(undefined4 *)((long)param_3 + 0xc) = 0;
    param_4 = local_98._4_4_ - 0x88;
    do {
      if ((*(char *)((long)local_a0 + (long)(int)(local_98._4_4_ + iVar2 + -0x87)) < '\0') &&
         (-1 < *(char *)((long)local_a0 + (long)(int)(local_98._4_4_ + iVar2 + -0x8f)))) {
        param_4 = (local_98._4_4_ + iVar2) - 0x88;
        break;
      }
      iVar2 = iVar2 + -8;
    } while (iVar2 != 0);
    goto LAB_00135f88;
  }
  if (*pbVar12 == 1) {
    lVar8 = 0xd;
    lVar9 = 0xc;
LAB_00135e84:
    iVar2 = (uint)CONCAT11(pbVar12[lVar8],pbVar12[lVar9]) * *(int *)(param_2 + 0x2c);
  }
  else {
    if (*pbVar12 == 3) {
      lVar8 = 0x11;
      lVar9 = 0x10;
      goto LAB_00135e84;
    }
    iVar2 = 0;
  }
  uVar11 = local_98 & 0xffffffff;
  if ((uint)local_98 < param_4) {
    if (local_a0 != (void *)0x0) {
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171996,"syna_pal_mem_free");
      }
      devm_kfree(lVar8,pvVar4);
    }
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
      puVar6 = &DAT_00171996;
LAB_001361a4:
                    /* WARNING: Subroutine does not return */
      _printk(puVar6,"syna_pal_mem_alloc");
    }
    if ((int)param_4 < 1) {
      puVar6 = &DAT_0016da92;
      goto LAB_001361a4;
    }
    local_a0 = (void *)devm_kmalloc(lVar8,uVar10,0xdc0);
    if (local_a0 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar10);
    }
    local_98 = CONCAT44(local_98._4_4_,param_4);
    uVar11 = uVar10;
  }
  memset(local_a0,0,uVar11);
  pvVar4 = (void *)*param_3;
  local_98 = local_98 & 0xffffffff;
  uVar11 = (ulong)*(uint *)(param_3 + 1);
  if (*(uint *)(param_3 + 1) < param_4) {
    if (pvVar4 != (void *)0x0) {
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171996,"syna_pal_mem_free");
      }
      devm_kfree(lVar8,pvVar4);
    }
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
      puVar6 = &DAT_00171996;
LAB_00136200:
                    /* WARNING: Subroutine does not return */
      _printk(puVar6,"syna_pal_mem_alloc");
    }
    if ((int)param_4 < 1) {
      puVar6 = &DAT_0016da92;
      goto LAB_00136200;
    }
    pvVar4 = (void *)devm_kmalloc(lVar8,uVar10,0xdc0);
    *param_3 = (long)pvVar4;
    if (pvVar4 == (void *)0x0) {
LAB_0013627c:
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar10);
    }
    *(uint *)(param_3 + 1) = param_4;
    uVar11 = uVar10;
  }
  memset(pvVar4,0,uVar11);
  *(undefined4 *)((long)param_3 + 0xc) = 0;
  iVar3 = syna_tcm_read_flash(param_1,iVar2 + param_5,local_a0,param_4,param_6);
  if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016ad4a,"syna_tcm_read_flash_boot_cs_config",iVar2 + param_5);
  }
LAB_00135f88:
  if (((void *)*param_3 == (void *)0x0) || (local_a0 == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016dd70,"syna_tcm_read_flash_boot_cs_config");
  }
  if ((param_4 <= *(uint *)(param_3 + 1)) && (param_4 <= (uint)local_98)) {
    memcpy((void *)*param_3,local_a0,(ulong)param_4);
    pvVar4 = local_a0;
    *(uint *)((long)param_3 + 0xc) = param_4;
    if ((char)local_60 != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
    }
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_free");
    }
    if (pvVar4 != (void *)0x0) {
      devm_kfree(lVar8,pvVar4);
    }
    lVar8 = sp_el0;
    if (*(long *)(lVar8 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016edc2,"syna_pal_mem_cpy",local_98 & 0xffffffff,*(uint *)(param_3 + 1),param_4);
}

