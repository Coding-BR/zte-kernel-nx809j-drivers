
void tpd_sysfs_fwimage_show(void)

{
  long *plVar1;
  
  plVar1 = *(long **)(tpd_cdev + 0xc58);
  if ((plVar1 != (long *)0x0) && (plVar1[1] != 0)) {
    if (*plVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      mutex_lock(tpd_cdev + 0xc60);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f6c4);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171826);
}

