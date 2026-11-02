
void aw22xxx_cfg_work_routine(long param_1)

{
  _printk(&DAT_00108558,"aw22xxx_cfg_work_routine");
  _printk(&DAT_00108328);
  if (*(char *)(param_1 + 0xbf) == '\x02') {
    *(bool *)(param_1 + 0x118) = *(int *)(param_1 + 0xd0) != 2;
    if ((g_init_flg & 1) == 0) {
      g_init_flg = 1;
      aw22xxx_init_cfg_update_array(param_1 + -0x230);
    }
    request_firmware_nowait
              (&__this_module,1,aw22xxx_dyn_name,*(undefined8 *)(param_1 + -0x228),0xcc0,
               param_1 + -0x230,aw22xxx_cfg_loaded);
  }
  else {
    _printk(&DAT_00108704);
  }
  return;
}

