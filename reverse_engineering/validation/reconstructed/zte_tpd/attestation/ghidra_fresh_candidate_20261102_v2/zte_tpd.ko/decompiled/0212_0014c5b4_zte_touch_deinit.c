
void zte_touch_deinit(void)

{
  if ((tpd_cdev != 0) && (zte_touch_deinit_ztp_release != '\x01')) {
    ufp_mac_exit();
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00167518,"zlog_register_work_deinit");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00167672);
}

