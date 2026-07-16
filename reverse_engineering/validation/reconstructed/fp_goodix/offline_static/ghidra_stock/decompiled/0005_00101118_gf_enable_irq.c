
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void gf_enable_irq(void)

{
  if (_DAT_0010405c == 0) {
    enable_irq(_DAT_00104058);
    _DAT_0010405c = 1;
  }
  else {
    _printk(&DAT_00103b0e);
  }
  return;
}

