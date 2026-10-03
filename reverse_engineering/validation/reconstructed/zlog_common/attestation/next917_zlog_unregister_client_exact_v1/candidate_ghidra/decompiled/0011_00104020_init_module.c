
undefined8 init_module(void)

{
  undefined *puVar1;
  long lVar2;
  
  memset(&zlog_exact_bss_base,0,0x24c8);
  puVar1 = &DAT_00101c00;
  lVar2 = 0x20;
  do {
    __mutex_init(puVar1,"&g_zlog_server.client_list[i].client_lock",&zlog_common_init___key);
    lVar2 = lVar2 + -1;
    puVar1 = puVar1 + 0x120;
  } while (lVar2 != 0);
  zlog_comm_create_ctrl_dev();
  DAT_00103f50 = alloc_workqueue(&DAT_00101936,0x6000a,1,"zlog_handle_service");
  DAT_00103f58 = 0xfffffffe00000;
  DAT_00103f60 = &DAT_00103f60;
  DAT_00103f68 = &DAT_00103f60;
  DAT_00103f70 = zlog_handle_work;
  init_timer_key(&DAT_00103f78,&delayed_work_timer_fn,0x200000,0,0);
  DAT_00104010 = 0;
  DAT_00104014 = 1;
  _printk(&DAT_001019c6,"zlog_common_init","zlog_common_init");
  return 0;
}

