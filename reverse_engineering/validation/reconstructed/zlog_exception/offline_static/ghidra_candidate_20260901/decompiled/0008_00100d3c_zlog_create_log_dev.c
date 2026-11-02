
int zlog_create_log_dev(void)

{
  int iVar1;
  
  DAT_00100e78 = 0xff;
  DAT_00100e80 = kstrdup("zlog_exception",0xcc0);
  if (DAT_00100e80 == 0) {
    iVar1 = -0xc;
  }
  else {
    DAT_00100e88 = &zlog_fops;
    DAT_00100ea0 = 0;
    iVar1 = misc_register(&DAT_00100e78);
    if (iVar1 == 0) {
      _printk(&DAT_00100fca,"zlog_create_log_dev",DAT_00100e80,0);
      iVar1 = 0;
    }
    else {
      _printk(&DAT_0010123c,"zlog_create_log_dev",DAT_00100e80);
    }
  }
  return iVar1;
}

