
void aw22xxx_irq(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk("\x016aw22xxx: %s enter\n","aw22xxx_irq");
  return;
}

