
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

