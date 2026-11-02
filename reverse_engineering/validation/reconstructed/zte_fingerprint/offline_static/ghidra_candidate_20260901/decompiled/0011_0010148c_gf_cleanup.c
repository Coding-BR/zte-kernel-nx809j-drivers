
void gf_cleanup(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if (param_1 != 0) {
    _printk(&DAT_001031a8,"gf_cleanup");
    if (*(int *)(param_1 + 0x3c) < 0) {
      iVar1 = *(int *)(param_1 + 0x40);
    }
    else {
      gpio_free();
      _printk(&DAT_0010398a,"gf_cleanup");
      iVar1 = *(int *)(param_1 + 0x40);
    }
    if (iVar1 < 0) {
      uVar2 = *(ulong *)(param_1 + 0x98);
    }
    else {
      gpio_free();
      _printk(&DAT_00103038,"gf_cleanup");
      uVar2 = *(ulong *)(param_1 + 0x98);
    }
    if (((uVar2 != 0) && (uVar2 < 0xfffffffffffff001)) &&
       (iVar1 = regulator_is_enabled(), iVar1 != 0)) {
      regulator_disable(*(undefined8 *)(param_1 + 0x98));
      _printk(&DAT_001039a0,"gf_cleanup");
    }
    return;
  }
  return;
}

