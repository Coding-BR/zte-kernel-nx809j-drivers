
void tp_game_partition_read(void)

{
  long lVar1;
  long *in_x3;
  undefined1 auStack_448 [1024];
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  memset(auStack_448,0,0x400);
  if (*in_x3 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00171172,"tp_game_partition_read",tpd_cdev + 0x41);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

