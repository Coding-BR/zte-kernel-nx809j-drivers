
undefined8 init_module(void)

{
  undefined *puVar1;
  long lVar2;
  
  memset(&g_zlog_server,0,0x24c8);
  puVar1 = &DAT_00101568;
  lVar2 = 0x20;
  do {
    __mutex_init(puVar1,"&g_zlog_server.client_list[i].client_lock",&zlog_common_init___key);
    lVar2 = lVar2 + -1;
    puVar1 = puVar1 + 0x120;
  } while (lVar2 != 0);
  zlog_comm_create_ctrl_dev();
  DAT_001038b8 = alloc_workqueue(&DAT_00103cff,0x6000a,1,"zlog_handle_service");
  DAT_001038c0 = 0xfffffffe00000;
  DAT_001038c8 = &DAT_001038c8;
  DAT_001038d0 = &DAT_001038c8;
  DAT_001038d8 = zlog_handle_work;
  init_timer_key(&DAT_001038e0,&delayed_work_timer_fn,0x200000,0,0);
  DAT_00103978 = 0;
  DAT_0010397c = 1;
  _printk(&DAT_00103da9,"zlog_common_init","zlog_common_init");
  return 0;
}

