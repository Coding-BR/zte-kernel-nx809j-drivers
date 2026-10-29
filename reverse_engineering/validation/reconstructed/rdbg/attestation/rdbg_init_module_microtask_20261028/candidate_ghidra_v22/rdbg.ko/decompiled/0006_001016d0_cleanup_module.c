
void cleanup_module(void)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  if (0 < DAT_00100104) {
    lVar3 = 0;
    lVar4 = 0x58;
    lVar2 = DAT_00100108;
    iVar1 = DAT_00100104;
    do {
      if (*(char *)(lVar2 + lVar4) == '\x01') {
        device_destroy(DAT_001000f8,DAT_00100100 & 0xfff00000 | (uint)lVar3);
        lVar2 = DAT_00100108;
        iVar1 = DAT_00100104;
      }
      lVar3 = lVar3 + 1;
      lVar4 = lVar4 + 0x1c8;
    } while (lVar3 < iVar1);
  }
  class_destroy(DAT_001000f8);
  cdev_del(&g_rdbg_instance);
  unregister_chrdev_region(DAT_00100100,1);
  kfree(DAT_00100108);
  return;
}

