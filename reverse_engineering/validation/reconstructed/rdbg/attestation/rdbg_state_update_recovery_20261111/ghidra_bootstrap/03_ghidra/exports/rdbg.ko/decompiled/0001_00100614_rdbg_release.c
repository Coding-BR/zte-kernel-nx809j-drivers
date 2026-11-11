
undefined8 rdbg_release(long param_1,long param_2)

{
  undefined8 uVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  long lVar5;
  
  if ((param_1 == 0) || (DAT_00100118 == 0)) {
    _printk(&DAT_00101b16);
    uVar1 = 0xffffffed;
  }
  else {
    lVar2 = *(long *)(param_2 + 0x20);
    uVar4 = *(uint *)(param_1 + 0x4c) & 0xfffff;
    lVar3 = DAT_00100118 + (ulong)uVar4 * 0x1c8;
    if (*(char *)(lVar3 + 0x60) == '\x01') {
      complete(lVar3 + 8);
      free_irq(*(undefined4 *)(lVar2 + 0x38),lVar3);
      lVar5 = DAT_00100118 + (ulong)uVar4 * 0x1c8;
      if (*(int *)(lVar5 + 0xa8) == -0xff0100) {
        if (*(int *)(lVar5 + 0xc0) == 2) {
          **(undefined4 **)(lVar5 + 0x88) = 0;
        }
        else if (*(int *)(lVar5 + 0xc0) == 1) {
          **(undefined4 **)(lVar5 + 0x80) = 0;
          kfree(*(undefined8 *)(lVar5 + 0xb8));
          *(undefined8 *)(lVar5 + 0xb8) = 0;
        }
        *(undefined4 *)(lVar5 + 0xa8) = 0;
      }
      lVar5 = DAT_00100118 + (ulong)uVar4 * 0x1c8;
      if (*(int *)(lVar5 + 0xf8) == -0xff0100) {
        if (*(int *)(lVar5 + 0x110) == 2) {
          **(undefined4 **)(lVar5 + 0xd8) = 0;
        }
        else if (*(int *)(lVar5 + 0x110) == 1) {
          **(undefined4 **)(lVar5 + 0xd0) = 0;
          kfree(*(undefined8 *)(lVar5 + 0x108));
          *(undefined8 *)(lVar5 + 0x108) = 0;
        }
        *(undefined4 *)(lVar5 + 0xf8) = 0;
      }
      *(undefined1 *)(lVar3 + 0x60) = 0;
    }
    *(undefined8 *)(param_2 + 0x20) = 0;
    if (lVar2 != 0) {
      kfree(lVar2);
    }
    uVar1 = 0;
  }
  return uVar1;
}

