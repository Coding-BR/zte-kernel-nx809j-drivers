
ulong duration_store(undefined8 param_1,undefined8 param_2,ulong param_3)

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
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    uVar4 = local_4c;
    if (0x3fe < local_4c) {
      uVar4 = 0x3ff;
    }
    *(uint *)(lVar2 + 0xc) = uVar4;
    _printk(&DAT_00103851,"aw86320",0x386,"duration_store");
    if (0 < *(int *)(lVar2 + 0x10)) {
      aw86320_play_atsin0(*(undefined4 *)(lVar2 + 0xc),*(undefined4 *)(lVar2 + 8),
                          *(undefined2 *)(lVar2 + 0x14));
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

