
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

