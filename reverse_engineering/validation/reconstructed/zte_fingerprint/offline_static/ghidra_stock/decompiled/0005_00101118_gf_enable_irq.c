
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void gf_enable_irq(void)

{
  if (_DAT_00104224 == 0) {
    enable_irq(_DAT_00104220);
    _DAT_00104224 = 1;
  }
  else {
    _printk(&DAT_00103088);
  }
  return;
}

