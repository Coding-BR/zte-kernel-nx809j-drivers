
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

