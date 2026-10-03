
void aw22xxx_brightness_work(long param_1)

{
  long lVar1;
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  lVar1 = param_1 + -0x1d0;
  local_3c[0] = 0;
  _printk(&DAT_001094c0,"aw22xxx_brightness_work");
  _printk(&DAT_001090a5,"aw22xxx_brightness_work");
  aw22xxx_i2c_write();
  aw22xxx_i2c_read(lVar1,4,local_3c);
  local_3c[0] = local_3c[0] & 0xfd;
  aw22xxx_i2c_write();
  aw22xxx_i2c_read(lVar1,2,local_3c);
  local_3c[0] = local_3c[0] & 0xfe;
  aw22xxx_i2c_write();
  usleep_range_state(2000,3000,2);
  if (*(int *)(param_1 + -0x1b8) != 0) {
    _printk(&DAT_001091e0,"aw22xxx_brightness_work");
    aw22xxx_i2c_read(lVar1,2,local_3c);
    local_3c[0] = local_3c[0] | 1;
    aw22xxx_i2c_write();
    usleep_range_state(2000,3000,2);
    aw22xxx_i2c_read(lVar1,4,local_3c);
    local_3c[0] = local_3c[0] | 1;
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    aw22xxx_i2c_read(lVar1,4,local_3c);
    local_3c[0] = local_3c[0] | 2;
    aw22xxx_i2c_write();
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

