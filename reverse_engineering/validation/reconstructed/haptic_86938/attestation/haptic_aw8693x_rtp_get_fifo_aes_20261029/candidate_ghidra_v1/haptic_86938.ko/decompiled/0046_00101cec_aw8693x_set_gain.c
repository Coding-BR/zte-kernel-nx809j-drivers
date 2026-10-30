
void aw8693x_set_gain(undefined8 param_1,undefined1 param_2)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = param_2;
  i2c_w_bytes(param_1,7,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

