
void tp_game_partition_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char acStack_448 [1024];
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  memset(acStack_448,0,0x400);
  lVar1 = tpd_cdev;
  if (*param_4 == 0) {
    _printk(&DAT_0013c4ab,"tp_game_partition_read",tpd_cdev + 0x41);
    iVar2 = snprintf(acStack_448,0x400,"%s\n",lVar1 + 0x41);
    uVar3 = simple_read_from_buffer(param_2,param_3,param_4,acStack_448,(long)iVar2);
  }
  else {
    uVar3 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

