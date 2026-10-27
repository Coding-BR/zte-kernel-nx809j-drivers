
void ram_work_routine(long param_1)

{
  *(undefined1 *)(param_1 + -0x260) = 0;
  request_firmware_nowait
            (&__this_module,1,"micop_ram.bin",*(undefined8 *)(param_1 + -0x80),0xcc0,
             (undefined1 *)(param_1 + -0x260),ram_load);
  return;
}

