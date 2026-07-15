
void tpd_touch_report(undefined8 param_1,undefined2 param_2,undefined2 param_3,undefined2 param_4,
                     char param_5,char param_6)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,param_4);
  input_mt_report_slot_state(param_1,0,1);
  input_event(param_1,1,0x14a,1);
  input_event(param_1,3,0x35,param_2);
  input_event(param_1,3,0x36,param_3);
  if (param_6 != '\0') {
    input_event(param_1,3,0x3a,param_6);
  }
  if (param_5 != '\0') {
    input_event(param_1,3,0x30,param_5);
  }
  mutex_unlock(lVar1 + 0xc90);
  return;
}

