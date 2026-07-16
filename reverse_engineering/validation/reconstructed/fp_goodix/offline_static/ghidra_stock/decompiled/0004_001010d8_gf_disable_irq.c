
void gf_disable_irq(long param_1)

{
  if (*(int *)(param_1 + 0x4c) == 0) {
    _printk(&DAT_00103123);
  }
  else {
    *(undefined4 *)(param_1 + 0x4c) = 0;
    disable_irq(*(undefined4 *)(param_1 + 0x48));
  }
  return;
}

