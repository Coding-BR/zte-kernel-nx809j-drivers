
ulong speed_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  uint uVar4;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = g_aw86320;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if (iVar3 == 0) {
    _printk(&DAT_00104892,"aw86320",0x33b,"speed_store",&local_48);
    if ((int)local_48 == 0x68676968 && local_48._4_2_ == 10) {
      local_4c = 0x50;
      uVar4 = local_4c;
    }
    else if ((int)local_48 == 0xa64696d && local_48._4_1_ == '\0') {
      local_4c = 0x46;
      uVar4 = local_4c;
    }
    else if ((int)local_48 == 0xa776f6c && local_48._4_1_ == '\0') {
      local_4c = 0x3c;
      uVar4 = local_4c;
    }
    else {
      iVar3 = kstrtouint(&local_48,0,&local_4c);
      if (iVar3 != 0) goto LAB_00102a1c;
      uVar4 = local_4c;
      if (0x59 < local_4c) {
        uVar4 = 0x5a;
      }
    }
    *(uint *)(lVar2 + 8) = uVar4;
    _printk(&DAT_0010413f,"aw86320",0x351,"speed_store",local_4c);
    if (0 < *(int *)(lVar2 + 0x10)) {
      aw86320_play_atsin0(*(undefined4 *)(lVar2 + 0xc),*(undefined4 *)(lVar2 + 8),
                          *(undefined2 *)(lVar2 + 0x14));
    }
  }
  else {
LAB_00102a1c:
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

