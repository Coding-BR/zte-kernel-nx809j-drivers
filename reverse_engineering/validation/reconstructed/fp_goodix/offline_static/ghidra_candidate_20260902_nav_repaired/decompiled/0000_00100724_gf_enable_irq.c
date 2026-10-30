
void gf_enable_irq(void)

{
  if (DAT_00103e0c == 0) {
    enable_irq(DAT_00103e04._4_4_);
    DAT_00103e0c = 1;
  }
  else {
    _printk(&DAT_001039df);
  }
  return;
}

