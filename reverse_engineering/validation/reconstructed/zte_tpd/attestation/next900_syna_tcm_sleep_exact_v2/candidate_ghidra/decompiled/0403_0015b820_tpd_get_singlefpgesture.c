
void tpd_get_singlefpgesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x44c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b8);
  _printk(&DAT_00170086,"tpd_get_singlefpgesture");
  return;
}

