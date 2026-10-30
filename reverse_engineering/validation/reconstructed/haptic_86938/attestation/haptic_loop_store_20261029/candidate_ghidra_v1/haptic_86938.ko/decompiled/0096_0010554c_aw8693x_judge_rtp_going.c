
void aw8693x_judge_rtp_going(undefined8 param_1)

{
  long lVar1;
  bool bVar2;
  char local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = '\0';
  i2c_r_bytes(param_1,0x3f,local_1c,1);
  bVar2 = local_1c[0] == '\b';
  if (bVar2) {
    _printk(&DAT_0010898f,"haptic_hv",0x3fe,"aw8693x_judge_rtp_going");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar2);
}

