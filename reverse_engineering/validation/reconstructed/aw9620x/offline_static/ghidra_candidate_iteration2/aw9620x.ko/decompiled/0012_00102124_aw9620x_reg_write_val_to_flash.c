
undefined8
aw9620x_reg_write_val_to_flash(long param_1,undefined4 param_2,undefined4 param_3,char *param_4)

{
  char cVar1;
  int iVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_reg_write_val_to_flash",0x4a7);
  cVar1 = *param_4;
  iVar2 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
  if (iVar2 == 0) {
    iVar2 = aw9620x_i2c_write(param_1,0x4820,6);
    if (iVar2 == 0) {
      if ((cVar1 != '\0') || (iVar2 = aw9620x_i2c_write(param_1,0x4794,0x5a637955), iVar2 == 0)) {
        iVar2 = aw9620x_reg_write_to_flash_once(param_1,param_2,param_3);
        if (iVar2 == 0) {
          iVar2 = aw9620x_i2c_write(param_1,0x4820,4);
          if (iVar2 == 0) {
            uVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
            if ((int)uVar3 == 0) {
              return uVar3;
            }
            uVar3 = *(undefined8 *)(param_1 + 0x30);
            pcVar4 = "[%s:%d] write 0xff20 err\n";
            uVar5 = 0x4be;
          }
          else {
            uVar3 = *(undefined8 *)(param_1 + 0x30);
            pcVar4 = "[%s:%d] write 0x4820 err\n";
            uVar5 = 0x4b8;
          }
        }
        else {
          uVar3 = *(undefined8 *)(param_1 + 0x30);
          pcVar4 = "[%s:%d] write aw9620x_reg_write_bin_once err\n";
          uVar5 = 0x4b1;
        }
        goto LAB_001022c0;
      }
      uVar3 = 0x455;
    }
    else {
      uVar3 = 0x44d;
    }
  }
  else {
    uVar3 = 0x446;
  }
  _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] write 0xff20 err\n",
              "aw9620x_close_write_flash_protect",uVar3);
  uVar3 = *(undefined8 *)(param_1 + 0x30);
  pcVar4 = "[%s:%d] close_write_flash_protect err\n";
  uVar5 = 0x4ab;
LAB_001022c0:
  _dev_printk(&DAT_0010c99c,uVar3,pcVar4,"aw9620x_reg_write_val_to_flash",uVar5);
  return 0xffffffff;
}

