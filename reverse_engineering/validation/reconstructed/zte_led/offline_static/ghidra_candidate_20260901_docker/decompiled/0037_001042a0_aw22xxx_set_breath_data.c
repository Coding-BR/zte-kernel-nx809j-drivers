
void aw22xxx_set_breath_data(undefined8 param_1,long param_2)

{
  bool bVar1;
  ulong uVar2;
  
  DAT_00100325 = *(undefined1 *)(param_2 + 8);
  uVar2 = 0;
  DAT_0010032b = *(undefined1 *)(param_2 + 9);
  DAT_00100331 = *(undefined1 *)(param_2 + 10);
  DAT_00100337 = *(undefined1 *)(param_2 + 0xb);
  DAT_0010033d = *(undefined1 *)(param_2 + 0xc);
  DAT_00100343 = *(undefined1 *)(param_2 + 0xd);
  DAT_00100349 = *(undefined1 *)(param_2 + 0xe);
  DAT_0010034f = *(undefined1 *)(param_2 + 0xf);
  DAT_00100355 = *(undefined1 *)(param_2 + 0x10);
  DAT_0010035b = *(undefined1 *)(param_2 + 0x11);
  DAT_00100361 = *(undefined1 *)(param_2 + 0x12);
  DAT_00100367 = *(undefined1 *)(param_2 + 0x13);
  DAT_0010036d = *(undefined1 *)(param_2 + 0x14);
  DAT_0010037f = *(undefined1 *)(param_2 + 0x15);
  DAT_00100391 = *(undefined1 *)(param_2 + 0x16);
  DAT_001003a3 = *(undefined1 *)(param_2 + 0x17);
  duration = *(undefined1 *)(param_2 + 0x18);
  DAT_00100373 = DAT_0010036d;
  DAT_00100379 = DAT_0010036d;
  DAT_00100385 = DAT_0010037f;
  DAT_0010038b = DAT_0010037f;
  DAT_00100397 = DAT_00100391;
  DAT_0010039d = DAT_00100391;
  DAT_001003a9 = DAT_001003a3;
  DAT_001003af = DAT_001003a3;
  do {
    aw22xxx_i2c_write(param_1,(&aw22xxx_blink_cfg)[uVar2],(&DAT_00100321)[uVar2]);
    bVar1 = uVar2 < 0x98;
    uVar2 = uVar2 + 2;
  } while (bVar1);
  return;
}

