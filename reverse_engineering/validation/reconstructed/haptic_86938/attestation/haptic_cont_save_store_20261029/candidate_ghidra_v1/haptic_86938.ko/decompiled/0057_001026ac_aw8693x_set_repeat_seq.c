
void aw8693x_set_repeat_seq(undefined8 param_1,undefined1 param_2)

{
  long lVar1;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = param_2;
  i2c_w_bytes(param_1,10,local_2c,1);
  i2c_w_bits(param_1,0x12,0xffffff0f,0xf0);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

