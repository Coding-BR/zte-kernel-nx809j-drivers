
undefined4 tpd_set_display_rotation(long param_1,undefined4 param_2)

{
  int iVar1;
  long *plVar2;
  undefined4 uVar3;
  
  plVar2 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_display_rotation");
  if (plVar2 == (long *)0x0) {
LAB_0012c544:
    uVar3 = 0xffffffea;
  }
  else {
    if ((*(int *)(plVar2[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar2[0x4e] + 0xbc) & 1) == 0)) {
      uVar3 = *(undefined4 *)(*plVar2 + 0x20c);
    }
    else {
      uVar3 = 0;
    }
    *(undefined4 *)(param_1 + 0x10) = param_2;
    *(undefined4 *)(plVar2 + 0xc1) = param_2;
    _printk(&DAT_001386d6,"tpd_set_display_rotation",*(undefined4 *)(param_1 + 0x10));
    if (*(int *)((long)plVar2 + 0x57c) != 1) {
      _printk(&DAT_0013d207,"tpd_set_display_rotation",0);
      msleep(200);
      if (*(int *)((long)plVar2 + 0x57c) != 1) {
        _printk(&DAT_0013d207,"tpd_set_display_rotation",1);
        msleep(200);
        if (*(int *)((long)plVar2 + 0x57c) != 1) {
          _printk(&DAT_0013d207,"tpd_set_display_rotation",2);
          msleep(200);
          if (*(int *)((long)plVar2 + 0x57c) != 1) {
            _printk(&DAT_0013d207,"tpd_set_display_rotation",3);
            msleep(200);
            if (*(int *)((long)plVar2 + 0x57c) != 1) {
              _printk(&DAT_0013d207,"tpd_set_display_rotation",4);
              msleep(200);
              _printk(&DAT_0013985e,"tpd_set_display_rotation");
              goto LAB_0012c544;
            }
          }
        }
      }
    }
    iVar1 = syna_dev_set_display_rotation(plVar2,*(undefined4 *)(param_1 + 0x10),uVar3);
    if (iVar1 < 0) {
      _printk(&DAT_00137455,"tpd_set_display_rotation");
    }
    uVar3 = *(undefined4 *)(param_1 + 0x10);
  }
  return uVar3;
}

