
void aw22xxx_read_chipid(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  undefined *puVar3;
  undefined1 auVar4 [16];
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = '\0';
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  auVar4 = aw22xxx_i2c_read(param_1,1,local_2c);
  if (-1 < auVar4._0_4_) {
    if (local_2c[0] == 'v') {
LAB_001030e4:
      aw22xxx_i2c_read(param_1,0,local_2c);
      if (local_2c[0] == '\'') {
        *(undefined1 *)(param_1 + 0x2ed) = 2;
        puVar3 = &DAT_0010967f;
        g_chip_id = 0x37323132327761;
      }
      else {
        if (local_2c[0] != '\x18') {
          _printk(&DAT_00108d27);
          _printk(&DAT_00109c37,"aw22xxx_read_chipid");
          goto LAB_001031d4;
        }
        puVar3 = &DAT_001090d6;
        *(undefined1 *)(param_1 + 0x2ed) = 1;
        g_chip_id = 0x38313132327761;
      }
      _printk(puVar3);
      uVar2 = 0;
      goto LAB_001031d8;
    }
    _printk(&DAT_00108f2c,auVar4._8_8_,auVar4._0_8_ & 0xffffffff);
    msleep(1);
    auVar4 = aw22xxx_i2c_read(param_1,1,local_2c);
    if (-1 < auVar4._0_4_) {
      if (local_2c[0] == 'v') goto LAB_001030e4;
      _printk(&DAT_001093b9,auVar4._8_8_,auVar4._0_8_ & 0xffffffff);
      msleep(1);
LAB_001031d4:
      uVar2 = 0xffffffea;
      goto LAB_001031d8;
    }
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"aw22xxx: failed to read AW22XXX_REG_ID: %d\n");
  uVar2 = 0xfffffffb;
LAB_001031d8:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

