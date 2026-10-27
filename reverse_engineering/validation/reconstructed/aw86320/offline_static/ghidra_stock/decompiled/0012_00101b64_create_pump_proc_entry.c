
void create_pump_proc_entry(void)

{
  long lVar1;
  
  micro_pump_proc_entry = proc_mkdir("driver/micropump",0);
  if (micro_pump_proc_entry == 0) {
    _printk(&DAT_001042e3,"aw86320",0x3fe,"create_pump_proc_entry","create_pump_proc_entry");
  }
  else {
    lVar1 = proc_create(&DAT_0010413a,0x1b4,micro_pump_proc_entry,proc_ops_icid);
    if (lVar1 == 0) {
      _printk(&DAT_00104d9b,"aw86320",0x405,"create_pump_proc_entry");
    }
    lVar1 = proc_create("enable",0x1b4,micro_pump_proc_entry,proc_ops_enable);
    if (lVar1 == 0) {
      _printk(&DAT_00103fc8,"aw86320",0x40a,"create_pump_proc_entry");
    }
    lVar1 = proc_create("speed",0x1b4,micro_pump_proc_entry,proc_ops_speed);
    if (lVar1 == 0) {
      _printk(&DAT_00103ff5,"aw86320",0x40f,"create_pump_proc_entry");
    }
    lVar1 = proc_create(&DAT_0010488d,0x1b4,micro_pump_proc_entry,proc_ops_freq);
    if (lVar1 == 0) {
      _printk(&DAT_0010477f,"aw86320",0x414,"create_pump_proc_entry");
    }
    lVar1 = proc_create(&DAT_001041f4,0x92,micro_pump_proc_entry,proc_ops_reg);
    if (lVar1 == 0) {
      _printk(&DAT_001041f8,"aw86320",0x419,"create_pump_proc_entry");
    }
    lVar1 = proc_create("update",0x92,micro_pump_proc_entry,proc_ops_update);
    if (lVar1 == 0) {
      _printk(&DAT_00104222,"aw86320",0x41e,"create_pump_proc_entry");
    }
    lVar1 = proc_create(&DAT_0010424f,0x92,micro_pump_proc_entry,proc_ops_duration);
    if (lVar1 == 0) {
      _printk(&DAT_00104d9b,"aw86320",0x423,"create_pump_proc_entry");
    }
  }
  return;
}

