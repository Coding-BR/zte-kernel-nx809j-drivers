
void aw_remove(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_00103c0a,"aw86320",0x482,"aw_remove");
  remove_proc_entry("enable",micro_pump_proc_entry);
  remove_proc_entry("speed",micro_pump_proc_entry);
  remove_proc_entry(&DAT_00103f9f,micro_pump_proc_entry);
  remove_proc_entry(&DAT_00103906,micro_pump_proc_entry);
  remove_proc_entry("update",micro_pump_proc_entry);
  remove_proc_entry(&DAT_00103961,micro_pump_proc_entry);
  remove_proc_entry("driver/micropump",0);
  cancel_delayed_work_sync(lVar1 + 0x260);
  cancel_delayed_work_sync(lVar1 + 0x2c8);
  return;
}

