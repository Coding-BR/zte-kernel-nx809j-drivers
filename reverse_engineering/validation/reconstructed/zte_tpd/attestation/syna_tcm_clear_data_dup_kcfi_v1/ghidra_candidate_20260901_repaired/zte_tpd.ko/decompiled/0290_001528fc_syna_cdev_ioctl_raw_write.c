
ulong syna_cdev_ioctl_raw_write(long *param_1,ulong param_2,undefined8 param_3,uint param_4)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  void *pvVar3;
  uint uVar4;
  int iVar5;
  long lVar6;
  undefined1 *puVar7;
  undefined *puVar8;
  ulong uVar9;
  code *pcVar10;
  ulong uVar11;
  ulong uVar12;
  size_t __n;
  
  uVar12 = (ulong)param_4;
  if ((uint)param_3 < param_4) {
    uVar12 = _printk(&DAT_00181269,"syna_cdev_ioctl_raw_write",param_3,uVar12);
    return uVar12;
  }
  if (param_4 == 0) {
    uVar12 = _printk(&DAT_00182f81,"syna_cdev_ioctl_raw_write");
    return uVar12;
  }
  mutex_lock(*param_1 + 0x348);
  if (DAT_0015eaf8 != '\0') {
    uVar12 = _printk(&DAT_00180d77,"syna_tcm_buf_lock");
    return uVar12;
  }
  mutex_lock(&DAT_0015eac8);
  pvVar3 = DAT_0015eab8;
  __n = (size_t)(uint)DAT_0015eac0;
  DAT_0015eaf8 = DAT_0015eaf8 + '\x01';
  uVar4 = (uint)DAT_0015eac0;
  if ((uint)DAT_0015eac0 < param_4) {
    if (DAT_0015eab8 != (void *)0x0) {
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        uVar12 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar12;
      }
      devm_kfree(lVar6,pvVar3);
    }
    lVar6 = syna_request_managed_device();
    if (lVar6 == 0) {
      puVar8 = &DAT_001828ba;
LAB_00152be8:
      uVar12 = _printk(puVar8,"syna_pal_mem_alloc");
      return uVar12;
    }
    if ((int)param_4 < 1) {
      puVar8 = &DAT_00180da7;
      goto LAB_00152be8;
    }
    __n = (size_t)param_4;
    DAT_0015eab8 = (void *)devm_kmalloc(lVar6,__n,0xdc0);
    uVar4 = param_4;
    if (DAT_0015eab8 == (void *)0x0) {
      uVar12 = _printk(&DAT_00180576,"syna_tcm_buf_alloc",uVar12);
      return uVar12;
    }
  }
  DAT_0015eac0._0_4_ = uVar4;
  memset(DAT_0015eab8,0,__n);
  pvVar3 = DAT_0015eab8;
  DAT_0015eac0._4_4_ = 0;
  if ((int)param_4 < 0) {
                    /* WARNING: Does not return */
    pcVar10 = (code *)SoftwareBreakpoint(0x800,0x152ca8);
    (*pcVar10)();
  }
  __check_object_size(DAT_0015eab8,uVar12,0);
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar11 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar11 = param_2 & (long)(param_2 << 8) >> 8;
  }
  uVar9 = uVar12;
  if (uVar11 <= 0x8000000000 - uVar12) {
    uVar2 = daif;
    uVar11 = daif;
    daif = uVar11 | 0xc0;
    uVar9 = puVar1[1];
    uVar11 = ttbr1_el1;
    ttbr1_el1 = uVar9 & 0xffff000000000000 | uVar11 & 0xffffffffffff;
    ttbr0_el1 = uVar9;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    uVar9 = __arch_copy_from_user(uVar9,pvVar3,param_2 & 0xff7fffffffffffff,uVar12);
    uVar2 = daif;
    uVar11 = daif;
    daif = uVar11 | 0xc0;
    uVar11 = ttbr1_el1;
    ttbr0_el1 = (uVar11 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar11 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    if (uVar9 == 0) goto LAB_00152ac4;
  }
  memset((void *)((long)pvVar3 + (uVar12 - uVar9)),0,uVar9);
  if ((int)uVar9 != 0) {
    uVar12 = _printk(&DAT_0017f576,"syna_cdev_ioctl_raw_write",uVar9 & 0xffffffff);
    return uVar12;
  }
LAB_00152ac4:
  if (*param_1 == 0) {
    puVar7 = &DAT_0017eb2d;
  }
  else {
    lVar6 = *(long *)(*param_1 + 0x48);
    if (lVar6 == 0) {
      puVar7 = &DAT_00180beb;
    }
    else {
      pcVar10 = *(code **)(lVar6 + 0x28);
      if (pcVar10 != (code *)0x0) {
        if (*(int *)(pcVar10 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
          pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x152afc);
          (*pcVar10)();
        }
        iVar5 = (*pcVar10)(lVar6,pvVar3,uVar12);
        if (-1 < iVar5) {
          if (DAT_0015eaf8 != '\x01') {
            uVar12 = _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
            return uVar12;
          }
          DAT_0015eaf8 = 0;
          mutex_unlock();
          mutex_unlock(*param_1 + 0x348);
          return uVar12;
        }
        uVar12 = _printk(&DAT_001805df,"syna_cdev_ioctl_raw_write",uVar12);
        return uVar12;
      }
      puVar7 = &DAT_00180c1e;
    }
  }
  uVar12 = _printk(puVar7,"syna_tcm_write");
  return uVar12;
}

