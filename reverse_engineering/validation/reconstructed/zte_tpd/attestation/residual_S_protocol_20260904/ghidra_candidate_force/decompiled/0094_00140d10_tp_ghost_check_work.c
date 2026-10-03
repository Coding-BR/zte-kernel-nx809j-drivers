
void tp_ghost_check_work(void)

{
  long lVar1;
  ulong uVar2;
  
  lVar1 = tpd_cdev;
  uVar2 = tp_ghost_check();
  if ((uVar2 & 1) == 0) {
    ghost_check_reset();
    *(undefined1 *)(lVar1 + 0x488) = 0;
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001826f5);
}

