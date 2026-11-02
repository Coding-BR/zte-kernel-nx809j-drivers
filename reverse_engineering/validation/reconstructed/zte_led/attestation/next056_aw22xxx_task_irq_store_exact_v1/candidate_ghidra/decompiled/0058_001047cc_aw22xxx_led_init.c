
void aw22xxx_led_init(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  byte bVar3;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  _printk(&DAT_001085d1,"aw22xxx_led_init");
  _printk(&DAT_001081dd,"aw22xxx_led_init");
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_read(param_1,2,local_2c);
  local_2c[0] = local_2c[0] | 1;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  if (*(uint *)(param_1 + 0x2f0) < 0xd) {
    bVar3 = aw22xxx_imax_code[*(uint *)(param_1 + 0x2f0)];
    if (0xe < bVar3) {
      bVar3 = 0xf;
    }
    aw22xxx_i2c_write(param_1,0xff,0);
    aw22xxx_i2c_write(param_1,0xb,bVar3);
    _printk(&DAT_001086d8,"aw22xxx_led_init");
    aw22xxx_i2c_read(param_1,2,local_2c);
    local_2c[0] = local_2c[0] & 0xfe;
    aw22xxx_i2c_write(param_1,2);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_00107fac,"aw22xxx_led_init");
    uVar2 = 0;
  }
  else {
    uVar2 = 0xffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

