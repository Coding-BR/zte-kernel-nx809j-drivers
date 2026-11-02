
undefined8 aw9620x_reg_read_all_val(long param_1,undefined4 *param_2,uint param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_reg_read_all_val",0x7e4);
  iVar1 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
  if (iVar1 == 0) {
    iVar1 = aw9620x_i2c_write(param_1,0x4820,4);
    if (iVar1 == 0) {
      iVar1 = aw9620x_reg_read_val(param_1,param_2,param_3);
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      if (iVar1 == 0) {
        _dev_printk(&DAT_0010eb37,uVar3,"[%s:%d] addr = 0x%04x read data = 0x%08x\n",
                    "aw9620x_reg_read_all_val",0x7f9,param_3 & 0xffff,*param_2);
        uVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
        if ((int)uVar3 == 0) {
          return uVar3;
        }
        uVar3 = *(undefined8 *)(param_1 + 0x30);
        puVar2 = &DAT_0010dd3c;
        pcVar4 = "[%s:%d] write 0xff20 err\n";
        uVar5 = 0x7fd;
      }
      else {
        puVar2 = &DAT_0010eb37;
        pcVar4 = "[%s:%d] reg_read_bin err\n";
        uVar5 = 0x7f5;
      }
    }
    else {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      puVar2 = &DAT_0010dd3c;
      pcVar4 = "[%s:%d] config PMU_CFG reg err\n";
      uVar5 = 0x7ef;
    }
  }
  else {
    uVar3 = *(undefined8 *)(param_1 + 0x30);
    puVar2 = &DAT_0010dd3c;
    pcVar4 = "[%s:%d] write 0xff20 err\n";
    uVar5 = 0x7e9;
  }
  _dev_printk(puVar2,uVar3,pcVar4,"aw9620x_reg_read_all_val",uVar5);
  return 0xffffffff;
}

