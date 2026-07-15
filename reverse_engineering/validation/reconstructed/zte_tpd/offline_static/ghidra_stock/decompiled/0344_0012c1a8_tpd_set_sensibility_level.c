
undefined8 tpd_set_sensibility_level(long param_1,uint param_2)

{
  uint uVar1;
  int iVar2;
  undefined *puVar3;
  undefined4 uVar4;
  long *plVar5;
  
  plVar5 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_sensibility_level");
  if (plVar5 == (long *)0x0) {
    return 0xffffffea;
  }
  if ((*(int *)(plVar5[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar5[0x4e] + 0xbc) & 1) == 0)) {
    uVar4 = *(undefined4 *)(*plVar5 + 0x20c);
  }
  else {
    uVar4 = 0;
  }
  uVar1 = param_2 & 0xff;
  if ((param_2 & 0xfc) != 0) {
    uVar1 = 4;
  }
  *(uint *)((long)plVar5 + 0x5fc) = uVar1;
  if (*(int *)((long)plVar5 + 0x57c) == 1) {
    iVar2 = syna_dev_set_sensibility_level(plVar5,uVar1,uVar4);
    if (-1 < iVar2) {
      return 0;
    }
    puVar3 = &DAT_00137424;
  }
  else {
    puVar3 = &DAT_0013c39a;
  }
  _printk(puVar3,"tpd_set_sensibility_level");
  return 0;
}

