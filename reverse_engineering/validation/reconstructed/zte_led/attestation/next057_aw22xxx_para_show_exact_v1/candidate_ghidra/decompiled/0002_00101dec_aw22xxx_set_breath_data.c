
void aw22xxx_set_breath_data(undefined8 param_1,long param_2)

{
  bool bVar1;
  ulong uVar2;
  
  DAT_0010004f = *(undefined1 *)(param_2 + 8);
  uVar2 = 0;
  DAT_00100055 = *(undefined1 *)(param_2 + 9);
  DAT_0010005b = *(undefined1 *)(param_2 + 10);
  DAT_00100061 = *(undefined1 *)(param_2 + 0xb);
  DAT_00100067 = *(undefined1 *)(param_2 + 0xc);
  DAT_0010006d = *(undefined1 *)(param_2 + 0xd);
  DAT_00100073 = *(undefined1 *)(param_2 + 0xe);
  DAT_00100079 = *(undefined1 *)(param_2 + 0xf);
  DAT_0010007f = *(undefined1 *)(param_2 + 0x10);
  DAT_00100085 = *(undefined1 *)(param_2 + 0x11);
  DAT_0010008b = *(undefined1 *)(param_2 + 0x12);
  DAT_00100091 = *(undefined1 *)(param_2 + 0x13);
  DAT_00100097 = *(undefined1 *)(param_2 + 0x14);
  DAT_001000a9 = *(undefined1 *)(param_2 + 0x15);
  DAT_001000bb = *(undefined1 *)(param_2 + 0x16);
  DAT_001000cd = *(undefined1 *)(param_2 + 0x17);
  duration = *(undefined1 *)(param_2 + 0x18);
  DAT_0010009d = DAT_00100097;
  DAT_001000a3 = DAT_00100097;
  DAT_001000af = DAT_001000a9;
  DAT_001000b5 = DAT_001000a9;
  DAT_001000c1 = DAT_001000bb;
  DAT_001000c7 = DAT_001000bb;
  DAT_001000d3 = DAT_001000cd;
  DAT_001000d9 = DAT_001000cd;
  do {
    aw22xxx_i2c_write(param_1,(&aw22xxx_blink_cfg)[uVar2],(&DAT_00100049)[uVar2]);
    bVar1 = uVar2 < 0x92;
    uVar2 = uVar2 + 2;
  } while (bVar1);
  return;
}

