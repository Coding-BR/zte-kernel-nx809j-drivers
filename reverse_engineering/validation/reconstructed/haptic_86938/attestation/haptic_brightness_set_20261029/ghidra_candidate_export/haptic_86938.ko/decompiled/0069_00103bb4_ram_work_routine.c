
void ram_work_routine(long param_1)

{
  *(undefined2 *)(param_1 + -0x3bb) = 0;
  request_firmware_nowait
            (&__this_module,1,aw_ram_name,*(undefined8 *)(param_1 + -0xa0),0xcc0,param_1 + -0x3c0,
             ram_load);
  return;
}

