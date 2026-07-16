
ulong gf_power_off(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((param_1 == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x98))) {
    _printk(&DAT_001032bb);
    uVar2 = 0xffffffed;
  }
  else {
    _printk(&DAT_001036b4);
    iVar1 = regulator_is_enabled(*(undefined8 *)(param_1 + 0x98));
    if (iVar1 == 0) {
      _printk(&DAT_00102e65);
      uVar2 = 0;
    }
    else {
      uVar2 = regulator_disable(*(undefined8 *)(param_1 + 0x98));
      if ((int)uVar2 != 0) {
        uVar2 = uVar2 & 0xffffffff;
        _printk(&DAT_00102c12,uVar2);
      }
    }
  }
  return uVar2;
}

