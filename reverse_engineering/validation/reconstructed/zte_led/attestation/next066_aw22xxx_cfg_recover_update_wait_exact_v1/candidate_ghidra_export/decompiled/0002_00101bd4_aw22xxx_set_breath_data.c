
void aw22xxx_set_breath_data(undefined8 param_1,long param_2)

{
  bool bVar1;
  ulong uVar2;
  
  DAT_0010003f = *(undefined1 *)(param_2 + 8);
  uVar2 = 0;
  DAT_00100045 = *(undefined1 *)(param_2 + 9);
  DAT_0010004b = *(undefined1 *)(param_2 + 10);
  DAT_00100051 = *(undefined1 *)(param_2 + 0xb);
  DAT_00100057 = *(undefined1 *)(param_2 + 0xc);
  DAT_0010005d = *(undefined1 *)(param_2 + 0xd);
  DAT_00100063 = *(undefined1 *)(param_2 + 0xe);
  DAT_00100069 = *(undefined1 *)(param_2 + 0xf);
  DAT_0010006f = *(undefined1 *)(param_2 + 0x10);
  DAT_00100075 = *(undefined1 *)(param_2 + 0x11);
  DAT_0010007b = *(undefined1 *)(param_2 + 0x12);
  DAT_00100081 = *(undefined1 *)(param_2 + 0x13);
  DAT_00100087 = *(undefined1 *)(param_2 + 0x14);
  DAT_00100099 = *(undefined1 *)(param_2 + 0x15);
  DAT_001000ab = *(undefined1 *)(param_2 + 0x16);
  DAT_001000bd = *(undefined1 *)(param_2 + 0x17);
  duration = *(undefined1 *)(param_2 + 0x18);
  DAT_0010008d = DAT_00100087;
  DAT_00100093 = DAT_00100087;
  DAT_0010009f = DAT_00100099;
  DAT_001000a5 = DAT_00100099;
  DAT_001000b1 = DAT_001000ab;
  DAT_001000b7 = DAT_001000ab;
  DAT_001000c3 = DAT_001000bd;
  DAT_001000c9 = DAT_001000bd;
  do {
    aw22xxx_i2c_write(param_1,(&aw22xxx_blink_cfg)[uVar2],(&DAT_00100039)[uVar2]);
    bVar1 = uVar2 < 0x92;
    uVar2 = uVar2 + 2;
  } while (bVar1);
  return;
}

