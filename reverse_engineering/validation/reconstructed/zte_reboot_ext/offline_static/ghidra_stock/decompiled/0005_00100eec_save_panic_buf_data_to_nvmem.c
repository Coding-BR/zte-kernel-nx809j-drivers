
void save_panic_buf_data_to_nvmem(long param_1)

{
  if (param_1 == 0) {
    _printk(&DAT_00101769);
  }
  else {
    if (*(ulong *)(param_1 + 0x90) < 0xfffffffffffff001) {
      _printk(&DAT_00101585,DAT_00100003);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x90),&DAT_00100003,1);
    }
    else {
      _printk(&DAT_00101a43);
    }
    if (*(ulong *)(param_1 + 0x88) < 0xfffffffffffff001) {
      _printk(&DAT_00101941,DAT_00100001);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x88),&DAT_00100001,1);
    }
    else {
      _printk(&DAT_001018b0);
    }
    if (*(ulong *)(param_1 + 0x80) < 0xfffffffffffff001) {
      _printk(&DAT_00101b8c,saved_nvmem_buf);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x80),0x100000,1);
    }
    else {
      _printk(&DAT_00101612);
    }
    if (*(ulong *)(param_1 + 0x98) < 0xfffffffffffff001) {
      _printk(&DAT_001014bf,DAT_00100004,DAT_00100005,DAT_00100006,DAT_00100007,DAT_00100008,
              DAT_00100009,DAT_0010000a,DAT_0010000b);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x98),&DAT_00100004,1);
    }
    else {
      _printk(&DAT_0010196b);
    }
  }
  return;
}

