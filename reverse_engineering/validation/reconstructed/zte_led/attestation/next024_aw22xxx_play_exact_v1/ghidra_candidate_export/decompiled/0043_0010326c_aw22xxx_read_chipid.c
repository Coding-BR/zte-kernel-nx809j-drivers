
void aw22xxx_read_chipid(long param_1)

{
  long lVar1;
  int extraout_w0;
  int extraout_w0_00;
  undefined8 uVar2;
  undefined *puVar3;
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = '\0';
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_read(param_1,1,local_2c);
  if (-1 < extraout_w0) {
    if (local_2c[0] == 'v') {
LAB_001032fc:
      aw22xxx_i2c_read(param_1,0,local_2c);
      if (local_2c[0] == '\'') {
        *(undefined1 *)(param_1 + 0x2ed) = 2;
        puVar3 = &DAT_00109549;
        g_chip_id = 0x37323132327761;
      }
      else {
        if (local_2c[0] != '\x18') {
          _printk(&DAT_00108c2f);
          _printk(&DAT_00109ae3,"aw22xxx_read_chipid");
          goto LAB_001033ec;
        }
        puVar3 = &DAT_00108fc9;
        *(undefined1 *)(param_1 + 0x2ed) = 1;
        g_chip_id = 0x38313132327761;
      }
      _printk(puVar3);
      uVar2 = 0;
      goto LAB_001033f0;
    }
    _printk(&DAT_00108e1f);
    msleep(1);
    aw22xxx_i2c_read(param_1,1,local_2c);
    if (-1 < extraout_w0_00) {
      if (local_2c[0] == 'v') goto LAB_001032fc;
      _printk(&DAT_00109283);
      msleep(1);
LAB_001033ec:
      uVar2 = 0xffffffea;
      goto LAB_001033f0;
    }
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"aw22xxx: failed to read AW22XXX_REG_ID: %d\n");
  uVar2 = 0xfffffffb;
LAB_001033f0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

