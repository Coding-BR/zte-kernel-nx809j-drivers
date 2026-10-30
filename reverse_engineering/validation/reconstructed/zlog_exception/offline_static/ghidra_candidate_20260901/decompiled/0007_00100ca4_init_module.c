
int init_module(void)

{
  int iVar1;
  undefined *puVar2;
  
  iVar1 = zlog_create_log_dev();
  if (iVar1 == 0) {
    __init_waitqueue_head(&DAT_00100ed0,"&g_zlog_info.poll_wq",&zlog_init___key);
    __mutex_init(&g_zlog_info,"&g_zlog_info.list_mutex",&zlog_init___key_10);
    puVar2 = &DAT_001011b3;
    DAT_00100e68 = &DAT_00100e68;
    DAT_00100e70 = &DAT_00100e68;
    DAT_00100ec8 = 0;
  }
  else {
    puVar2 = &DAT_00101169;
  }
  _printk(puVar2,"zlog_init");
  return iVar1;
}

