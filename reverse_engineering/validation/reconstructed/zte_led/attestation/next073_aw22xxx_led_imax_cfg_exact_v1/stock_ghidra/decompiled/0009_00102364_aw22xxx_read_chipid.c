
void aw22xxx_read_chipid(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined1 uVar4;
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = '\0';
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  iVar2 = aw22xxx_i2c_read(param_1,1,local_2c);
  if (-1 < iVar2) {
    if (local_2c[0] == 'v') {
LAB_001023fc:
      _printk(&DAT_0010d98d,"aw22xxx_read_chipid",local_2c[0],iVar2);
      aw22xxx_i2c_read(param_1,0,local_2c);
      if (local_2c[0] == '\x18') {
        uVar4 = 1;
        g_chip_id = 0x38313132327761;
      }
      else {
        if (local_2c[0] != '\'') {
          _printk(&DAT_0010d053,"aw22xxx_read_chipid");
          goto LAB_00102500;
        }
        uVar4 = 2;
        g_chip_id = 0x37323132327761;
      }
      *(undefined1 *)(param_1 + 0x2ed) = uVar4;
      _printk(&DAT_0010dda4,"aw22xxx_read_chipid");
      uVar3 = 0;
      goto LAB_00102504;
    }
    _printk(&DAT_0010e54b,"aw22xxx_read_chipid",local_2c[0],iVar2);
    msleep(1);
    iVar2 = aw22xxx_i2c_read(param_1,1,local_2c);
    if (-1 < iVar2) {
      if (local_2c[0] == 'v') goto LAB_001023fc;
      _printk(&DAT_0010e54b,"aw22xxx_read_chipid",local_2c[0],iVar2);
      msleep(1);
LAB_00102500:
      uVar3 = 0xffffffea;
      goto LAB_00102504;
    }
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"%s: failed to read register AW22XXX_REG_ID: %d\n",
           "aw22xxx_read_chipid");
  uVar3 = 0xfffffffb;
LAB_00102504:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

