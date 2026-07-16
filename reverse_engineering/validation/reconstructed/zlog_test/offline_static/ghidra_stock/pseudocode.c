/* 0010036c zlog_enable_test_set */

void zlog_enable_test_set(char *param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint uVar4;
  int local_4c;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  iVar2 = sscanf(param_1,"%d",&local_4c);
  if (iVar2 == 1) {
    _printk(&DAT_001012a2,"zlog_enable_test_set",local_4c != 0);
    uVar4 = (uint)(local_4c != 0);
    if (zlog_enable_test_flag == uVar4) {
      _printk(&DAT_001014fa,"zlog_enable_test_set");
      uVar3 = 0;
    }
    else {
      zlog_enable_test_flag = uVar4;
      if (local_4c == 0) {
        flush_delayed_work(&zlog_test1_work);
        cancel_delayed_work_sync(&zlog_test1_work);
        flush_delayed_work(&zlog_test2_work);
        cancel_delayed_work_sync(&zlog_test2_work);
        flush_delayed_work(&zlog_test3_work);
        cancel_delayed_work_sync(&zlog_test3_work);
        flush_delayed_work(&zlog_test4_work);
        cancel_delayed_work_sync(&zlog_test4_work);
        flush_delayed_work(&zlog_test5_work);
        cancel_delayed_work_sync(&zlog_test5_work);
        zlog_unregister_client(client_1);
        zlog_unregister_client(client_2);
        zlog_unregister_client(client_3);
        zlog_unregister_client(client_4);
        zlog_unregister_client(client_5);
        uVar3 = 0;
        client_1 = 0;
        client_2 = 0;
        client_3 = 0;
        client_4 = 0;
        client_5 = 0;
      }
      else {
        client_1 = zlog_register_client(test_dev_1);
        if (client_1 == 0) {
          _printk(&DAT_0010152f,"zlog_enable_test_set");
        }
        client_2 = zlog_register_client(test_dev_2);
        if (client_2 == 0) {
          _printk(&DAT_0010169a,"zlog_enable_test_set");
        }
        client_3 = zlog_register_client(test_dev_3);
        if (client_3 == 0) {
          _printk(&DAT_0010114c,"zlog_enable_test_set");
        }
        client_4 = zlog_register_client(test_dev_4);
        if (client_4 == 0) {
          _printk(&DAT_00101384,"zlog_enable_test_set");
        }
        client_5 = zlog_register_client(test_dev_5);
        if (client_5 == 0) {
          _printk(&DAT_0010102f,"zlog_enable_test_set");
        }
        queue_delayed_work_on(0x20,zlog_test1_workqueue,&zlog_test1_work,0);
        queue_delayed_work_on(0x20,zlog_test2_workqueue,&zlog_test2_work,0);
        queue_delayed_work_on(0x20,zlog_test3_workqueue,&zlog_test3_work,0);
        queue_delayed_work_on(0x20,zlog_test4_workqueue,&zlog_test4_work,0);
        queue_delayed_work_on(0x20,zlog_test5_workqueue,&zlog_test5_work,0);
        uVar3 = 0;
      }
    }
  }
  else {
    _printk(&DAT_00101333,"zlog_enable_test_set");
    uVar3 = 0xffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 001006b4 zlog_enable_test_get */

int zlog_enable_test_get(char *param_1)

{
  int iVar1;
  
  iVar1 = snprintf(param_1,0x1000,"%d",(ulong)zlog_enable_test_flag);
  return iVar1;
}



/* 001006e8 poll */

int poll(pollfd *__fds,nfds_t __nfds,int __timeout)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = get_random_u32(__fds,__nfds,__timeout);
  iVar2 = 5;
  if ((uVar1 & 1) != 0) {
    iVar2 = 0;
  }
  _printk(&DAT_0010144f,&DAT_0010116e,&DAT_0010116e,uVar1,iVar2);
  return iVar2;
}



/* 00100740 dump */

undefined8 dump(long param_1,undefined4 param_2)

{
  _printk(&DAT_001010e8,&DAT_001015dd,&DAT_001015dd,param_2);
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump1\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump2\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump3\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump4\n");
  zlog_client_record(param_1,"dumpdumpdumpdumpdumpdump5\n");
  zlog_client_notify(param_1,0x40010a);
  _printk(&DAT_001014b4,&DAT_001015dd,param_1 + 4);
  return 0;
}



/* 00100800 zlog_test1_thread */

void zlog_test1_thread(void)

{
  undefined8 uVar1;
  uint uVar2;
  undefined8 uVar3;
  
  uVar2 = get_random_u32();
  zlog_client_record(client_1,"111111111111111111111\n");
  zlog_client_record(client_1,"222222222222222222222\n");
  zlog_client_record(client_1,"333333333333333333333\n");
  zlog_client_record(client_1,"444444444444444444444\n");
  zlog_client_record(client_1,"555555555555555555555\n");
  zlog_client_notify(client_1,5);
  _printk(&DAT_001014b4,"zlog_test1_thread",client_1 + 4);
  uVar1 = zlog_test1_workqueue;
  uVar3 = __msecs_to_jiffies((uVar2 % 5) * 1000);
  queue_delayed_work_on(0x20,uVar1,&zlog_test1_work,uVar3);
  return;
}



/* 001008f0 zlog_test2_thread */

void zlog_test2_thread(void)

{
  undefined8 uVar1;
  uint uVar2;
  undefined8 uVar3;
  
  uVar2 = get_random_u32();
  zlog_client_record(client_2,"1010101010101010101010\n");
  zlog_client_record(client_2,"2020202020202020202020\n");
  zlog_client_record(client_2,"3030303030303030303030\n");
  zlog_client_record(client_2,"4040404040404040404040\n");
  zlog_client_record(client_2,"5050505050505050505050\n");
  zlog_client_notify(client_2,5);
  _printk(&DAT_001014b4,"zlog_test2_thread",client_2 + 4);
  uVar1 = zlog_test2_workqueue;
  uVar3 = __msecs_to_jiffies((uVar2 % 5) * 1000);
  queue_delayed_work_on(0x20,uVar1,&zlog_test2_work,uVar3);
  return;
}



/* 001009e0 zlog_test3_thread */

void zlog_test3_thread(void)

{
  undefined8 uVar1;
  uint uVar2;
  undefined8 uVar3;
  
  uVar2 = get_random_u32();
  zlog_client_record(client_3,"AAAAAAAAAAAAAAAAAAAAA1\n");
  zlog_client_record(client_3,"BBBBBBBBBBBBBBBBBBBBB2\n");
  zlog_client_record(client_3,"CCCCCCCCCCCCCCCCCCCCC3\n");
  zlog_client_record(client_3,"DDDDDDDDDDDDDDDDDDD4\n");
  zlog_client_record(client_3,"EEEEEEEEEEEEEEEEEEEEEEE5\n");
  zlog_client_notify(client_3,5);
  _printk(&DAT_001014b4,"zlog_test3_thread",client_3 + 4);
  uVar1 = zlog_test3_workqueue;
  uVar3 = __msecs_to_jiffies((uVar2 % 5) * 1000);
  queue_delayed_work_on(0x20,uVar1,&zlog_test3_work,uVar3);
  return;
}



/* 00100ad0 zlog_test4_thread */

void zlog_test4_thread(void)

{
  undefined8 uVar1;
  uint uVar2;
  undefined8 uVar3;
  
  uVar2 = get_random_u32();
  zlog_client_record(client_4,"Kaka is an amazing palyer\n");
  zlog_client_record(client_4,"Ronaldo is an amazing palyer\n");
  zlog_client_record(client_4,"Ronney is an amazing palyer\n");
  zlog_client_record(client_4,"Henny is an amazing palyer\n");
  zlog_client_record(client_4,"Veri is an amazing palyer\n");
  zlog_client_notify(client_4,5);
  _printk(&DAT_001014b4,"zlog_test4_thread",client_4 + 4);
  uVar1 = zlog_test4_workqueue;
  uVar3 = __msecs_to_jiffies((uVar2 % 5) * 1000);
  queue_delayed_work_on(0x20,uVar1,&zlog_test4_work,uVar3);
  return;
}



/* 00100bc0 zlog_test5_thread */

void zlog_test5_thread(void)

{
  undefined8 uVar1;
  uint uVar2;
  undefined8 uVar3;
  
  uVar2 = get_random_u32();
  zlog_client_record(client_5,"National derby:\n");
  zlog_client_record(client_5,"Real Madrid vs  Barcelona\n");
  zlog_client_record(client_5,"Manchester United vs Chelsea\n");
  zlog_client_record(client_5,"AC milan vs Juventus\n");
  zlog_client_record(client_5,"Bayern Munich vs Hertha BSC\n");
  zlog_client_notify(client_5,5);
  _printk(&DAT_001014b4,"zlog_test5_thread",client_5 + 4);
  uVar1 = zlog_test5_workqueue;
  uVar3 = __msecs_to_jiffies((uVar2 % 5) * 1000);
  queue_delayed_work_on(0x20,uVar1,&zlog_test5_work,uVar3);
  return;
}



/* 00100cb0 init_module */

undefined8 init_module(void)

{
  int iVar1;
  
  zlog_test1_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test1_workqueue");
  zlog_test1_work = 0xfffffffe00000;
  DAT_00101720 = &DAT_00101720;
  DAT_00101728 = &DAT_00101720;
  DAT_00101730 = zlog_test1_thread;
  init_timer_key(&DAT_00101738,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test2_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test2_workqueue");
  zlog_test2_work = 0xfffffffe00000;
  DAT_00101790 = &DAT_00101790;
  DAT_00101798 = &DAT_00101790;
  DAT_001017a0 = zlog_test2_thread;
  init_timer_key(&DAT_001017a8,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test3_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test3_workqueue");
  zlog_test3_work = 0xfffffffe00000;
  DAT_00101800 = &DAT_00101800;
  DAT_00101808 = &DAT_00101800;
  DAT_00101810 = zlog_test3_thread;
  init_timer_key(&DAT_00101818,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test4_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test4_workqueue");
  zlog_test4_work = 0xfffffffe00000;
  DAT_00101870 = &DAT_00101870;
  DAT_00101878 = &DAT_00101870;
  DAT_00101880 = zlog_test4_thread;
  init_timer_key(&DAT_00101888,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test5_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test5_workqueue");
  zlog_test5_work = 0xfffffffe00000;
  DAT_001018e0 = &DAT_001018e0;
  DAT_001018e8 = &DAT_001018e0;
  DAT_001018f0 = zlog_test5_thread;
  init_timer_key(&DAT_001018f8,&delayed_work_timer_fn,0x200000,0,0);
  iVar1 = zte_misc_register_callback(0x100000,0);
  if (iVar1 < 0) {
    _printk(&DAT_00101196,"zlog_test_init","zlog_test_init",iVar1);
  }
  _printk(&DAT_001012da,"zlog_test_init","zlog_test_init");
  return 0;
}



/* 00100f1c cleanup_module */

void cleanup_module(void)

{
  _printk(&DAT_0010135b,"zlog_test_exit");
  return;
}



