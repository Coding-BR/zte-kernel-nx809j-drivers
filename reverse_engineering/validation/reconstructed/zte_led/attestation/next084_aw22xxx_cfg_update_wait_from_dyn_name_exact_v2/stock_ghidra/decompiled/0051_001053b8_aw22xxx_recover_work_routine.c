
void aw22xxx_recover_work_routine(long param_1)

{
  long lVar1;
  byte local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  lVar1 = param_1 + -0x250;
  _printk(&DAT_0010d908,"aw22xxx_recover_work_routine");
  aw22xxx_i2c_write(lVar1,0xff,0);
  local_44[0] = 0;
  aw22xxx_i2c_read(lVar1,4,local_44);
  local_44[0] = local_44[0] & 0xfd;
  aw22xxx_i2c_write(lVar1,4);
  local_40[0] = 0;
  aw22xxx_i2c_read(lVar1,4,local_40);
  local_40[0] = local_40[0] & 0xfe;
  aw22xxx_i2c_write(lVar1,4);
  _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
  local_3c[0] = 0;
  aw22xxx_i2c_read(lVar1,2,local_3c);
  local_3c[0] = local_3c[0] & 0xfe;
  aw22xxx_i2c_write(lVar1,2);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_0010d555,"aw22xxx_recover_work_routine");
  aw22xxx_i2c_write(lVar1,0xff,0);
  aw22xxx_i2c_write(lVar1,2,1);
  aw22xxx_i2c_write(lVar1,0xc,0);
  aw22xxx_i2c_write(lVar1,5,1);
  aw22xxx_i2c_write(lVar1,4,1);
  aw22xxx_i2c_write(lVar1,9,0x11);
  aw22xxx_i2c_write(lVar1,4,3);
  aw22xxx_i2c_write(lVar1,5,0x41);
  msleep(200);
  _printk(&DAT_0010def0,"aw22xxx_recover_work_routine");
  *(undefined4 *)(param_1 + 0xb0) = lamp_effect;
  aw22xxx_cfg_recover_update_wait(lVar1);
  msleep(200);
  *(undefined4 *)(param_1 + 0xb0) = fan_effect;
  aw22xxx_cfg_recover_update_wait(lVar1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

