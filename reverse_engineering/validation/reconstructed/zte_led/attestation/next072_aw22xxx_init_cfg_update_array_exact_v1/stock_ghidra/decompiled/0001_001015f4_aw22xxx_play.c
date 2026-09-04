
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_play(long param_1)

{
  code *pcVar1;
  
  aw22xxx_init_cfg_update_array();
  aw22xxx_set_breath_data(param_1,&user_para_data);
  while( true ) {
    msleep(duration / 0x1e);
    if (read_idx == write_idx) {
      kthread_status = 0;
      read_idx = 0;
      write_idx = 0;
      queue_work_on(0x20,_system_wq,param_1 + 0x230);
      _printk(&DAT_0010dc42,"aw22xxx_play");
    }
    if ((kthread_status & 1) == 0) {
      aw22xxx_i2c_write(param_1,0xff,0);
      aw22xxx_i2c_write(param_1,5,0);
      aw22xxx_i2c_write(param_1,4,1);
      aw22xxx_i2c_write(param_1,2,0);
      _printk(&DAT_0010d897,"aw22xxx_play");
    }
    if (25000 < (uint)(read_idx * 0x19)) break;
    aw22xxx_set_breath_data(param_1,&user_para_data + (uint)(read_idx * 0x19));
    read_idx = read_idx + 1;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x101738);
  (*pcVar1)();
}

