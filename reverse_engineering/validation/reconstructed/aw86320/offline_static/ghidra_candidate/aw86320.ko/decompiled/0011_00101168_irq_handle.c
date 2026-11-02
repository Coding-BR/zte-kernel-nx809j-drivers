
undefined8 irq_handle(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  ushort uVar2;
  ushort local_2c [2];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_00103f02,"aw86320",0x197,"irq_handle");
  local_2c[0] = 0;
  haptic_i2c_read(param_2,4,local_2c);
  uVar2 = local_2c[0];
  _printk(&DAT_00103a80,"aw86320",0x181,"aw86320_get_irq_state",local_2c[0]);
  if ((uVar2 >> 9 & 1) != 0) {
    _printk(&DAT_00104386,"aw86320",0x184,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 8 & 1) != 0) {
    _printk(&DAT_00103df6,"aw86320",0x186,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 7 & 1) != 0) {
    _printk(&DAT_00103aaa,"aw86320",0x188,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 6 & 1) != 0) {
    _printk(&DAT_00103ac5,"aw86320",0x18a,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 5 & 1) != 0) {
    _printk(&DAT_001046d6,"aw86320",0x18c,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 4 & 1) != 0) {
    _printk(&DAT_00104575,"aw86320",0x18e,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 3 & 1) != 0) {
    _printk(&DAT_001037e3,"aw86320",400,"aw86320_get_irq_state");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return 1;
}

