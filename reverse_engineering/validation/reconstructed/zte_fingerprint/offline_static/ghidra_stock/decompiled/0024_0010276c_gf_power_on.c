
ulong gf_power_on(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((param_1 == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x98))) {
    _printk(&DAT_001032fa);
    uVar2 = 0xffffffed;
  }
  else {
    _printk(&DAT_00103e1d);
    iVar1 = regulator_is_enabled(*(undefined8 *)(param_1 + 0x98));
    if (iVar1 == 0) {
      uVar2 = regulator_enable(*(undefined8 *)(param_1 + 0x98));
      if ((int)uVar2 != 0) {
        uVar2 = uVar2 & 0xffffffff;
        _printk(&DAT_00102e43,uVar2);
      }
    }
    else {
      _printk(&DAT_00102b20);
      uVar2 = 0;
    }
  }
  return uVar2;
}

