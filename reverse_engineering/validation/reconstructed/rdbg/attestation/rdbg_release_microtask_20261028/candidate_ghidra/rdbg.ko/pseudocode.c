/* 00100194 on_interrupt_from */

undefined8 on_interrupt_from(undefined8 param_1,long param_2)

{
  complete(param_2 + 8);
  return 1;
}



/* 001001bc rdbg_release */

undefined8 rdbg_release(long param_1,long param_2)

{
  undefined8 uVar1;
  long lVar2;
  uint uVar3;
  
  if ((param_1 == 0) || (DAT_00100098 == 0)) {
    _printk(&DAT_001003a8);
    uVar1 = 0xffffffed;
  }
  else {
    uVar3 = *(uint *)(param_1 + 0x4c) & 0xfffff;
    lVar2 = DAT_00100098 + (ulong)uVar3 * 0x1c8;
    if (*(char *)(lVar2 + 0x60) == '\x01') {
      *(undefined1 *)(lVar2 + 0x60) = 0;
      complete(lVar2 + 8);
      lVar2 = DAT_00100098 + (ulong)uVar3 * 0x1c8;
      if (*(int *)(lVar2 + 0xa8) == -0xff0100) {
        if (*(int *)(lVar2 + 0xc0) == 2) {
          **(undefined4 **)(lVar2 + 0x88) = 0;
        }
        else if (*(int *)(lVar2 + 0xc0) == 1) {
          **(undefined4 **)(lVar2 + 0x80) = 0;
          kfree(*(undefined8 *)(lVar2 + 0xb8));
          *(undefined8 *)(lVar2 + 0xb8) = 0;
        }
        *(undefined4 *)(lVar2 + 0xa8) = 0;
      }
      lVar2 = DAT_00100098 + (ulong)uVar3 * 0x1c8;
      if (*(int *)(lVar2 + 0xf8) == -0xff0100) {
        if (*(int *)(lVar2 + 0x110) == 2) {
          **(undefined4 **)(lVar2 + 0xd8) = 0;
        }
        else if (*(int *)(lVar2 + 0x110) == 1) {
          **(undefined4 **)(lVar2 + 0xd0) = 0;
          kfree(*(undefined8 *)(lVar2 + 0x108));
          *(undefined8 *)(lVar2 + 0x108) = 0;
        }
        *(undefined4 *)(lVar2 + 0xf8) = 0;
      }
    }
    uVar1 = 0;
    *(undefined8 *)(param_2 + 0x20) = 0;
  }
  return uVar1;
}



/* 001002f4 cleanup_module */

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



