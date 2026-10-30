
byte aw8693x_rtp_get_fifo_afi(long param_1)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0x5b;
  }
  i2c_r_bytes(param_1,2,local_2c,1);
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return local_2c[0] >> 3 & 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

