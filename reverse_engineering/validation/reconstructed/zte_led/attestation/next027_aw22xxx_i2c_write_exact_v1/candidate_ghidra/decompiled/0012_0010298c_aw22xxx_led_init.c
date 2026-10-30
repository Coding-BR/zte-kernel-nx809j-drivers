
void aw22xxx_led_init(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = 0;
  _printk(&DAT_001094c0,"aw22xxx_led_init");
  _printk(&DAT_00108a19,"aw22xxx_led_init");
  aw22xxx_i2c_write();
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_read(param_1,2,local_3c);
  local_3c[0] = local_3c[0] | 1;
  aw22xxx_i2c_write();
  usleep_range_state(2000,3000,2);
  if (*(uint *)(param_1 + 0x2f0) < 0xd) {
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    _printk(&DAT_0010971f,"aw22xxx_led_init");
    aw22xxx_i2c_read(param_1,2,local_3c);
    local_3c[0] = local_3c[0] & 0xfe;
    aw22xxx_i2c_write();
    usleep_range_state(2000,3000,2);
    _printk(&DAT_00108494,"aw22xxx_led_init");
    uVar2 = 0;
  }
  else {
    uVar2 = 0xffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

