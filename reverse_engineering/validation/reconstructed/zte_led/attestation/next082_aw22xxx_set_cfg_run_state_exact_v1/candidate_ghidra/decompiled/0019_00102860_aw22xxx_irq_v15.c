
void aw22xxx_irq_v15(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  undefined1 local_44 [28];
  undefined8 local_28;
  
  lVar1 = sp_el0;
  local_28 = *(undefined8 *)(lVar1 + 0x710);
  local_44[0] = 0;
  aw22xxx_i2c_read(param_2,10,local_44);
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0010654f,"aw22xxx_irq_v15",local_44[0]);
}

