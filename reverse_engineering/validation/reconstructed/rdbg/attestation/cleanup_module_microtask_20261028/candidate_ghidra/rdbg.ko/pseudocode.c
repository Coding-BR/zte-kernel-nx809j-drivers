/* 00100144 on_interrupt_from */

undefined8 on_interrupt_from(undefined8 param_1,long param_2)

{
  complete(param_2 + 8);
  return 1;
}



/* 00100170 cleanup_module */

void cleanup_module(void)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  if (0 < DAT_00100094) {
    lVar3 = 0;
    lVar4 = 0x58;
    lVar2 = DAT_00100098;
    iVar1 = DAT_00100094;
    do {
      if (*(char *)(lVar2 + lVar4) == '\x01') {
        device_destroy(DAT_00100088,DAT_00100090 & 0xfff00000 | (uint)lVar3);
        lVar2 = DAT_00100098;
        iVar1 = DAT_00100094;
      }
      lVar3 = lVar3 + 1;
      lVar4 = lVar4 + 0x1c8;
    } while (lVar3 < iVar1);
  }
  class_destroy(DAT_00100088);
  cdev_del(0x100000);
  unregister_chrdev_region(DAT_00100090,1);
  kfree(DAT_00100098);
  return;
}



