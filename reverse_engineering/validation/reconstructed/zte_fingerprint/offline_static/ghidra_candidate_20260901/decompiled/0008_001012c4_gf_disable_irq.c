
void gf_disable_irq(long param_1)

{
  undefined *puVar1;
  
  if (*(int *)(param_1 + 0x4c) == 0) {
    puVar1 = &DAT_00103b30;
  }
  else {
    *(undefined4 *)(param_1 + 0x4c) = 0;
    disable_irq(*(undefined4 *)(param_1 + 0x48));
    puVar1 = &DAT_00103194;
  }
  _printk(puVar1,"gf_disable_irq");
  return;
}

