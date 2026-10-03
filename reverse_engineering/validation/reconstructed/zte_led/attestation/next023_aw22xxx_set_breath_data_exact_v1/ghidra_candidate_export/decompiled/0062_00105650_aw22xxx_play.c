
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_play(long param_1)

{
  uint uVar1;
  code *pcVar2;
  
  _printk(&DAT_00108e85,"aw22xxx_play");
  aw22xxx_init_cfg_update_array(param_1);
  aw22xxx_set_breath_data(param_1,&user_para_data);
  if (kthread_status == 1) {
    do {
      msleep(duration / 0x1e);
      if (read_idx == write_idx) {
        kthread_status = 0;
        read_idx = 0;
        write_idx = 0;
        queue_work_on(0x20,_system_wq,param_1 + 0x230);
        _printk(&DAT_00109363,"aw22xxx_play");
LAB_0010575c:
        if ((kthread_status & 1) != 0) {
          return 0;
        }
        break;
      }
      uVar1 = read_idx * 0x19;
      if (24999 < (int)uVar1) goto LAB_0010575c;
      if (25000 < uVar1) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x1057cc);
        (*pcVar2)();
      }
      aw22xxx_set_breath_data(param_1,&user_para_data + uVar1);
      read_idx = read_idx + 1;
    } while ((kthread_status & 1) != 0);
  }
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,5,0);
  aw22xxx_i2c_write(param_1,4,1);
  aw22xxx_i2c_write(param_1,2,0);
  return 0;
}

