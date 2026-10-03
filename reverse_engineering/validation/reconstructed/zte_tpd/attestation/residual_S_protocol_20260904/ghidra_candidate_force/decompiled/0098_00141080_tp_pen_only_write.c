
undefined8 tp_pen_only_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001830e4,"tp_pen_only_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

