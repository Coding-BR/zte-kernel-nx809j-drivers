
void aw9620x_old_boot_nvr_modify(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined2 uVar4;
  int local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_old_boot_nvr_modify",0x102c);
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c addr0: 0x%x\n",
              "aw9620x_old_boot_nvr_modify",0x102f,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
  iVar2 = aw9620x_i2c_write(param_1,0x4444,0x10000);
  if (iVar2 != 0) {
    uVar4 = 0x12;
    if (*(short *)(*(long *)(param_1 + 0x28) + 2) != 0x12) {
      *(undefined2 *)(*(long *)(param_1 + 0x28) + 2) = 0x12;
      uVar4 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
    }
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c addr0: 0x%x\n",
                "aw9620x_old_boot_nvr_modify",0x1035,uVar4);
    iVar2 = aw9620x_i2c_write(param_1,0x4444,0x10000);
    if (iVar2 != 0) {
      _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] REG_MCFG00 err!\n",
                  "aw9620x_old_boot_nvr_modify",0x1038);
      uVar3 = 0xffffffff;
      goto LAB_00108d18;
    }
  }
  aw9620x_i2c_write(param_1,0xff20,0x3cffffff);
  aw9620x_i2c_read(param_1,0x4748,&local_3c);
  iVar2 = local_3c;
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x4748 = 0x%08x\n",
              "aw9620x_old_boot_nvr_modify",0x103f,local_3c);
  if (iVar2 == 0) {
    aw9620x_i2c_write(param_1,0x4444,0);
    aw9620x_i2c_write(param_1,0xff18,0x3c);
    msleep(0x19);
    uVar3 = 1;
  }
  else {
    aw9620x_i2c_write(param_1,0x4748,0);
    aw9620x_i2c_write(param_1,0x4788,0x5a637922);
    aw9620x_i2c_write(param_1,0x4820,6);
    aw9620x_i2c_write(param_1,0x4700,0x110);
    aw9620x_i2c_write(param_1,0x4734,18000);
    aw9620x_i2c_write(param_1,0x4704,0x4100);
    aw9620x_i2c_write(param_1,0x4710,0x25);
    aw9620x_i2c_write(param_1,0x472c,0xf0);
    aw9620x_i2c_write(param_1,0x4714,1);
    usleep_range_state(5000,0x1392,2);
    aw9620x_i2c_write(param_1,0x4704,0x4100);
    aw9620x_i2c_write(param_1,0x4708,0);
    aw9620x_i2c_write(param_1,0x4710,0x2c);
    aw9620x_i2c_write(param_1,0x4714,1);
    uVar3 = 0;
  }
LAB_00108d18:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

