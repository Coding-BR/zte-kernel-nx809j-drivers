
void syna_cdev_ioctl_raw_write(long *param_1,undefined8 param_2,uint param_3,uint param_4)

{
  if (param_3 < param_4) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001812a9,"syna_cdev_ioctl_raw_write",param_3,param_4);
  }
  if (param_4 != 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(*param_1 + 0x348);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00182fda,"syna_cdev_ioctl_raw_write");
}

