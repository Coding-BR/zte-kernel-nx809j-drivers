
undefined8 tpd_set_frame_data(long param_1,undefined4 param_2)

{
  int iVar1;
  undefined *puVar2;
  long *plVar3;
  undefined4 uVar4;
  
  plVar3 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_frame_data");
  if (plVar3 == (long *)0x0) {
    return 0xffffffea;
  }
  if ((*(int *)(plVar3[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar3[0x4e] + 0xbc) & 1) == 0)) {
    uVar4 = *(undefined4 *)(*plVar3 + 0x20c);
  }
  else {
    uVar4 = 0;
  }
  if (*(int *)((long)plVar3 + 0x57c) == 1) {
    *(undefined4 *)(plVar3 + 0xbc) = param_2;
    zte_reset_frame_list(plVar3);
    iVar1 = syna_dev_get_frame_data(plVar3,param_2,uVar4);
    if (-1 < iVar1) {
      return 0;
    }
    puVar2 = &DAT_00134f6a;
  }
  else {
    puVar2 = &DAT_0013c39a;
  }
  _printk(puVar2,"tpd_set_frame_data");
  return 0;
}

