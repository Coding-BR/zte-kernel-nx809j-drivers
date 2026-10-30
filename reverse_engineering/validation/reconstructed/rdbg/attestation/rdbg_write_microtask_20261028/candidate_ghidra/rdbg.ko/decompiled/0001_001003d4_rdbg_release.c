
undefined8 rdbg_release(long param_1,long param_2)

{
  undefined8 uVar1;
  long lVar2;
  uint uVar3;
  
  if ((param_1 == 0) || (DAT_001000f8 == 0)) {
    _printk(&DAT_0010163d);
    uVar1 = 0xffffffed;
  }
  else {
    uVar3 = *(uint *)(param_1 + 0x4c) & 0xfffff;
    lVar2 = DAT_001000f8 + (ulong)uVar3 * 0x1c8;
    if (*(char *)(lVar2 + 0x60) == '\x01') {
      *(undefined1 *)(lVar2 + 0x60) = 0;
      complete(lVar2 + 8);
      lVar2 = DAT_001000f8 + (ulong)uVar3 * 0x1c8;
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
      lVar2 = DAT_001000f8 + (ulong)uVar3 * 0x1c8;
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

