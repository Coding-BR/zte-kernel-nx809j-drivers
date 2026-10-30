
void aw8693x_play_go(undefined8 param_1,uint param_2)

{
  long lVar1;
  undefined1 uVar2;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  uVar2 = 1;
  if ((param_2 & 1) == 0) {
    uVar2 = 2;
  }
  _printk(&DAT_00106d8c,"haptic_hv",0x1d7,"aw8693x_play_go",param_2 & 1);
  local_2c[0] = uVar2;
  i2c_w_bytes(param_1,9,local_2c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

