
void aw8693x_misc_para_init(long param_1)

{
  long lVar1;
  uint uVar2;
  int iVar3;
  undefined1 local_48 [4];
  undefined1 local_44 [4];
  ulong local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  *(undefined1 *)(param_1 + 0x12) = *(undefined1 *)(*(long *)(param_1 + 0x328) + 2);
  local_40 = (ulong)*(byte *)(*(long *)(param_1 + 0x328) + 2);
  i2c_w_bytes(param_1,0x47,&local_40,1);
  iVar3 = 0x711;
  if (0x707 < *(uint *)(param_1 + 0x468)) {
    iVar3 = 0x7c6;
  }
  uVar2 = (uint)(iVar3 * *(int *)(param_1 + 0x4c4)) / 40000;
  if (0x7e < uVar2) {
    uVar2 = 0x7f;
  }
  *(char *)(param_1 + 0x49b) = (char)uVar2;
  *(uint *)(param_1 + 0x30) = (uint)*(byte *)(param_1 + 0x463);
  i2c_r_bytes(param_1,7,&local_40,1);
  *(uint *)(param_1 + 0x34) = (uint)(byte)local_40;
  i2c_r_bytes(param_1,10,&local_40,8);
  *(uint *)(param_1 + 0x44) = (uint)(byte)local_40;
  *(ulong *)(param_1 + 0x1e) = local_40;
  i2c_w_bits(param_1,0x46,0xfffffffe,*(undefined1 *)(param_1 + 0x4c1));
  i2c_w_bits(param_1,0x18,0xffffff7f,(ulong)*(byte *)(param_1 + 0x4c3) << 7);
  i2c_w_bits(param_1,0x1c,0xfffffff0,*(undefined1 *)(param_1 + 0x49f));
  i2c_w_bytes(param_1,0x21,param_1 + 0x49d,1);
  local_44[0] = 0x32;
  i2c_w_bits(param_1,0x48,0xffffff7f,0);
  _printk(&DAT_00110e95,"haptic_hv",0x2e6,"aw8693x_protect_config");
  local_48[0] = 0xbf;
  i2c_w_bytes(param_1,0x4a,local_48,1);
  i2c_w_bytes(param_1,0x4b,local_44,1);
  _printk(&DAT_0010f834,"haptic_hv",0x20d,"aw8693x_vbat_ref_config");
  i2c_w_bits(param_1,0x4d,0xffffff8f,0x40);
  local_40 = CONCAT26(local_40._6_2_,0x254180030e1c);
  local_44[0] = 0x7d;
  i2c_w_bytes(param_1,0x5e,local_44,1);
  i2c_w_bits(param_1,0x56,0xfffffffc,*(undefined1 *)(param_1 + 0x4c2));
  i2c_w_bytes(param_1,0x6f,&local_40,2);
  i2c_w_bytes(param_1,0x72,(ulong)&local_40 | 2,1);
  i2c_w_bytes(param_1,0x77,(ulong)&local_40 | 3,1);
  i2c_w_bytes(param_1,0x7d,(ulong)&local_40 | 4,1);
  i2c_w_bytes(param_1,0x6b,(ulong)&local_40 | 5,1);
  local_44[0] = 0;
  i2c_w_bytes(param_1,0x5e,local_44,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

