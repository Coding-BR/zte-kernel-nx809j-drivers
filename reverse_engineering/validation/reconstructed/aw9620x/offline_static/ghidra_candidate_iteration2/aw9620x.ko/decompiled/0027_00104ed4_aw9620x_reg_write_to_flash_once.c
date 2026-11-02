
undefined8 aw9620x_reg_write_to_flash_once(long param_1,undefined2 param_2,undefined4 param_3)

{
  int iVar1;
  undefined8 uVar2;
  char *pcVar3;
  undefined8 uVar4;
  
  iVar1 = aw9620x_i2c_write(param_1,0x4704,param_2);
  if (iVar1 == 0) {
    iVar1 = aw9620x_i2c_write(param_1,0x4708,param_3);
    if (iVar1 == 0) {
      iVar1 = aw9620x_i2c_write(param_1,0x4710,0xc);
      if (iVar1 == 0) {
        iVar1 = aw9620x_i2c_write(param_1,0x4714,1);
        if (iVar1 == 0) {
          uVar2 = aw9620x_check_isp_go_reg(param_1);
          if ((int)uVar2 == 0) {
            return uVar2;
          }
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          pcVar3 = "[%s:%d] check_isp_go_reg err\n";
          uVar4 = 0x480;
        }
        else {
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          pcVar3 = "[%s:%d] write 0xff20 err\n";
          uVar4 = 0x47a;
        }
      }
      else {
        uVar2 = *(undefined8 *)(param_1 + 0x30);
        pcVar3 = "[%s:%d] write 0xff20 err\n";
        uVar4 = 0x473;
      }
    }
    else {
      uVar2 = *(undefined8 *)(param_1 + 0x30);
      pcVar3 = "[%s:%d] write 0xff20 err\n";
      uVar4 = 0x46c;
    }
  }
  else {
    uVar2 = *(undefined8 *)(param_1 + 0x30);
    pcVar3 = "[%s:%d] write 0xff20 err\n";
    uVar4 = 0x465;
  }
  _dev_printk(&DAT_0010c99c,uVar2,pcVar3,"aw9620x_reg_write_to_flash_once",uVar4);
  return 0xffffffff;
}

