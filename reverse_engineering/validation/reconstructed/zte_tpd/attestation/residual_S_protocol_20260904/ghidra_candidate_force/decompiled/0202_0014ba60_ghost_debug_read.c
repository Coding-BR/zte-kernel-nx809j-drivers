
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 ghost_debug_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = tpd_cdev;
  if (*in_x3 != 0) {
    return 0;
  }
  lVar2 = __kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168826);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001687da,*(undefined1 *)(lVar1 + 0x491));
}

