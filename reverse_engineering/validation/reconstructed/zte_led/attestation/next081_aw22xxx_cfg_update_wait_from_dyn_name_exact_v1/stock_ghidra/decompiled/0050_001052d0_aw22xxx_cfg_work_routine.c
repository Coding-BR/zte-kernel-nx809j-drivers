
void aw22xxx_cfg_work_routine(long param_1)

{
  _printk(&DAT_0010d681,"aw22xxx_cfg_work_routine");
  _printk(&DAT_0010d681,"aw22xxx_cfg_update_from_dyn_name");
  if (*(char *)(param_1 + 0xbf) == '\x02') {
    if (*(int *)(param_1 + 0xd0) == 2) {
      *(undefined1 *)(param_1 + 0x118) = 0;
    }
    else {
      *(undefined1 *)(param_1 + 0x118) = 1;
    }
    if ((g_init_flg & 1) == 0) {
      g_init_flg = 1;
      aw22xxx_init_cfg_update_array(param_1 + -0x230);
    }
    request_firmware_nowait
              (&__this_module,1,aw22xxx_dyn_name,*(undefined8 *)(param_1 + -0x228),0xcc0,
               param_1 + -0x230,aw22xxx_cfg_loaded);
  }
  else {
    _printk(&DAT_0010d466,"aw22xxx_cfg_update_from_dyn_name");
  }
  return;
}

