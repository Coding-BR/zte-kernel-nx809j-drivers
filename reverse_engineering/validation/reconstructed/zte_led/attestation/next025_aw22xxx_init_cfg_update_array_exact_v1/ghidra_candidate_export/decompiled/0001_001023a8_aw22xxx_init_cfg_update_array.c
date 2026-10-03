
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void aw22xxx_init_cfg_update_array(void)

{
  long lVar1;
  long in_x0;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_001072ee,"aw22xxx_init_cfg_update_array",0x1ca);
  _printk(&DAT_00107f6c,"aw22xxx_chip_enable",0x1aa,1);
  local_2c[0] = 0;
  aw22xxx_i2c_read(in_x0,2,local_2c);
  local_2c[0] = local_2c[0] | 1;
  aw22xxx_i2c_write(in_x0,2,local_2c[0]);
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_write(in_x0,0xff,0);
  aw22xxx_i2c_write(in_x0,2,1);
  aw22xxx_i2c_write(in_x0,0xc,0);
  aw22xxx_i2c_write(in_x0,0xb,5);
  aw22xxx_i2c_write(in_x0,5,1);
  aw22xxx_i2c_write(in_x0,4,1);
  aw22xxx_i2c_write(in_x0,9,1);
  aw22xxx_i2c_write(in_x0,4,3);
  aw22xxx_i2c_write(in_x0,5,0x41);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

