
void aw9620x_i2c_write_bits(undefined8 param_1,ulong param_2,uint param_3,uint param_4)

{
  long lVar1;
  uint local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  aw9620x_i2c_read(param_1,param_2,&local_3c);
  aw9620x_i2c_write(param_1,param_2 & 0xffffffff,local_3c & param_3 | param_4);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

