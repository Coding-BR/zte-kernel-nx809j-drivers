
void zlog_register_work(void)

{
  if ((*(byte *)(tpd_cdev + 0xbf0) & 1) == 0) {
    tpd_zlog_register();
  }
  return;
}

