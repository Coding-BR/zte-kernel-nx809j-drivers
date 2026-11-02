
void aw8693x_ram_get_f0(long param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  byte bVar4;
  bool bVar5;
  undefined1 *puVar6;
  undefined *puVar7;
  undefined8 uVar8;
  byte bVar9;
  int iVar10;
  undefined4 uVar11;
  byte local_50 [4];
  undefined1 local_4c [4];
  undefined1 local_48 [4];
  undefined1 local_44 [4];
  char local_40 [4];
  ushort local_3c [2];
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  local_50[0] = 0;
  if ((*(byte *)(param_1 + 6) & 1) == 0) {
    puVar6 = &DAT_001097c1;
    uVar8 = 0x50a;
  }
  else {
    if (4 < *(byte *)(param_1 + 0x45c)) {
      *(undefined4 *)(param_1 + 0x60) = *(undefined4 *)(param_1 + 0x468);
      aw8693x_stop(param_1);
      i2c_w_bits(param_1,0x4e,0xfffffff8,*(undefined1 *)(param_1 + 0x495));
      _printk(&DAT_00108e12,"haptic_hv",0x24f,"aw8693x_play_mode");
      *(undefined1 *)(param_1 + 0x17) = 1;
      i2c_w_bits(param_1,8,0xfffffffc,0);
      i2c_w_bits(param_1,8,0xfffffffb,0);
      _printk(&DAT_00109608,"haptic_hv",0x1f8,"aw8693x_bst_mode_config");
      i2c_w_bits(param_1,6,0xffffffdf,0x20);
      i2c_w_bits(param_1,0x4c,0xffffffbf,0);
      i2c_w_bits(param_1,0x18,0xffffffdf,0x20);
      i2c_r_bytes(param_1,8,local_50,1);
      bVar4 = local_50[0];
      i2c_w_bits(param_1,8,0xfffffffb,4);
      i2c_w_bits(param_1,6,0xffffffe0,0xd);
      local_4c[0] = 5;
      i2c_w_bytes(param_1,10,local_4c,1);
      local_48[0] = 0;
      i2c_w_bytes(param_1,0xb,local_48,1);
      i2c_w_bits(param_1,0x12,0xffffff0f,0x20);
      _printk(&DAT_00108af1,"haptic_hv",0x1d7,"aw8693x_play_go",1);
      local_44[0] = 1;
      i2c_w_bytes(param_1,9,local_44,1);
      usleep_range_state(20000,0x5014,2);
      iVar10 = -100;
      do {
        local_40[0] = '\0';
        i2c_r_bytes(param_1,0x3f,local_40,1);
        if (local_40[0] == '\0') {
          puVar7 = &DAT_001096a5;
          uVar8 = 0x1ea;
          goto LAB_00107bc0;
        }
        usleep_range_state(2000,0x9c4,2);
        bVar5 = iVar10 != -1;
        iVar10 = iVar10 + 1;
      } while (bVar5);
      puVar7 = &DAT_00108751;
      uVar8 = 0x1ef;
LAB_00107bc0:
      _printk(puVar7,"haptic_hv",uVar8,"aw8693x_wait_enter_standby");
      local_3c[0] = 0;
      i2c_r_bytes(param_1,0x27,local_3c,2);
      uVar1 = (uint)(local_3c[0] >> 8) | (local_3c[0] & 0xff00ff) << 8;
      if (uVar1 == 0) {
        *(undefined4 *)(param_1 + 0x60) = 0;
        _printk(&DAT_00108c18,"haptic_hv",0x4ac,"aw8693x_read_f0");
        uVar11 = 0xffffffde;
      }
      else {
        uVar2 = 0;
        if (uVar1 != 0) {
          uVar2 = 0x3a9800 / uVar1;
        }
        *(uint *)(param_1 + 0x60) = uVar2;
        *(uint *)(param_1 + 0x70) = uVar2;
        _printk(&DAT_00108c46,"haptic_hv",0x4b1,"aw8693x_read_f0");
        uVar11 = 0;
      }
      bVar9 = *(byte *)(param_1 + 0x30);
      if (bVar9 < 6) {
        bVar9 = 5;
      }
      if (0x18 < bVar9) {
        bVar9 = 0x19;
      }
      i2c_w_bits(param_1,6,0xffffffe0,bVar9);
      i2c_w_bits(param_1,0x18,0xffffffdf,0);
      if ((bVar4 >> 2 & 1) == 0) {
        uVar8 = 0;
      }
      else {
        uVar8 = 4;
      }
      i2c_w_bits(param_1,8,0xfffffffb,uVar8);
      goto LAB_00107cb0;
    }
    puVar6 = &DAT_00108e93;
    uVar8 = 0x50e;
  }
  _printk(puVar6,"haptic_hv",uVar8,"aw8693x_ram_get_f0");
  uVar11 = 0xffffffde;
LAB_00107cb0:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar11);
}

