
undefined4 zte_ir_open(long param_1,long param_2)

{
  long *plVar1;
  undefined4 uVar2;
  
  mutex_lock(0x100000);
  plVar1 = (long *)0x100030;
  do {
    plVar1 = (long *)*plVar1;
    if (plVar1 == (long *)0x100030) {
      _printk(&DAT_00100981,*(uint *)(param_1 + 0x4c) & 0xfffff);
      uVar2 = 0xfffffffa;
      goto LAB_00100538;
    }
  } while (*(int *)(plVar1 + -0x271b) != *(int *)(param_1 + 0x4c));
  _printk(&DAT_00100aa2);
  *(long **)(param_2 + 0x20) = plVar1 + -0x271b;
  nonseekable_open(param_1,param_2);
  uVar2 = 0;
LAB_00100538:
  mutex_unlock(0x100000);
  return uVar2;
}

