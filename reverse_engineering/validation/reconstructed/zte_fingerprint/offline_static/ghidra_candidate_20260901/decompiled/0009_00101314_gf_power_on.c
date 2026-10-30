
ulong gf_power_on(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((*(ulong *)(param_1 + 0x98) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x98))) {
    _printk(&DAT_00103a0a,"gf_power_on");
    uVar2 = 0xffffffea;
  }
  else {
    _printk(&DAT_00103b4f,"gf_power_on");
    iVar1 = regulator_is_enabled(*(undefined8 *)(param_1 + 0x98));
    if (iVar1 == 0) {
      uVar2 = regulator_enable(*(undefined8 *)(param_1 + 0x98));
      if ((int)uVar2 != 0) {
        uVar2 = uVar2 & 0xffffffff;
        _printk(&DAT_0010388d,"gf_power_on",uVar2);
      }
    }
    else {
      _printk(&DAT_00102d31,"gf_power_on");
      uVar2 = 0;
    }
  }
  return uVar2;
}

