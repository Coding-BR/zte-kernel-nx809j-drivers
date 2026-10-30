
undefined8 aw9620x_reg_read_val(long param_1,undefined8 param_2,uint param_3)

{
  int iVar1;
  undefined8 uVar2;
  char *pcVar3;
  undefined8 uVar4;
  undefined4 uVar5;
  
  iVar1 = aw9620x_i2c_write(param_1,0x4704,param_3 & 0xffff);
  if (iVar1 == 0) {
    uVar5 = 0x23;
    if ((param_3 >> 0xe & 3) == 0) {
      uVar5 = 3;
    }
    iVar1 = aw9620x_i2c_write(param_1,0x4710,uVar5);
    if (iVar1 == 0) {
      iVar1 = aw9620x_i2c_write(param_1,0x4714,1);
      if (iVar1 == 0) {
        iVar1 = aw9620x_check_isp_go_reg(param_1);
        if (iVar1 == 0) {
          uVar2 = aw9620x_i2c_read(param_1,0x470c,param_2);
          if ((int)uVar2 == 0) {
            return uVar2;
          }
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          pcVar3 = "[%s:%d] config ISP_CMD reg err\n";
          uVar4 = 0x4e9;
        }
        else {
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          pcVar3 = "[%s:%d] config check_isp_go_reg err\n";
          uVar4 = 0x4e3;
        }
      }
      else {
        uVar2 = *(undefined8 *)(param_1 + 0x30);
        pcVar3 = "[%s:%d] config ISP_CMD reg err\n";
        uVar4 = 0x4dd;
      }
    }
    else {
      uVar2 = *(undefined8 *)(param_1 + 0x30);
      pcVar3 = "[%s:%d] config ISP_CMD reg err\n";
      uVar4 = 0x4d7;
    }
  }
  else {
    uVar2 = *(undefined8 *)(param_1 + 0x30);
    pcVar3 = "[%s:%d] config PMU_CFG regerr\n";
    uVar4 = 0x4cd;
  }
  _dev_printk(&DAT_0010c99c,uVar2,pcVar3,"aw9620x_reg_read_val",uVar4);
  return 0xffffffff;
}

