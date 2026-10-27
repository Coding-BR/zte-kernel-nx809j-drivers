
ulong enable_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  undefined8 uVar2;
  int iVar3;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  uVar2 = g_aw86320;
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
    _printk(&DAT_00103cf8,"aw86320",0x30b,"enable_store","enable_store",local_4c);
    if (1 < local_4c) {
      local_4c = 1;
    }
    enableMicroPump(uVar2);
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

