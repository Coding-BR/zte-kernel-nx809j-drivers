
int init_module(void)

{
  int iVar1;
  undefined *puVar2;
  
  iVar1 = zlog_create_log_dev();
  if (iVar1 == 0) {
    __init_waitqueue_head(&DAT_00100fb0,"&g_zlog_info.poll_wq",&zlog_init___key);
    __mutex_init(&g_zlog_info,"&g_zlog_info.list_mutex",&zlog_init___key_11);
    puVar2 = &DAT_001012b9;
    DAT_00100f48 = &DAT_00100f48;
    DAT_00100f50 = &DAT_00100f48;
    DAT_00100fa8 = 0;
  }
  else {
    puVar2 = &DAT_0010126f;
  }
  _printk(puVar2,"zlog_init");
  return iVar1;
}

