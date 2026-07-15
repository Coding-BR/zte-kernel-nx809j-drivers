
int zlog_create_log_dev(void)

{
  int iVar1;
  
  DAT_00100f58 = 0xff;
  DAT_00100f60 = kstrdup("zlog_exception",0xcc0);
  if (DAT_00100f60 == 0) {
    iVar1 = -0xc;
  }
  else {
    DAT_00100f68 = &zlog_fops;
    DAT_00100f80 = 0;
    iVar1 = misc_register(&DAT_00100f58);
    if (iVar1 == 0) {
      _printk(&DAT_001010be,"zlog_create_log_dev",DAT_00100f60,0);
      iVar1 = 0;
    }
    else {
      _printk(&DAT_00101342,"zlog_create_log_dev",DAT_00100f60);
    }
  }
  return iVar1;
}

