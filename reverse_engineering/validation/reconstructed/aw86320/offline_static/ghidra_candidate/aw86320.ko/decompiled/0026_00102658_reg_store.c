
ulong reg_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  undefined8 uVar2;
  undefined2 uVar3;
  int iVar4;
  undefined8 local_50;
  char acStack_48 [16];
  long local_38;
  
  uVar2 = g_aw86320;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (0xd < param_3) {
    param_3 = 0xe;
  }
  acStack_48[8] = '\0';
  acStack_48[9] = '\0';
  acStack_48[10] = '\0';
  acStack_48[0xb] = '\0';
  acStack_48[0xc] = '\0';
  acStack_48[0xd] = '\0';
  acStack_48[0xe] = '\0';
  local_50 = 0;
  acStack_48[0] = '\0';
  acStack_48[1] = '\0';
  acStack_48[2] = '\0';
  acStack_48[3] = '\0';
  acStack_48[4] = '\0';
  acStack_48[5] = '\0';
  acStack_48[6] = '\0';
  acStack_48[7] = 0;
  _printk(&DAT_00104609,"aw86320",0x3af,"reg_store","reg_store",param_3,0xf);
  __check_object_size(acStack_48,param_3,0);
  iVar4 = _inline_copy_from_user(acStack_48,param_2,param_3);
  if (iVar4 == 0) {
    iVar4 = sscanf(acStack_48,"%x %x",&local_50,(ulong)&local_50 | 4);
    if (iVar4 == 2) {
      uVar3 = local_50._4_2_;
      _printk(&DAT_00104251,"aw86320",0x3b7,"reg_store","reg_store",local_50 & 0xff,local_50._4_2_);
      haptic_i2c_write(uVar2,local_50 & 0xffffffff,uVar3);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

