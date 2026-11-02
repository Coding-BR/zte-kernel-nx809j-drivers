
void cleanup_module(void)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  if (0 < DAT_001000a4) {
    lVar3 = 0;
    lVar4 = 0x58;
    lVar2 = DAT_001000a8;
    iVar1 = DAT_001000a4;
    do {
      if (*(char *)(lVar2 + lVar4) == '\x01') {
        device_destroy(DAT_00100098,DAT_001000a0 & 0xfff00000 | (uint)lVar3);
        lVar2 = DAT_001000a8;
        iVar1 = DAT_001000a4;
      }
      lVar3 = lVar3 + 1;
      lVar4 = lVar4 + 0x1c8;
    } while (lVar3 < iVar1);
  }
  class_destroy(DAT_00100098);
  cdev_del(&g_rdbg_instance);
  unregister_chrdev_region(DAT_001000a0,1);
  kfree(DAT_001000a8);
  return;
}

