
void FUN_0014fd9c(undefined8 param_1)

{
  undefined4 unaff_w19;
  long unaff_x20;
  long unaff_x21;
  
  input_event(param_1,3,0x2f,unaff_w19);
  input_mt_report_slot_state(*(undefined8 *)(unaff_x20 + 0x80),0,0);
  input_event(*(undefined8 *)(unaff_x20 + 0x80),0,0,0);
  mutex_unlock(unaff_x21 + 0xc90);
  usleep_range_state(1000,0x44c,2);
  return;
}

