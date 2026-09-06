
ulong gf_power_off(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((param_1 == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x98))) {
    _printk(&DAT_00103157);
    uVar2 = 0xffffffed;
  }
  else {
    _printk(&DAT_00103591);
    iVar1 = regulator_is_enabled(*(undefined8 *)(param_1 + 0x98));
    if (iVar1 == 0) {
      _printk(&DAT_00102cd4);
      uVar2 = 0;
    }
    else {
      uVar2 = regulator_disable(*(undefined8 *)(param_1 + 0x98));
      if ((int)uVar2 != 0) {
        uVar2 = uVar2 & 0xffffffff;
        _printk(&DAT_00102aa5,uVar2);
      }
    }
  }
  return uVar2;
}

