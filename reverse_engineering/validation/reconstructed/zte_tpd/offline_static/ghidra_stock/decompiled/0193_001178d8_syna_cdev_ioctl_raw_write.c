
ulong syna_cdev_ioctl_raw_write(long *param_1,ulong param_2,undefined8 param_3,uint param_4)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  void *pvVar3;
  uint uVar4;
  long lVar5;
  undefined1 *puVar6;
  undefined *puVar7;
  ulong uVar8;
  code *pcVar9;
  ulong uVar10;
  ulong uVar11;
  size_t __n;
  
  uVar11 = (ulong)param_4;
  if ((uint)param_3 < param_4) {
    _printk(&DAT_001395f2,"syna_cdev_ioctl_raw_write",param_3,uVar11);
    return 0xffffffea;
  }
  if (param_4 == 0) {
    _printk(&DAT_0013da82,"syna_cdev_ioctl_raw_write");
    return 0xffffffea;
  }
  mutex_lock(*param_1 + 0x348);
  if (DAT_00131e18 != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(&DAT_00131de8);
  pvVar3 = DAT_00131dd8;
  __n = DAT_00131de0 & 0xffffffff;
  DAT_00131e18 = DAT_00131e18 + '\x01';
  if ((uint)DAT_00131de0 < param_4) {
    if (DAT_00131dd8 == (void *)0x0) {
LAB_00117968:
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) goto LAB_00117970;
LAB_00117bbc:
      puVar7 = &DAT_0013ccb3;
LAB_00117bc4:
      _printk(puVar7,"syna_pal_mem_alloc");
      DAT_00131dd8 = (void *)0x0;
    }
    else {
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) {
        devm_kfree(lVar5,pvVar3);
        goto LAB_00117968;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) goto LAB_00117bbc;
LAB_00117970:
      if ((int)param_4 < 1) {
        puVar7 = &DAT_00138e98;
        goto LAB_00117bc4;
      }
      __n = (size_t)param_4;
      DAT_00131dd8 = (void *)devm_kmalloc(lVar5,__n,0xdc0);
      if (DAT_00131dd8 != (void *)0x0) {
        DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,param_4);
        goto LAB_0011799c;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar11);
    DAT_00131de0 = 0;
    _printk(&DAT_00138268,"syna_cdev_ioctl_raw_write",uVar11);
    uVar10 = 0xffffff0d;
    goto LAB_00117c14;
  }
LAB_0011799c:
  memset(DAT_00131dd8,0,__n);
  pvVar3 = DAT_00131dd8;
  DAT_00131de0 = DAT_00131de0 & 0xffffffff;
  if ((int)param_4 < 0) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x800,0x117c84);
    (*pcVar9)();
  }
  __check_object_size(DAT_00131dd8,uVar11,0);
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar10 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar10 = param_2 & (long)(param_2 << 8) >> 8;
  }
  uVar8 = uVar11;
  if (0x8000000000 - uVar11 < uVar10) {
LAB_001179fc:
    memset((void *)((long)pvVar3 + (uVar11 - uVar8)),0,uVar8);
    if ((int)uVar8 != 0) {
      _printk(&DAT_001352ed,"syna_cdev_ioctl_raw_write",uVar8 & 0xffffffff);
      uVar10 = 0xffffffcc;
      goto LAB_00117c14;
    }
  }
  else {
    uVar2 = daif;
    uVar10 = daif;
    daif = uVar10 | 0xc0;
    uVar8 = puVar1[1];
    uVar10 = ttbr1_el1;
    ttbr1_el1 = uVar8 & 0xffff000000000000 | uVar10 & 0xffffffffffff;
    ttbr0_el1 = uVar8;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    uVar8 = __arch_copy_from_user(uVar8,pvVar3,param_2 & 0xff7fffffffffffff,uVar11);
    uVar2 = daif;
    uVar10 = daif;
    daif = uVar10 | 0xc0;
    uVar10 = ttbr1_el1;
    ttbr0_el1 = (uVar10 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar10 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    if (uVar8 != 0) goto LAB_001179fc;
  }
  if (*param_1 == 0) {
    uVar10 = 0xffffff0f;
    puVar6 = &DAT_00133fd6;
LAB_00117b68:
    _printk(puVar6,"syna_tcm_write");
  }
  else {
    lVar5 = *(long *)(*param_1 + 0x48);
    if (lVar5 == 0) {
      uVar10 = 0xffffff0f;
      puVar6 = &DAT_001389db;
      goto LAB_00117b68;
    }
    pcVar9 = *(code **)(lVar5 + 0x28);
    if (pcVar9 == (code *)0x0) {
      uVar10 = 0xffffff0b;
      puVar6 = &DAT_00138a0e;
      goto LAB_00117b68;
    }
    if (*(int *)(pcVar9 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x117ad8);
      (*pcVar9)();
    }
    uVar4 = (*pcVar9)(lVar5,pvVar3,uVar11);
    uVar10 = uVar11;
    if (-1 < (int)uVar4) goto LAB_00117c14;
    uVar10 = (ulong)uVar4;
  }
  _printk(&DAT_00137bd9,"syna_cdev_ioctl_raw_write",uVar11);
LAB_00117c14:
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

