
undefined4 zte_ir_open(long param_1,long param_2)

{
  undefined **ppuVar1;
  undefined4 uVar2;
  
  mutex_lock(&device_list_lock);
  ppuVar1 = &device_list;
  do {
    ppuVar1 = (undefined **)*ppuVar1;
    if (ppuVar1 == &device_list) {
      _printk(&DAT_001011e9,*(uint *)(param_1 + 0x4c) & 0xfffff);
      uVar2 = 0xfffffffa;
      goto LAB_0010089c;
    }
  } while (*(int *)(ppuVar1 + -0x271b) != *(int *)(param_1 + 0x4c));
  _printk(&DAT_0010130a);
  *(undefined ***)(param_2 + 0x20) = ppuVar1 + -0x271b;
  nonseekable_open(param_1,param_2);
  uVar2 = 0;
LAB_0010089c:
  mutex_unlock(&device_list_lock);
  return uVar2;
}

