
void cleanup_module(void)

{
  ulong uVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  platform_driver_unregister(rdbg_driver);
  uVar1 = (ulong)DAT_00100114;
  if (DAT_00100118 != 0) {
    if ((int)DAT_00100114 < 1) goto LAB_00101a70;
    lVar3 = 0;
    lVar4 = 0x50;
    do {
      lVar2 = DAT_00100118;
      mutex_lock(&rdbg_smem_state_lock);
      uVar1 = *(ulong *)(lVar2 + lVar4);
      if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
        *(undefined8 *)(lVar2 + lVar4) = 0;
        qcom_smem_state_put();
      }
      mutex_unlock(&rdbg_smem_state_lock);
      uVar1 = (ulong)(int)DAT_00100114;
      lVar3 = lVar3 + 1;
      lVar4 = lVar4 + 0x1c8;
    } while (lVar3 < (long)uVar1);
  }
  if (0 < (int)uVar1) {
    lVar3 = 0;
    lVar4 = 0x58;
    lVar2 = DAT_00100118;
    do {
      if (*(char *)(lVar2 + lVar4) == '\x01') {
        device_destroy(DAT_00100108,DAT_00100110 & 0xfff00000 | (uint)lVar3);
        uVar1 = (ulong)DAT_00100114;
        lVar2 = DAT_00100118;
      }
      lVar3 = lVar3 + 1;
      lVar4 = lVar4 + 0x1c8;
    } while (lVar3 < (int)uVar1);
  }
LAB_00101a70:
  class_destroy(DAT_00100108);
  cdev_del(&g_rdbg_instance);
  unregister_chrdev_region(DAT_00100110,DAT_00100114);
  kfree(DAT_00100118);
  DAT_00100118 = 0;
  return;
}

