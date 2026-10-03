
ulong tp_pen_only_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
  code *pcVar5;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar4 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar4 == 0) && (iVar4 = kstrtouint(&local_48,0,&local_4c), iVar4 == 0)) {
    bVar3 = local_4c != 0;
    local_4c = (uint)bVar3;
    *(bool *)(lVar2 + 0x441) = bVar3;
    _printk(&DAT_0013def1,"tp_pen_only_write");
    pcVar5 = *(code **)(lVar2 + 0xf88);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != -0x1e29c23f) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10c91c);
        (*pcVar5)();
      }
      (*pcVar5)(lVar2,local_4c);
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

