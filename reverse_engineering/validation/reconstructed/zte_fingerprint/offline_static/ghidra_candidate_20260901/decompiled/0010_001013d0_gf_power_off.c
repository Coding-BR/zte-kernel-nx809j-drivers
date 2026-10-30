
ulong gf_power_off(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((*(ulong *)(param_1 + 0x98) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x98))) {
    _printk(&DAT_00103a0a,"gf_power_off");
    uVar2 = 0xffffffea;
  }
  else {
    _printk(&DAT_00102e01,"gf_power_off");
    iVar1 = regulator_is_enabled(*(undefined8 *)(param_1 + 0x98));
    if (iVar1 == 0) {
      _printk(&DAT_001031ed,"gf_power_off");
      uVar2 = 0;
    }
    else {
      uVar2 = regulator_disable(*(undefined8 *)(param_1 + 0x98));
      if ((int)uVar2 != 0) {
        uVar2 = uVar2 & 0xffffffff;
        _printk(&DAT_00102c25,"gf_power_off",uVar2);
      }
    }
  }
  return uVar2;
}

