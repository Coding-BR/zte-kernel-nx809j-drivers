
void aw22xxx_fw_work_routine(long param_1)

{
  _printk(&DAT_001094c0,"aw22xxx_fw_work_routine");
  _printk(&DAT_001089dd);
  *(undefined1 *)(param_1 + 0xdf) = 1;
  request_firmware_nowait
            (&__this_module,1,&aw22xxx_fw_name,*(undefined8 *)(param_1 + -0x208),0xcc0,
             param_1 + -0x210,aw22xxx_fw_loaded);
  return;
}

