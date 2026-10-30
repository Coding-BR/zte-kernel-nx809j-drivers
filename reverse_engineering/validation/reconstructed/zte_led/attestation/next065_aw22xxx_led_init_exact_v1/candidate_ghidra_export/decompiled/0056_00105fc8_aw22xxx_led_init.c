
void aw22xxx_led_init(long param_1)

{
  long lVar1;
  code *pcVar2;
  byte bVar3;
  byte abStack_30 [4];
  byte abStack_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_00106edd,"aw22xxx_led_init");
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  _printk(&UNK_00107a8c,"aw22xxx_chip_enable",0x1aa,1);
  abStack_30[0] = 0;
  aw22xxx_i2c_read(param_1,2,abStack_30);
  abStack_30[0] = abStack_30[0] | 1;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  if (0xc < *(uint *)(param_1 + 0x2f0)) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x106154);
    (*pcVar2)();
  }
  bVar3 = aw22xxx_imax_code[*(uint *)(param_1 + 0x2f0)];
  if (0xe < bVar3) {
    bVar3 = 0xf;
  }
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,0xb,bVar3);
  _printk(&UNK_00107a8c,"aw22xxx_chip_enable",0x1aa,0);
  abStack_2c[0] = 0;
  aw22xxx_i2c_read(param_1,2,abStack_2c);
  abStack_2c[0] = abStack_2c[0] & 0xfe;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_00107b65,"aw22xxx_led_init");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

