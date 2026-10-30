
void aw9620x_get_err_info(long param_1)

{
  long lVar1;
  undefined4 local_34;
  undefined4 uStack_30;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  local_34 = 0;
  uStack_30 = 0;
  aw9620x_i2c_write(param_1,0xff20,0x3c00f091);
  aw9620x_i2c_read(param_1,0x1c00,&local_2c);
  aw9620x_i2c_read(param_1,0x4744,&local_34);
  aw9620x_i2c_read(param_1,0x4444,&uStack_30);
  _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] 0x1c00:0x%x, 0x4744:0x%x, 0x4444:0x%x\n","aw9620x_get_err_info",0x377,
              local_2c,local_34,uStack_30);
  aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

