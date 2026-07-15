
ulong tp_zlog_debug_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  int iVar2;
  uint local_3c;
  undefined8 local_38;
  undefined2 local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  if (8 < param_3) {
    param_3 = 9;
  }
  local_3c = 0;
  local_30 = 0;
  local_38 = 0;
  __check_object_size(&local_38,param_3,0);
  iVar2 = _inline_copy_from_user(&local_38,param_2,param_3);
  if ((iVar2 == 0) && (iVar2 = kstrtouint(&local_38,0,&local_3c), iVar2 == 0)) {
    if ((local_3c < 0x10) && ((1 << (ulong)(local_3c & 0x1f) & 0xee66U) != 0)) {
      tpd_zlog_record_notify();
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

