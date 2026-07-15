
void gf_cleanup(long param_1)

{
  int iVar1;
  undefined *puVar2;
  
  _printk(&DAT_00103f8a,"gf_cleanup");
  if (*(int *)(param_1 + 0x3c) < 0) {
    iVar1 = *(int *)(param_1 + 0x40);
  }
  else {
    gpio_free();
    _printk(&DAT_0010314b);
    iVar1 = *(int *)(param_1 + 0x40);
  }
  if (-1 < iVar1) {
    gpio_free();
    _printk(&DAT_00103879);
  }
  if (*(ulong *)(param_1 + 0x98) < 0xfffffffffffff001) {
    iVar1 = regulator_is_enabled();
    if (iVar1 == 0) {
      puVar2 = &DAT_00103ec1;
    }
    else {
      regulator_disable(*(undefined8 *)(param_1 + 0x98));
      puVar2 = &DAT_00103f9e;
    }
    _printk(puVar2);
  }
  return;
}

