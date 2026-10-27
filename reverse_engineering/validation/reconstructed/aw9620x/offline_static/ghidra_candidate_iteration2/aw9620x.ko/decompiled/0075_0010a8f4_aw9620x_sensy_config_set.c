
undefined8
aw9620x_sensy_config_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  undefined1 uVar2;
  long lVar3;
  long lVar4;
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 != 0) goto LAB_0010a93c;
  lVar3 = lVar4 + -0x38;
  _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar4 + -8),"[%s:%d] flag = %d\n",
              "aw9620x_sensy_config_set",0xfe2,local_3c);
  mutex_lock(&DAT_0010e7f8);
  if (local_3c == 3) {
    aw9620x_i2c_write(lVar3,0x1d20,0xb);
    uVar2 = 3;
LAB_0010aa04:
    *(undefined1 *)(lVar4 + 0x268) = uVar2;
  }
  else {
    if (local_3c == 2) {
      aw9620x_i2c_write(lVar3,0x1d20,0xc);
      uVar2 = 2;
      goto LAB_0010aa04;
    }
    if (local_3c == 1) {
      aw9620x_i2c_write(lVar3,0x1d20,0xd);
      uVar2 = 1;
      goto LAB_0010aa04;
    }
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(lVar4 + -8),"[%s:%d] input err\n",
                "aw9620x_sensy_config_set",0xfef);
  }
  mutex_unlock(&DAT_0010e7f8);
LAB_0010a93c:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

