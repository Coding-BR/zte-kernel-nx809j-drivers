
void aw22xxx_led_init(long param_1)

{
  uint uVar1;
  long lVar2;
  undefined8 uVar3;
  byte abStack_3c [4];
  long lStack_38;
  
  lVar2 = sp_el0;
  lStack_38 = *(long *)(lVar2 + 0x710);
  abStack_3c[0] = 0;
  _printk(&DAT_001096ee,"aw22xxx_led_init");
  _printk(&DAT_00108b64,"aw22xxx_led_init");
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_read(param_1,2,abStack_3c);
  abStack_3c[0] = abStack_3c[0] | 1;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  uVar1 = *(uint *)(param_1 + 0x2f0);
  if (uVar1 < 0xd) {
    aw22xxx_i2c_write(param_1,0xff,0);
    aw22xxx_i2c_write(param_1,0xb,(&aw22xxx_imax_code)[uVar1]);
    _printk(&DAT_0010996b,"aw22xxx_led_init");
    aw22xxx_i2c_read(param_1,2,abStack_3c);
    abStack_3c[0] = abStack_3c[0] & 0xfe;
    aw22xxx_i2c_write(param_1,2);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_001085b4,"aw22xxx_led_init");
    uVar3 = 0;
  }
  else {
    uVar3 = 0xffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == lStack_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

