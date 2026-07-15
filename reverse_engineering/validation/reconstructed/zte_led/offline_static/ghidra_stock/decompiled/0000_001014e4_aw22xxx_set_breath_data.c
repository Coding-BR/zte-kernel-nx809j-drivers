
void aw22xxx_set_breath_data(undefined8 param_1,long param_2)

{
  bool bVar1;
  ulong uVar2;
  
  DAT_0010008f = *(undefined1 *)(param_2 + 8);
  uVar2 = 0;
  DAT_00100095 = *(undefined1 *)(param_2 + 9);
  DAT_0010009b = *(undefined1 *)(param_2 + 10);
  DAT_001000a1 = *(undefined1 *)(param_2 + 0xb);
  DAT_001000a7 = *(undefined1 *)(param_2 + 0xc);
  DAT_001000ad = *(undefined1 *)(param_2 + 0xd);
  DAT_001000b3 = *(undefined1 *)(param_2 + 0xe);
  DAT_001000b9 = *(undefined1 *)(param_2 + 0xf);
  DAT_001000bf = *(undefined1 *)(param_2 + 0x10);
  DAT_001000c5 = *(undefined1 *)(param_2 + 0x11);
  DAT_001000cb = *(undefined1 *)(param_2 + 0x12);
  DAT_001000d1 = *(undefined1 *)(param_2 + 0x13);
  DAT_001000d7 = *(undefined1 *)(param_2 + 0x14);
  DAT_001000e9 = *(undefined1 *)(param_2 + 0x15);
  DAT_001000fb = *(undefined1 *)(param_2 + 0x16);
  DAT_0010010d = *(undefined1 *)(param_2 + 0x17);
  duration = *(undefined1 *)(param_2 + 0x18);
  DAT_001000dd = DAT_001000d7;
  DAT_001000e3 = DAT_001000d7;
  DAT_001000ef = DAT_001000e9;
  DAT_001000f5 = DAT_001000e9;
  DAT_00100101 = DAT_001000fb;
  DAT_00100107 = DAT_001000fb;
  DAT_00100113 = DAT_0010010d;
  DAT_00100119 = DAT_0010010d;
  do {
    aw22xxx_i2c_write(param_1,(&aw22xxx_blink_cfg)[uVar2],(&DAT_00100089)[uVar2]);
    bVar1 = uVar2 < 0x92;
    uVar2 = uVar2 + 2;
  } while (bVar1);
  return;
}

