
void save_panic_buf_data_to_nvmem(long param_1)

{
  if (param_1 == 0) {
    _printk(&DAT_00101614);
  }
  else {
    if (*(ulong *)(param_1 + 0x90) < 0xfffffffffffff001) {
      _printk(&DAT_001013ec,DAT_00100003);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x90),&DAT_00100003,1);
    }
    else {
      _printk(&DAT_001018cd);
    }
    if (*(ulong *)(param_1 + 0x88) < 0xfffffffffffff001) {
      _printk(&DAT_001017d9,DAT_00100001);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x88),&DAT_00100001,1);
    }
    else {
      _printk(&DAT_00101734);
    }
    if (*(ulong *)(param_1 + 0x80) < 0xfffffffffffff001) {
      _printk(&DAT_00101a37,saved_nvmem_buf);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x80),0x100000,1);
    }
    else {
      _printk(&DAT_001014ab);
    }
    if (*(ulong *)(param_1 + 0x98) < 0xfffffffffffff001) {
      _printk(&DAT_0010136a,DAT_00100004,DAT_00100005,DAT_00100006,DAT_00100007,DAT_00100008,
              DAT_00100009,DAT_0010000a,DAT_0010000b);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x98),&DAT_00100004,1);
    }
    else {
      _printk(&DAT_00101810);
    }
  }
  return;
}

