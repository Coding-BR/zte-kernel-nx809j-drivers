
void aw22xxx_brightness_work(long param_1)

{
  uint uVar1;
  long lVar2;
  byte local_3c [4];
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = param_1 + -0x1d0;
  local_3c[0] = 0;
  _printk(&DAT_001095b8,"aw22xxx_brightness_work");
  _printk(&DAT_0010916f,"aw22xxx_brightness_work");
  aw22xxx_i2c_write(lVar2,5,0xff);
  aw22xxx_i2c_read(lVar2,4,local_3c);
  local_3c[0] = local_3c[0] & 0xfd;
  aw22xxx_i2c_write(lVar2,4,local_3c[0]);
  aw22xxx_i2c_read(lVar2,2,local_3c);
  local_3c[0] = local_3c[0] & 0xfe;
  aw22xxx_i2c_write(lVar2,2,local_3c[0]);
  usleep_range_state(2000,3000,2);
  if (*(int *)(param_1 + -0x1b8) != 0) {
    _printk(&DAT_001092aa,"aw22xxx_brightness_work");
    aw22xxx_i2c_read(lVar2,2,local_3c);
    local_3c[0] = local_3c[0] | 1;
    aw22xxx_i2c_write(lVar2,2,local_3c[0]);
    usleep_range_state(2000,3000,2);
    aw22xxx_i2c_read(lVar2,4,local_3c);
    local_3c[0] = local_3c[0] | 1;
    aw22xxx_i2c_write(lVar2,4,local_3c[0]);
    uVar1 = 0xf;
    if (*(uint *)(param_1 + 0x120) < 0xf) {
      uVar1 = *(uint *)(param_1 + 0x120);
    }
    aw22xxx_i2c_write(lVar2,0xff,0);
    aw22xxx_i2c_write(lVar2,0xb,(byte)uVar1);
    aw22xxx_i2c_write(lVar2,0x21,0xe1);
    aw22xxx_i2c_write(lVar2,0x22,0);
    aw22xxx_i2c_write(lVar2,0x20,2);
    aw22xxx_i2c_write(lVar2,0x23,0x3d);
    aw22xxx_i2c_write(lVar2,0x20,0);
    aw22xxx_i2c_write(lVar2,5,0x82);
    aw22xxx_i2c_read(lVar2,4,local_3c);
    local_3c[0] = local_3c[0] | 2;
    aw22xxx_i2c_write(lVar2,4,local_3c[0]);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

