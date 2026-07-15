
void aw22xxx_task_work(long param_1)

{
  long lVar1;
  byte bVar2;
  long lVar3;
  byte local_4c [4];
  byte local_48 [4];
  byte local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  lVar3 = param_1 + -0x1f0;
  local_38 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_0010d681,"aw22xxx_task_work");
  aw22xxx_i2c_write(lVar3,5,0xff);
  local_4c[0] = 0;
  aw22xxx_i2c_read(lVar3,4,local_4c);
  local_4c[0] = local_4c[0] & 0xfd;
  aw22xxx_i2c_write(lVar3,4);
  _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
  local_48[0] = 0;
  aw22xxx_i2c_read(lVar3,2,local_48);
  local_48[0] = local_48[0] & 0xfe;
  aw22xxx_i2c_write(lVar3,2);
  usleep_range_state(2000,3000,2);
  if (*(char *)(param_1 + 0x10c) != '\0') {
    _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,1);
    local_44[0] = 0;
    aw22xxx_i2c_read(lVar3,2,local_44);
    local_44[0] = local_44[0] | 1;
    aw22xxx_i2c_write(lVar3,2);
    usleep_range_state(2000,3000,2);
    local_40[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_40);
    local_40[0] = local_40[0] | 1;
    aw22xxx_i2c_write(lVar3,4);
    bVar2 = *(byte *)(param_1 + 0x100);
    if (0xe < bVar2) {
      bVar2 = 0xf;
    }
    aw22xxx_i2c_write(lVar3,0xff,0);
    aw22xxx_i2c_write(lVar3,0xb,bVar2);
    aw22xxx_i2c_write(lVar3,0x21,0xe1);
    aw22xxx_i2c_write(lVar3,0x22,0);
    aw22xxx_i2c_write(lVar3,0x20,2);
    aw22xxx_i2c_write(lVar3,0x23,0x3d);
    aw22xxx_i2c_write(lVar3,0x20,0);
    aw22xxx_i2c_write(lVar3,5,*(undefined1 *)(param_1 + 0x10c));
    aw22xxx_i2c_write(lVar3,6,*(undefined1 *)(param_1 + 0x10d));
    local_3c[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_3c);
    local_3c[0] = local_3c[0] | 2;
    aw22xxx_i2c_write(lVar3,4);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

