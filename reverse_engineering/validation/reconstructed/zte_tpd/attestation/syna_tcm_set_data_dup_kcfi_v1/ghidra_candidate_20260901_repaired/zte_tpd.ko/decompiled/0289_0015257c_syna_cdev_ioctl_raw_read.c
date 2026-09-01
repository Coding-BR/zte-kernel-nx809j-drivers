
ulong syna_cdev_ioctl_raw_read(long *param_1,ulong param_2,undefined8 param_3,uint param_4)

{
  undefined8 uVar1;
  void *pvVar2;
  uint uVar3;
  int iVar4;
  long lVar5;
  undefined1 *puVar6;
  undefined *puVar7;
  code *pcVar8;
  ulong uVar9;
  undefined8 *puVar10;
  ulong uVar11;
  ulong uVar12;
  size_t __n;
  
  uVar12 = (ulong)param_4;
  if ((uint)param_3 < param_4) {
    uVar12 = _printk(&DAT_0018122a,"syna_cdev_ioctl_raw_read",param_3,uVar12);
    return uVar12;
  }
  if (param_4 == 0) {
    uVar12 = _printk(&DAT_001820f1,"syna_cdev_ioctl_raw_read");
    return uVar12;
  }
  mutex_lock(*param_1 + 0x348);
  if (DAT_0015eaf8 != '\0') {
    uVar12 = _printk(&DAT_00180d77,"syna_tcm_buf_lock");
    return uVar12;
  }
  mutex_lock(&DAT_0015eac8);
  pvVar2 = DAT_0015eab8;
  __n = (size_t)(uint)DAT_0015eac0;
  DAT_0015eaf8 = DAT_0015eaf8 + '\x01';
  uVar3 = (uint)DAT_0015eac0;
  if (param_4 <= (uint)DAT_0015eac0) {
LAB_0015263c:
    DAT_0015eac0._0_4_ = uVar3;
    memset(DAT_0015eab8,0,__n);
    pvVar2 = DAT_0015eab8;
    DAT_0015eac0._4_4_ = 0;
    if (*param_1 == 0) {
      puVar6 = &DAT_0017eb2d;
    }
    else {
      lVar5 = *(long *)(*param_1 + 0x48);
      if (lVar5 == 0) {
        puVar6 = &DAT_00180beb;
      }
      else {
        pcVar8 = *(code **)(lVar5 + 0x20);
        if (pcVar8 != (code *)0x0) {
          if (*(int *)(pcVar8 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x152688);
            (*pcVar8)();
          }
          iVar4 = (*pcVar8)(lVar5,DAT_0015eab8,uVar12);
          if (iVar4 < 0) {
            uVar12 = _printk(&DAT_001827a5,"syna_cdev_ioctl_raw_read",uVar12);
            return uVar12;
          }
          if ((int)param_4 < 0) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(0x800,0x1528f8);
            (*pcVar8)();
          }
          __check_object_size(pvVar2,uVar12,1);
          puVar10 = (undefined8 *)sp_el0;
          if (((*(byte *)((long)puVar10 + 0x46) >> 5 & 1) != 0) ||
             (uVar11 = param_2, ((uint)*puVar10 >> 0x1a & 1) != 0)) {
            uVar11 = param_2 & (long)(param_2 << 8) >> 8;
          }
          if (uVar11 <= 0x8000000000 - uVar12) {
            uVar1 = daif;
            uVar11 = daif;
            daif = uVar11 | 0xc0;
            uVar9 = puVar10[1];
            uVar11 = ttbr1_el1;
            ttbr1_el1 = uVar9 & 0xffff000000000000 | uVar11 & 0xffffffffffff;
            ttbr0_el1 = uVar9;
            InstructionSynchronizationBarrier();
            daif = uVar1;
            lVar5 = __arch_copy_to_user(uVar9,param_2 & 0xff7fffffffffffff,pvVar2,uVar12);
            puVar10 = (undefined8 *)daif;
            uVar11 = daif;
            daif = uVar11 | 0xc0;
            uVar11 = ttbr1_el1;
            ttbr0_el1 = (uVar11 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar11 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = puVar10;
            if (lVar5 == 0) {
              if (DAT_0015eaf8 != '\x01') {
                uVar12 = _printk(puVar10,&DAT_00180d77,"syna_tcm_buf_unlock");
                return uVar12;
              }
              DAT_0015eaf8 = 0;
              mutex_unlock();
              mutex_unlock(*param_1 + 0x348);
              return uVar12;
            }
          }
          uVar12 = _printk(puVar10,&DAT_0017ff28,"syna_cdev_ioctl_raw_read");
          return uVar12;
        }
        puVar6 = &DAT_0017ff65;
      }
    }
    uVar12 = _printk(puVar6,"syna_tcm_read");
    return uVar12;
  }
  if (DAT_0015eab8 != (void *)0x0) {
    lVar5 = syna_request_managed_device();
    if (lVar5 == 0) {
      uVar12 = _printk(&DAT_001828ba,"syna_pal_mem_free");
      return uVar12;
    }
    devm_kfree(lVar5,pvVar2);
  }
  lVar5 = syna_request_managed_device();
  if (lVar5 == 0) {
    puVar7 = &DAT_001828ba;
  }
  else {
    if (0 < (int)param_4) {
      __n = (size_t)param_4;
      DAT_0015eab8 = (void *)devm_kmalloc(lVar5,__n,0xdc0);
      uVar3 = param_4;
      if (DAT_0015eab8 == (void *)0x0) {
        uVar12 = _printk(&DAT_00180576,"syna_tcm_buf_alloc",uVar12);
        return uVar12;
      }
      goto LAB_0015263c;
    }
    puVar7 = &DAT_00180da7;
  }
  uVar12 = _printk(puVar7,"syna_pal_mem_alloc");
  return uVar12;
}

