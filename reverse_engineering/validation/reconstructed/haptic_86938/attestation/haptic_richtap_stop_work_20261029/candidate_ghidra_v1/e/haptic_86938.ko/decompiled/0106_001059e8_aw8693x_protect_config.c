
void aw8693x_protect_config(undefined8 param_1,undefined1 param_2,byte param_3)

{
  long lVar1;
  byte local_40 [4];
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = param_2;
  i2c_w_bits(param_1,0x48,0xffffff7f,0);
  if (param_3 == 0) {
    _printk(&DAT_0010659b,"haptic_hv",0x2ed,"aw8693x_protect_config");
    i2c_w_bits(param_1,0x4a,0xffffff7f,0);
  }
  else {
    _printk(&DAT_00106f0a,"haptic_hv",0x2e6,"aw8693x_protect_config");
    local_40[0] = param_3 | 0x80;
    i2c_w_bytes(param_1,0x4a,local_40,1);
    i2c_w_bytes(param_1,0x4b,local_3c,1);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

