
undefined8 headset_state_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar2 = FUN_0013db48(&local_48,param_2,param_3);
  if ((iVar2 == 0) && (iVar2 = kstrtouint(&local_48,0,&local_4c), iVar2 == 0)) {
    local_4c = (uint)(local_4c != 0);
    uVar3 = _printk(&DAT_0016701a,"headset_state_store");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

