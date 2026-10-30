
undefined8
aw9620x_aot_cail_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_30;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = kstrtouint(param_3,0,&local_30);
  if (iVar1 == 0) {
    if (local_30 == 1) {
      lVar2 = lVar2 + -0x38;
      local_2c = 0;
      aw9620x_i2c_read(lVar2,0x1a00,&local_2c);
      aw9620x_i2c_write(lVar2,0x1a00,local_2c | 0xff00);
    }
    else {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(lVar2 + -8),"[%s:%d] fail to set aot cali\n",
                  "aw9620x_aot_cail_set",0xf6a);
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

