
void syna_cdev_release(void)

{
  if (*(int *)(*(long *)(g_cdev_data + 0xa8) + 900) < 1) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f718,"syna_cdev_release");
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(&DAT_0015eb40);
}

