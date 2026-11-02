
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

