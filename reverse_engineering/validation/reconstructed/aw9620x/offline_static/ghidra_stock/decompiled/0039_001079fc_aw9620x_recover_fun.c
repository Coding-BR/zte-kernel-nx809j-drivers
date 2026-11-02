
void aw9620x_recover_fun(long param_1,int param_2)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  undefined8 uVar6;
  char *pcVar7;
  undefined8 uVar8;
  uint local_4c;
  long local_48;
  
  lVar2 = sp_el0;
  local_48 = *(long *)(lVar2 + 0x710);
  local_4c = 0;
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] %s enter\n",
              "aw9620x_recover_fun",900,"aw9620x_recover_fun");
  iVar4 = aw9620x_i2c_write(param_1,0xff20,0x3c00ffff);
  if (iVar4 == 0) {
    iVar4 = aw9620x_i2c_read(param_1,0x4744,&local_4c);
    uVar3 = local_4c;
    uVar6 = *(undefined8 *)(param_1 + 0x30);
    if (iVar4 < 0) {
      pcVar7 = "[%s:%d] read REG_UPDATA_DIS err: %d\n";
      uVar8 = 0x38d;
    }
    else {
      _dev_printk(&DAT_0010e5cb,uVar6,"[%s:%d] trim  reg_data:0x%08X\n","aw9620x_recover_fun",0x391,
                  local_4c);
      uVar1 = uVar3 & 0xffffff;
      if (uVar3 >> 0x18 < 0xff && param_2 != 0) {
        uVar1 = uVar3;
      }
      _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),"[%s:%d] trim new_reg_data:0x%08X\n"
                  ,"aw9620x_recover_fun",0x39e,uVar1);
      uVar6 = *(undefined8 *)(param_1 + 0x30);
      puVar5 = &DAT_0010e5cb;
      if (uVar1 == uVar3) {
        pcVar7 = "[%s:%d] trim reg_data ok, no need update\n";
        uVar8 = 0x3a7;
LAB_00107b70:
        _dev_printk(puVar5,uVar6,pcVar7,"aw9620x_recover_fun",uVar8);
      }
      else {
        _dev_printk(&DAT_0010e5cb,uVar6,"[%s:%d] trim reg_data error, need update\n",
                    "aw9620x_recover_fun",0x3a1);
        iVar4 = aw9620x_i2c_write(param_1,0x4744,uVar1);
        if (iVar4 != 0) {
          uVar6 = *(undefined8 *)(param_1 + 0x30);
          puVar5 = &DAT_0010dd3c;
          pcVar7 = "[%s:%d] write REG_UPDATA_DIS err\n";
          uVar8 = 0x3a4;
          goto LAB_00107b70;
        }
      }
      iVar4 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
      if (-1 < iVar4) {
        uVar6 = 0;
        goto LAB_00107bc0;
      }
      uVar6 = *(undefined8 *)(param_1 + 0x30);
      pcVar7 = "[%s:%d] write 0xff20 err: %d\n";
      uVar8 = 0x3ac;
    }
    _dev_printk(&DAT_0010dd3c,uVar6,pcVar7,"aw9620x_recover_fun",uVar8,0xffffffff);
  }
  else {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] write 0xff20 err\n",
                "aw9620x_recover_fun",0x387);
  }
  uVar6 = 0xffffffff;
LAB_00107bc0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar6);
}

