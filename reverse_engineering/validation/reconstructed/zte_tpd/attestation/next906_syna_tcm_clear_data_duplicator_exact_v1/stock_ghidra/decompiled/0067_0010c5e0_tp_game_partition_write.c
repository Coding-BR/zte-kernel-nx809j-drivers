
ulong tp_game_partition_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  code *pcVar2;
  long lVar3;
  undefined *puVar4;
  undefined1 auStack_438 [1024];
  long local_38;
  
  lVar1 = tpd_cdev;
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  _printk(&DAT_00139f5b,"tp_game_partition_write",0x400,param_3);
  if (param_3 < 0x401) {
    memset(auStack_438,0,0x400);
    __check_object_size(auStack_438,param_3,0);
    lVar3 = _inline_copy_from_user(auStack_438,param_2,param_3);
    if (lVar3 == 0) {
      if (*(int *)(*(code **)(lVar1 + 0xf50) + -4) != 0x64f25fb2) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10c69c);
        (*pcVar2)();
      }
      (**(code **)(lVar1 + 0xf50))(lVar1,auStack_438);
      snprintf((char *)(lVar1 + 0x41),0x400,"%s\n",auStack_438);
      _printk(&DAT_00132072,"tp_game_partition_write",lVar1 + 0x41);
      goto LAB_0010c6ec;
    }
    puVar4 = &DAT_00135dcd;
  }
  else {
    puVar4 = &DAT_00139f70;
  }
  _printk(puVar4,"tp_game_partition_write");
  param_3 = 0xffffffffffffffea;
LAB_0010c6ec:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

