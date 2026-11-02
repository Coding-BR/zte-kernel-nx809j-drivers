
void gf_enable_irq(long param_1)

{
  undefined *puVar1;
  
  if (*(int *)(param_1 + 0x4c) == 0) {
    enable_irq(*(undefined4 *)(param_1 + 0x48));
    puVar1 = &DAT_00103431;
    *(undefined4 *)(param_1 + 0x4c) = 1;
  }
  else {
    puVar1 = &DAT_0010396c;
  }
  _printk(puVar1,"gf_enable_irq");
  return;
}

