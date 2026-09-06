
undefined8 set_display_rotation(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined4 local_4c;
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
  iVar3 = FUN_0015a320(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    *(undefined4 *)(lVar2 + 0x10) = local_4c;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00167038,"set_display_rotation");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

