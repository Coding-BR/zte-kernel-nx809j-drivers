
void aw22xxx_irq_v15(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  byte local_2c [4];
  undefined8 local_28;
  
  lVar1 = sp_el0;
  local_28 = *(undefined8 *)(lVar1 + 0x710);
  local_2c[0] = 0;
  aw22xxx_i2c_read(param_2,10,local_2c);
  _printk("\x016aw22xxx: %s status=0x%02x\n","aw22xxx_irq_v15",(ulong)local_2c[0]);
  return;
}

