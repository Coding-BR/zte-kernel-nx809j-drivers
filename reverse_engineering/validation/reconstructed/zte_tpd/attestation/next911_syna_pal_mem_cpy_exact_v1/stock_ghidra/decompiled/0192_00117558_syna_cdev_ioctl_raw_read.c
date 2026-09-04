
ulong syna_cdev_ioctl_raw_read(long *param_1,ulong param_2,undefined8 param_3,uint param_4)

{
  undefined8 uVar1;
  void *pvVar2;
  uint uVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  code *pcVar7;
  ulong uVar8;
  undefined8 *puVar9;
  ulong uVar10;
  ulong uVar11;
  size_t __n;
  
  uVar11 = (ulong)param_4;
  if ((uint)param_3 < param_4) {
    _printk(&DAT_00139562,"syna_cdev_ioctl_raw_read",param_3,uVar11);
    return 0xffffffea;
  }
  if (param_4 == 0) {
    _printk(&DAT_0013b75a,"syna_cdev_ioctl_raw_read");
    return 0;
  }
  mutex_lock(*param_1 + 0x348);
  if (DAT_00131e18 != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(&DAT_00131de8);
  pvVar2 = DAT_00131dd8;
  __n = DAT_00131de0 & 0xffffffff;
  DAT_00131e18 = DAT_00131e18 + '\x01';
  if ((uint)DAT_00131de0 < param_4) {
    if (DAT_00131dd8 == (void *)0x0) {
LAB_001175e4:
      lVar4 = syna_request_managed_device();
      if (lVar4 != 0) goto LAB_001175ec;
LAB_00117810:
      puVar6 = &DAT_0013ccb3;
LAB_00117818:
      _printk(puVar6,"syna_pal_mem_alloc");
      DAT_00131dd8 = (void *)0x0;
    }
    else {
      lVar4 = syna_request_managed_device();
      if (lVar4 != 0) {
        devm_kfree(lVar4,pvVar2);
        goto LAB_001175e4;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) goto LAB_00117810;
LAB_001175ec:
      if ((int)param_4 < 1) {
        puVar6 = &DAT_00138e98;
        goto LAB_00117818;
      }
      __n = (size_t)param_4;
      DAT_00131dd8 = (void *)devm_kmalloc(lVar4,__n,0xdc0);
      if (DAT_00131dd8 != (void *)0x0) {
        DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,param_4);
        goto LAB_00117618;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar11);
    DAT_00131de0 = 0;
    _printk(&DAT_00138268,"syna_cdev_ioctl_raw_read",uVar11);
    uVar10 = 0xffffff0d;
    goto LAB_00117868;
  }
LAB_00117618:
  memset(DAT_00131dd8,0,__n);
  pvVar2 = DAT_00131dd8;
  DAT_00131de0 = DAT_00131de0 & 0xffffffff;
  if (*param_1 == 0) {
    uVar10 = 0xffffff0f;
    puVar5 = &DAT_00133fd6;
LAB_001177b4:
    _printk(puVar5,"syna_tcm_read");
  }
  else {
    lVar4 = *(long *)(*param_1 + 0x48);
    if (lVar4 == 0) {
      uVar10 = 0xffffff0f;
      puVar5 = &DAT_001389db;
      goto LAB_001177b4;
    }
    pcVar7 = *(code **)(lVar4 + 0x20);
    if (pcVar7 == (code *)0x0) {
      uVar10 = 0xffffff0b;
      puVar5 = &DAT_00136c67;
      goto LAB_001177b4;
    }
    if (*(int *)(pcVar7 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x117664);
      (*pcVar7)();
    }
    uVar3 = (*pcVar7)(lVar4,DAT_00131dd8,uVar11);
    if (-1 < (int)uVar3) {
      if ((int)param_4 < 0) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x800,0x1178d4);
        (*pcVar7)();
      }
      __check_object_size(pvVar2,uVar11,1);
      puVar9 = (undefined8 *)sp_el0;
      if (((*(byte *)((long)puVar9 + 0x46) >> 5 & 1) != 0) ||
         (uVar10 = param_2, ((uint)*puVar9 >> 0x1a & 1) != 0)) {
        uVar10 = param_2 & (long)(param_2 << 8) >> 8;
      }
      if (uVar10 <= 0x8000000000 - uVar11) {
        uVar1 = daif;
        uVar10 = daif;
        daif = uVar10 | 0xc0;
        uVar8 = puVar9[1];
        uVar10 = ttbr1_el1;
        ttbr1_el1 = uVar8 & 0xffff000000000000 | uVar10 & 0xffffffffffff;
        ttbr0_el1 = uVar8;
        InstructionSynchronizationBarrier();
        daif = uVar1;
        lVar4 = __arch_copy_to_user(uVar8,param_2 & 0xff7fffffffffffff,pvVar2,uVar11);
        puVar9 = (undefined8 *)daif;
        uVar10 = daif;
        daif = uVar10 | 0xc0;
        uVar10 = ttbr1_el1;
        ttbr0_el1 = (uVar10 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar10 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = puVar9;
        uVar10 = uVar11;
        if (lVar4 == 0) goto LAB_00117868;
      }
      _printk(puVar9,&DAT_00136c2a,"syna_cdev_ioctl_raw_read");
      uVar10 = 0xffffffcc;
      goto LAB_00117868;
    }
    uVar10 = (ulong)uVar3;
  }
  _printk(&DAT_0013c657,"syna_cdev_ioctl_raw_read",uVar11);
LAB_00117868:
  if (DAT_00131e18 == '\x01') {
    DAT_00131e18 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    DAT_00131e18 = DAT_00131e18 + -1;
  }
  mutex_unlock();
  mutex_unlock(*param_1 + 0x348);
  return uVar10;
}

