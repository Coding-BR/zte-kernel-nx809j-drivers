
void aw8693x_trig_init(long param_1)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  undefined1 local_38 [4];
  byte local_34 [4];
  byte local_30 [4];
  byte local_2c [4];
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  _printk(&DAT_0010f834,"haptic_hv",0x619,"aw8693x_trig_init");
  if (*(char *)(param_1 + 0x4bf) == '\x01') {
    _printk(&DAT_0010fb50,"haptic_hv",0x61b,"aw8693x_trig_init");
    _printk(&DAT_0010f834,"haptic_hv",0x30b,"aw8693x_one_wire_init");
    local_38[0] = 0x6c;
    i2c_w_bytes(param_1,0x3e,local_38,1);
    local_38[0] = 0x75;
    i2c_w_bytes(param_1,0x3c,local_38,1);
    i2c_w_bits(param_1,0x3a,0xfffffff7,8);
  }
  else {
    *(char *)(param_1 + 0x5e7) = *(char *)(param_1 + 0x4a5);
    *(undefined1 *)(param_1 + 0x5e9) = *(undefined1 *)(param_1 + 0x4a7);
    uVar3 = (uint)(*(char *)(param_1 + 0x4a5) != '\0');
    *(char *)(param_1 + 0x5e8) = *(char *)(param_1 + 0x4a6);
    *(undefined1 *)(param_1 + 0x5eb) = *(undefined1 *)(param_1 + 0x4a8);
    uVar1 = uVar3 << 6;
    if (*(char *)(param_1 + 0x4a6) != '\0') {
      uVar1 = uVar3 << 6 | 0xffffff80;
    }
    *(undefined1 *)(param_1 + 0x5ea) = *(undefined1 *)(param_1 + 0x4a9);
    *(undefined1 *)(param_1 + 0x5ec) = *(undefined1 *)(param_1 + 0x4aa);
    if (*(char *)(param_1 + 0x4ab) != '\0') {
      uVar1 = uVar1 | 0x20;
    }
    *(char *)(param_1 + 0x5e5) = *(char *)(param_1 + 0x4ab);
    if (*(char *)(param_1 + 0x4ac) != '\0') {
      uVar1 = uVar1 | 0x10;
    }
    *(char *)(param_1 + 0x5e6) = *(char *)(param_1 + 0x4ac);
    i2c_w_bits(param_1,0x39,0xffffff0f,uVar1);
    local_34[0] = *(byte *)(param_1 + 0x5eb) | (*(char *)(param_1 + 0x5e9) != '\0') << 7;
    i2c_w_bytes(param_1,0x33,local_34,1);
    local_34[0] = *(byte *)(param_1 + 0x5ec) | (*(char *)(param_1 + 0x5ea) != '\0') << 7;
    i2c_w_bytes(param_1,0x36,local_34,1);
  }
  *(undefined1 *)(param_1 + 0x5f6) = *(undefined1 *)(param_1 + 0x4af);
  *(char *)(param_1 + 0x5f4) = *(char *)(param_1 + 0x4ad);
  uVar3 = (uint)(*(char *)(param_1 + 0x4ad) != '\0');
  *(char *)(param_1 + 0x5f5) = *(char *)(param_1 + 0x4ae);
  *(undefined1 *)(param_1 + 0x5f8) = *(undefined1 *)(param_1 + 0x4b0);
  uVar1 = uVar3 << 2;
  if (*(char *)(param_1 + 0x4ae) != '\0') {
    uVar1 = uVar3 << 2 | 8;
  }
  *(undefined1 *)(param_1 + 0x602) = *(undefined1 *)(param_1 + 0x4b6);
  *(undefined1 *)(param_1 + 0x5f7) = *(undefined1 *)(param_1 + 0x4b1);
  *(undefined1 *)(param_1 + 0x5f9) = *(undefined1 *)(param_1 + 0x4b2);
  *(undefined1 *)(param_1 + 0x603) = *(undefined1 *)(param_1 + 0x4b7);
  *(undefined1 *)(param_1 + 0x605) = *(undefined1 *)(param_1 + 0x4b8);
  *(undefined1 *)(param_1 + 0x601) = *(undefined1 *)(param_1 + 0x4b5);
  *(undefined1 *)(param_1 + 0x604) = *(undefined1 *)(param_1 + 0x4b9);
  *(char *)(param_1 + 0x5f2) = *(char *)(param_1 + 0x4b3);
  if (*(char *)(param_1 + 0x4b3) != '\0') {
    uVar1 = uVar1 | 2;
  }
  *(char *)(param_1 + 0x5f3) = *(char *)(param_1 + 0x4b4);
  if (*(char *)(param_1 + 0x4b4) != '\0') {
    uVar1 = uVar1 + 1;
  }
  *(undefined1 *)(param_1 + 0x606) = *(undefined1 *)(param_1 + 0x4ba);
  *(undefined2 *)(param_1 + 0x5ff) = *(undefined2 *)(param_1 + 0x4bb);
  i2c_w_bits(param_1,0x39,0xfffffff0,uVar1);
  local_30[0] = *(byte *)(param_1 + 0x5f8) | (*(char *)(param_1 + 0x5f6) != '\0') << 7;
  i2c_w_bytes(param_1,0x34,local_30,1);
  local_30[0] = *(byte *)(param_1 + 0x5f9) | (*(char *)(param_1 + 0x5f7) != '\0') << 7;
  i2c_w_bytes(param_1,0x37,local_30,1);
  uVar3 = (uint)(*(char *)(param_1 + 0x601) != '\0');
  uVar1 = uVar3 << 6;
  if (*(char *)(param_1 + 0x602) != '\0') {
    uVar1 = uVar3 << 6 | 0xffffff80;
  }
  if (*(char *)(param_1 + 0x5ff) != '\0') {
    uVar1 = uVar1 | 0x20;
  }
  if (*(char *)(param_1 + 0x600) != '\0') {
    uVar1 = uVar1 | 0x10;
  }
  i2c_w_bits(param_1,0x3a,0xffffff0f,uVar1);
  local_2c[0] = *(byte *)(param_1 + 0x605) | (*(char *)(param_1 + 0x603) != '\0') << 7;
  i2c_w_bytes(param_1,0x35,local_2c,1);
  local_2c[0] = *(byte *)(param_1 + 0x606) | (*(char *)(param_1 + 0x604) != '\0') << 7;
  i2c_w_bytes(param_1,0x38,local_2c,1);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

