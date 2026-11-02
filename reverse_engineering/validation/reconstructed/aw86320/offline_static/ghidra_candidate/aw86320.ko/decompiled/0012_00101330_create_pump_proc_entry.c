
void create_pump_proc_entry(void)

{
  long lVar1;
  
  micro_pump_proc_entry = proc_mkdir("driver/micropump",0);
  if (micro_pump_proc_entry == 0) {
    _printk(&DAT_001039f5,"aw86320",0x3fe,"create_pump_proc_entry","create_pump_proc_entry");
  }
  else {
    lVar1 = proc_create(&DAT_0010384c,0x1b4,micro_pump_proc_entry,&proc_ops_icid);
    if (lVar1 == 0) {
      _printk(&DAT_001044ad,"aw86320",0x405,"create_pump_proc_entry");
    }
    lVar1 = proc_create("enable",0x1b4,micro_pump_proc_entry,&proc_ops_enable);
    if (lVar1 == 0) {
      _printk(&DAT_001036da,"aw86320",0x40a,"create_pump_proc_entry");
    }
    lVar1 = proc_create("speed",0x1b4,micro_pump_proc_entry,&proc_ops_speed);
    if (lVar1 == 0) {
      _printk(&DAT_00103707,"aw86320",0x40f,"create_pump_proc_entry");
    }
    lVar1 = proc_create(&DAT_00103f9f,0x1b4,micro_pump_proc_entry,&proc_ops_freq);
    if (lVar1 == 0) {
      _printk(&DAT_00103e91,"aw86320",0x414,"create_pump_proc_entry");
    }
    lVar1 = proc_create(&DAT_00103906,0x92,micro_pump_proc_entry,&proc_ops_reg);
    if (lVar1 == 0) {
      _printk(&DAT_0010390a,"aw86320",0x419,"create_pump_proc_entry");
    }
    lVar1 = proc_create("update",0x92,micro_pump_proc_entry,&proc_ops_update);
    if (lVar1 == 0) {
      _printk(&DAT_00103934,"aw86320",0x41e,"create_pump_proc_entry");
    }
    lVar1 = proc_create(&DAT_00103961,0x92,micro_pump_proc_entry,&proc_ops_duration);
    if (lVar1 == 0) {
      _printk(&DAT_001044ad,"aw86320",0x423,"create_pump_proc_entry");
    }
  }
  return;
}

