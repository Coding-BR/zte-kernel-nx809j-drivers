
undefined8 aw9620x_soft_reset(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  char *pcVar3;
  undefined8 uVar4;
  
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","aw9620x_soft_reset",
              0x3b7);
  iVar1 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
  if (iVar1 < 0) {
    uVar2 = *(undefined8 *)(param_1 + 0x30);
    pcVar3 = "[%s:%d] read REG_APB_ACCESS_EN err: %d\n";
    uVar4 = 0x3bb;
  }
  else {
    iVar1 = aw9620x_i2c_write(param_1,0x4700,0x110);
    if (iVar1 < 0) {
      uVar2 = *(undefined8 *)(param_1 + 0x30);
      pcVar3 = "[%s:%d] read REG_APB_ACCESS_EN err: %d\n";
      uVar4 = 0x3c1;
    }
    else {
      usleep_range_state(1000,0x3f2,2);
      aw9620x_i2c_write(param_1,0x4444,0);
      iVar1 = aw9620x_i2c_write(param_1,0xff18,0x3c);
      if (iVar1 < 0) {
        uVar2 = *(undefined8 *)(param_1 + 0x30);
        pcVar3 = "[%s:%d] read soft_reset err: %d\n";
        uVar4 = 0x3cc;
      }
      else {
        msleep(0x19);
        iVar1 = aw9620x_i2c_write(param_1,0x4700,0x102);
        if (iVar1 != 0) {
          if (*(short *)(*(long *)(param_1 + 0x28) + 2) == 0x12) {
            *(undefined2 *)(*(long *)(param_1 + 0x28) + 2) = 0x13;
          }
          iVar1 = aw9620x_i2c_write(param_1,0x4700,0x102);
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          if (iVar1 < 0) {
            pcVar3 = "[%s:%d] read REG_APB_ACCESS_EN err1: %d\n";
            uVar4 = 0x3d8;
            goto LAB_00106b08;
          }
          _dev_printk(&DAT_0010c99c,uVar2,"[%s:%d] AW_REG_FLASH_WAKE_UP ok\n","aw9620x_soft_reset",
                      0x3db);
          _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c->addr = 0x%x\n",
                      "aw9620x_soft_reset",0x3dc,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
        }
        iVar1 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
        if (-1 < iVar1) {
          return 0;
        }
        uVar2 = *(undefined8 *)(param_1 + 0x30);
        pcVar3 = "[%s:%d] write 0xff20 err: %d\n";
        uVar4 = 0x3e1;
      }
    }
  }
LAB_00106b08:
  _dev_printk(&DAT_0010c99c,uVar2,pcVar3,"aw9620x_soft_reset",uVar4,0xffffffff);
  return 0xffffffff;
}

