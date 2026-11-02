
void aw_remove(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_001044f8,"aw86320",0x482,"aw_remove");
  remove_proc_entry("enable",micro_pump_proc_entry);
  remove_proc_entry("speed",micro_pump_proc_entry);
  remove_proc_entry(&DAT_0010488d,micro_pump_proc_entry);
  remove_proc_entry(&DAT_001041f4,micro_pump_proc_entry);
  remove_proc_entry("update",micro_pump_proc_entry);
  remove_proc_entry(&DAT_0010424f,micro_pump_proc_entry);
  remove_proc_entry("driver/micropump",0);
  cancel_delayed_work_sync(lVar1 + 0x260);
  cancel_delayed_work_sync(lVar1 + 0x2c8);
  return;
}

