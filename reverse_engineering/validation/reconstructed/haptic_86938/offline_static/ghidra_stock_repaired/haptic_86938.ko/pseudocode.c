/* 00102e24 aw8693x_get_f0 */

void aw8693x_get_f0(long param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  ushort uVar4;
  byte bVar5;
  bool bVar6;
  undefined *puVar7;
  undefined8 uVar8;
  int iVar9;
  undefined4 uVar10;
  byte local_44 [4];
  undefined1 local_40;
  undefined2 local_3f;
  undefined2 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  local_44[0] = 0;
  *(undefined4 *)(param_1 + 0x60) = *(undefined4 *)(param_1 + 0x468);
  aw8693x_stop();
  _printk(&DAT_0010f834,"haptic_hv",0x20d,"aw8693x_vbat_ref_config");
  i2c_w_bits(param_1,0x4d,0xffffff8f,0x20);
  i2c_w_bits(param_1,0x4e,0xfffffff8,*(undefined1 *)(param_1 + 0x495));
  _printk(&DAT_001104bd,"haptic_hv",0x275,"aw8693x_play_mode");
  *(undefined1 *)(param_1 + 0x17) = 4;
  i2c_w_bits(param_1,8,0xfffffffc,2);
  i2c_w_bits(param_1,8,0xfffffffb,4);
  _printk(&DAT_0010f1e5,"haptic_hv",0x1fe,"aw8693x_bst_mode_config");
  i2c_w_bits(param_1,6,0xffffffdf,0);
  i2c_w_bits(param_1,0x4c,0xffffffbf,0x40);
  i2c_w_bits(param_1,0x18,0xffffffdf,0x20);
  i2c_w_bits(param_1,0x1d,0xffffff7f,(ulong)*(byte *)(param_1 + 0x4c0) << 7);
  i2c_r_bytes(param_1,8,local_44,1);
  bVar5 = local_44[0];
  i2c_w_bits(param_1,8,0xfffffffb,4);
  i2c_w_bits(param_1,0x1d,0xffffff80,*(undefined1 *)(param_1 + 0x49a));
  local_40 = *(undefined1 *)(param_1 + 0x49b);
  local_3f = *(undefined2 *)(param_1 + 0x4a0);
  i2c_w_bytes(param_1,0x1e,&local_40,3);
  if (*(char *)(param_1 + 0x4a3) == '\0') {
    _printk(&DAT_0010f298,"haptic_hv",0x4dd,"aw8693x_get_f0");
    uVar1 = *(uint *)(param_1 + 0x468);
  }
  else {
    i2c_w_bytes(param_1,0x22,param_1 + 0x4a3,1);
    uVar1 = *(uint *)(param_1 + 0x468);
  }
  if (uVar1 == 0) {
    uVar10 = 0xffffffde;
  }
  else {
    local_3c._1_1_ = (undefined1)(local_3c >> 8);
    uVar2 = 0;
    if (uVar1 != 0) {
      uVar2 = 240000 / uVar1;
    }
    iVar9 = (uVar2 - ((uint)*(byte *)(param_1 + 0x49f) + (uint)*(byte *)(param_1 + 0x4a3))) + -8;
    if (0xfe < iVar9) {
      iVar9 = 0xff;
    }
    if (0xfe < uVar2) {
      uVar2 = 0xff;
    }
    local_40 = (undefined1)uVar2;
    uVar4 = (ushort)local_3f >> 8;
    local_3f = CONCAT11((char)uVar4,(byte)iVar9 & ((byte)(iVar9 >> 0x1f) ^ 0xff));
    i2c_w_bytes(param_1,0x19,&local_40,2);
    _printk(&DAT_0010f53c,"haptic_hv",0x1d7,"aw8693x_play_go",1);
    local_3c = CONCAT11(local_3c._1_1_,1);
    i2c_w_bytes(param_1,9,&local_3c,1);
    usleep_range_state(20000,0x5014,2);
    iVar9 = -100;
    do {
      local_3c = local_3c & 0xff00;
      i2c_r_bytes(param_1,0x3f,&local_3c,1);
      if ((char)local_3c == '\0') {
        puVar7 = &DAT_001114aa;
        uVar8 = 0x1ea;
        goto LAB_00103160;
      }
      usleep_range_state(2000,0x9c4,2);
      bVar6 = iVar9 != -1;
      iVar9 = iVar9 + 1;
    } while (bVar6);
    puVar7 = &DAT_0010ecea;
    uVar8 = 0x1ef;
LAB_00103160:
    _printk(puVar7,"haptic_hv",uVar8,"aw8693x_wait_enter_standby");
    local_3c = 0;
    i2c_r_bytes(param_1,0x27,&local_3c,2);
    uVar1 = (uint)(local_3c >> 8) | (local_3c & 0xff00ff) << 8;
    if (uVar1 == 0) {
      *(undefined4 *)(param_1 + 0x60) = 0;
      _printk(&DAT_0010f8c3,"haptic_hv",0x4ac,"aw8693x_read_f0");
      uVar10 = 0xffffffde;
    }
    else {
      uVar2 = 0;
      if (uVar1 != 0) {
        uVar2 = 0x3a9800 / uVar1;
      }
      *(uint *)(param_1 + 0x60) = uVar2;
      *(uint *)(param_1 + 0x70) = uVar2;
      _printk(&DAT_0010f8f1,"haptic_hv",0x4b1,"aw8693x_read_f0");
      uVar10 = 0;
    }
    i2c_w_bits(param_1,0x18,0xffffffdf,0);
    i2c_w_bits(param_1,8,0xfffffffb,bVar5 & 4);
    _printk(&DAT_0010f834,"haptic_hv",0x20d,"aw8693x_vbat_ref_config");
    i2c_w_bits(param_1,0x4d,0xffffff8f,0x40);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar10);
  }
  return;
}



/* 00103258 aw8693x_creat_node */

int aw8693x_creat_node(long param_1)

{
  int iVar1;
  
  iVar1 = sysfs_create_group(*(undefined8 *)(param_1 + 0xf8),aw8693x_vibrator_attribute_group);
  if (iVar1 < 0) {
    _printk(&DAT_0011046b,"haptic_hv",0x91a,"aw8693x_creat_node");
  }
  else {
    iVar1 = 0;
  }
  return iVar1;
}



/* 001032c4 aw8693x_ram_get_f0 */

void aw8693x_ram_get_f0(long param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  byte bVar4;
  bool bVar5;
  undefined *puVar6;
  undefined8 uVar7;
  byte bVar8;
  int iVar9;
  undefined4 uVar10;
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
    puVar6 = &DAT_00111793;
    uVar7 = 0x50a;
  }
  else {
    if (4 < *(byte *)(param_1 + 0x45c)) {
      *(undefined4 *)(param_1 + 0x60) = *(undefined4 *)(param_1 + 0x468);
      aw8693x_stop(param_1);
      i2c_w_bits(param_1,0x4e,0xfffffff8,*(undefined1 *)(param_1 + 0x495));
      _printk(&DAT_0010fd61,"haptic_hv",0x24f,"aw8693x_play_mode");
      *(undefined1 *)(param_1 + 0x17) = 1;
      i2c_w_bits(param_1,8,0xfffffffc,0);
      i2c_w_bits(param_1,8,0xfffffffb,0);
      _printk(&DAT_00111392,"haptic_hv",0x1f8,"aw8693x_bst_mode_config");
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
      _printk(&DAT_0010f53c,"haptic_hv",0x1d7,"aw8693x_play_go",1);
      local_44[0] = 1;
      i2c_w_bytes(param_1,9,local_44,1);
      usleep_range_state(20000,0x5014,2);
      iVar9 = -100;
      do {
        local_40[0] = '\0';
        i2c_r_bytes(param_1,0x3f,local_40,1);
        if (local_40[0] == '\0') {
          puVar6 = &DAT_001114aa;
          uVar7 = 0x1ea;
          goto LAB_00103564;
        }
        usleep_range_state(2000,0x9c4,2);
        bVar5 = iVar9 != -1;
        iVar9 = iVar9 + 1;
      } while (bVar5);
      puVar6 = &DAT_0010ecea;
      uVar7 = 0x1ef;
LAB_00103564:
      _printk(puVar6,"haptic_hv",uVar7,"aw8693x_wait_enter_standby");
      local_3c[0] = 0;
      i2c_r_bytes(param_1,0x27,local_3c,2);
      uVar1 = (uint)(local_3c[0] >> 8) | (local_3c[0] & 0xff00ff) << 8;
      if (uVar1 == 0) {
        *(undefined4 *)(param_1 + 0x60) = 0;
        _printk(&DAT_0010f8c3,"haptic_hv",0x4ac,"aw8693x_read_f0");
        uVar10 = 0xffffffde;
      }
      else {
        uVar2 = 0;
        if (uVar1 != 0) {
          uVar2 = 0x3a9800 / uVar1;
        }
        *(uint *)(param_1 + 0x60) = uVar2;
        *(uint *)(param_1 + 0x70) = uVar2;
        _printk(&DAT_0010f8f1,"haptic_hv",0x4b1,"aw8693x_read_f0");
        uVar10 = 0;
      }
      bVar8 = *(byte *)(param_1 + 0x30);
      if (bVar8 < 6) {
        bVar8 = 5;
      }
      if (0x18 < bVar8) {
        bVar8 = 0x19;
      }
      i2c_w_bits(param_1,6,0xffffffe0,bVar8);
      i2c_w_bits(param_1,0x18,0xffffffdf,0);
      if ((bVar4 >> 2 & 1) == 0) {
        uVar7 = 0;
      }
      else {
        uVar7 = 4;
      }
      i2c_w_bits(param_1,8,0xfffffffb,uVar7);
      goto LAB_00103654;
    }
    puVar6 = &DAT_0010ffbf;
    uVar7 = 0x50e;
  }
  _printk(puVar6,"haptic_hv",uVar7,"aw8693x_ram_get_f0");
  uVar10 = 0xffffffde;
LAB_00103654:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar10);
}



/* 00103688 aw8693x_get_irq_state */

void aw8693x_get_irq_state(long param_1)

{
  long lVar1;
  undefined4 uVar2;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0x5b;
  }
  i2c_r_bytes(param_1,2,local_2c,1);
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0;
  }
  if ((char)local_2c[0] < '\0') {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_00111293,"haptic_hv",0x46b,"aw8693x_get_irq_state");
    uVar2 = 3;
  }
  else {
    uVar2 = 0xffffffff;
  }
  if ((local_2c[0] >> 6 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_00111118,"haptic_hv",0x471,"aw8693x_get_irq_state");
    uVar2 = 4;
  }
  if ((local_2c[0] >> 5 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_001117c8,"haptic_hv",0x477,"aw8693x_get_irq_state");
    uVar2 = 5;
  }
  if ((local_2c[0] >> 2 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_0011156f,"haptic_hv",0x47d,"aw8693x_get_irq_state");
    uVar2 = 6;
  }
  if ((local_2c[0] >> 1 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_0011113b,"haptic_hv",0x483,"aw8693x_get_irq_state");
    uVar2 = 7;
  }
  if ((local_2c[0] & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_00110280,"haptic_hv",0x489,"aw8693x_get_irq_state");
    uVar2 = 10;
  }
  if ((local_2c[0] >> 3 & 1) != 0) {
    _printk(&DAT_001106e3,"haptic_hv",0x48e,"aw8693x_get_irq_state");
    uVar2 = 2;
  }
  lVar1 = sp_el0;
  if ((local_2c[0] & 0x10) != 0) {
    uVar2 = 0;
  }
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}



/* 0010389c aw8693x_check_qualify */

void aw8693x_check_qualify(undefined8 param_1)

{
  long lVar1;
  undefined8 uVar2;
  char local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = '\0';
  i2c_r_bytes(param_1,100,local_1c,1);
  if (local_1c[0] < '\0') {
    _printk(&DAT_001102a4,"haptic_hv",0x139,"aw8693x_check_qualify");
    uVar2 = 0;
  }
  else {
    _printk(&DAT_001112b7,"haptic_hv",0x136,"aw8693x_check_qualify");
    uVar2 = 0xffffffde;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 0010394c aw8693x_judge_rtp_going */

void aw8693x_judge_rtp_going(undefined8 param_1)

{
  long lVar1;
  bool bVar2;
  char local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = '\0';
  i2c_r_bytes(param_1,0x3f,local_1c,1);
  bVar2 = local_1c[0] == '\b';
  if (bVar2) {
    _printk(&DAT_0011116c,"haptic_hv",0x3fe,"aw8693x_judge_rtp_going");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar2);
}



/* 001039e0 aw8693x_container_update */

undefined4 aw8693x_container_update(long param_1,int *param_2)

{
  ushort uVar1;
  int iVar2;
  code *pcVar3;
  long lVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  byte local_470;
  undefined1 local_46f;
  byte local_46e;
  ushort local_46c [2];
  char local_468 [1024];
  long local_68;
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  memset(local_468,0,0x400);
  mutex_lock(param_1 + 0x2f0);
  *(undefined2 *)(param_1 + 0x45e) = 0x204;
  aw8693x_stop(param_1);
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  uVar1 = *(ushort *)((long)param_2 + (ulong)*(byte *)(param_1 + 0x45f) + 4);
  *(uint *)(param_1 + 0x458) = (uint)(uVar1 >> 8) | (uVar1 & 0xff00ff) << 8;
  _printk(&DAT_0010f032,"haptic_hv",0x657,"aw8693x_container_update");
  uVar7 = *(uint *)(param_1 + 0x458);
  iVar5 = uVar7 - (uVar7 >> 2);
  local_470 = (byte)(uVar7 >> 5) & 0xf0 | (byte)((uint)iVar5 >> 8) & 0xf;
  local_46f = (undefined1)(uVar7 >> 1);
  local_46e = (byte)iVar5;
  i2c_w_bytes(param_1,0x2f,&local_470,3);
  i2c_r_bytes(param_1,0x2f,&local_470,3);
  _printk(&DAT_00110118,"haptic_hv",0x665,"aw8693x_container_update",
          CONCAT11(local_470 >> 4,local_46f));
  _printk(&DAT_0010f740,"haptic_hv",0x668,"aw8693x_container_update",
          (uint)local_46e | (local_470 & 0xf) << 8);
  uVar7 = *(uint *)(param_1 + 0x458);
  local_46c[0] = (ushort)(uVar7 >> 8) & 0xff | (ushort)((uVar7 & 0xff00ff) << 8);
  i2c_w_bits(param_1,0x2d,0xffffffe0,uVar7 >> 8);
  i2c_w_bytes(param_1,0x2e,(ulong)local_46c | 1,1);
  local_46c[0] = *(ushort *)(param_1 + 0x458) >> 8 | *(ushort *)(param_1 + 0x458) << 8;
  i2c_w_bytes(param_1,0x40,local_46c,2);
  uVar7 = (uint)*(byte *)(param_1 + 0x45e);
  iVar5 = *param_2;
  if ((int)(uint)*(byte *)(param_1 + 0x45e) < iVar5) {
    do {
      iVar2 = iVar5 - uVar7;
      if (0x7ff < iVar2) {
        iVar2 = 0x800;
      }
      i2c_w_bytes(param_1,0x42,(long)param_2 + (long)(int)uVar7 + 4,iVar2);
      iVar5 = *param_2;
      uVar7 = iVar2 + uVar7;
    } while ((int)uVar7 < iVar5);
  }
  local_46c[0] = *(ushort *)(param_1 + 0x458) >> 8 | *(ushort *)(param_1 + 0x458) << 8;
  i2c_w_bytes(param_1,0x40,local_46c,2);
  uVar7 = (uint)*(byte *)(param_1 + 0x45e);
  iVar5 = *param_2;
  if ((int)(uint)*(byte *)(param_1 + 0x45e) < iVar5) {
    do {
      iVar5 = iVar5 - uVar7;
      iVar2 = iVar5;
      if (0x3ff < iVar5) {
        iVar2 = 0x400;
      }
      i2c_r_bytes(param_1,0x42,local_468,iVar2);
      lVar4 = 0;
      if (0x3ff < iVar5) {
        iVar5 = 0x400;
      }
      do {
        if (0x3ff < (uint)lVar4) {
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(1,0x103d44);
          (*pcVar3)();
        }
        if (local_468[lVar4] != *(char *)((long)param_2 + lVar4 + (long)(int)uVar7 + 4)) {
          _printk(&DAT_0010ed37,"haptic_hv",0x630,"aw8693x_check_ram_data");
          _printk(&DAT_0010f922,"haptic_hv",0x687,"aw8693x_container_update");
          uVar6 = 0xffffffde;
          goto LAB_00103ce8;
        }
        lVar4 = lVar4 + 1;
      } while (iVar5 != (int)lVar4);
      iVar5 = *param_2;
      uVar7 = iVar2 + uVar7;
    } while ((int)uVar7 < iVar5);
  }
  _printk(&DAT_001117ed,"haptic_hv",0x689,"aw8693x_container_update");
  uVar6 = 0;
LAB_00103ce8:
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  mutex_unlock(param_1 + 0x2f0);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_68) {
    return uVar6;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103d4c aw8693x_stop */

void aw8693x_stop(long param_1)

{
  long lVar1;
  bool bVar2;
  int iVar3;
  undefined1 local_30 [4];
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_0010f834,"haptic_hv",0x2a9,"aw8693x_stop");
  *(undefined1 *)(param_1 + 0x17) = 0;
  local_30[0] = 1;
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,8,0xfffffffc,3);
  i2c_w_bytes(param_1,9,local_30,1);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  iVar3 = -100;
  do {
    local_2c[0] = '\0';
    i2c_r_bytes(param_1,0x3f,local_2c,1);
    if (local_2c[0] == '\0') {
      _printk(&DAT_001114aa,"haptic_hv",0x1ea,"aw8693x_wait_enter_standby");
      goto LAB_00103ee4;
    }
    usleep_range_state(2000,0x9c4,2);
    bVar2 = iVar3 != -1;
    iVar3 = iVar3 + 1;
  } while (bVar2);
  _printk(&DAT_0010ecea,"haptic_hv",0x1ef,"aw8693x_wait_enter_standby");
  _printk(&DAT_00110898,"haptic_hv",0x2b4,"aw8693x_stop");
  _printk(&DAT_0010ee5c,"haptic_hv",0x23e,"aw8693x_play_mode");
  *(undefined1 *)(param_1 + 0x17) = 0;
  i2c_w_bits(param_1,0x45,0xffffffdf,0x20);
  i2c_w_bits(param_1,0x45,0xffffffdf,0);
LAB_00103ee4:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103f14 aw8693x_get_vbat */

void aw8693x_get_vbat(long param_1)

{
  uint uVar1;
  long lVar2;
  ulong uVar3;
  undefined2 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_2c = 0;
  aw8693x_stop();
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,0x4e,0xffffff87,0);
  i2c_w_bits(param_1,0x4d,0xfffffffc,1);
  usleep_range_state(3000,0xdac,2);
  i2c_w_bits(param_1,0x4d,0xfffffffc,0);
  i2c_r_bytes(param_1,0x4f,&local_2c,2);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  uVar1 = (uint)local_2c._1_1_ | ((byte)local_2c & 3) << 8;
  uVar3 = (ulong)(uVar1 * 0x17d4) / 0x3ff;
  *(uint *)(param_1 + 0x68) = (uVar1 * 0x17d4) / 0x3ff;
  if (0x2f2 < uVar1) {
    *(undefined4 *)(param_1 + 0x68) = 0x1194;
    _printk(&DAT_001118c5,"haptic_hv",0x5d7,"aw8693x_get_vbat",0x1194);
    uVar3 = (ulong)*(uint *)(param_1 + 0x68);
  }
  if ((uint)uVar3 < 3000) {
    *(undefined4 *)(param_1 + 0x68) = 3000;
    _printk(&DAT_0010fd3c,"haptic_hv",0x5db,"aw8693x_get_vbat",3000);
    uVar3 = (ulong)*(uint *)(param_1 + 0x68);
  }
  _printk(&DAT_00110145,"haptic_hv",0x5dd,"aw8693x_get_vbat",uVar3,uVar1);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001040c4 aw8693x_cont_config */

void aw8693x_cont_config(long param_1)

{
  long lVar1;
  undefined1 local_40 [4];
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_40[0] = 0xff;
  _printk(&DAT_001104bd,"haptic_hv",0x275,"aw8693x_play_mode");
  *(undefined1 *)(param_1 + 0x17) = 4;
  i2c_w_bits(param_1,8,0xfffffffc,2);
  i2c_w_bits(param_1,8,0xfffffffb,4);
  _printk(&DAT_0010f1e5,"haptic_hv",0x1fe,"aw8693x_bst_mode_config");
  i2c_w_bits(param_1,6,0xffffffdf,0);
  i2c_w_bits(param_1,0x4c,0xffffffbf,0x40);
  i2c_w_bits(param_1,0x1d,0xffffff7f,(ulong)*(byte *)(param_1 + 0x4c0) << 7);
  i2c_w_bits(param_1,0x1d,0xffffff80,*(undefined1 *)(param_1 + 0x49a));
  i2c_w_bytes(param_1,0x1e,param_1 + 0x49b,1);
  i2c_w_bytes(param_1,0x20,local_40,1);
  _printk(&DAT_0010f53c,"haptic_hv",0x1d7,"aw8693x_play_go",1);
  local_3c[0] = 1;
  i2c_w_bytes(param_1,9,local_3c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104250 aw8693x_offset_cali */

void aw8693x_offset_cali(long param_1)

{
  int iVar1;
  long lVar2;
  int iVar3;
  undefined2 local_2c;
  undefined1 local_2a;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_2a = 0;
  local_2c = 0;
  i2c_w_bits(param_1,0x4e,0xfffffff8,*(undefined1 *)(param_1 + 0x495));
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,0x4e,0xffffff87,0x20);
  i2c_w_bits(param_1,0x4d,0xfffffffc,1);
  usleep_range_state(3000,0xdac,2);
  i2c_w_bits(param_1,0x4d,0xfffffffc,0);
  i2c_r_bytes(param_1,0x4f,&local_2c,2);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  if ((ulong)*(byte *)(param_1 + 0x495) < 8) {
    iVar3 = *(int *)(&DAT_001119d8 + (ulong)*(byte *)(param_1 + 0x495) * 4);
  }
  else {
    _printk(&DAT_0010ffea,"haptic_hv",0x609,"aw8693x_offset_cali");
    iVar3 = 0;
  }
  iVar1 = 0;
  if (iVar3 != 0) {
    iVar1 = (int)(((uint)local_2c._1_1_ | ((byte)local_2c & 3) << 8) * 0x988 + -0x131000) / iVar3;
  }
  _printk(&DAT_0011159c,"haptic_hv",0x60e,"aw8693x_offset_cali",iVar1);
  if (iVar1 - 0x10U < 0xffffffe1) {
    _printk(&DAT_00110a77,"haptic_hv",0x610,"aw8693x_offset_cali");
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104404 aw8693x_play_go */

void aw8693x_play_go(undefined8 param_1,uint param_2)

{
  long lVar1;
  undefined1 uVar2;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  uVar2 = 1;
  if ((param_2 & 1) == 0) {
    uVar2 = 2;
  }
  _printk(&DAT_0010f53c,"haptic_hv",0x1d7,"aw8693x_play_go",param_2 & 1);
  local_2c[0] = uVar2;
  i2c_w_bytes(param_1,9,local_2c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001044a0 aw8693x_ram_init */

void aw8693x_ram_init(undefined8 param_1,ulong param_2)

{
  if ((param_2 & 1) == 0) {
    i2c_w_bits(param_1,0x45,0xfffffffb,0);
  }
  else {
    i2c_w_bits(param_1,0x45,0xfffffffb,4);
    usleep_range_state(500,600,2);
  }
  return;
}



/* 001044f4 aw8693x_set_bst_peak_cur */

void aw8693x_set_bst_peak_cur(void)

{
  return;
}



/* 001044fc aw8693x_get_lra_resistance */

void aw8693x_get_lra_resistance(long param_1)

{
  long lVar1;
  byte bVar2;
  byte bVar3;
  byte local_40 [4];
  undefined2 local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_40[0] = 0;
  local_3c = 0;
  aw8693x_stop();
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,0x4e,0xffffff87,0x18);
  i2c_r_bytes(param_1,0x4d,local_40,1);
  bVar2 = local_40[0];
  i2c_r_bytes(param_1,0x4e,local_40,1);
  bVar3 = local_40[0];
  i2c_w_bits(param_1,0x4e,0xfffffff8,4);
  i2c_w_bits(param_1,0x4d,0xfffffff0,5);
  usleep_range_state(3000,0xdac,2);
  i2c_w_bits(param_1,0x4d,0xfffffffc,0);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  i2c_w_bits(param_1,0x4d,0xfffffff3,bVar2 & 0xc);
  i2c_w_bits(param_1,0x4e,0xfffffff8,bVar3 & 7);
  i2c_r_bytes(param_1,0x4f,&local_3c,2);
  *(uint *)(param_1 + 100) = (((uint)local_3c._1_1_ | ((byte)local_3c & 3) << 8) * 610000) / 0x27f6;
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104694 aw8693x_set_pwm */

void aw8693x_set_pwm(undefined8 param_1,byte param_2)

{
  undefined8 uVar1;
  
  if (param_2 < 2) {
    if (param_2 == 0) {
      uVar1 = 0x20;
    }
    else {
      if (param_2 != 1) {
LAB_00104714:
        _printk(&DAT_0010f052,"haptic_hv",0x156,"aw8693x_set_pwm");
        return;
      }
      uVar1 = 0;
    }
  }
  else if (param_2 == 2) {
    uVar1 = 0x40;
  }
  else {
    if (param_2 != 3) goto LAB_00104714;
    uVar1 = 0x60;
  }
  i2c_w_bits(param_1,0x46,0xffffff9f,uVar1);
  return;
}



/* 0010473c aw8693x_set_gain */

void aw8693x_set_gain(undefined8 param_1,undefined1 param_2)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = param_2;
  i2c_w_bytes(param_1,7,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104798 aw8693x_play_mode */

void aw8693x_play_mode(long param_1,byte param_2)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  
  if (param_2 < 3) {
    if (param_2 != 0) {
      if (param_2 == 1) {
        _printk(&DAT_0010fd61,"haptic_hv",0x24f,"aw8693x_play_mode");
        *(undefined1 *)(param_1 + 0x17) = 1;
        i2c_w_bits(param_1,8,0xfffffffc,0);
        uVar2 = 0;
      }
      else {
        if (param_2 != 2) {
LAB_00104910:
          _printk(&DAT_001116bc,"haptic_hv",0x27f,"aw8693x_play_mode",param_2);
          return;
        }
        _printk(&DAT_001112d9,"haptic_hv",0x263,"aw8693x_play_mode");
        *(undefined1 *)(param_1 + 0x17) = 2;
        i2c_w_bits(param_1,8,0xfffffffc,1);
        uVar2 = 4;
      }
      i2c_w_bits(param_1,8,0xfffffffb,uVar2);
      _printk(&DAT_00111392,"haptic_hv",0x1f8,"aw8693x_bst_mode_config");
      uVar2 = 6;
      uVar1 = 0xffffffdf;
      uVar3 = 0x20;
      goto LAB_001049bc;
    }
    _printk(&DAT_0010ee5c,"haptic_hv",0x23e,"aw8693x_play_mode");
    *(undefined1 *)(param_1 + 0x17) = 0;
    i2c_w_bits(param_1,0x45,0xffffffdf,0x20);
    uVar2 = 0x45;
    uVar1 = 0xffffffdf;
  }
  else {
    if (param_2 != 3) {
      if (param_2 == 4) {
        _printk(&DAT_001104bd,"haptic_hv",0x275,"aw8693x_play_mode");
        *(undefined1 *)(param_1 + 0x17) = 4;
        i2c_w_bits(param_1,8,0xfffffffc,2);
        uVar2 = 4;
      }
      else {
        if (param_2 != 5) goto LAB_00104910;
        _printk(&DAT_0010fd81,"haptic_hv",0x259,"aw8693x_play_mode");
        *(undefined1 *)(param_1 + 0x17) = 5;
        i2c_w_bits(param_1,8,0xfffffffc,0);
        uVar2 = 0;
      }
      i2c_w_bits(param_1,8,0xfffffffb,uVar2);
      _printk(&DAT_0010f1e5,"haptic_hv",0x1fe,"aw8693x_bst_mode_config");
      i2c_w_bits(param_1,6,0xffffffdf,0);
      uVar2 = 0x4c;
      uVar1 = 0xffffffbf;
      uVar3 = 0x40;
      goto LAB_00104a68;
    }
    _printk(&DAT_0010f94c,"haptic_hv",0x26d,"aw8693x_play_mode");
    uVar2 = 8;
    uVar1 = 0xfffffffc;
    uVar3 = 0;
    *(undefined1 *)(param_1 + 0x17) = 3;
LAB_001049bc:
    i2c_w_bits(param_1,uVar2,uVar1,uVar3);
    uVar2 = 0x4c;
    uVar1 = 0xffffffbf;
  }
  uVar3 = 0;
LAB_00104a68:
  i2c_w_bits(param_1,uVar2,uVar1,uVar3);
  return;
}



/* 00104a80 aw8693x_set_bst_vol */

void aw8693x_set_bst_vol(undefined8 param_1,byte param_2)

{
  if (param_2 < 6) {
    param_2 = 5;
  }
  if (0x18 < param_2) {
    param_2 = 0x19;
  }
  i2c_w_bits(param_1,6,0xffffffe0,param_2);
  return;
}



/* 00104ac4 aw8693x_set_repeat_seq */

void aw8693x_set_repeat_seq(undefined8 param_1,undefined1 param_2)

{
  long lVar1;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = param_2;
  i2c_w_bytes(param_1,10,local_2c,1);
  i2c_w_bits(param_1,0x12,0xffffff0f,0xf0);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104b40 aw8693x_auto_bst_enable */

void aw8693x_auto_bst_enable(long param_1,char param_2)

{
  *(char *)(param_1 + 0x18) = param_2;
  i2c_w_bits(param_1,8,0xffffffef,(ulong)(param_2 != '\0') << 4);
  return;
}



/* 00104b78 aw8693x_vbat_mode_config */

void aw8693x_vbat_mode_config(undefined8 param_1,char param_2)

{
  i2c_w_bits(param_1,0x4c,0xffffffbf,(ulong)(param_2 == '\x01') << 6);
  return;
}



/* 00104bb0 aw8693x_set_wav_seq */

void aw8693x_set_wav_seq(undefined8 param_1,int param_2,undefined1 param_3)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = param_3;
  i2c_w_bytes(param_1,param_2 + 10,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104c0c aw8693x_set_wav_loop */

void aw8693x_set_wav_loop(undefined8 param_1,uint param_2,int param_3)

{
  undefined8 uVar1;
  
  if ((param_2 & 1) == 0) {
    param_3 = param_3 << 4;
    uVar1 = 0xffffff0f;
  }
  else {
    uVar1 = 0xfffffff0;
  }
  i2c_w_bits(param_1,(param_2 >> 1 & 0x7f) + 0x12,uVar1,param_3);
  return;
}



/* 00104c50 aw8693x_set_rtp_data */

void aw8693x_set_rtp_data(undefined8 param_1,undefined8 param_2,undefined4 param_3)

{
  i2c_w_bytes(param_1,0x32,param_2,param_3);
  return;
}



/* 00104c7c aw8693x_protect_config */

void aw8693x_protect_config(undefined8 param_1,undefined1 param_2,byte param_3)

{
  long lVar1;
  byte local_40 [4];
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = param_2;
  i2c_w_bits(param_1,0x48,0xffffff7f,0);
  if (param_3 == 0) {
    _printk(&DAT_0010ed8c,"haptic_hv",0x2ed,"aw8693x_protect_config");
    i2c_w_bits(param_1,0x4a,0xffffff7f,0);
  }
  else {
    _printk(&DAT_00110e95,"haptic_hv",0x2e6,"aw8693x_protect_config");
    local_40[0] = param_3 | 0x80;
    i2c_w_bytes(param_1,0x4a,local_40,1);
    i2c_w_bytes(param_1,0x4b,local_3c,1);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104d80 aw8693x_parse_dt */

void aw8693x_parse_dt(undefined8 param_1,long param_2,undefined8 param_3)

{
  int iVar1;
  long lVar2;
  undefined2 local_54;
  undefined1 local_52;
  undefined8 local_50;
  undefined8 local_48;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_52 = 0;
  local_54 = 0;
  local_48 = 0;
  local_40 = 0;
  local_50 = 0;
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_gain_bypass",param_2 + 0x4c1,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00111310,"haptic_hv",0x6ae,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_uvlo_vol_default",param_2 + 0x4c2,1,0)
  ;
  if (iVar1 < 0) {
    _printk(&DAT_001102c4,"haptic_hv",0x6b2,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u32_array(param_3,"f0_pre",param_2 + 0x468,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0010f06f,"haptic_hv",0x6b6,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_f0_cali_percent",param_2 + 0x462,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0011017a,"haptic_hv",0x6ba,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_smart_loop",param_2 + 0x4c3,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0010f19b,"haptic_hv",0x6be,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_drv1_lvl",param_2 + 0x49a,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0010edb5,"haptic_hv",0x6c2,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u32_array(param_3,"aw8693x_cont_lra_vrms",param_2 + 0x4c4,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110abe,"haptic_hv",0x6c6,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_drv1_time",param_2 + 0x4a0,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110aef,"haptic_hv",0x6ca,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_drv2_time",param_2 + 0x4a1,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110ebd,"haptic_hv",0x6ce,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_brk_time",param_2 + 0x49d,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0010f345,"haptic_hv",0x6d2,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array
                    (param_3,"aw8693x_cont_track_margin",param_2 + 0x4a3,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0010f580,"haptic_hv",0x6d7,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_brk_gain",param_2 + 0x49f,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0011118d,"haptic_hv",0x6db,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_d2s_gain",param_2 + 0x495,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_001118ea,"haptic_hv",0x6df,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_duration_time",&local_54,3,0);
  if (iVar1 < 0) {
    _printk(&DAT_0011072f,"haptic_hv",0x6e4,"aw8693x_parse_dt");
  }
  else {
    *(undefined2 *)(param_2 + 0x464) = local_54;
    *(undefined1 *)(param_2 + 0x466) = local_52;
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_trig_config",&local_50,0x18,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110be4,"haptic_hv",0x6eb,"aw8693x_parse_dt");
  }
  else {
    *(undefined8 *)(param_2 + 0x4a5) = local_50;
    *(undefined8 *)(param_2 + 0x4ad) = local_48;
    *(undefined8 *)(param_2 + 0x4b5) = local_40;
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_bst_vol_default",param_2 + 0x463,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_001101ad,"haptic_hv",0x6f2,"aw8693x_parse_dt");
  }
  lVar2 = of_find_property(param_3,"aw8693x_is_enabled_track_en",0);
  *(bool *)(param_2 + 0x4c0) = lVar2 != 0;
  _printk(&DAT_00111357,"haptic_hv",0x6f6,"aw8693x_parse_dt");
  lVar2 = of_find_property(param_3,"aw8693x_is_enabled_auto_bst",0);
  *(bool *)(param_2 + 0x4bd) = lVar2 != 0;
  _printk(&DAT_0010f84b,"haptic_hv",0x6fa,"aw8693x_parse_dt");
  lVar2 = of_find_property(param_3,"aw8693x_is_enabled_one_wire",0);
  *(bool *)(param_2 + 0x4bf) = lVar2 != 0;
  _printk(&DAT_0010f76c,"haptic_hv",0x6fe,"aw8693x_parse_dt");
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001052d4 aw8693x_trig_init */

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



/* 00105684 aw8693x_irq_clear */

void aw8693x_irq_clear(undefined8 param_1)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,2,local_1c,1);
  _printk(&DAT_00110772,"haptic_hv",1099,"aw8693x_irq_clear",local_1c[0]);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105704 aw8693x_set_ram_addr */

void aw8693x_set_ram_addr(long param_1)

{
  long lVar1;
  ushort local_1c [2];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = *(ushort *)(param_1 + 0x458) >> 8 | *(ushort *)(param_1 + 0x458) << 8;
  i2c_w_bytes(param_1,0x40,local_1c,2);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010576c aw8693x_misc_para_init */

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



/* 00105a30 aw8693x_interrupt_setup */

void aw8693x_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  i2c_r_bytes(param_1,2,local_2c,1);
  i2c_w_bits(param_1,0x46,0xffffffe7,8);
  i2c_w_bits(param_1,3,0xffffff19,0x40);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105ac0 aw8693x_set_rtp_aei */

void aw8693x_set_rtp_aei(undefined8 param_1,ulong param_2)

{
  undefined4 uVar1;
  
  uVar1 = 0;
  if ((param_2 & 1) == 0) {
    uVar1 = 0x10;
  }
  i2c_w_bits(param_1,3,0xffffffef,uVar1);
  return;
}



/* 00105af4 aw8693x_upload_lra */

void aw8693x_upload_lra(long param_1,int param_2)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  if (param_2 == 2) {
    _printk(&DAT_001101e0,"haptic_hv",0x2c6,"aw8693x_upload_lra",*(undefined4 *)(param_1 + 0x98));
    local_2c[0] = *(byte *)(param_1 + 0x98);
  }
  else {
    if (param_2 == 1) {
      _printk(&DAT_0010f389,"haptic_hv",0x2c2,"aw8693x_upload_lra",*(undefined4 *)(param_1 + 0x88));
    }
    else {
      if (param_2 == 0) {
        _printk(&DAT_00110c13,"haptic_hv",0x2bf,"aw8693x_upload_lra");
        goto LAB_00105bd4;
      }
      _printk(&DAT_001108dc,"haptic_hv",0x2ca,"aw8693x_upload_lra");
    }
    local_2c[0] = *(byte *)(param_1 + 0x88);
  }
  local_2c[0] = local_2c[0] & 0x7f;
LAB_00105bd4:
  i2c_w_bytes(param_1,0x5d,local_2c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105c18 aw8693x_get_wav_seq */

void aw8693x_get_wav_seq(long param_1,uint param_2)

{
  long lVar1;
  uint uVar2;
  undefined8 local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  uVar2 = param_2;
  if (7 < param_2) {
    uVar2 = 8;
  }
  local_40 = 0;
  i2c_r_bytes(param_1,10,&local_40,(ulong)uVar2);
  if (param_2 != 0) {
    memcpy((void *)(param_1 + 0x1e),&local_40,(ulong)uVar2);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105cac aw8693x_bst_mode_config */

void aw8693x_bst_mode_config(undefined8 param_1,char param_2)

{
  if (param_2 == '\0') {
    _printk(&DAT_0010f1e5,"haptic_hv",0x1fe,"aw8693x_bst_mode_config");
    i2c_w_bits(param_1,6,0xffffffdf,0);
  }
  else if (param_2 == '\x01') {
    _printk(&DAT_00111392,"haptic_hv",0x1f8,"aw8693x_bst_mode_config");
    i2c_w_bits(param_1,6,0xffffffdf,0x20);
  }
  else {
    _printk(&DAT_0010f5b5,"haptic_hv",0x204,"aw8693x_bst_mode_config",param_2);
  }
  return;
}



/* 00105d7c aw8693x_get_first_wave_addr */

void aw8693x_get_first_wave_addr(undefined8 param_1,undefined2 *param_2)

{
  long lVar1;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c._0_3_ = 0;
  i2c_r_bytes(param_1,0x42,local_2c,3);
  *param_2 = local_2c._1_2_;
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105df0 aw8693x_get_wav_loop */

long aw8693x_get_wav_loop(long param_1,char *param_2)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined4 local_4c;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  local_4c = 0;
  i2c_r_bytes(param_1,0x12,&local_4c,4);
  *(byte *)(param_1 + 0x27) = (byte)local_4c & 0xf;
  *(byte *)(param_1 + 0x26) = (byte)local_4c >> 4;
  iVar2 = snprintf(param_2,0x1000,"seq%d loop: 0x%02x\n",1);
  lVar3 = (long)iVar2;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",2,
                   (ulong)*(byte *)(param_1 + 0x27));
  lVar3 = lVar3 + iVar2;
  *(byte *)(param_1 + 0x29) = local_4c._1_1_ & 0xf;
  *(byte *)(param_1 + 0x28) = local_4c._1_1_ >> 4;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",3);
  lVar3 = lVar3 + iVar2;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",4,
                   (ulong)*(byte *)(param_1 + 0x29));
  lVar3 = lVar3 + iVar2;
  *(byte *)(param_1 + 0x2b) = local_4c._2_1_ & 0xf;
  *(byte *)(param_1 + 0x2a) = local_4c._2_1_ >> 4;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",5);
  lVar3 = lVar3 + iVar2;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",6,
                   (ulong)*(byte *)(param_1 + 0x2b));
  lVar3 = lVar3 + iVar2;
  *(byte *)(param_1 + 0x2d) = local_4c._3_1_ & 0xf;
  *(byte *)(param_1 + 0x2c) = local_4c._3_1_ >> 4;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",7);
  lVar3 = lVar3 + iVar2;
  iVar2 = snprintf(param_2 + lVar3,0x1000 - lVar3,"seq%d loop: 0x%02x\n",8,
                   (ulong)*(byte *)(param_1 + 0x2d));
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return lVar3 + iVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105f98 aw8693x_get_ram_data */

long aw8693x_get_ram_data(long param_1,long param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar1 = *(uint *)(param_1 + 0x450);
  if (uVar1 != 0) {
    uVar2 = 0;
    do {
      uVar3 = uVar1 - uVar2;
      if (0x3ff < uVar3) {
        uVar3 = 0x400;
      }
      i2c_r_bytes(param_1,0x42,param_2 + (int)uVar2,uVar3);
      uVar1 = *(uint *)(param_1 + 0x450);
      uVar2 = uVar3 + uVar2;
    } while (uVar2 < uVar1);
    return (long)(int)uVar2;
  }
  return 0;
}



/* 00106020 aw8693x_get_reg */

long aw8693x_get_reg(undefined8 param_1,long param_2,long param_3)

{
  uint uVar1;
  long lVar2;
  int iVar3;
  ulong uVar4;
  byte local_d0 [136];
  long local_48;
  
  lVar2 = sp_el0;
  local_48 = *(long *)(lVar2 + 0x710);
  local_d0[0x70] = 0;
  local_d0[0x71] = 0;
  local_d0[0x72] = 0;
  local_d0[0x73] = 0;
  local_d0[0x74] = 0;
  local_d0[0x75] = 0;
  local_d0[0x76] = 0;
  local_d0[0x77] = 0;
  local_d0[0x78] = 0;
  local_d0[0x79] = 0;
  local_d0[0x7a] = 0;
  local_d0[0x7b] = 0;
  local_d0[0x7c] = 0;
  local_d0[0x7d] = 0;
  local_d0[0x7e] = 0;
  local_d0[0x7f] = 0;
  local_d0[0x80] = 0;
  local_d0[0x81] = 0;
  local_d0[0x82] = 0;
  local_d0[0x60] = 0;
  local_d0[0x61] = 0;
  local_d0[0x62] = 0;
  local_d0[99] = 0;
  local_d0[100] = 0;
  local_d0[0x65] = 0;
  local_d0[0x66] = 0;
  local_d0[0x67] = 0;
  local_d0[0x68] = 0;
  local_d0[0x69] = 0;
  local_d0[0x6a] = 0;
  local_d0[0x6b] = 0;
  local_d0[0x6c] = 0;
  local_d0[0x6d] = 0;
  local_d0[0x6e] = 0;
  local_d0[0x6f] = 0;
  local_d0[0x50] = 0;
  local_d0[0x51] = 0;
  local_d0[0x52] = 0;
  local_d0[0x53] = 0;
  local_d0[0x54] = 0;
  local_d0[0x55] = 0;
  local_d0[0x56] = 0;
  local_d0[0x57] = 0;
  local_d0[0x58] = 0;
  local_d0[0x59] = 0;
  local_d0[0x5a] = 0;
  local_d0[0x5b] = 0;
  local_d0[0x5c] = 0;
  local_d0[0x5d] = 0;
  local_d0[0x5e] = 0;
  local_d0[0x5f] = 0;
  local_d0[0x40] = 0;
  local_d0[0x41] = 0;
  local_d0[0x42] = 0;
  local_d0[0x43] = 0;
  local_d0[0x44] = 0;
  local_d0[0x45] = 0;
  local_d0[0x46] = 0;
  local_d0[0x47] = 0;
  local_d0[0x48] = 0;
  local_d0[0x49] = 0;
  local_d0[0x4a] = 0;
  local_d0[0x4b] = 0;
  local_d0[0x4c] = 0;
  local_d0[0x4d] = 0;
  local_d0[0x4e] = 0;
  local_d0[0x4f] = 0;
  local_d0[0x30] = 0;
  local_d0[0x31] = 0;
  local_d0[0x32] = 0;
  local_d0[0x33] = 0;
  local_d0[0x34] = 0;
  local_d0[0x35] = 0;
  local_d0[0x36] = 0;
  local_d0[0x37] = 0;
  local_d0[0x38] = 0;
  local_d0[0x39] = 0;
  local_d0[0x3a] = 0;
  local_d0[0x3b] = 0;
  local_d0[0x3c] = 0;
  local_d0[0x3d] = 0;
  local_d0[0x3e] = 0;
  local_d0[0x3f] = 0;
  local_d0[0x20] = 0;
  local_d0[0x21] = 0;
  local_d0[0x22] = 0;
  local_d0[0x23] = 0;
  local_d0[0x24] = 0;
  local_d0[0x25] = 0;
  local_d0[0x26] = 0;
  local_d0[0x27] = 0;
  local_d0[0x28] = 0;
  local_d0[0x29] = 0;
  local_d0[0x2a] = 0;
  local_d0[0x2b] = 0;
  local_d0[0x2c] = 0;
  local_d0[0x2d] = 0;
  local_d0[0x2e] = 0;
  local_d0[0x2f] = 0;
  local_d0[0x10] = 0;
  local_d0[0x11] = 0;
  local_d0[0x12] = 0;
  local_d0[0x13] = 0;
  local_d0[0x14] = 0;
  local_d0[0x15] = 0;
  local_d0[0x16] = 0;
  local_d0[0x17] = 0;
  local_d0[0x18] = 0;
  local_d0[0x19] = 0;
  local_d0[0x1a] = 0;
  local_d0[0x1b] = 0;
  local_d0[0x1c] = 0;
  local_d0[0x1d] = 0;
  local_d0[0x1e] = 0;
  local_d0[0x1f] = 0;
  local_d0[0] = 0;
  local_d0[1] = 0;
  local_d0[2] = 0;
  local_d0[3] = 0;
  local_d0[4] = 0;
  local_d0[5] = 0;
  local_d0[6] = 0;
  local_d0[7] = 0;
  local_d0[8] = 0;
  local_d0[9] = 0;
  local_d0[10] = 0;
  local_d0[0xb] = 0;
  local_d0[0xc] = 0;
  local_d0[0xd] = 0;
  local_d0[0xe] = 0;
  local_d0[0xf] = 0;
  i2c_r_bytes(param_1,0,local_d0,0x32);
  i2c_r_bytes(param_1,0x33,local_d0 + 0x33,0xf);
  i2c_r_bytes(param_1,0x43,local_d0 + 0x43,0x40);
  uVar4 = 0;
  do {
    uVar1 = (uint)uVar4 & 0xff;
    if ((uVar1 != 0x32) && (uVar1 != 0x42)) {
      iVar3 = snprintf((char *)(param_3 + param_2),0x1000 - param_2,"reg:0x%02X=0x%02X\n",
                       uVar4 & 0xffffffff,(ulong)local_d0[uVar4]);
      param_2 = param_2 + iVar3;
    }
    uVar4 = uVar4 + 1;
  } while (uVar4 != 0x83);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_48) {
    return param_2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106144 aw8693x_get_prctmode */

byte aw8693x_get_prctmode(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,0x4a,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] >> 7;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001061a8 aw8693x_get_trim_lra */

byte aw8693x_get_trim_lra(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,0x5d,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] & 0x7f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010620c aw8693x_get_glb_state */

void aw8693x_get_glb_state(undefined8 param_1)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,0x3f,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(local_1c[0]);
}



/* 0010626c aw8693x_get_osc_status */

byte aw8693x_get_osc_status(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,4,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] & 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001062d0 aw8693x_rtp_get_fifo_afs */

byte aw8693x_rtp_get_fifo_afs(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,1,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] >> 3 & 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106334 aw8693x_rtp_get_fifo_aes */

byte aw8693x_rtp_get_fifo_aes(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,1,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] >> 4 & 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106398 aw8693x_rtp_get_fifo_afi */

byte aw8693x_rtp_get_fifo_afi(long param_1)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0x5b;
  }
  i2c_r_bytes(param_1,2,local_2c,1);
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return local_2c[0] >> 3 & 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106438 aw8693x_get_theory_time */

uint aw8693x_get_theory_time(long param_1)

{
  long lVar1;
  uint uVar2;
  uint uVar3;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  i2c_r_bytes(param_1,0x46,local_2c,1);
  if ((local_2c[0] & 0x60) == 0x40) {
    uVar2 = 0xc;
  }
  else if ((local_2c[0] & 0x60) == 0x20) {
    uVar2 = 0x30;
  }
  else {
    if ((local_2c[0] & 0x60) != 0) {
      uVar3 = 0;
      goto LAB_001064b8;
    }
    uVar2 = 0x18;
  }
  uVar3 = 0;
  if (uVar2 != 0) {
    uVar3 = (uint)(*(int *)(param_1 + 0x78) * 1000) / uVar2;
  }
LAB_001064b8:
  _printk(&DAT_0011183d,"haptic_hv",0x6a0,"aw8693x_get_theory_time",*(undefined8 *)(param_1 + 0xa0),
          uVar3);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar3;
}



/* 00106514 cont_drv_lvl_show */

long cont_drv_lvl_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_drv1_lvl = 0x%02X, cont_drv2_lvl = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f2),
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f3));
  return (long)iVar1;
}



/* 00106554 cont_drv_lvl_store */

undefined8 cont_drv_lvl_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined2 local_44;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_40 = 0;
  local_44 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_40,(ulong)&local_40 | 4);
  if (iVar1 == 2) {
    *(char *)(lVar2 + 0x3f2) = (char)local_40;
    *(char *)(lVar2 + 0x3f3) = (char)((ulong)local_40 >> 0x20);
    mutex_lock(lVar2 + 0x248);
    i2c_r_bytes(lVar2 + -0xa8,0x1d,&local_44,1);
    local_44 = CONCAT11(*(undefined1 *)(lVar2 + 0x3f3),
                        *(byte *)(lVar2 + 0x3f2) | (byte)local_44 & 0x80);
    i2c_w_bytes(lVar2 + -0xa8,0x1d,&local_44,2);
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106650 cont_drv_time_show */

long cont_drv_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_drv1_time = 0x%02X, cont_drv2_time = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f8),
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f9));
  return (long)iVar1;
}



/* 00106690 cont_drv_time_store */

undefined8 cont_drv_time_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined1 local_44;
  undefined1 local_43;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_40 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_40,(ulong)&local_40 | 4);
  if (iVar1 == 2) {
    *(undefined1 *)(lVar2 + 0x3f8) = (undefined1)local_40;
    *(undefined1 *)(lVar2 + 0x3f9) = local_40._4_1_;
    local_44 = (undefined1)local_40;
    local_43 = local_40._4_1_;
    mutex_lock(lVar2 + 0x248);
    i2c_w_bytes(lVar2 + -0xa8,0x1f,&local_44,2);
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106760 cont_brk_time_show */

long cont_brk_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_brk_time = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f5));
  return (long)iVar1;
}



/* 0010679c cont_brk_time_store */

long cont_brk_time_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  iVar1 = kstrtou8(param_3,0,lVar2 + 0x3f5);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    i2c_w_bytes(lVar2 + -0xa8,0x21,lVar2 + 0x3f5,1);
    mutex_unlock(lVar2 + 0x248);
  }
  return param_4;
}



/* 00106818 trig_show */

long trig_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  lVar2 = *(long *)(param_1 + 0x98);
  iVar1 = snprintf(param_3,0x1000,
                   "trig%d: trig_level=%d, trig_polar=%d, pos_enable=%d, pos_sequence=%d, neg_enable=%d, neg_sequence=%d trig_brk=%d, trig_bst=%d\n"
                   ,1,(ulong)*(byte *)(lVar2 + 0x53f),(ulong)*(byte *)(lVar2 + 0x540),
                   (ulong)*(byte *)(lVar2 + 0x541),(ulong)*(byte *)(lVar2 + 0x543),
                   (uint)*(byte *)(lVar2 + 0x542),(uint)*(byte *)(lVar2 + 0x544),
                   (uint)*(byte *)(lVar2 + 0x53d),(uint)*(byte *)(lVar2 + 0x53e));
  lVar3 = (long)iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,
                   "trig%d: trig_level=%d, trig_polar=%d, pos_enable=%d, pos_sequence=%d, neg_enable=%d, neg_sequence=%d trig_brk=%d, trig_bst=%d\n"
                   ,2,(ulong)*(byte *)(lVar2 + 0x54c),(ulong)*(byte *)(lVar2 + 0x54d),
                   (ulong)*(byte *)(lVar2 + 0x54e),(ulong)*(byte *)(lVar2 + 0x550),
                   (uint)*(byte *)(lVar2 + 0x54f),(uint)*(byte *)(lVar2 + 0x551),
                   (uint)*(byte *)(lVar2 + 0x54a),(uint)*(byte *)(lVar2 + 0x54b));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,
                   "trig%d: trig_level=%d, trig_polar=%d, pos_enable=%d, pos_sequence=%d, neg_enable=%d, neg_sequence=%d trig_brk=%d, trig_bst=%d\n"
                   ,3,(ulong)*(byte *)(lVar2 + 0x559),(ulong)*(byte *)(lVar2 + 0x55a),
                   (ulong)*(byte *)(lVar2 + 0x55b),(ulong)*(byte *)(lVar2 + 0x55d),
                   (uint)*(byte *)(lVar2 + 0x55c),(uint)*(byte *)(lVar2 + 0x55e),
                   (uint)*(byte *)(lVar2 + 0x557),(uint)*(byte *)(lVar2 + 0x558));
  return lVar3 + iVar1;
}



/* 00106940 trig_store */

undefined8 trig_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  uint uVar1;
  ulong uVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  undefined8 local_60;
  undefined8 local_58;
  undefined8 local_50;
  undefined8 local_48;
  undefined4 local_40 [2];
  long local_38;
  
  lVar6 = sp_el0;
  local_38 = *(long *)(lVar6 + 0x710);
  lVar6 = *(long *)(param_1 + 0x98);
  local_40[0] = 0;
  local_50 = 0;
  local_48 = 0;
  local_60 = 0;
  local_58 = 0;
  iVar3 = sscanf(param_3,"%u %u %u %u %u %u %u %u %u",&local_60,(ulong)&local_60 | 4,&local_58,
                 (long)&local_58 + 4,&local_50,(long)&local_50 + 4,&local_48,(long)&local_48 + 4,
                 local_40);
  if (iVar3 == 9) {
    _printk(&DAT_001110c3,"haptic_hv",0x89a,"trig_store",local_60 & 0xffffffff,local_60._4_4_,
            local_58 & 0xffffffff,local_58._4_4_,local_50 & 0xffffffff,local_50 >> 0x20,
            local_48 & 0xffffffff,local_48._4_4_,local_40[0]);
    uVar2 = local_60;
    if ((int)local_60 - 4U < 0xfffffffd) {
      _printk(&DAT_0011168e,"haptic_hv",0x89c,"trig_store");
    }
    else {
      uVar1 = (int)local_60 - 1;
      if ((uVar1 == 0) && (*(char *)(lVar6 + 0x417) == '\x01')) {
        _printk(&DAT_0010f50e,"haptic_hv",0x8a0,"trig_store");
      }
      else if ((*(byte *)(lVar6 + -0xa2) & 1) == 0) {
        _printk(&DAT_00111793,"haptic_hv",0x8a4,"trig_store");
      }
      else if ((*(byte *)(lVar6 + 0x3b4) < (uint)local_50) ||
              (*(byte *)(lVar6 + 0x3b4) < (uint)local_48)) {
        _printk(&DAT_00110e50,"haptic_hv",0x8a9,"trig_store");
      }
      else {
        local_60 = CONCAT44(local_60._4_4_,uVar1);
        lVar4 = lVar6 + (ulong)uVar1 * 0xd;
        lVar5 = lVar6 + -0xa8;
        *(char *)(lVar4 + 0x53f) = (char)(uVar2 >> 0x20);
        *(char *)(lVar4 + 0x540) = (char)local_58;
        *(char *)(lVar4 + 0x543) = (char)local_50;
        *(char *)(lVar4 + 0x541) = (char)(local_58 >> 0x20);
        *(char *)(lVar4 + 0x544) = (char)local_48;
        *(char *)(lVar4 + 0x542) = (char)(local_50 >> 0x20);
        *(char *)(lVar4 + 0x53d) = (char)(local_48 >> 0x20);
        *(char *)(lVar4 + 0x53e) = (char)local_40[0];
        mutex_lock(lVar6 + 0x248);
        if ((int)local_60 == 2) {
          aw8693x_trig3_param_config(lVar5);
        }
        else if ((int)local_60 == 1) {
          aw8693x_trig2_param_config(lVar5);
        }
        else if ((int)local_60 == 0) {
          aw8693x_trig1_param_config(lVar5);
        }
        mutex_unlock(lVar6 + 0x248);
      }
    }
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106bac aw8693x_trig1_param_config */

void aw8693x_trig1_param_config(long param_1)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  byte local_2c [4];
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  uVar3 = (uint)(*(char *)(param_1 + 0x5e7) != '\0');
  uVar1 = uVar3 << 6;
  if (*(char *)(param_1 + 0x5e8) != '\0') {
    uVar1 = uVar3 << 6 | 0xffffff80;
  }
  if (*(char *)(param_1 + 0x5e5) != '\0') {
    uVar1 = uVar1 | 0x20;
  }
  if (*(char *)(param_1 + 0x5e6) != '\0') {
    uVar1 = uVar1 | 0x10;
  }
  i2c_w_bits(param_1,0x39,0xffffff0f,uVar1);
  local_2c[0] = *(byte *)(param_1 + 0x5eb) | (*(char *)(param_1 + 0x5e9) != '\0') << 7;
  i2c_w_bytes(param_1,0x33,local_2c,1);
  local_2c[0] = *(byte *)(param_1 + 0x5ec) | (*(char *)(param_1 + 0x5ea) != '\0') << 7;
  i2c_w_bytes(param_1,0x36,local_2c,1);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106ca4 aw8693x_trig2_param_config */

void aw8693x_trig2_param_config(long param_1)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  byte local_2c [4];
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  uVar3 = (uint)(*(char *)(param_1 + 0x5f4) != '\0');
  uVar1 = uVar3 << 2;
  if (*(char *)(param_1 + 0x5f5) != '\0') {
    uVar1 = uVar3 << 2 | 8;
  }
  if (*(char *)(param_1 + 0x5f2) != '\0') {
    uVar1 = uVar1 | 2;
  }
  if (*(char *)(param_1 + 0x5f3) != '\0') {
    uVar1 = uVar1 + 1;
  }
  i2c_w_bits(param_1,0x39,0xfffffff0,uVar1);
  local_2c[0] = *(byte *)(param_1 + 0x5f8) | (*(char *)(param_1 + 0x5f6) != '\0') << 7;
  i2c_w_bytes(param_1,0x34,local_2c,1);
  local_2c[0] = *(byte *)(param_1 + 0x5f9) | (*(char *)(param_1 + 0x5f7) != '\0') << 7;
  i2c_w_bytes(param_1,0x37,local_2c,1);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106d98 aw8693x_trig3_param_config */

void aw8693x_trig3_param_config(long param_1)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  byte local_2c [4];
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
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



/* 00106e94 rtp_auto_sin_show */

long rtp_auto_sin_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"rtp_cnt = %u\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x34));
  return (long)iVar1;
}



/* 00106ed0 rtp_auto_sin_store */

long rtp_auto_sin_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    _printk(&DAT_001110f7,"haptic_hv",0x8dd,"rtp_auto_sin_store");
    param_4 = (long)iVar1;
    goto LAB_00106f88;
  }
  mutex_lock(lVar3 + 0x248);
  if (local_3c == 0) {
    uVar2 = 0;
    *(undefined4 *)(lVar3 + -0x68) = 0;
LAB_00106f6c:
    i2c_w_bits(lVar3 + -0xa8,0x2d,0xffffffdf,uVar2);
  }
  else {
    if (local_3c < *(uint *)(lVar3 + 0x638)) {
      uVar2 = 0x20;
      *(undefined4 *)(lVar3 + -0x68) = 1;
      *(uint *)(lVar3 + -0x18) = local_3c;
      goto LAB_00106f6c;
    }
    *(undefined4 *)(lVar3 + -0x68) = 0;
    _printk(&DAT_001106bc,"haptic_hv",0x8ee,"rtp_auto_sin_store");
  }
  mutex_unlock(lVar3 + 0x248);
  queue_work_on(0x20,*(undefined8 *)(lVar3 + 0x3a0),lVar3 + 0x2f8);
LAB_00106f88:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00107014 i2c_r_bytes */

void i2c_r_bytes(long param_1,undefined1 param_2,undefined8 param_3,undefined2 param_4)

{
  long lVar1;
  ulong uVar2;
  undefined1 local_4c [4];
  undefined2 local_48;
  undefined4 local_46;
  undefined2 local_42;
  undefined1 *local_40;
  undefined2 local_38;
  undefined2 local_36;
  undefined2 local_34;
  undefined2 local_32;
  undefined8 local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_48 = *(undefined2 *)(*(long *)(param_1 + 0x328) + 2);
  local_46 = 0x10000;
  local_40 = local_4c;
  local_42 = 0;
  local_36 = 1;
  local_32 = 0;
  local_4c[0] = param_2;
  local_38 = local_48;
  local_34 = param_4;
  local_30 = param_3;
  uVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x328) + 0x18),&local_48,2);
  if ((int)uVar2 < 0) {
    uVar2 = uVar2 & 0xffffffff;
    _printk(&DAT_0010f5e5,"haptic_hv",0x65,"i2c_r_bytes");
  }
  else if ((int)uVar2 != 2) {
    _printk(&DAT_0011030e,"haptic_hv",0x68,"i2c_r_bytes");
    uVar2 = 0xfffffffa;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00107114 i2c_w_bytes */

int i2c_w_bytes(long param_1,undefined1 param_2,void *param_3,uint param_4)

{
  ulong uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined1 *puVar5;
  ulong uVar6;
  undefined8 uVar7;
  
  uVar6 = (ulong)(param_4 + 1);
  puVar5 = (undefined1 *)__kmalloc_noprof(uVar6,0xcc0);
  while( true ) {
    if (uVar6 == 0) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(1,0x107228);
      (*pcVar3)();
    }
    *puVar5 = param_2;
    uVar1 = 0;
    if (uVar6 != 0) {
      uVar1 = uVar6 - 1;
    }
    if (param_4 <= uVar1) break;
    __fortify_panic(0x11);
    uVar6 = (ulong)(param_4 + 1);
    lVar2 = sp_el0;
    uVar7 = *(undefined8 *)(lVar2 + 0x50);
    *(undefined1 **)(lVar2 + 0x50) = &i2c_w_bytes__alloc_tag;
    puVar5 = (undefined1 *)__kmalloc_noprof(uVar6,0xcc0);
    *(undefined8 *)(lVar2 + 0x50) = uVar7;
  }
  memcpy(puVar5 + 1,param_3,(ulong)param_4);
  iVar4 = i2c_transfer_buffer_flags(*(undefined8 *)(param_1 + 0x328),puVar5,param_4 + 1,0);
  if (iVar4 < 0) {
    _printk(&DAT_0011033c,"haptic_hv",0x7a,"i2c_w_bytes",param_2);
  }
  kfree(puVar5);
  return iVar4;
}



/* 0010722c i2c_w_bits */

void i2c_w_bits(long param_1,undefined4 param_2,byte param_3,byte param_4)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  byte local_60 [4];
  undefined1 local_5c [4];
  undefined2 local_58;
  undefined4 local_56;
  undefined2 local_52;
  undefined1 *local_50;
  undefined2 local_48;
  undefined4 local_46;
  undefined2 local_42;
  undefined1 *local_40;
  long local_38;
  
  local_40 = local_60;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_5c[0] = (undefined1)param_2;
  local_60[0] = 0;
  local_58 = *(undefined2 *)(*(long *)(param_1 + 0x328) + 2);
  local_56 = 0x10000;
  local_50 = local_5c;
  local_52 = 0;
  local_46 = 0x10001;
  local_42 = 0;
  local_48 = local_58;
  iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x328) + 0x18),&local_58,2);
  if (iVar2 < 0) {
    _printk(&DAT_0010f5e5,"haptic_hv",0x65,"i2c_r_bytes");
LAB_00107364:
    puVar3 = &DAT_00110c3c;
    uVar4 = 0x87;
  }
  else {
    if (iVar2 != 2) {
      _printk(&DAT_0011030e,"haptic_hv",0x68,"i2c_r_bytes");
      iVar2 = -6;
      goto LAB_00107364;
    }
    local_60[0] = local_60[0] & param_3 | param_4 & (param_3 ^ 0xff);
    iVar2 = i2c_w_bytes(param_1,param_2,local_60,1);
    if (-1 < iVar2) {
      iVar2 = 0;
      goto LAB_001072ec;
    }
    puVar3 = &DAT_001115c5;
    uVar4 = 0x8e;
  }
  _printk(puVar3,"haptic_hv",uVar4,"i2c_w_bits",iVar2);
LAB_001072ec:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}



/* 001073c0 aw_i2c_probe */

void aw_i2c_probe(long param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  undefined4 uVar5;
  ulong uVar6;
  long lVar7;
  undefined8 uVar8;
  undefined *puVar9;
  code *pcVar10;
  long lVar11;
  long lVar12;
  long lVar13;
  uint uVar14;
  ushort uVar15;
  ushort uVar16;
  undefined1 local_90 [4];
  ushort local_8c [2];
  undefined2 local_88;
  undefined4 local_86;
  undefined2 local_82;
  undefined1 *local_80;
  undefined2 local_78;
  undefined4 local_76;
  undefined2 local_72;
  ushort *local_70;
  long local_68;
  
  lVar13 = sp_el0;
  local_68 = *(long *)(lVar13 + 0x710);
  lVar13 = *(long *)(param_1 + 0x308);
  _printk(&DAT_0010fdf5);
  pcVar10 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar10 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x107428);
    (*pcVar10)();
  }
  uVar6 = (*pcVar10)();
  if ((uVar6 & 1) == 0) {
    _printk(&DAT_0011094f);
    iVar4 = -5;
    goto LAB_0010744c;
  }
  lVar11 = param_1 + 0x20;
  lVar7 = devm_kmalloc(lVar11,0x6f8,0xdc0);
  if (lVar7 == 0) {
    iVar4 = -0xc;
    goto LAB_0010744c;
  }
  *(long *)(lVar7 + 800) = lVar11;
  *(long *)(lVar7 + 0x328) = param_1;
  *(long *)(param_1 + 0xb8) = lVar7;
  if (lVar13 == 0) {
    *(undefined4 *)(lVar7 + 0x5c) = 0xffffffff;
    *(undefined4 *)(lVar7 + 0x50) = 0xffffffff;
LAB_001074b8:
    if ((*(int *)(lVar7 + 0x5c) < 0) ||
       (iVar4 = devm_gpio_request_one(lVar11,*(int *)(lVar7 + 0x5c),0,"aw_rst"), iVar4 == 0)) {
      if ((*(int *)(lVar7 + 0x50) < 0) ||
         (iVar4 = devm_gpio_request_one(lVar11,*(int *)(lVar7 + 0x50),1,"aw_int"), iVar4 == 0)) {
        uVar14 = 0;
        *(undefined1 *)(lVar7 + 0x6f3) = 0x20;
        uVar15 = 0;
        do {
          _printk(&DAT_0010f834,"haptic_hv",0x171,"hw_reset");
          if (*(int *)(lVar7 + 0x5c) < 0) {
            _printk(&DAT_0010f65e,"haptic_hv",0x178,"hw_reset");
          }
          else {
            uVar8 = gpio_to_desc();
            gpiod_set_raw_value_cansleep(uVar8,0);
            usleep_range_state(1000,2000,2);
            uVar8 = gpio_to_desc(*(undefined4 *)(lVar7 + 0x5c));
            gpiod_set_raw_value_cansleep(uVar8,1);
            usleep_range_state(8000,0x2134,2);
          }
          local_8c[0] = 0;
          local_88 = *(undefined2 *)(*(long *)(lVar7 + 0x328) + 2);
          local_86 = 0x10000;
          local_90[0] = 0;
          local_82 = 0;
          local_76 = 0x10001;
          local_72 = 0;
          local_80 = local_90;
          local_78 = local_88;
          local_70 = local_8c;
          iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar7 + 0x328) + 0x18),&local_88,2);
          if (iVar4 < 0) {
LAB_0010762c:
            _printk(&DAT_0010f5e5,"haptic_hv",0x65,"i2c_r_bytes");
LAB_0010770c:
            _printk(&DAT_0010f86a,"haptic_hv",0x1bd,"parse_chipid",uVar15);
            _printk(&DAT_00111512,"haptic_hv",0x1bf,"parse_chipid",iVar4);
            uVar16 = uVar15;
          }
          else {
            if (iVar4 != 2) {
LAB_001076ec:
              _printk(&DAT_0011030e,"haptic_hv",0x68,"i2c_r_bytes");
              iVar4 = -6;
              goto LAB_0010770c;
            }
            uVar16 = local_8c[0] & 0xff;
            if ((local_8c[0] & 0x7c) == 0) {
              local_90[0] = 0x57;
              local_88 = *(undefined2 *)(*(long *)(lVar7 + 0x328) + 2);
              local_86 = 0x10000;
              local_82 = 0;
              local_76 = 0x20001;
              local_72 = 0;
              local_80 = local_90;
              local_78 = local_88;
              local_70 = local_8c;
              iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar7 + 0x328) + 0x18),&local_88,2);
              if (iVar4 < 0) goto LAB_0010762c;
              if (iVar4 != 2) goto LAB_001076ec;
              uVar16 = local_8c[0] >> 8 | local_8c[0] << 8;
            }
            _printk(&DAT_0010f86a,"haptic_hv",0x1bd,"parse_chipid",uVar16);
          }
          if (uVar16 < 0x7170) {
            if (uVar16 < 7) {
              if (uVar16 == 4) {
                *(undefined1 *)(lVar7 + 4) = 0;
                *(undefined4 *)(lVar7 + 0x48) = 4;
                puVar9 = &DAT_0011170d;
                *(undefined1 *)(lVar7 + 0x16) = 1;
                uVar8 = 0x1d7;
              }
              else if (uVar16 == 5) {
                *(undefined1 *)(lVar7 + 0x16) = 0;
                puVar9 = &DAT_001111db;
                *(undefined4 *)(lVar7 + 0x48) = 5;
                *(undefined1 *)(lVar7 + 4) = 0;
                uVar8 = 0x1d1;
              }
              else {
                if (uVar16 != 6) goto LAB_00107528;
                puVar9 = &DAT_0010ee80;
                *(undefined4 *)(lVar7 + 0x48) = 6;
                *(undefined1 *)(lVar7 + 0x16) = 1;
                *(undefined1 *)(lVar7 + 4) = 1;
                uVar8 = 0x1e3;
              }
            }
            else if (uVar16 < 0x97) {
              if (uVar16 == 7) {
                *(undefined1 *)(lVar7 + 0x16) = 0;
                *(undefined4 *)(lVar7 + 0x48) = 7;
                puVar9 = &DAT_00110553;
                *(undefined1 *)(lVar7 + 4) = 1;
                uVar8 = 0x1dd;
              }
              else {
                if (uVar16 != 0x95) goto LAB_00107528;
                *(undefined1 *)(lVar7 + 0x16) = 0;
                puVar9 = &DAT_00111875;
                *(undefined4 *)(lVar7 + 0x48) = 0x95;
                *(undefined1 *)(lVar7 + 4) = 0;
                uVar8 = 0x1c5;
              }
            }
            else if (uVar16 == 0x97) {
              puVar9 = &DAT_0010fa0f;
              uVar8 = 0x1cb;
              *(undefined4 *)(lVar7 + 0x48) = 0x97;
              *(undefined1 *)(lVar7 + 0x16) = 1;
              *(undefined1 *)(lVar7 + 4) = 0;
            }
            else {
              if (uVar16 != 0x7150) goto LAB_00107528;
              *(undefined4 *)(lVar7 + 0x48) = 0x7150;
              puVar9 = &DAT_0010f4b9;
              *(undefined1 *)(lVar7 + 4) = 0;
              uVar8 = 0x1e8;
            }
LAB_00107c5c:
            _printk(puVar9,"haptic_hv",uVar8,"parse_chipid");
            local_88 = CONCAT11(local_88._1_1_,0xaa);
            i2c_w_bytes(lVar7,0,&local_88,1);
            usleep_range_state(3000,0xdac,2);
            puVar9 = PTR_aw8693x_check_qualify_00100150;
            if (*(int *)(lVar7 + 0x48) < 1) {
              _printk(&DAT_0010f983,"haptic_hv",0x21f,"ctrl_init");
              puVar9 = &DAT_0010f263;
              uVar8 = 0x220;
            }
            else {
              if (*(int *)(lVar7 + 0x48) == 0x9380) {
                *(undefined ***)(lVar7 + 0x5c8) = &aw8693x_func_list;
                if (*(int *)(puVar9 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
                  pcVar10 = (code *)SoftwareBreakpoint(0x8229,0x107d10);
                  (*pcVar10)();
                }
                iVar4 = (*(code *)puVar9)(lVar7);
                if (iVar4 < 0) {
                  puVar9 = &DAT_0010f7a3;
                  uVar8 = 0x114b;
                  goto LAB_00107d88;
                }
                pcVar10 = *(code **)(*(long *)(lVar7 + 0x5c8) + 0xe0);
                if (*(int *)(pcVar10 + -4) != 0x2e77d32a) {
                    /* WARNING: Does not return */
                  pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x107de4);
                  (*pcVar10)();
                }
                (*pcVar10)(lVar11,lVar7,lVar13);
                iVar4 = irq_config(lVar11,lVar7);
                if (iVar4 != 0) {
                  puVar9 = &DAT_0010f20f;
                  uVar8 = 0x1159;
                  goto LAB_00107d88;
                }
                vibrator_init(lVar7);
                haptic_init(lVar7);
                lVar13 = alloc_workqueue(&DAT_0010fcb8,0x6000a,1,"aw_haptic_vibrator_work_queue");
                *(long *)(lVar7 + 0x448) = lVar13;
                if (lVar13 == 0) {
                  _printk(&DAT_0010f9d1,"haptic_hv",0x116d,"aw_i2c_probe");
                  iVar4 = 0;
                }
                else {
                  pcVar10 = *(code **)(*(long *)(lVar7 + 0x5c8) + 8);
                  if (*(int *)(pcVar10 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
                    pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x107ec8);
                    (*pcVar10)();
                  }
                  (*pcVar10)(lVar7);
                  ram_work_init(lVar7);
                  _printk(&DAT_001107a7,"haptic_hv",0x1172,"aw_i2c_probe");
                  lVar13 = __kmalloc_large_noprof(16000,0xcc0);
                  *(long *)(lVar7 + 0x608) = lVar13;
                  if (lVar13 == 0) {
                    _dev_err(lVar11,"malloc rtp memory failed\n");
                  }
                  else {
                    lVar13 = get_free_pages_noprof(0xcc0,2);
                    *(long *)(lVar7 + 0x610) = lVar13;
                    if (lVar13 != 0) {
                      puVar1 = (ulong *)((((lVar13 << 8) >> 8) + 0x8000000000U >> 6 &
                                         0x3ffffffffffffc0) - 0x140000000);
                      Hint_Prefetch(puVar1,2,0,1);
                      do {
                        cVar2 = '\x01';
                        bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
                        if (bVar3) {
                          *puVar1 = *puVar1 | 0x4000;
                          cVar2 = ExclusiveMonitorsStatus();
                        }
                      } while (cVar2 != '\0');
                      lVar13 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar13 + 8) = lVar13 + 0x400;
                      lVar11 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar13 + 0x408) = lVar11 + 0x800;
                      lVar13 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar11 + 0x808) = lVar13 + 0xc00;
                      lVar11 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar13 + 0xc08) = lVar11 + 0x1000;
                      lVar13 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar11 + 0x1008) = lVar13 + 0x1400;
                      lVar11 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar13 + 0x1408) = lVar11 + 0x1800;
                      lVar13 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar11 + 0x1808) = lVar13 + 0x1c00;
                      lVar11 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar13 + 0x1c08) = lVar11 + 0x2000;
                      lVar13 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar11 + 0x2008) = lVar13 + 0x2400;
                      lVar11 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar13 + 0x2408) = lVar11 + 0x2800;
                      lVar13 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar11 + 0x2808) = lVar13 + 0x2c00;
                      lVar11 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar13 + 0x2c08) = lVar11 + 0x3000;
                      lVar13 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar11 + 0x3008) = lVar13 + 0x3400;
                      lVar11 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar13 + 0x3408) = lVar11 + 0x3800;
                      lVar13 = *(long *)(lVar7 + 0x610);
                      *(long *)(lVar11 + 0x3808) = lVar13 + 0x3c00;
                      *(undefined8 *)(lVar13 + 0x3c08) = *(undefined8 *)(lVar7 + 0x610);
                      lVar13 = *(long *)(*(long *)(lVar7 + 0x610) + 8);
                      *(undefined1 *)(*(long *)(lVar7 + 0x610) + 1) = 0;
                      lVar11 = *(long *)(lVar13 + 8);
                      *(undefined1 *)(lVar13 + 1) = 1;
                      lVar12 = *(long *)(lVar11 + 8);
                      *(undefined1 *)(lVar11 + 1) = 2;
                      lVar13 = *(long *)(lVar12 + 8);
                      *(undefined1 *)(lVar12 + 1) = 3;
                      lVar11 = *(long *)(lVar13 + 8);
                      *(undefined1 *)(lVar13 + 1) = 4;
                      lVar13 = *(long *)(lVar11 + 8);
                      *(undefined1 *)(lVar11 + 1) = 5;
                      lVar11 = *(long *)(lVar13 + 8);
                      *(undefined1 *)(lVar13 + 1) = 6;
                      lVar13 = *(long *)(lVar11 + 8);
                      *(undefined1 *)(lVar11 + 1) = 7;
                      lVar11 = *(long *)(lVar13 + 8);
                      *(undefined1 *)(lVar13 + 1) = 8;
                      lVar13 = *(long *)(lVar11 + 8);
                      *(undefined1 *)(lVar11 + 1) = 9;
                      lVar11 = *(long *)(lVar13 + 8);
                      *(undefined1 *)(lVar13 + 1) = 10;
                      lVar13 = *(long *)(lVar11 + 8);
                      *(undefined1 *)(lVar11 + 1) = 0xb;
                      lVar11 = *(long *)(lVar13 + 8);
                      *(undefined1 *)(lVar13 + 1) = 0xc;
                      lVar13 = *(long *)(lVar11 + 8);
                      *(undefined1 *)(lVar11 + 1) = 0xd;
                      *(undefined1 *)(lVar13 + 1) = 0xe;
                      *(undefined1 *)(*(long *)(lVar13 + 8) + 1) = 0xf;
                      *(undefined2 *)(lVar7 + 0x618) = 1;
                      *(undefined8 *)(lVar7 + 0x648) = 0xfffffffe00000;
                      *(long *)(lVar7 + 0x650) = lVar7 + 0x650;
                      *(long *)(lVar7 + 0x658) = lVar7 + 0x650;
                      *(code **)(lVar7 + 0x660) = richtap_rtp_work;
                      *(undefined8 *)(lVar7 + 0x668) = 0xfffffffe00000;
                      *(long *)(lVar7 + 0x670) = lVar7 + 0x670;
                      *(long *)(lVar7 + 0x678) = lVar7 + 0x670;
                      *(code **)(lVar7 + 0x680) = richtap_stop_work;
                      *(undefined8 *)(lVar7 + 0x628) = 0xfffffffe00000;
                      *(long *)(lVar7 + 0x630) = lVar7 + 0x630;
                      *(long *)(lVar7 + 0x638) = lVar7 + 0x630;
                      *(code **)(lVar7 + 0x640) = tiktap_work_routine;
                      *(undefined4 *)(lVar7 + 0x6bc) = 0;
                      misc_register(richtap_misc);
                      iVar4 = 0;
                      g_aw_haptic = lVar7;
                      goto LAB_0010744c;
                    }
                    _dev_err(lVar11,"Error __get_free_pages failed\n");
                    kfree(*(undefined8 *)(lVar7 + 0x608));
                  }
                  gpio_to_desc(*(undefined4 *)(lVar7 + 0x50));
                  uVar5 = gpiod_to_irq();
                  devm_free_irq(lVar11,uVar5,lVar7);
                  iVar4 = 0;
                }
                goto LAB_00107d8c;
              }
              puVar9 = &DAT_0010f676;
              uVar8 = 0x240;
            }
            _printk(puVar9,"haptic_hv",uVar8,"ctrl_init");
            puVar9 = &DAT_001113b9;
            uVar8 = 0x1144;
            goto LAB_00107d80;
          }
          if (0x925f < uVar16) {
            if (uVar16 < 0x9280) {
              if (uVar16 == 0x9260) {
                *(undefined4 *)(lVar7 + 0x48) = 0x9260;
                puVar9 = &DAT_00110c8b;
                *(undefined1 *)(lVar7 + 0x16) = 0;
                uVar8 = 0x201;
              }
              else {
                if (uVar16 != 0x9270) goto LAB_00107528;
                *(undefined4 *)(lVar7 + 0x48) = 0x9270;
                puVar9 = &DAT_001107d6;
                *(undefined1 *)(lVar7 + 0x16) = 0;
                uVar8 = 0x206;
              }
            }
            else if (uVar16 == 0x9280) {
              *(undefined4 *)(lVar7 + 0x48) = 0x9280;
              puVar9 = &DAT_00110cae;
              *(undefined1 *)(lVar7 + 0x16) = 0;
              uVar8 = 0x20b;
            }
            else {
              if (uVar16 != 0x9380) goto LAB_00107528;
              *(undefined4 *)(lVar7 + 0x48) = 0x9380;
              puVar9 = &DAT_0010f0ab;
              *(undefined1 *)(lVar7 + 0x6f3) = 0x40;
              uVar8 = 0x210;
            }
            goto LAB_00107c5c;
          }
          if (0x717f < uVar16) {
            if (uVar16 == 0x7180) {
              *(undefined4 *)(lVar7 + 0x48) = 0x7180;
              puVar9 = &DAT_0010f607;
              *(undefined1 *)(lVar7 + 4) = 1;
              uVar8 = 0x1f7;
            }
            else {
              if (uVar16 != 0x9250) goto LAB_00107528;
              *(undefined4 *)(lVar7 + 0x48) = 0x9250;
              puVar9 = &DAT_001109b4;
              *(undefined1 *)(lVar7 + 0x16) = 0;
              uVar8 = 0x1fc;
            }
            goto LAB_00107c5c;
          }
          if (uVar16 == 0x7170) {
            *(undefined4 *)(lVar7 + 0x48) = 0x7170;
            puVar9 = &DAT_0011021a;
            *(undefined1 *)(lVar7 + 4) = 1;
            uVar8 = 0x1ed;
            goto LAB_00107c5c;
          }
          if (uVar16 == 0x7171) {
            *(undefined4 *)(lVar7 + 0x48) = 0x7171;
            puVar9 = &DAT_00110991;
            *(undefined1 *)(lVar7 + 4) = 1;
            uVar8 = 0x1f2;
            goto LAB_00107c5c;
          }
LAB_00107528:
          _printk(&DAT_0010f62a,"haptic_hv",0x213,"parse_chipid",uVar16);
          usleep_range_state(2000,0x9c4,2);
          bVar3 = uVar14 < 4;
          uVar14 = uVar14 + 1;
          uVar15 = uVar16;
        } while (bVar3);
        puVar9 = &DAT_0010f48e;
        uVar8 = 0x113d;
LAB_00107d80:
        iVar4 = -0x16;
LAB_00107d88:
        _printk(puVar9,"haptic_hv",uVar8,"aw_i2c_probe",iVar4);
LAB_00107d8c:
        if (-1 < *(int *)(lVar7 + 0x50)) {
          gpio_free();
        }
      }
      else {
        _printk(&DAT_0011191d,"haptic_hv",0x1129,"aw_i2c_probe");
      }
      if (-1 < *(int *)(lVar7 + 0x5c)) {
        gpio_free();
      }
    }
    else {
      _printk(&DAT_00110f30,"haptic_hv",0x1106,"aw_i2c_probe");
    }
  }
  else {
    iVar4 = of_get_named_gpio(lVar13,"reset-gpio",0);
    *(int *)(lVar7 + 0x5c) = iVar4;
    if (-1 < iVar4) {
      _printk(&DAT_0010f239,"haptic_hv",0x153,"parse_dt_gpio",iVar4);
      iVar4 = of_get_named_gpio(lVar13,"irq-gpio",0);
      *(int *)(lVar7 + 0x50) = iVar4;
      if (iVar4 < 0) {
        _printk(&DAT_00110c64,"haptic_hv",0x156,"parse_dt_gpio");
      }
      else {
        _printk(&DAT_001114e3,"haptic_hv",0x158,"parse_dt_gpio",iVar4);
      }
      iVar4 = of_property_read_variable_u8_array(lVar13,&DAT_00111708,lVar7 + 0x460,1,0);
      if (iVar4 < 0) {
        _printk(&DAT_0010fcbb,"haptic_hv",0x15b,"parse_dt_gpio");
      }
      goto LAB_001074b8;
    }
    _printk(&DAT_0011052c,"haptic_hv",0x150,"parse_dt_gpio");
    _printk(&DAT_00110f0a,"haptic_hv",0x10fa,"aw_i2c_probe");
    iVar4 = -1;
  }
  devm_kfree(lVar11,lVar7);
LAB_0010744c:
  lVar13 = sp_el0;
  if (*(long *)(lVar13 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}



/* 0010823c aw_remove */

void aw_remove(long param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  undefined4 uVar4;
  long lVar5;
  
  lVar5 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_0010f834,"haptic_hv",0x11d9,"aw_remove");
  cancel_delayed_work_sync(lVar5 + 0x3c0);
  cancel_work_sync(lVar5 + 0x560);
  hrtimer_cancel(lVar5 + 0x520);
  cancel_work_sync(lVar5 + 0x3a0);
  cancel_work_sync(lVar5 + 0x428);
  hrtimer_cancel(lVar5 + 0x330);
  gpio_to_desc(*(undefined4 *)(lVar5 + 0x50));
  uVar4 = gpiod_to_irq();
  devm_free_irq(param_1 + 0x20,uVar4,lVar5);
  if (-1 < *(int *)(lVar5 + 0x50)) {
    gpio_free();
  }
  cancel_work_sync(lVar5 + 0x648);
  kfree(*(undefined8 *)(lVar5 + 0x608));
  puVar1 = (ulong *)((((*(long *)(lVar5 + 0x610) << 8) >> 8) + 0x8000000000U >> 6 &
                     0x3ffffffffffffc0) - 0x140000000);
  Hint_Prefetch(puVar1,2,0,1);
  do {
    cVar2 = '\x01';
    bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
    if (bVar3) {
      *puVar1 = *puVar1 & 0xffffffffffffbfff;
      cVar2 = ExclusiveMonitorsStatus();
    }
  } while (cVar2 != '\0');
  free_pages(*(undefined8 *)(lVar5 + 0x610),2);
  misc_deregister(richtap_misc);
  if (-1 < *(int *)(lVar5 + 0x5c)) {
    gpio_free();
  }
  return;
}



/* 00108368 irq_config */

ulong irq_config(undefined8 param_1,long param_2)

{
  undefined4 uVar1;
  ulong uVar2;
  code *pcVar3;
  
  if ((*(int *)(param_2 + 0x50) < 0) || ((*(byte *)(param_2 + 0x15) & 1) != 0)) {
    _dev_info(param_1,"skipping IRQ registration");
    uVar2 = 0;
    *(byte *)(param_2 + 0x15) = *(byte *)(param_2 + 0x15) | 1;
  }
  else {
    pcVar3 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x108);
    if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1083b4);
      (*pcVar3)();
    }
    (*pcVar3)(param_2);
    gpio_to_desc(*(undefined4 *)(param_2 + 0x50));
    uVar1 = gpiod_to_irq();
    uVar2 = devm_request_threaded_irq(param_1,uVar1,0,irq_handle,0x2002,"aw_haptic",param_2);
    if ((int)uVar2 != 0) {
      uVar2 = uVar2 & 0xffffffff;
      gpio_to_desc(*(undefined4 *)(param_2 + 0x50));
      uVar1 = gpiod_to_irq();
      _printk(&DAT_001113e2,"haptic_hv",0x6ce,"irq_config",uVar1,uVar2);
    }
  }
  return uVar2;
}



/* 00108468 vibrator_init */

void vibrator_init(long param_1)

{
  int iVar1;
  
  _printk(&DAT_0010f834,"haptic_hv",0xfa8,"vibrator_init");
  _printk(&DAT_0011023d,"haptic_hv",0xfc5,"vibrator_init");
  *(undefined8 *)(param_1 + 0xa8) = "zte_vibrator";
  *(code **)(param_1 + 0xd8) = brightness_get;
  *(code **)(param_1 + 200) = brightness_set;
  iVar1 = devm_led_classdev_register_ext
                    (*(long *)(param_1 + 0x328) + 0x20,(undefined8 *)(param_1 + 0xa8),0);
  if (iVar1 < 0) {
    _printk(&DAT_0010f3c2,"haptic_hv",0xfd5,"vibrator_init");
  }
  iVar1 = sysfs_create_group(*(undefined8 *)(param_1 + 0xf8),vibrator_attribute_group);
  if (iVar1 < 0) {
    _printk(&DAT_0010ef6e,"haptic_hv",0xfdb,"vibrator_init");
  }
  hrtimer_init(param_1 + 0x330,1,1);
  *(code **)(param_1 + 0x358) = vibrator_timer_func;
  *(undefined8 *)(param_1 + 0x428) = 0xfffffffe00000;
  *(long *)(param_1 + 0x430) = param_1 + 0x430;
  *(long *)(param_1 + 0x438) = param_1 + 0x430;
  *(undefined8 *)(param_1 + 0x3a0) = 0xfffffffe00000;
  *(code **)(param_1 + 0x440) = vibrator_work_routine;
  *(long *)(param_1 + 0x3a8) = param_1 + 0x3a8;
  *(long *)(param_1 + 0x3b0) = param_1 + 0x3a8;
  *(code **)(param_1 + 0x3b8) = rtp_work_routine;
  __mutex_init(param_1 + 0x2f0,"&aw_haptic->lock",&vibrator_init___key_89);
  __mutex_init(param_1 + 0x370,"&aw_haptic->rtp_lock",&vibrator_init___key_91);
  *(undefined8 *)(param_1 + 0x6c8) = 0x100000000;
  *(long *)(param_1 + 0x6d0) = param_1 + 0x6d0;
  *(long *)(param_1 + 0x6d8) = param_1 + 0x6d0;
  return;
}



/* 00108608 haptic_init */

void haptic_init(long param_1)

{
  code *pcVar1;
  
  _printk(&DAT_0010f834,"haptic_hv",0xfeb,"haptic_init");
  *(undefined8 *)(param_1 + 0x4d8) = 0x534600000001;
  *(long *)(param_1 + 0x590) = param_1 + 0x590;
  *(long *)(param_1 + 0x598) = param_1 + 0x590;
  hrtimer_init(param_1 + 0x520,1,1);
  *(code **)(param_1 + 0x548) = audio_timer_func;
  *(undefined8 *)(param_1 + 0x560) = 0xfffffffe00000;
  *(long *)(param_1 + 0x568) = param_1 + 0x568;
  *(long *)(param_1 + 0x570) = param_1 + 0x568;
  *(code **)(param_1 + 0x578) = audio_work_routine;
  __mutex_init(param_1 + 0x4f0,"&aw_haptic->haptic_audio.lock",&haptic_init___key_249);
  *(long *)(param_1 + 0x580) = param_1 + 0x580;
  *(long *)(param_1 + 0x588) = param_1 + 0x580;
  mutex_lock(param_1 + 0x2f0);
  *(undefined8 *)(param_1 + 0x7c) = 0xff;
  *(undefined1 *)(param_1 + 0x13) = 0;
  *(undefined1 *)(param_1 + 0x1d) = 0;
  *(undefined1 *)(param_1 + 0x1b) = *(undefined1 *)(param_1 + 0x460);
  *(undefined4 *)(param_1 + 0x6e0) = 5;
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x98);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108704);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,0);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x80);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108730);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,1);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x100);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108758);
    (*pcVar1)();
  }
  (*pcVar1)(param_1);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x70);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108780);
    (*pcVar1)();
  }
  (*pcVar1)(param_1);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xa0);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1087ac);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,*(undefined4 *)(param_1 + 0x30));
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xd8);
  if (*(int *)(pcVar1 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1087dc);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,1,0);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xb0);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108808);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,0);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x50);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108830);
    (*pcVar1)();
  }
  (*pcVar1)(param_1);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xb8);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10885c);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,1);
  *(undefined1 *)(param_1 + 0x1c) = 0;
  mutex_unlock(param_1 + 0x2f0);
  return;
}



/* 0010887c ram_work_init */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ram_work_init(long param_1)

{
  *(undefined8 *)(param_1 + 0x3c0) = 0xfffffffe00000;
  *(long *)(param_1 + 0x3c8) = param_1 + 0x3c8;
  *(long *)(param_1 + 0x3d0) = param_1 + 0x3c8;
  *(code **)(param_1 + 0x3d8) = ram_work_routine;
  init_timer_key(param_1 + 0x3e0,&delayed_work_timer_fn,0x200000,0,0);
  queue_delayed_work_on(0x20,_system_wq,param_1 + 0x3c0,2000);
  return;
}



/* 001088f8 richtap_rtp_work */

void richtap_rtp_work(long param_1)

{
  bool bVar1;
  char cVar2;
  ulong uVar3;
  int iVar4;
  undefined1 *puVar5;
  code *pcVar6;
  long lVar7;
  uint uVar8;
  uint *puVar9;
  uint uVar10;
  
  *(undefined4 *)(param_1 + 0x78) = 0;
  uVar8 = 0;
  uVar10 = 0;
  lVar7 = param_1 + -0x648;
  puVar9 = (uint *)(param_1 + -0x1f0);
  *(undefined8 *)(param_1 + -0x28) = *(undefined8 *)(param_1 + -0x38);
  do {
    cVar2 = **(char **)(param_1 + -0x28);
    if (cVar2 == 'U') {
      iVar4 = (int)*(short *)(*(char **)(param_1 + -0x28) + 2);
      if (*puVar9 < uVar8 + iVar4) {
        memcpy((void *)(*(long *)(param_1 + -0x40) + (ulong)uVar8),
               (void *)(*(long *)(param_1 + -0x28) + 0x18),(ulong)(*puVar9 - uVar8));
        *(short *)(param_1 + 0x70) = (short)*puVar9 - (short)uVar8;
        uVar8 = *puVar9;
      }
      else {
        memcpy((void *)(*(long *)(param_1 + -0x40) + (ulong)uVar8),
               (void *)(*(long *)(param_1 + -0x28) + 0x18),(long)iVar4);
        puVar5 = *(undefined1 **)(param_1 + -0x28);
        *puVar5 = 0xff;
        uVar8 = uVar8 + (int)*(short *)(puVar5 + 2);
        *(undefined2 *)(*(long *)(param_1 + -0x28) + 2) = 0;
        *(undefined2 *)(param_1 + 0x70) = 0;
        *(undefined8 *)(param_1 + -0x28) = *(undefined8 *)(*(long *)(param_1 + -0x28) + 8);
      }
    }
    else {
      if (cVar2 == -0x56) break;
      msleep(1);
    }
    if ((*puVar9 <= uVar8) || (bVar1 = 0x1d < uVar10, uVar10 = uVar10 + 1, bVar1)) break;
  } while( true );
  uVar3 = richtap_rtp_start(lVar7);
  if ((uVar3 & 1) != 0) {
    pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0xd0);
    if (*(int *)(pcVar6 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x108a28);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,*(undefined8 *)(param_1 + -0x40),uVar8);
    if (*(char *)(param_1 + -0x637) == '\x01') {
      *(undefined4 *)(param_1 + 0x74) = 1;
      do {
        pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0x170);
        if (*(int *)(pcVar6 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x108a68);
          (*pcVar6)();
        }
        cVar2 = (*pcVar6)(lVar7);
        if (((cVar2 != '\0') || (*(char *)(param_1 + -0x631) != '\x02')) ||
           (**(char **)(param_1 + -0x28) != 'U')) break;
        richtap_update_fifo_data(lVar7,*puVar9 >> 2);
        pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0x160);
        if (*(int *)(pcVar6 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x108ac4);
          (*pcVar6)();
        }
        uVar3 = (*pcVar6)(lVar7);
      } while ((uVar3 & 0xf) != 0);
      pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0xf0);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x108af4);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0x110);
      if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x108b20);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7,1);
    }
    else {
      pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0x110);
      if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x108b54);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7,1);
      pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0xf0);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x108b7c);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      *(undefined4 *)(param_1 + 0x74) = 1;
    }
  }
  return;
}



/* 00108ba0 richtap_stop_work */

void richtap_stop_work(long param_1)

{
  code *pcVar1;
  long lVar2;
  
  lVar2 = param_1 + -0x668;
  mutex_lock(param_1 + -0x378);
  pcVar1 = *(code **)(*(long *)(param_1 + -0xa0) + 0xf0);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108bec);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2);
  pcVar1 = *(code **)(*(long *)(param_1 + -0xa0) + 0x38);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108c14);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2);
  mutex_unlock(param_1 + -0x378);
  pcVar1 = *(code **)(*(long *)(param_1 + -0xa0) + 0x110);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108c48);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2,0);
  *(undefined4 *)(param_1 + 0x54) = 0;
  return;
}



/* 00108c68 tiktap_work_routine */

void tiktap_work_routine(long param_1)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  ulong uVar4;
  undefined *puVar5;
  undefined8 uVar6;
  code *pcVar7;
  long lVar8;
  long lVar9;
  int iVar10;
  byte *pbVar11;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar9 = sp_el0;
  lVar8 = param_1 + -0x338;
  local_68 = *(long *)(lVar9 + 0x710);
  lVar9 = param_1 + -0x628;
  pbVar11 = *(byte **)(param_1 + -0x18);
  mutex_lock(lVar8);
  *(undefined1 *)(param_1 + -0x10) = 0;
  pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x98);
  if (*(int *)(pcVar7 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108cdc);
    (*pcVar7)();
  }
  (*pcVar7)(lVar9,2);
  pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x118);
  if (*(int *)(pcVar7 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108d08);
    (*pcVar7)();
  }
  (*pcVar7)(lVar9,2);
  iVar2 = 99;
  do {
    if (*pbVar11 == 0x55) {
      pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x60);
      if (*(int *)(pcVar7 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108d6c);
        (*pcVar7)();
      }
      (*pcVar7)(lVar9,1);
      __const_udelay(0x418958);
      if (0 < iVar2) {
        *(undefined1 *)(param_1 + -0xf) = 1;
        mutex_unlock(lVar8);
        lVar8 = param_1 + -0x2b8;
        mutex_lock(lVar8);
        uVar4 = cpu_latency_qos_request_active(aw_pm_qos_req_vb);
        if ((uVar4 & 1) == 0) {
          cpu_latency_qos_add_request(aw_pm_qos_req_vb,0);
        }
        local_78 = 0;
        uStack_70 = 0;
        ktime_get_coarse_real_ts64(&local_78);
        timespec64_to_jiffies(&local_78);
        iVar2 = jiffies_to_msecs();
        local_78 = 0;
        uStack_70 = 0;
        ktime_get_coarse_real_ts64(&local_78);
        timespec64_to_jiffies(&local_78);
        uVar3 = jiffies_to_msecs();
        if (iVar2 + 800U < uVar3) goto LAB_00108e68;
        iVar10 = 0;
        goto LAB_00108ee0;
      }
      break;
    }
    if ((*(byte *)(param_1 + -0x10) & 1) != 0) goto LAB_00108db0;
    __const_udelay(0x418958);
    iVar2 = iVar2 + -1;
  } while (iVar2 != -1);
  _printk(&DAT_00111076,"haptic_hv",0xe7e,"tiktap_work_routine",*pbVar11);
  goto LAB_00108da8;
LAB_00108ee0:
  do {
    pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x178);
    if (*(int *)(pcVar7 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108f04);
      (*pcVar7)();
    }
    uVar4 = (*pcVar7)(lVar9);
    pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x160);
    if (*(int *)(pcVar7 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108f30);
      (*pcVar7)();
    }
    bVar1 = (*pcVar7)(lVar9);
    if ((bVar1 & 0xf) == 0) {
      puVar5 = &DAT_00110d30;
      uVar6 = 0xe9d;
LAB_00109064:
      _printk(puVar5,"haptic_hv",uVar6,"tiktap_work_routine",bVar1);
      goto LAB_00109068;
    }
    bVar1 = *pbVar11;
    if ((*(byte *)(param_1 + -0x10) & 1) != 0) {
LAB_00109020:
      puVar5 = &DAT_00110d71;
      uVar6 = 0xea3;
      goto LAB_00109064;
    }
    if (bVar1 == 0x55) {
      if ((uVar4 & 1) == 0) goto LAB_00108eb0;
      _printk(&DAT_0010ff6e,"haptic_hv",0xea7,"tiktap_work_routine",iVar10,pbVar11[1],
              (long)*(short *)(pbVar11 + 2));
      _printk(&DAT_00111967,"haptic_hv",0xeab,"tiktap_work_routine",(long)*(short *)(pbVar11 + 2),
              *pbVar11,pbVar11[0x18],pbVar11[0x19],pbVar11[0x22],pbVar11[0x24]);
      pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0xd0);
      if (*(int *)(pcVar7 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108fec);
        (*pcVar7)();
      }
      (*pcVar7)(lVar9,pbVar11 + 0x18,(long)*(short *)(pbVar11 + 2));
      *pbVar11 = 0xaa;
      pbVar11 = *(byte **)(pbVar11 + 8);
      local_78 = 0;
      uStack_70 = 0;
      ktime_get_coarse_real_ts64(&local_78);
      timespec64_to_jiffies(&local_78);
      iVar2 = jiffies_to_msecs();
      iVar10 = iVar10 + 1;
    }
    else {
      if ((bVar1 == 0xff) || (bVar1 == 0xaa)) goto LAB_00109020;
LAB_00108eb0:
      __const_udelay(0x418958);
    }
    local_78 = 0;
    uStack_70 = 0;
    ktime_get_coarse_real_ts64(&local_78);
    timespec64_to_jiffies(&local_78);
    uVar3 = jiffies_to_msecs();
  } while (uVar3 <= iVar2 + 800U);
LAB_00108e68:
  _printk(&DAT_0010f16e,"haptic_hv",0xe96,"tiktap_work_routine");
LAB_00109068:
  uVar4 = cpu_latency_qos_request_active(aw_pm_qos_req_vb);
  if ((uVar4 & 1) != 0) {
    cpu_latency_qos_remove_request(aw_pm_qos_req_vb);
  }
LAB_00108da8:
  *(undefined1 *)(param_1 + -0x10) = 1;
LAB_00108db0:
  mutex_unlock(lVar8);
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 00109090 irq_handle */

undefined8 irq_handle(undefined8 param_1,long param_2)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  char cVar4;
  int iVar5;
  uint uVar6;
  undefined *puVar7;
  undefined8 uVar8;
  code *pcVar9;
  
  _printk(&DAT_0010f834,"haptic_hv",0x665,"irq_handle");
  iVar2 = *(int *)(param_2 + 0x6bc);
  pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x18);
  if (*(int *)(pcVar9 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x1090f0);
    (*pcVar9)();
  }
  iVar5 = (*pcVar9)(param_2);
  if (iVar2 == 1) {
    if (iVar5 == 0) {
      _printk(&DAT_00111628,"haptic_hv",0x66a,"irq_handle","irq_handle");
      uVar6 = *(uint *)(param_2 + 0x458) >> 1;
      while( true ) {
        richtap_update_fifo_data(param_2,uVar6);
        pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x180);
        if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x1092fc);
          (*pcVar9)();
        }
        cVar4 = (*pcVar9)(param_2);
        if (((cVar4 != '\0') || (*(int *)(param_2 + 0x6bc) == 0)) ||
           (**(char **)(param_2 + 0x620) != 'U')) break;
        uVar6 = *(uint *)(param_2 + 0x458) >> 2;
      }
    }
    if (**(char **)(param_2 + 0x620) == -1) {
      _printk(&DAT_00110371,"haptic_hv",0x675,"irq_handle");
      pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x110);
      if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109158);
        (*pcVar9)();
      }
      (*pcVar9)(param_2,0);
      *(undefined4 *)(param_2 + 0x6bc) = 0;
    }
  }
  else {
    if (iVar5 == 0) {
      if (*(char *)(param_2 + 5) == '\x01') {
        pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x170);
        if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109198);
          (*pcVar9)();
        }
        cVar4 = (*pcVar9)(param_2);
        while( true ) {
          if ((cVar4 != '\0') || (*(char *)(param_2 + 0x17) != '\x02')) goto LAB_0010941c;
          mutex_lock(param_2 + 0x370);
          uVar6 = *(uint *)(param_2 + 0x74);
          if (uVar6 == 0) break;
          if (aw_rtp == (int *)0x0) {
            puVar7 = &DAT_001109d7;
            uVar8 = 0x68d;
            goto LAB_0010938c;
          }
          uVar3 = *(uint *)(param_2 + 0x458) >> 2;
          pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0xd0);
          uVar1 = *aw_rtp - uVar6;
          if (uVar3 <= *aw_rtp - uVar6) {
            uVar1 = uVar3;
          }
          if (*(int *)(pcVar9 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
            pcVar9 = (code *)SoftwareBreakpoint(0x822c,0x109214);
            (*pcVar9)();
          }
          (*pcVar9)(param_2,(long)aw_rtp + (ulong)uVar6 + 4,uVar1);
          *(uint *)(param_2 + 0x74) = *(int *)(param_2 + 0x74) + uVar1;
          pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x160);
          if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
            pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109248);
            (*pcVar9)();
          }
          uVar6 = (*pcVar9)(param_2);
          if ((*(int *)(param_2 + 0x74) == *aw_rtp) || ((uVar6 & 0xf) == 0)) {
            if (*(int *)(param_2 + 0x74) == *aw_rtp) {
              puVar7 = &DAT_00111941;
              uVar8 = 0x6a8;
            }
            else {
              puVar7 = &DAT_00110cd1;
              uVar8 = 0x6a5;
            }
            _printk(puVar7,"haptic_hv",uVar8,"irq_handle");
            *(undefined1 *)(param_2 + 0x1d) = 0;
            pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x110);
            if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
              pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109408);
              (*pcVar9)();
            }
            (*pcVar9)(param_2,0);
            *(undefined4 *)(param_2 + 0x74) = 0;
            *(undefined1 *)(param_2 + 5) = 0;
            goto LAB_00109414;
          }
          mutex_unlock(param_2 + 0x370);
          pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x170);
          if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
            pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109294);
            (*pcVar9)();
          }
          cVar4 = (*pcVar9)(param_2);
        }
        puVar7 = &DAT_0011039f;
        uVar8 = 0x684;
LAB_0010938c:
        _printk(puVar7,"haptic_hv",uVar8,"irq_handle");
LAB_00109414:
        mutex_unlock(param_2 + 0x370);
      }
      else {
        _printk(&DAT_00111410,"haptic_hv",0x6b5,"irq_handle");
      }
    }
LAB_0010941c:
    if (*(char *)(param_2 + 0x17) != '\x02') {
      pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x110);
      if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109450);
        (*pcVar9)();
      }
      (*pcVar9)(param_2,0);
    }
  }
  return 1;
}



/* 0010946c richtap_update_fifo_data */

void richtap_update_fifo_data(long param_1,uint param_2)

{
  char cVar1;
  ushort uVar2;
  undefined8 uVar3;
  code *pcVar4;
  int iVar5;
  uint uVar6;
  size_t __n;
  int iVar7;
  
  iVar5 = 0;
  iVar7 = 3;
  do {
    cVar1 = **(char **)(param_1 + 0x620);
    if (cVar1 == 'U') {
      uVar2 = *(ushort *)(param_1 + 0x6b8);
      __n = (long)*(short *)(*(char **)(param_1 + 0x620) + 2) - (long)(short)uVar2;
      uVar6 = (uint)__n;
      if (param_2 < uVar6 || param_2 - uVar6 == 0) {
        if ((1000 < uVar2) || (1000 < (ulong)*(ushort *)(param_1 + 0x6b8))) {
LAB_001095f8:
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x1095fc);
          (*pcVar4)();
        }
        memcpy((void *)(*(long *)(param_1 + 0x608) + (long)iVar5),
               (void *)(*(long *)(param_1 + 0x620) + (ulong)*(ushort *)(param_1 + 0x6b8) + 0x18),
               (ulong)param_2);
        iVar5 = param_2 + iVar5;
        *(short *)(param_1 + 0x6b8) = *(short *)(param_1 + 0x6b8) + (short)param_2;
LAB_0010959c:
        pcVar4 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xd0);
        if (*(int *)(pcVar4 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1095c8);
          (*pcVar4)();
        }
        (*pcVar4)(param_1,*(undefined8 *)(param_1 + 0x608),iVar5);
        return;
      }
      if ((1000 < uVar2) || (1000 < (ulong)*(ushort *)(param_1 + 0x6b8))) goto LAB_001095f8;
      memcpy((void *)(*(long *)(param_1 + 0x608) + (long)iVar5),
             (void *)(*(long *)(param_1 + 0x620) + (ulong)*(ushort *)(param_1 + 0x6b8) + 0x18),__n);
      iVar5 = uVar6 + iVar5;
      **(undefined1 **)(param_1 + 0x620) = 0xff;
      *(undefined2 *)(*(long *)(param_1 + 0x620) + 2) = 0;
      uVar3 = *(undefined8 *)(*(long *)(param_1 + 0x620) + 8);
      *(undefined2 *)(param_1 + 0x6b8) = 0;
      *(undefined8 *)(param_1 + 0x620) = uVar3;
      param_2 = param_2 - uVar6;
    }
    else {
      if (cVar1 == -0x56) goto LAB_0010959c;
      if (iVar7 < 1) {
        _printk(&DAT_0011165e);
        goto LAB_0010959c;
      }
      iVar7 = iVar7 + -1;
      usleep_range_state(1000,1000,2);
    }
    if ((param_2 == 0) || (*(int *)(param_1 + 0x6bc) == 0)) goto LAB_0010959c;
  } while( true );
}



/* 00109600 brightness_get */

undefined4 brightness_get(long param_1)

{
  return *(undefined4 *)(param_1 + -0x50);
}



/* 0010960c brightness_set */

void brightness_set(long param_1,undefined4 param_2)

{
  _printk(&DAT_0010f834,"haptic_hv",0x889,"brightness_set");
  if ((*(byte *)(param_1 + -0xa2) & 1) == 0) {
    _printk(&DAT_00111793,"haptic_hv",0x88b,"brightness_set");
  }
  else {
    mutex_lock(param_1 + 0x248);
    *(undefined4 *)(param_1 + -0x50) = param_2;
    *(undefined4 *)(param_1 + -0x68) = param_2;
    *(undefined1 *)(param_1 + -0x8d) = 1;
    mutex_unlock(param_1 + 0x248);
    queue_work_on(0x20,*(undefined8 *)(param_1 + 0x3a0),param_1 + 0x380);
  }
  return;
}



/* 001096b4 vibrator_timer_func */

undefined8 vibrator_timer_func(long param_1)

{
  *(undefined4 *)(param_1 + -0x2f0) = 0;
  queue_work_on(0x20,*(undefined8 *)(param_1 + 0x118),param_1 + 0xf8);
  return 0;
}



/* 001096ec vibrator_work_routine */

void vibrator_work_routine(long param_1)

{
  char cVar1;
  uint uVar2;
  undefined *puVar3;
  uint uVar4;
  undefined8 uVar5;
  code *pcVar6;
  long lVar7;
  undefined4 uVar8;
  uint *puVar9;
  
  lVar7 = param_1 + -0x428;
  mutex_lock(param_1 + -0x138);
  pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x118);
  if (*(int *)(pcVar6 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109740);
    (*pcVar6)();
  }
  (*pcVar6)(lVar7,1);
  pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x38);
  if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109768);
    (*pcVar6)();
  }
  (*pcVar6)(lVar7);
  if (*(int *)(param_1 + -1000) == 0) goto LAB_00109778;
  puVar9 = (uint *)(param_1 + -0x3d4);
  _printk(&DAT_0011066b,"haptic_hv",0x3c2,"ram_select_waveform",*puVar9);
  uVar4 = *puVar9;
  if ((int)uVar4 < 1) {
    _printk(&DAT_0010f705,"haptic_hv",0x3c4,"ram_select_waveform");
  }
  else {
    *(undefined1 *)(param_1 + -0x40d) = 1;
    if (uVar4 < *(byte *)(param_1 + 0x3c)) {
      uVar8 = 0;
      uVar5 = 3;
    }
    else if (uVar4 < *(byte *)(param_1 + 0x3d)) {
      uVar8 = 0;
      uVar5 = 2;
    }
    else if (uVar4 < *(byte *)(param_1 + 0x3e)) {
      uVar8 = 0;
      uVar5 = 1;
    }
    else {
      uVar5 = 4;
      uVar8 = 0xf;
      *(undefined1 *)(param_1 + -0x40d) = 5;
    }
    _printk(&DAT_0010f806,"haptic_hv",0x3d6,"ram_select_waveform",uVar4,uVar5);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0xc0);
    if (*(int *)(pcVar6 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x1098a4);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,0,uVar5);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 200);
    if (*(int *)(pcVar6 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x1098d4);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,0,uVar8);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0xc0);
    if (*(int *)(pcVar6 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109904);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,1,0);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 200);
    if (*(int *)(pcVar6 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109934);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,1,0);
  }
  cVar1 = *(char *)(param_1 + -0x40d);
  if (cVar1 == '\x04') {
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x48);
    if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109a1c);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7);
  }
  else {
    if (cVar1 != '\x05') {
      if (cVar1 == '\x01') {
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x88);
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109aa8);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,*(undefined4 *)(param_1 + -0x3f4));
        _printk(&DAT_0010faf2,"haptic_hv",0x299,"ram_vbat_comp");
        uVar4 = (uint)*(byte *)(param_1 + 0x6f);
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0xa0);
        if (*(byte *)(param_1 + 0x39) <= (byte)(*(byte *)(param_1 + 0x6f) - 1)) {
          uVar4 = *(uint *)(param_1 + -0x3f8);
        }
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109b0c);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,uVar4);
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x98);
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109b38);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,1);
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x60);
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109b64);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,1);
      }
      else {
        _printk(&DAT_00111255,"haptic_hv",0x40b,"vibrator_work_routine");
      }
      goto LAB_00109778;
    }
    if (*(char *)(param_1 + -0x40c) == '\x01') {
      pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x40);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109984);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      uVar4 = *(uint *)(param_1 + -0x3c0);
      if (uVar4 < 0x1195) {
        uVar2 = 0;
        if (uVar4 != 0) {
          uVar2 = (uint)(*(int *)(param_1 + -0x3f4) * 0x1194) / uVar4;
        }
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x88);
        if (0xbf < (int)uVar2) {
          uVar2 = 0xc0;
        }
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8229,0x109c1c);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,uVar2);
        puVar3 = &DAT_0011007f;
        uVar5 = 0x292;
        goto LAB_00109c3c;
      }
    }
    else {
      pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x88);
      if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x109bb8);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7,*(undefined4 *)(param_1 + -0x3f4));
      puVar3 = &DAT_0010faf2;
      uVar5 = 0x295;
LAB_00109c3c:
      _printk(puVar3,"haptic_hv",uVar5,"ram_vbat_comp");
    }
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x98);
    if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x1099c4);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,5);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x60);
    if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x1099f0);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,1);
  }
  hrtimer_start_range_ns
            (param_1 + -0xf8,
             (long)(((int)*puVar9 % 1000) * 1000000) + (long)((int)*puVar9 / 1000) * 1000000000,0,1)
  ;
LAB_00109778:
  mutex_unlock(param_1 + -0x138);
  return;
}



/* 00109c48 rtp_work_routine */

void rtp_work_routine(long param_1)

{
  uint uVar1;
  uint uVar2;
  code *pcVar3;
  bool bVar4;
  char cVar5;
  int iVar6;
  long lVar7;
  undefined *puVar8;
  uint uVar9;
  undefined8 uVar10;
  size_t sVar11;
  long lVar12;
  long lVar13;
  uint *puVar14;
  size_t *local_70;
  long local_68;
  
  lVar7 = sp_el0;
  lVar12 = param_1 + -0x30;
  local_68 = *(long *)(lVar7 + 0x710);
  local_70 = (size_t *)0x0;
  mutex_lock(lVar12);
  puVar14 = (uint *)(param_1 + -0x310);
  *(undefined1 *)(param_1 + -899) = 1;
  if (5 < *puVar14) {
LAB_0010a260:
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x10a264);
    (*pcVar3)();
  }
  iVar6 = request_firmware(&local_70,aw_rtp_name + (ulong)*puVar14 * 0x40,
                           *(undefined8 *)(param_1 + -0x80));
  lVar7 = lVar12;
  if (iVar6 < 0) {
    if (5 < *puVar14) goto LAB_0010a260;
    _printk(&DAT_0010fb9e,"haptic_hv",0x46d,"rtp_work_routine",aw_rtp_name + (ulong)*puVar14 * 0x40)
    ;
  }
  else {
    *(undefined1 *)(param_1 + -0x39b) = 0;
    vfree(aw_rtp);
    sVar11 = *local_70;
    aw_rtp = (uint *)vmalloc_noprof(sVar11 + 4);
    if (aw_rtp == (uint *)0x0) {
      release_firmware(local_70);
      _printk(&DAT_001103d2,"haptic_hv",0x477,"rtp_work_routine");
    }
    else {
      if (sVar11 + 4 < 4) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(1,0x10a268);
        (*pcVar3)();
      }
      uVar9 = *puVar14;
      *aw_rtp = (uint)*local_70;
      if (5 < uVar9) goto LAB_0010a260;
      lVar13 = param_1 + -0x3a0;
      _printk(&DAT_00111227,"haptic_hv",0x47e,"rtp_work_routine",aw_rtp_name + (ulong)uVar9 * 0x40);
      memcpy(aw_rtp + 1,(void *)local_70[1],*local_70);
      mutex_unlock(lVar12);
      release_firmware(local_70);
      lVar7 = param_1 + -0xb0;
      mutex_lock();
      *(undefined1 *)(param_1 + -0x39b) = 1;
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x118);
      if (*(int *)(pcVar3 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109e0c);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,2);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x110);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109e38);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,0);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0xf0);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109e60);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x38);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109e88);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x88);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109eb8);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,*(undefined4 *)(param_1 + -0x36c));
      _printk(&DAT_0010faf2,"haptic_hv",0x299,"ram_vbat_comp");
      uVar9 = (uint)*(byte *)(param_1 + 0xf8);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0xa0);
      if (*(byte *)(param_1 + 0xc1) <= (byte)(*(byte *)(param_1 + 0xf8) - 1)) {
        uVar9 = *(uint *)(param_1 + -0x370);
      }
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109f18);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,uVar9);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x98);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109f44);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,2);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x60);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109f70);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,1);
      usleep_range_state(2000,0x9c4,2);
      iVar6 = -200;
      do {
        pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x160);
        if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109fac);
          (*pcVar3)();
        }
        uVar9 = (*pcVar3)(lVar13);
        if ((uVar9 & 0xf) == 8) {
          _printk(&DAT_0010fc53,"haptic_hv",0x49c,"rtp_work_routine");
          usleep_range_state(2000,0x9c4,2);
          cpu_latency_qos_add_request(aw_pm_qos_req_vb,0);
          puVar14 = (uint *)(param_1 + -0x32c);
          *puVar14 = 0;
          mutex_lock(lVar12);
          goto LAB_0010a074;
        }
        usleep_range_state(2000,0x9c4,2);
        bVar4 = iVar6 != -1;
        iVar6 = iVar6 + 1;
      } while (bVar4);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x38);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109ff8);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13);
      _printk(&DAT_001100af,"haptic_hv",0x4a8,"rtp_work_routine");
    }
  }
  goto LAB_0010a220;
  while( true ) {
    uVar9 = *(uint *)(param_1 + 0xb8);
    uVar2 = *puVar14;
    if (uVar9 <= uVar2) {
      uVar9 = uVar9 >> 2;
    }
    pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0xd0);
    uVar1 = *aw_rtp - uVar2;
    if (uVar9 <= *aw_rtp - uVar2) {
      uVar1 = uVar9;
    }
    if (*(int *)(pcVar3 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x822c,0x10a10c);
      (*pcVar3)();
    }
    (*pcVar3)(lVar13,(long)aw_rtp + (ulong)uVar2 + 4,uVar1);
    *puVar14 = *puVar14 + uVar1;
    pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x160);
    if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a140);
      (*pcVar3)();
    }
    uVar9 = (*pcVar3)(lVar13);
    if ((*puVar14 == *aw_rtp) || ((uVar9 & 0xf) == 0)) break;
LAB_0010a074:
    pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x170);
    if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a098);
      (*pcVar3)();
    }
    cVar5 = (*pcVar3)(lVar13);
    if (cVar5 != '\0') goto LAB_0010a1d0;
    if (*(char *)(param_1 + -0x389) != '\x02') goto LAB_0010a208;
    if (aw_rtp == (uint *)0x0) {
      _printk(&DAT_001109d7,"haptic_hv",0x423,"rtp_play");
      goto LAB_0010a1d0;
    }
  }
  if (*puVar14 == *aw_rtp) {
    puVar8 = &DAT_00111941;
    uVar10 = 0x44d;
  }
  else {
    puVar8 = &DAT_00110cd1;
    uVar10 = 1099;
  }
  _printk(puVar8,"haptic_hv",uVar10,"rtp_play");
  *puVar14 = 0;
LAB_0010a1d0:
  if (*(char *)(param_1 + -0x389) == '\x02') {
    pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x110);
    if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a204);
      (*pcVar3)();
    }
    (*pcVar3)(lVar13,1);
  }
LAB_0010a208:
  mutex_unlock(lVar12);
  cpu_latency_qos_remove_request(aw_pm_qos_req_vb);
LAB_0010a220:
  *(undefined1 *)(param_1 + -899) = 0;
  mutex_unlock(lVar7);
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 0010a2a0 state_show */

long state_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"state = %d\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68)
                  );
  return (long)iVar1;
}



/* 0010a2dc state_store */

undefined8 state_store(void)

{
  undefined8 in_x3;
  
  return in_x3;
}



/* 0010a2e8 duration_show */

long duration_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  uVar2 = hrtimer_active(lVar3 + 0x288);
  if ((uVar2 & 1) == 0) {
    lVar3 = 0;
  }
  else {
    lVar3 = __hrtimer_get_remaining(lVar3 + 0x288,0);
    lVar3 = lVar3 / 1000000;
  }
  iVar1 = snprintf(param_3,0x1000,"duration = %lldms\n",lVar3);
  return (long)iVar1;
}



/* 0010a368 duration_store */

long duration_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else if (local_2c != 0) {
    *(int *)(lVar2 + -0x54) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a3f4 activate_show */

long activate_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68));
  return (long)iVar1;
}



/* 0010a430 activate_store */

long activate_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined4 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_0010eea3,"haptic_hv",0x8e3,"activate_store",local_3c);
    if ((*(byte *)(lVar3 + -0xa2) & 1) == 0) {
      _printk(&DAT_00111793,"haptic_hv",0x8e5,"activate_store");
    }
    else {
      mutex_lock(lVar3 + 0x248);
      pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x80);
      if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10a50c);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3 + -0xa8,1);
      hrtimer_cancel(lVar3 + 0x288);
      *(undefined4 *)(lVar3 + -0x68) = local_3c;
      mutex_unlock(lVar3 + 0x248);
      queue_work_on(0x20,*(undefined8 *)(lVar3 + 0x3a0),lVar3 + 0x380);
    }
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a568 activate_mode_show */

long activate_mode_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate_mode = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x8d));
  return (long)iVar1;
}



/* 0010a5a4 activate_mode_store */

long activate_mode_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    *(char *)(lVar2 + -0x8d) = (char)local_2c;
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a63c index_show */

long index_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x120);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10a67c);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8,1);
  *(uint *)(lVar3 + -100) = (uint)*(byte *)(lVar3 + -0x8a);
  iVar1 = snprintf(param_3,0x1000,"index = %d\n");
  return (long)iVar1;
}



/* 0010a6b4 index_store */

long index_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else if (*(byte *)(lVar3 + 0x3b4) < local_3c) {
    _printk(&DAT_001109ff,"haptic_hv",0x971,"index_store");
  }
  else {
    _printk(&DAT_0010eea3,"haptic_hv",0x974,"index_store");
    mutex_lock(lVar3 + 0x248);
    *(uint *)(lVar3 + -100) = local_3c;
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0xa8);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10a7bc);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a7d4 vmax_show */

long vmax_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"vmax = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x78));
  return (long)iVar1;
}



/* 0010a810 vmax_store */

long vmax_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined4 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_0010eea3,"haptic_hv",0x992,"vmax_store",local_3c);
    mutex_lock(lVar3 + 0x248);
    *(undefined4 *)(lVar3 + -0x78) = local_3c;
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0xa0);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10a8e8);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a900 gain_show */

long gain_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"gain = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x74));
  return (long)iVar1;
}



/* 0010a93c gain_store */

long gain_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined4 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_0010ef9f,"haptic_hv",0x9b0,"gain_store",local_3c);
    mutex_lock(lVar3 + 0x248);
    *(undefined4 *)(lVar3 + -0x74) = local_3c;
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x88);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10aa14);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010aa2c seq_show */

long seq_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(param_1 + 0x98);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x120);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10aa74);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8,8);
  iVar1 = snprintf(param_3,0x1000,"seq%d = %d\n",1,(ulong)*(byte *)(lVar3 + -0x8a));
  lVar4 = (long)iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",2,(ulong)*(byte *)(lVar3 + -0x89));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",3,(ulong)*(byte *)(lVar3 + -0x88));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",4,(ulong)*(byte *)(lVar3 + -0x87));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",5,(ulong)*(byte *)(lVar3 + -0x86));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",6,(ulong)*(byte *)(lVar3 + -0x85));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",7,(ulong)*(byte *)(lVar3 + -0x84));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",8,(ulong)*(byte *)(lVar3 + -0x83));
  return lVar4 + iVar1;
}



/* 0010ab80 seq_store */

undefined8 seq_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    if ((uint)local_30 < 8) {
      if (local_30._4_4_ <= *(byte *)(lVar3 + 0x3b4)) {
        _printk(&DAT_0011142c,"haptic_hv",0x9d6,"seq_store");
        mutex_lock(lVar3 + 0x248);
        if (7 < (uint)local_30) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x10acbc);
          (*pcVar2)();
        }
        *(char *)(lVar3 + (local_30 & 0xffffffff) + -0x8a) = (char)(local_30 >> 0x20);
        pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0xc0);
        if (*(int *)(pcVar2 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10aca4);
          (*pcVar2)();
        }
        (*pcVar2)(lVar3 + -0xa8);
        mutex_unlock(lVar3 + 0x248);
        goto LAB_0010abd4;
      }
    }
    _printk(&DAT_001109ff,"haptic_hv",0x9d3,"seq_store");
  }
LAB_0010abd4:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010acc0 loop_show */

void loop_show(long param_1,undefined8 param_2,undefined8 param_3)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(*(long *)(*(long *)(param_1 + 0x98) + 0x520) + 0x138);
  if (*(int *)(pcVar1 + -4) != -0x2005be67) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x10acf8);
    (*pcVar1)();
  }
  (*pcVar1)(*(long *)(param_1 + 0x98) + -0xa8,param_3);
  return;
}



/* 0010ad0c loop_store */

undefined8 loop_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    _printk(&DAT_0010f6a8,"haptic_hv",0x9f5,"loop_store",local_30 & 0xffffffff,local_30._4_4_);
    mutex_lock(lVar3 + 0x248);
    if (7 < (uint)local_30) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x10ae0c);
      (*pcVar2)();
    }
    *(char *)(lVar3 + (local_30 & 0xffffffff) + -0x82) = (char)(local_30 >> 0x20);
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 200);
    if (*(int *)(pcVar2 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10adf4);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010ae10 reg_show */

void reg_show(long param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(*(long *)(*(long *)(param_1 + 0x98) + 0x520) + 0x148);
  if (*(int *)(pcVar1 + -4) != -0x20795a12) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x10ae48);
    (*pcVar1)();
  }
  (*pcVar1)(*(long *)(param_1 + 0x98) + -0xa8,0);
  return;
}



/* 0010ae5c reg_store */

undefined8 reg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined1 local_34 [4];
  ulong local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    local_34[0] = (undefined1)(local_30 >> 0x20);
    i2c_w_bytes(lVar2 + -0xa8,local_30 & 0xffffffff,local_34,1);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010aefc rtp_show */

long rtp_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"rtp_cnt = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x34));
  return (long)iVar1;
}



/* 0010af38 aw_rtp_store */

long aw_rtp_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  uint local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    _printk(&DAT_001110f7,"haptic_hv",0xa36,"aw_rtp_store");
    param_4 = (long)iVar1;
  }
  else {
    lVar3 = lVar4 + -0xa8;
    mutex_lock(lVar4 + 0x248);
    pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10afdc);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3);
    pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x110);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b008);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3,0);
    pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0xf0);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b030);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3);
    if (local_3c - 1 < 4) {
      *(uint *)(lVar4 + -0x18) = local_3c;
      _printk(&DAT_0010fa3c,"haptic_hv",0xa43,"aw_rtp_store",(ulong)local_3c,
              aw_rtp_name + (ulong)local_3c * 0x40);
      queue_work_on(0x20,*(undefined8 *)(lVar4 + 0x3a0),lVar4 + 0x2f8);
    }
    else {
      _printk(&DAT_001106bc,"haptic_hv",0xa47,"aw_rtp_store");
    }
    mutex_unlock(lVar4 + 0x248);
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b0e8 ram_update_show */

long ram_update_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  long lVar4;
  long lVar5;
  
  lVar5 = *(long *)(param_1 + 0x98);
  lVar4 = lVar5 + -0xa8;
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0x38);
  if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10b12c);
    (*pcVar3)();
  }
  (*pcVar3)(lVar4);
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0x68);
  if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10b158);
    (*pcVar3)();
  }
  (*pcVar3)(lVar4,1);
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0xf8);
  if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10b180);
    (*pcVar3)();
  }
  (*pcVar3)(lVar4);
  builtin_strncpy(param_3,"aw_haptic_ram:\n",0x10);
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0x140);
  if (*(int *)(pcVar3 + -4) != 0xc0dba4c) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10b1bc);
    (*pcVar3)();
  }
  lVar2 = (*pcVar3)(lVar4,param_3);
  iVar1 = snprintf(param_3 + lVar2 + 0xf,0xff1 - lVar2,"\n");
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0x68);
  if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10b208);
    (*pcVar3)();
  }
  (*pcVar3)(lVar4,0);
  return lVar2 + 0xf + (long)iVar1;
}



/* 0010b228 ram_update_store */

long ram_update_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else if (local_2c != 0) {
    *(undefined2 *)(lVar2 + -0xa3) = 0;
    request_firmware_nowait
              (&__this_module,1,aw_ram_name,*(undefined8 *)(lVar2 + 0x278),0xcc0,lVar2 + -0xa8,
               ram_load);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b2e0 ram_load */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ram_load(ulong *param_1,long param_2)

{
  ulong uVar1;
  ushort *puVar2;
  long lVar3;
  int *piVar4;
  long lVar5;
  code *pcVar6;
  ulong uVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  ulong uVar11;
  uint uVar12;
  int iVar13;
  ulong uVar14;
  byte *pbVar15;
  ulong uVar16;
  ushort auStack_7c [2];
  long lStack_78;
  undefined1 *puStack_70;
  code *pcStack_68;
  int *piStack_60;
  ulong *puStack_50;
  long lStack_48;
  
  ram_load_load_cont = ram_load_load_cont + 1;
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_0010fb9e,"haptic_hv",0x6e9,"ram_load",aw_ram_name);
    release_firmware(0);
    if (0x14 < ram_load_load_cont) {
      return;
    }
    queue_delayed_work_on(0x20,_system_wq,param_2 + 0x3c0,0xfa);
    _printk(&DAT_0010fbc1,"haptic_hv",0x6ef,"ram_load",ram_load_load_cont);
    return;
  }
  _printk(&DAT_00110d00,"haptic_hv",0x6f4,"ram_load",aw_ram_name,*param_1);
  uVar1 = *param_1;
  puVar2 = (ushort *)param_1[1];
  if (uVar1 < 3) {
    uVar8 = 0;
    goto LAB_0010b400;
  }
  uVar11 = uVar1 - 2;
  if (uVar11 < 2) {
    uVar7 = 2;
    iVar10 = 2;
    uVar8 = 0;
LAB_0010b3dc:
    do {
      iVar10 = iVar10 + 1;
      pbVar15 = (byte *)((long)puVar2 + uVar7);
      uVar7 = (ulong)iVar10;
      uVar8 = uVar8 + *pbVar15;
    } while (uVar7 < uVar1);
  }
  else {
    iVar10 = 2;
    uVar12 = (uint)(uVar1 - 3);
    uVar7 = 2;
    uVar8 = 0;
    if (((0x7ffffffd < uVar12) || (uVar8 = 0, 0x7ffffffc < uVar12)) || (uVar1 - 3 >> 0x20 != 0))
    goto LAB_0010b3dc;
    uVar14 = uVar11 & 0xfffffffffffffffe;
    iVar9 = 0;
    uVar7 = uVar14 + 2;
    iVar10 = (int)uVar14 + 2;
    iVar13 = 0;
    pbVar15 = (byte *)((long)puVar2 + 3);
    uVar16 = uVar14;
    do {
      uVar16 = uVar16 - 2;
      iVar9 = iVar9 + (uint)pbVar15[-1];
      iVar13 = iVar13 + (uint)*pbVar15;
      pbVar15 = pbVar15 + 2;
    } while (uVar16 != 0);
    uVar8 = iVar13 + iVar9;
    if (uVar11 != uVar14) goto LAB_0010b3dc;
  }
  uVar8 = uVar8 & 0xffff;
LAB_0010b400:
  if (uVar8 == ((uint)(*puVar2 >> 8) | (*puVar2 & 0xff00ff) << 8)) {
    _printk(&DAT_001111fe,"haptic_hv",0x6fd,"ram_load",uVar8);
    *(uint *)(param_2 + 0x454) = uVar8;
    uVar11 = *param_1;
    uVar1 = uVar11 + 4;
    piVar4 = (int *)__kmalloc_noprof(uVar1,0xdc0);
    if (piVar4 == (int *)0x0) {
      release_firmware(param_1);
      _printk(&DAT_0010f404,"haptic_hv",0x704,"ram_load");
    }
    else {
      if (uVar1 < 4) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(1,0x10b640);
        (*pcVar6)();
      }
      uVar7 = *param_1;
      uVar1 = 0;
      if (true) {
        uVar1 = uVar11;
      }
      *piVar4 = (int)uVar7;
      if (uVar1 < uVar7) {
        lVar5 = __fortify_panic(0x11);
        pcStack_68 = get_ram_num;
        lVar3 = sp_el0;
        lStack_78 = *(long *)(lVar3 + 0x710);
        auStack_7c[0] = 0;
        piStack_60 = piVar4;
        puStack_50 = param_1;
        lStack_48 = param_2;
        if ((*(byte *)(lVar5 + 6) & 1) == 0) {
          puStack_70 = &stack0xffffffffffffffc0;
          _printk(&DAT_001105a9,"haptic_hv",0x268,"get_ram_num");
        }
        else {
          puStack_70 = &stack0xffffffffffffffc0;
          mutex_lock(lVar5 + 0x2f0);
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0x38);
          if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b6a8);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5);
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0x68);
          if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b6d4);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5,1);
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0xf8);
          if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b6fc);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5);
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0x130);
          if (*(int *)(pcVar6 + -4) != 0x13c2d68c) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b728);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5,auStack_7c);
          *(char *)(lVar5 + 0x45c) =
               (char)(((uint)(auStack_7c[0] >> 8) | (auStack_7c[0] & 0xff00ff) << 8) +
                      ~*(uint *)(lVar5 + 0x458) >> 2);
          _printk(&DAT_00110f9c,"haptic_hv",0x277,"get_ram_num");
          _printk(&DAT_00110824,"haptic_hv",0x278,"get_ram_num",*(undefined1 *)(lVar5 + 0x45c));
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0x68);
          if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b7b4);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5,0);
          mutex_unlock(lVar5 + 0x2f0);
        }
        lVar3 = sp_el0;
        if (*(long *)(lVar3 + 0x710) == lStack_78) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      memcpy(piVar4 + 1,(void *)param_1[1],uVar7);
      release_firmware(param_1);
      pcVar6 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x30);
      if (*(int *)(pcVar6 + -4) != -0x2e8ff3f0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b5b0);
        (*pcVar6)();
      }
      iVar10 = (*pcVar6)(param_2,piVar4);
      if (iVar10 == 0) {
        iVar10 = *piVar4;
        *(undefined1 *)(param_2 + 6) = 1;
        *(uint *)(param_2 + 0x450) = iVar10 - (uint)*(byte *)(param_2 + 0x45e);
        _printk(&DAT_0011057a,"haptic_hv",0x711,"ram_load");
        get_ram_num(param_2);
      }
      else {
        _printk(&DAT_00110f63,"haptic_hv",0x70c,"ram_load");
      }
      kfree(piVar4);
    }
  }
  else {
    _printk(&DAT_0010edf9,"haptic_hv",0x6f9,"ram_load",uVar8);
    release_firmware(param_1);
  }
  return;
}



/* 0010b648 get_ram_num */

void get_ram_num(long param_1)

{
  long lVar1;
  code *pcVar2;
  ushort local_3c [2];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = 0;
  if ((*(byte *)(param_1 + 6) & 1) == 0) {
    _printk(&DAT_001105a9,"haptic_hv",0x268,"get_ram_num");
  }
  else {
    mutex_lock(param_1 + 0x2f0);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b6a8);
      (*pcVar2)();
    }
    (*pcVar2)(param_1);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x68);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b6d4);
      (*pcVar2)();
    }
    (*pcVar2)(param_1,1);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xf8);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b6fc);
      (*pcVar2)();
    }
    (*pcVar2)(param_1);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x130);
    if (*(int *)(pcVar2 + -4) != 0x13c2d68c) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b728);
      (*pcVar2)();
    }
    (*pcVar2)(param_1,local_3c);
    *(char *)(param_1 + 0x45c) =
         (char)(((uint)(local_3c[0] >> 8) | (local_3c[0] & 0xff00ff) << 8) +
                ~*(uint *)(param_1 + 0x458) >> 2);
    _printk(&DAT_00110f9c,"haptic_hv",0x277,"get_ram_num");
    _printk(&DAT_00110824,"haptic_hv",0x278,"get_ram_num",*(undefined1 *)(param_1 + 0x45c));
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x68);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b7b4);
      (*pcVar2)();
    }
    (*pcVar2)(param_1,0);
    mutex_unlock(param_1 + 0x2f0);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b818 ram_num_show */

long ram_num_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  get_ram_num(lVar2 + -0xa8);
  iVar1 = snprintf(param_3,0x1000,"ram_num = %d\n",(ulong)*(byte *)(lVar2 + 0x3b4));
  return (long)iVar1;
}



/* 0010b868 f0_show */

long f0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  
  lVar4 = *(long *)(param_1 + 0x98);
  lVar3 = lVar4 + -0xa8;
  mutex_lock(lVar4 + 0x248);
  pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x118);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b8b8);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3,0);
  if (*(int *)((code *)**(undefined8 **)(lVar4 + 0x520) + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b8e0);
    (*pcVar2)();
  }
  (*(code *)**(undefined8 **)(lVar4 + 0x520))(lVar3);
  pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x118);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b90c);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3,1);
  mutex_unlock(lVar4 + 0x248);
  iVar1 = snprintf(param_3,0x1000,"lra_f0 = %d cont_f0 = %d\n",(ulong)*(uint *)(lVar4 + -0x48),
                   (ulong)*(uint *)(lVar4 + -0x38));
  return (long)iVar1;
}



/* 0010b950 f0_save_show */

long f0_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"f0_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x20));
  return (long)iVar1;
}



/* 0010b98c f0_save_store */

long f0_save_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    *(undefined4 *)(lVar2 + -0x20) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010ba14 cali_show */

long cali_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar3 + 0x248);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x118);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10ba64);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8,1);
  if (*(int *)((code *)**(undefined8 **)(lVar3 + 0x520) + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10ba8c);
    (*pcVar2)();
  }
  (*(code *)**(undefined8 **)(lVar3 + 0x520))(lVar3 + -0xa8);
  mutex_unlock(lVar3 + 0x248);
  iVar1 = snprintf(param_3,0x1000,"lra_f0 = %d cont_f0 = %d\n",(ulong)*(uint *)(lVar3 + -0x48),
                   (ulong)*(uint *)(lVar3 + -0x38));
  return (long)iVar1;
}



/* 0010bad0 cali_store */

long cali_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  code *pcVar6;
  long lVar7;
  long lVar8;
  int local_4c;
  long local_48;
  
  lVar8 = sp_el0;
  local_48 = *(long *)(lVar8 + 0x710);
  lVar8 = *(long *)(param_1 + 0x98);
  local_4c = 0;
  iVar3 = kstrtouint(param_3,0,&local_4c);
  if (iVar3 < 0) {
    param_4 = (long)iVar3;
    goto LAB_0010bca0;
  }
  if (local_4c == 0) goto LAB_0010bca0;
  lVar7 = lVar8 + -0xa8;
  mutex_lock(lVar8 + 0x248);
  iVar3 = *(int *)(lVar8 + 0x3c0);
  bVar1 = *(byte *)(lVar8 + 0x3ba);
  pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x118);
  if (*(int *)(pcVar6 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10bb60);
    (*pcVar6)();
  }
  (*pcVar6)(lVar7,0);
  if (*(int *)((code *)**(undefined8 **)(lVar8 + 0x520) + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10bb88);
    (*pcVar6)();
  }
  iVar4 = (*(code *)**(undefined8 **)(lVar8 + 0x520))(lVar7);
  if (iVar4 == 0) {
    uVar2 = (bVar1 + 100) * iVar3;
    uVar5 = (100 - (uint)bVar1) * iVar3;
    iVar3 = *(int *)(lVar8 + -0x48);
    _printk(&DAT_0010fbec,"haptic_hv",0x2b0,"f0_cali",*(undefined4 *)(lVar8 + 0x3c0),
            (ulong)uVar5 / 100,(ulong)uVar2 / 100,iVar3);
    if ((uVar5 / 100 <= *(uint *)(lVar8 + -0x48)) && (*(uint *)(lVar8 + -0x48) <= uVar2 / 100)) {
      _printk(&DAT_0011189c,"haptic_hv",0x2b9,"f0_cali",iVar3);
      uVar2 = 0;
      if (iVar3 * 0x18 != 0) {
        uVar2 = ((iVar3 - *(int *)(lVar8 + 0x3c0)) * 100000) / (iVar3 * 0x18);
      }
      _printk(&DAT_0010f0e5,"haptic_hv",0x2be,"f0_cali",uVar2);
      if ((int)uVar2 < 0) {
        uVar2 = -uVar2;
        bVar1 = *(byte *)(lVar8 + 0x64b);
        uVar5 = -(uVar2 / 10);
        if (4 < uVar2 % 10) {
          uVar5 = ~(uVar2 / 10);
        }
        iVar3 = bVar1 + uVar5;
      }
      else {
        bVar1 = *(byte *)(lVar8 + 0x64b);
        iVar3 = uVar2 / 10 + (uint)bVar1;
        if (4 < uVar2 % 10) {
          iVar3 = iVar3 + 1;
        }
      }
      uVar5 = (uint)bVar1;
      uVar2 = -uVar5;
      if (iVar3 < (int)uVar5) {
        uVar2 = uVar5;
      }
      *(uint *)(lVar8 + -0x20) = uVar2 + iVar3 & 0xff;
      _printk(&DAT_0010efbd,"haptic_hv",0x2d1,"f0_cali");
      goto LAB_0010bd84;
    }
    _printk(&DAT_00110fc6,"haptic_hv",0x2b5,"f0_cali");
  }
  else {
    _printk(&DAT_0010fa61,"haptic_hv",0x2aa,"f0_cali");
LAB_0010bd84:
    pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x118);
    if (*(int *)(pcVar6 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10bdac);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,1);
    pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x38);
    if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10bdd4);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7);
  }
  mutex_unlock(lVar8 + 0x248);
LAB_0010bca0:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}



/* 0010bdec cont_show */

long cont_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x10);
  if (*(int *)(pcVar2 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10be28);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8);
  iVar1 = snprintf(param_3,0x1000,"cont_f0 = %d\n",(ulong)*(uint *)(lVar3 + -0x38));
  return (long)iVar1;
}



/* 0010be5c cont_store */

long cont_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    lVar3 = lVar4 + -0xa8;
    pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10becc);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3);
    if (local_3c != 0) {
      pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x118);
      if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10bf00);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3,1);
      pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x48);
      if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10bf28);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3);
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010bf6c vbat_monitor_show */

long vbat_monitor_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar3 + 0x248);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x40);
  if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10bfb8);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8);
  iVar1 = snprintf(param_3,0x1000,"vbat_monitor = %d\n",(ulong)*(uint *)(lVar3 + -0x40));
  mutex_unlock(lVar3 + 0x248);
  return (long)iVar1;
}



/* 0010bffc lra_resistance_show */

long lra_resistance_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x78);
  if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10c038);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8);
  iVar1 = snprintf(param_3,0x1000,"lra_resistance = %d\n",(ulong)*(uint *)(lVar3 + -0x44));
  return (long)iVar1;
}



/* 0010c06c auto_boost_show */

long auto_boost_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"auto_boost = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x90));
  return (long)iVar1;
}



/* 0010c0a8 auto_boost_store */

long auto_boost_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined4 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar3 + 0x248);
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10c120);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0xb0);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10c14c);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8,local_3c);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010c198 prct_mode_show */

long prct_mode_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  int iVar2;
  code *pcVar3;
  
  pcVar3 = *(code **)(*(long *)(*(long *)(param_1 + 0x98) + 0x520) + 0x150);
  if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x10c1d4);
    (*pcVar3)();
  }
  uVar1 = (*pcVar3)(*(long *)(param_1 + 0x98) + -0xa8);
  iVar2 = snprintf(param_3,0x1000,"prctmode = %d\n",(ulong)(uVar1 & 0xff));
  return (long)iVar2;
}



/* 0010c208 prct_mode_store */

undefined8 prct_mode_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  ulong uVar1;
  undefined4 uVar2;
  int iVar3;
  code *pcVar4;
  long lVar5;
  undefined8 local_50;
  long local_48;
  
  lVar5 = sp_el0;
  local_48 = *(long *)(lVar5 + 0x710);
  lVar5 = *(long *)(param_1 + 0x98);
  local_50 = 0;
  iVar3 = sscanf(param_3,"%x %x",&local_50,(ulong)&local_50 | 4);
  uVar1 = local_50;
  if (iVar3 == 2) {
    uVar2 = local_50._4_4_;
    mutex_lock(lVar5 + 0x248);
    pcVar4 = *(code **)(*(long *)(lVar5 + 0x520) + 0xd8);
    if (*(int *)(pcVar4 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10c2a0);
      (*pcVar4)();
    }
    (*pcVar4)(lVar5 + -0xa8,uVar1 & 0xffffffff,uVar2);
    mutex_unlock(lVar5 + 0x248);
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010c2e8 ram_vbat_comp_show */

long ram_vbat_comp_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"ram_vbat_comp = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x8c));
  return (long)iVar1;
}



/* 0010c324 ram_vbat_comp_store */

long ram_vbat_comp_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    *(bool *)(lVar2 + -0x8c) = local_2c != 0;
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010c3c4 osc_cali_show */

long osc_cali_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"osc_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x10));
  return (long)iVar1;
}



/* 0010c400 osc_cali_store */

long osc_cali_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  ulong uVar5;
  undefined8 uVar6;
  uint uVar7;
  code *pcVar8;
  long lVar9;
  long lVar10;
  int local_5c;
  long local_58;
  
  lVar10 = sp_el0;
  local_58 = *(long *)(lVar10 + 0x710);
  lVar10 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  iVar3 = kstrtouint(param_3,0,&local_5c);
  if (iVar3 < 0) {
    param_4 = (long)iVar3;
    goto LAB_0010c544;
  }
  lVar9 = lVar10 + -0xa8;
  mutex_lock(lVar10 + 0x248);
  if (local_5c == 2) {
    pcVar8 = *(code **)(*(long *)(lVar10 + 0x520) + 0x118);
    if (*(int *)(pcVar8 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
      pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x10c530);
      (*pcVar8)();
    }
    (*pcVar8)(lVar9,2);
    rtp_osc_cali(lVar9);
  }
  else if (local_5c == 1) {
    pcVar8 = *(code **)(*(long *)(lVar10 + 0x520) + 0x118);
    if (*(int *)(pcVar8 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
      pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x10c498);
      (*pcVar8)();
    }
    (*pcVar8)(lVar9,0);
    rtp_osc_cali(lVar9);
    uVar1 = *(uint *)(lVar10 + -8);
    pcVar8 = *(code **)(*(long *)(lVar10 + 0x520) + 0x188);
    if (*(int *)(pcVar8 + -4) != 0x9a385f3) {
                    /* WARNING: Does not return */
      pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x10c4cc);
      (*pcVar8)();
    }
    uVar5 = (*pcVar8)(lVar9);
    uVar4 = (uint)uVar5;
    if (uVar4 == uVar1) {
      _printk(&DAT_00110601,"haptic_hv",0x365,"rtp_trim_lra_cali",uVar1);
    }
    else if (uVar4 < uVar1) {
      uVar7 = uVar1 - uVar4;
      if ((uint)((uVar5 & 0xffffffff) / 0x32) < uVar7) {
        _printk(&DAT_0010f115,"haptic_hv",0x36a,"rtp_trim_lra_cali");
      }
      else {
        if ((uVar4 * 10) / 10000 <= uVar7) {
          uVar2 = 0;
          if (uVar4 * 0x18 != 0) {
            uVar2 = (uVar7 * 100000) / (uVar4 * 0x18);
          }
          uVar7 = (uint)*(byte *)(lVar10 + 0x64b);
          uVar4 = uVar2 / 10 + (uint)*(byte *)(lVar10 + 0x64b);
          if (4 < uVar2 % 10) {
            uVar4 = uVar4 + 1;
          }
          goto LAB_0010c75c;
        }
        uVar6 = 0x371;
LAB_0010c6a0:
        _printk(&DAT_00110ffe,"haptic_hv",uVar6,"rtp_trim_lra_cali",uVar1,uVar5);
      }
    }
    else {
      uVar7 = uVar4 - uVar1;
      if (uVar4 < uVar1 || uVar7 == 0) {
        uVar7 = (uint)*(byte *)(lVar10 + 0x64b);
        uVar4 = 0;
      }
      else {
        if ((uint)((uVar5 & 0xffffffff) / 0x32) < uVar7) {
          _printk(&DAT_0010faa0,"haptic_hv",0x37c,"rtp_trim_lra_cali");
          goto LAB_0010c53c;
        }
        if (uVar7 < (uVar4 * 10) / 10000) {
          uVar6 = 0x382;
          goto LAB_0010c6a0;
        }
        uVar2 = 0;
        if (uVar4 / 100000 != 0) {
          uVar2 = uVar7 / (uVar4 / 100000);
        }
        uVar7 = (uint)*(byte *)(lVar10 + 0x64b);
        uVar4 = ((uint)*(byte *)(lVar10 + 0x64b) - uVar2 / 0xf0) -
                (uint)(4 < uVar2 / 0x18 + (uVar2 / 0xf0) * -10);
      }
LAB_0010c75c:
      uVar2 = -uVar7;
      if (uVar4 < uVar7) {
        uVar2 = uVar7;
      }
      *(uint *)(lVar10 + -0x10) = uVar2 + uVar4;
      pcVar8 = *(code **)(*(long *)(lVar10 + 0x520) + 0x118);
      if (*(int *)(pcVar8 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x10c794);
        (*pcVar8)();
      }
      (*pcVar8)(lVar9,2);
      _printk(&DAT_0010eebd,"haptic_hv",0x3a8,"rtp_trim_lra_cali",uVar1,uVar5 & 0xffffffff);
      _printk(&DAT_0010ff13,"haptic_hv",0x3a9,"rtp_trim_lra_cali",uVar4,uVar2 + uVar4);
    }
  }
LAB_0010c53c:
  mutex_unlock(lVar10 + 0x248);
LAB_0010c544:
  lVar10 = sp_el0;
  if (*(long *)(lVar10 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}



/* 0010c7f0 rtp_osc_cali */

void rtp_osc_cali(long param_1)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  char cVar5;
  int iVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *pcVar10;
  code *pcVar11;
  size_t sVar12;
  uint *puVar13;
  uint uVar14;
  size_t *local_50;
  long local_48;
  
  lVar7 = sp_el0;
  local_48 = *(long *)(lVar7 + 0x710);
  *(undefined4 *)(param_1 + 0x74) = 0;
  *(undefined4 *)(param_1 + 0x94) = 1;
  local_50 = (size_t *)0x0;
  iVar6 = request_firmware(&local_50,aw_rtp_name,*(undefined8 *)(param_1 + 800));
  if (iVar6 < 0) {
    puVar8 = &DAT_0010fb9e;
    pcVar10 = aw_rtp_name;
    uVar9 = 0x2f9;
  }
  else {
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
    if (*(int *)(pcVar11 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10c890);
      (*pcVar11)();
    }
    (*pcVar11)(param_1);
    *(undefined1 *)(param_1 + 5) = 0;
    mutex_lock(param_1 + 0x370);
    vfree(aw_rtp);
    sVar12 = *local_50;
    aw_rtp = (uint *)vmalloc_noprof(sVar12 + 4);
    if (aw_rtp == (uint *)0x0) {
      release_firmware(local_50);
      mutex_unlock(param_1 + 0x370);
      _printk(&DAT_001103d2,"haptic_hv",0x305,"rtp_osc_cali");
      goto LAB_0010cc30;
    }
    if (sVar12 + 4 < 4) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(1,0x10cc64);
      (*pcVar11)();
    }
    *aw_rtp = (uint)*local_50;
    *(int *)(param_1 + 0x78) = (int)*local_50;
    _printk(&DAT_00111227,"haptic_hv",0x30a,"rtp_osc_cali",aw_rtp_name);
    memcpy(aw_rtp + 1,(void *)local_50[1],*local_50);
    release_firmware(local_50);
    mutex_unlock(param_1 + 0x370);
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x88);
    if (*(int *)(pcVar11 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10c994);
      (*pcVar11)();
    }
    (*pcVar11)(param_1,*(undefined4 *)(param_1 + 0x34));
    _printk(&DAT_0010faf2,"haptic_hv",0x299,"ram_vbat_comp");
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x98);
    if (*(int *)(pcVar11 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10c9dc);
      (*pcVar11)();
    }
    (*pcVar11)(param_1,2);
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x128);
    if (*(int *)(pcVar11 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10ca08);
      (*pcVar11)();
    }
    (*pcVar11)(param_1,0);
    gpio_to_desc(*(undefined4 *)(param_1 + 0x50));
    gpiod_to_irq();
    disable_irq();
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x60);
    if (*(int *)(pcVar11 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10ca44);
      (*pcVar11)();
    }
    (*pcVar11)(param_1,1);
    cpu_latency_qos_add_request(aw_pm_qos_req_vb,0);
    do {
      pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x170);
      if (*(int *)(pcVar11 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10ca94);
        (*pcVar11)();
      }
      cVar5 = (*pcVar11)(param_1);
      if (cVar5 == '\0') {
        mutex_lock(param_1 + 0x370);
        uVar14 = *(uint *)(param_1 + 0x74);
        uVar2 = *(uint *)(param_1 + 0x458) >> 2;
        uVar3 = *aw_rtp - uVar14;
        if (uVar2 <= uVar3) {
          uVar3 = uVar2;
        }
        if (*aw_rtp != uVar14) {
          puVar13 = aw_rtp;
          if (*(int *)(param_1 + 0x94) == 1) {
            uVar9 = ktime_get();
            puVar13 = aw_rtp;
            uVar14 = *(uint *)(param_1 + 0x74);
            *(undefined8 *)(param_1 + 0x270) = uVar9;
            *(undefined4 *)(param_1 + 0x94) = 0;
          }
          pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xd0);
          if (*(int *)(pcVar11 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
            pcVar11 = (code *)SoftwareBreakpoint(0x822a,0x10cb20);
            (*pcVar11)();
          }
          (*pcVar11)(param_1,(long)puVar13 + (ulong)uVar14 + 4,uVar3);
          *(uint *)(param_1 + 0x74) = *(int *)(param_1 + 0x74) + uVar3;
        }
        mutex_unlock(param_1 + 0x370);
      }
      pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x168);
      if (*(int *)(pcVar11 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10cb5c);
        (*pcVar11)();
      }
      cVar5 = (*pcVar11)(param_1);
      lVar7 = ktime_get();
      *(long *)(param_1 + 0x268) = lVar7;
      if (cVar5 != '\0') {
        uVar1 = *(undefined4 *)(param_1 + 0x74);
        puVar8 = &DAT_00110040;
        uVar9 = 0x338;
        goto LAB_0010cbd4;
      }
      uVar4 = (lVar7 - *(long *)(param_1 + 0x270)) / 1000;
      *(ulong *)(param_1 + 0xa0) = uVar4;
    } while (uVar4 < 0x4dd1e1);
    uVar1 = *(undefined4 *)(param_1 + 0x74);
    puVar8 = &DAT_001103fb;
    uVar9 = 0x340;
LAB_0010cbd4:
    _printk(puVar8,"haptic_hv",uVar9,"rtp_osc_cali",uVar1);
    cpu_latency_qos_remove_request(aw_pm_qos_req_vb);
    gpio_to_desc(*(undefined4 *)(param_1 + 0x50));
    gpiod_to_irq();
    enable_irq();
    puVar8 = &DAT_00110435;
    uVar9 = 0x34a;
    pcVar10 = (char *)((*(long *)(param_1 + 0x268) - *(long *)(param_1 + 0x270)) / 1000);
    *(char **)(param_1 + 0xa0) = pcVar10;
  }
  _printk(puVar8,"haptic_hv",uVar9,"rtp_osc_cali",pcVar10);
LAB_0010cc30:
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010cc9c osc_save_show */

long osc_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"osc_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x10));
  return (long)iVar1;
}



/* 0010ccd8 osc_save_store */

long osc_save_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    *(undefined4 *)(lVar2 + -0x10) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010cd60 haptic_audio_show */

long haptic_audio_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"%d\n",(ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x4f8));
  return (long)iVar1;
}



/* 0010cd9c haptic_audio_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 haptic_audio_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  long *plVar1;
  long *plVar2;
  undefined4 uVar3;
  undefined1 uVar4;
  int iVar5;
  undefined1 *puVar6;
  undefined1 *puVar7;
  ulong uVar8;
  long lVar9;
  code *pcVar10;
  long lVar11;
  undefined8 local_60;
  undefined8 local_58;
  undefined8 local_50;
  long local_48;
  
  lVar11 = sp_el0;
  local_48 = *(long *)(lVar11 + 0x710);
  lVar11 = *(long *)(param_1 + 0x98);
  local_58 = 0;
  local_50 = 0;
  local_60 = 0;
  if ((*(byte *)(lVar11 + -0xa2) & 1) == 0) {
    _printk(&DAT_00111793,"haptic_hv",0xba9,"haptic_audio_store");
  }
  else {
    iVar5 = sscanf(param_3,"%d %d %d %d %d %d",&local_60,(ulong)&local_60 | 4,&local_58,
                   (long)&local_58 + 4,&local_50,(long)&local_50 + 4);
    if (iVar5 == 6) {
      if ((int)local_58 != 0) {
        _printk(&DAT_0010fe45,"haptic_hv",0xbb1,"haptic_audio_store",local_60 & 0xffffffff,
                local_60._4_4_,local_58 & 0xffffffff,local_58._4_4_,(undefined4)local_50,
                local_50._4_4_);
      }
      puVar6 = (undefined1 *)__kmalloc_cache_noprof(___arch_copy_from_user,0xdc0,0x18);
      if (puVar6 == (undefined1 *)0x0) {
        _printk(&DAT_00110646,"haptic_hv",2999,"haptic_audio_store");
      }
      else {
        mutex_lock(lVar11 + 0x448);
        *puVar6 = (char)local_60;
        puVar6[1] = (char)(local_60 >> 0x20);
        puVar6[3] = (char)local_50;
        puVar6[2] = (char)local_58;
        puVar6[5] = (char)(local_58 >> 0x20);
        uVar4 = 0x80;
        if ((local_50._4_4_ & 0xff) < 0x81) {
          uVar4 = (char)((ulong)local_50 >> 0x20);
        }
        puVar6[4] = uVar4;
        puVar7 = (undefined1 *)__kmalloc_cache_noprof(___arch_copy_from_user,0xdc0,0x18);
        if (puVar7 != (undefined1 *)0x0) {
          uVar3 = *(undefined4 *)(puVar6 + 1);
          plVar1 = (long *)(lVar11 + 0x4e8);
          uVar4 = puVar6[5];
          *puVar7 = *puVar6;
          plVar2 = (long *)(puVar7 + 8);
          *(undefined4 *)(puVar7 + 1) = uVar3;
          puVar7[5] = uVar4;
          *(long **)(puVar7 + 8) = plVar2;
          *(long **)(puVar7 + 0x10) = plVar2;
          lVar9 = *(long *)(lVar11 + 0x4e8);
          if (((*(long **)(lVar9 + 8) == plVar1) && (plVar2 != plVar1)) && ((long *)lVar9 != plVar2)
             ) {
            *(long **)(lVar9 + 8) = plVar2;
            *(long *)(puVar7 + 8) = lVar9;
            *(long **)(puVar7 + 0x10) = plVar1;
            *plVar1 = (long)plVar2;
          }
          else {
            __list_add_valid_or_report(plVar2);
          }
        }
        if (puVar6[1] == -1) {
          _printk(&DAT_00110a32,"haptic_hv",0xbca,"haptic_audio_store");
          uVar8 = hrtimer_active(lVar11 + 0x478);
          if ((uVar8 & 1) != 0) {
            _printk(&DAT_0010fe8b,"haptic_hv",0xbcc,"haptic_audio_store");
            hrtimer_cancel(lVar11 + 0x478);
            *(undefined1 *)(lVar11 + 0x4f8) = 0;
            audio_off(lVar11 + -0xa8);
          }
        }
        else {
          uVar8 = hrtimer_active(lVar11 + 0x478);
          if ((uVar8 & 1) == 0) {
            _printk(&DAT_0010ff44,"haptic_hv",0xbd5,"haptic_audio_store");
            pcVar10 = *(code **)(*(long *)(lVar11 + 0x520) + 0xc0);
            if (*(int *)(pcVar10 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
              pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x10d050);
              (*pcVar10)();
            }
            (*pcVar10)(lVar11 + -0xa8,1,0);
            hrtimer_start_range_ns
                      (lVar11 + 0x478,
                       (long)((*(int *)(lVar11 + 0x430) % 1000000) * 1000) +
                       (long)(*(int *)(lVar11 + 0x430) / 1000000) * 1000000000,0,1);
          }
        }
        mutex_unlock(lVar11 + 0x448);
        kfree(puVar6);
      }
    }
  }
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010d148 audio_off */

void audio_off(long param_1)

{
  code *pcVar1;
  long lVar2;
  long *plVar3;
  long *extraout_x9;
  long *plVar4;
  
  _printk(&DAT_0010f834,"haptic_hv",0x765,"audio_off");
  mutex_lock(param_1 + 0x2f0);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x88);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10d1b0);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,0x80);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10d1d8);
    (*pcVar1)();
  }
  (*pcVar1)(param_1);
  plVar3 = *(long **)(param_1 + 0x598);
  while (plVar3 != (long *)(param_1 + 0x590)) {
    plVar4 = (long *)plVar3[1];
    if (((long *)*plVar4 == plVar3) && (lVar2 = *plVar3, *(long **)(lVar2 + 8) == plVar3)) {
      *(long **)(lVar2 + 8) = plVar4;
      *plVar4 = lVar2;
    }
    else {
      __list_del_entry_valid_or_report(plVar3);
      plVar3 = extraout_x9;
    }
    *plVar3 = -0x2152ffffffffff00;
    plVar3[1] = -0x2152fffffffffede;
    kfree(plVar3 + -1);
    plVar3 = plVar4;
  }
  mutex_unlock(param_1 + 0x2f0);
  return;
}



/* 0010d268 haptic_audio_time_show */

long haptic_audio_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  lVar2 = *(long *)(param_1 + 0x98);
  iVar1 = snprintf(param_3,0x1000,"haptic_audio.delay_val=%dus\n",(ulong)*(uint *)(lVar2 + 0x430));
  lVar3 = (long)iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"haptic_audio.timer_val=%dus\n",
                   (ulong)*(uint *)(lVar2 + 0x434));
  return lVar3 + iVar1;
}



/* 0010d2d8 haptic_audio_time_store */

undefined8 haptic_audio_time_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%d %d",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    *(undefined4 *)(lVar2 + 0x430) = (undefined4)local_30;
    *(undefined4 *)(lVar2 + 0x434) = local_30._4_4_;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010d370 gun_type_show */

long gun_type_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"0x%02x\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x2c));
  return (long)iVar1;
}



/* 0010d3ac gun_type_store */

long gun_type_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    *(undefined4 *)(lVar2 + -0x2c) = local_2c;
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010d444 bullet_nr_show */

long bullet_nr_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"0x%02x\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x28));
  return (long)iVar1;
}



/* 0010d480 bullet_nr_store */

long bullet_nr_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    *(undefined4 *)(lVar2 + -0x28) = local_2c;
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010d518 awrw_show */

long awrw_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  long lVar5;
  uint uVar6;
  
  lVar5 = *(long *)(param_1 + 0x98);
  if (*(int *)(lVar5 + 0x528) == 1) {
    if (*(long *)(lVar5 + 0x530) != 0) {
      if (*(int *)(lVar5 + 0x52c) == 0) {
        lVar4 = 0;
      }
      else {
        lVar4 = 0;
        uVar6 = 0;
        do {
          iVar1 = snprintf((char *)(param_3 + lVar4),0x1000 - lVar4,"0x%02x,",
                           (ulong)*(byte *)(*(long *)(lVar5 + 0x530) + (long)(int)uVar6));
          uVar6 = uVar6 + 1;
          lVar4 = lVar4 + iVar1;
        } while (uVar6 < *(uint *)(lVar5 + 0x52c));
      }
      iVar1 = snprintf((char *)(param_3 + lVar4 + -1),0x1000 - lVar4,"\n");
      return lVar4 + iVar1;
    }
    puVar2 = &DAT_00110859;
    uVar3 = 0xc54;
  }
  else {
    puVar2 = &DAT_0010efe4;
    uVar3 = 0xc50;
  }
  _printk(puVar2,"haptic_hv",uVar3,"awrw_show");
  return -0x22;
}



/* 0010d620 awrw_store */

undefined8 awrw_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  int iVar2;
  undefined8 uVar3;
  size_t sVar4;
  undefined *puVar5;
  code *pcVar6;
  long lVar7;
  long lVar8;
  uint uVar9;
  undefined4 local_84;
  undefined8 local_80;
  undefined1 local_78 [4];
  undefined1 local_74 [4];
  undefined4 local_70;
  undefined1 local_6c;
  undefined2 local_68;
  undefined4 local_66;
  undefined2 local_62;
  undefined1 *local_60;
  undefined2 local_58;
  undefined2 local_56;
  undefined2 local_54;
  undefined2 local_52;
  undefined8 local_50;
  long local_48;
  
  lVar8 = sp_el0;
  local_48 = *(long *)(lVar8 + 0x710);
  lVar8 = *(long *)(param_1 + 0x98);
  local_78[0] = 0;
  local_6c = 0;
  local_70 = 0;
  local_80 = 0;
  local_84 = 0;
  iVar1 = sscanf(param_3,"%x %x %x",(long)&local_80 + 4,&local_80,&local_84);
  if (iVar1 != 3) {
    _printk(&DAT_00110b72,"haptic_hv",0xc94,"awrw_store");
    goto LAB_0010d848;
  }
  if ((uint)local_80 == 0) {
    uVar3 = 0xc6f;
LAB_0010d940:
    _printk(&DAT_00110b72,"haptic_hv",uVar3,"awrw_store");
    param_4 = 0xffffffffffffffde;
  }
  else {
    *(uint *)(lVar8 + 0x52c) = (uint)local_80;
    *(int *)(lVar8 + 0x528) = local_80._4_4_;
    if (*(long *)(lVar8 + 0x530) != 0) {
      kfree();
    }
    lVar7 = lVar8 + -0xa8;
    uVar3 = __kmalloc_noprof(local_80 & 0xffffffff,0xcc0);
    *(undefined8 *)(lVar8 + 0x530) = uVar3;
    if (local_80._4_4_ == 1) {
      mutex_lock(lVar8 + 0x248);
      pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x38);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10d784);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x110);
      if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10d7b0);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7,0);
      pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0xf0);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10d7d8);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      local_74[0] = (undefined1)local_84;
      local_50 = *(undefined8 *)(lVar8 + 0x530);
      local_68 = *(undefined2 *)(*(long *)(lVar8 + 0x280) + 2);
      local_66 = 0x10000;
      local_60 = local_74;
      local_62 = 0;
      local_56 = 1;
      local_54 = (undefined2)local_80;
      local_52 = 0;
      local_58 = local_68;
      iVar1 = i2c_transfer(*(undefined8 *)(*(long *)(lVar8 + 0x280) + 0x18),&local_68,2);
      if (iVar1 < 0) {
        puVar5 = &DAT_0010f5e5;
        uVar3 = 0x65;
      }
      else {
        if (iVar1 == 2) goto LAB_0010d840;
        puVar5 = &DAT_0011030e;
        uVar3 = 0x68;
      }
      _printk(puVar5,"haptic_hv",uVar3,"i2c_r_bytes");
    }
    else {
      if (local_80._4_4_ != 0) goto LAB_0010d848;
      iVar1 = (uint)local_80;
      uVar9 = (uint)local_80 * 5;
      sVar4 = strlen(param_3);
      if (sVar4 - 0xf != (ulong)uVar9) {
        uVar3 = 0xc79;
        goto LAB_0010d940;
      }
      if (iVar1 != 0) {
        uVar9 = 0;
        iVar1 = 0xf;
        do {
          local_70 = *(undefined4 *)(param_3 + iVar1);
          local_6c = 0;
          iVar2 = kstrtou8(&local_70,0,local_78);
          if (iVar2 < 0) {
            uVar3 = 0xc81;
            goto LAB_0010d940;
          }
          iVar1 = iVar1 + 5;
          *(undefined1 *)(*(long *)(lVar8 + 0x530) + (long)(int)uVar9) = local_78[0];
          uVar9 = uVar9 + 1;
        } while (uVar9 < (uint)local_80);
      }
      mutex_lock(lVar8 + 0x248);
      i2c_w_bytes(lVar7,local_84,*(undefined8 *)(lVar8 + 0x530),local_80 & 0xffffffff);
    }
LAB_0010d840:
    mutex_unlock(lVar8 + 0x248);
  }
LAB_0010d848:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010d97c duration_aw_show */

long duration_aw_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  uVar2 = hrtimer_active(lVar3 + 0x288);
  if ((uVar2 & 1) == 0) {
    lVar3 = 0;
  }
  else {
    lVar3 = __hrtimer_get_remaining(lVar3 + 0x288,0);
    lVar3 = lVar3 / 1000000;
  }
  iVar1 = snprintf(param_3,0x1000,"duration = %lldms\n",lVar3);
  return (long)iVar1;
}



/* 0010d9fc duration_aw_store */

long duration_aw_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else if (local_2c != 0) {
    *(int *)(lVar2 + -0x54) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010da88 activate_aw_show */

long activate_aw_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68));
  return (long)iVar1;
}



/* 0010dac4 activate_aw_store */

long activate_aw_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_0010eea3,"haptic_hv",0x92d,"activate_aw_store",local_2c);
    if ((*(byte *)(lVar2 + -0xa2) & 1) == 0) {
      _printk(&DAT_00111793,"haptic_hv",0x92f,"activate_aw_store");
    }
    else {
      mutex_lock(lVar2 + 0x248);
      hrtimer_cancel(lVar2 + 0x288);
      *(undefined4 *)(lVar2 + -0x68) = local_2c;
      mutex_unlock(lVar2 + 0x248);
      queue_work_on(0x20,*(undefined8 *)(lVar2 + 0x3a0),lVar2 + 0x380);
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010dbc4 cont_save_show */

long cont_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_f0 = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x38));
  return (long)iVar1;
}



/* 0010dc00 cont_save_store */

long cont_save_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    *(undefined4 *)(lVar2 + -0x38) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010dc88 pre_f0_show */

long pre_f0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"pre_f0 = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x3c0));
  return (long)iVar1;
}



/* 0010dcc4 audio_timer_func */

undefined8 audio_timer_func(long param_1)

{
  queue_work_on(0x20,*(undefined8 *)(param_1 + -0xd8),param_1 + 0x40);
  hrtimer_start_range_ns
            (param_1,(long)((*(int *)(param_1 + -0x44) % 1000000) * 1000) +
                     (long)(*(int *)(param_1 + -0x44) / 1000000) * 1000000000,0,1);
  return 0;
}



/* 0010dd50 audio_work_routine */

void audio_work_routine(long param_1)

{
  uint uVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  long *plVar5;
  undefined1 uVar6;
  uint uVar7;
  long lVar8;
  code *pcVar9;
  long *extraout_x9;
  long *extraout_x9_00;
  long lVar10;
  long *extraout_x10;
  long *plVar11;
  long *plVar12;
  
  mutex_lock(param_1 + -0x70);
  plVar11 = *(long **)(param_1 + 0x38);
  plVar5 = (long *)(param_1 + 0x30);
  *(undefined8 *)(param_1 + 0x48) = 0;
  *(undefined8 *)(param_1 + 0x50) = 0;
  *(undefined8 *)(param_1 + 0x40) = 0;
  if (plVar11 == plVar5) {
    _printk(&DAT_0010eefa,"haptic_hv",0x7a2,"audio_work_routine");
  }
  else {
    if ((long *)*plVar5 == plVar5) {
      uVar7 = 0;
    }
    else {
      uVar7 = (uint)*(byte *)((long *)*plVar5 + -1);
    }
    uVar3 = uVar7 - *(byte *)(plVar11 + -1);
    uVar1 = uVar3 + 0x20;
    if (*(byte *)(plVar11 + -1) <= uVar7) {
      uVar1 = uVar3;
    }
    if (2 < uVar1) {
      uVar7 = 0;
      do {
        if (plVar11 == plVar5) break;
        plVar12 = (long *)plVar11[1];
        if ((*(char *)((long)plVar11 + -6) == '\0') && ((*(byte *)((long)plVar11 + -7) & 0xf) == 1))
        {
          if (((long *)*plVar12 == plVar11) && (lVar8 = *plVar11, *(long **)(lVar8 + 8) == plVar11))
          {
            *(long **)(lVar8 + 8) = plVar12;
            *plVar12 = lVar8;
          }
          else {
            __list_del_entry_valid_or_report(plVar11);
            plVar11 = extraout_x9;
          }
          *plVar11 = -0x2152ffffffffff00;
          plVar11[1] = -0x2152fffffffffede;
          kfree(plVar11 + -1);
          uVar7 = uVar7 + 1;
        }
        plVar11 = plVar12;
      } while (uVar7 != uVar1);
    }
  }
  plVar11 = *(long **)(param_1 + 0x38);
  lVar8 = param_1 + -0x560;
  if (plVar11 != plVar5) {
    plVar5 = plVar11 + -1;
    *(char *)(param_1 + 0x40) = (char)*plVar5;
    *(undefined1 *)(param_1 + 0x41) = *(undefined1 *)((long)plVar11 + -7);
    *(undefined1 *)(param_1 + 0x42) = *(undefined1 *)((long)plVar11 + -6);
    *(undefined1 *)(param_1 + 0x45) = *(undefined1 *)((long)plVar11 + -3);
    *(undefined1 *)(param_1 + 0x43) = *(undefined1 *)((long)plVar11 + -5);
    *(undefined1 *)(param_1 + 0x44) = *(undefined1 *)((long)plVar11 + -4);
    plVar12 = (long *)plVar11[1];
    if (((long *)*plVar12 == plVar11) && (lVar10 = *plVar11, *(long **)(lVar10 + 8) == plVar11)) {
      *(long **)(lVar10 + 8) = plVar12;
      *plVar12 = lVar10;
    }
    else {
      __list_del_entry_valid_or_report(plVar11);
      plVar5 = extraout_x10;
      plVar11 = extraout_x9_00;
    }
    *plVar11 = -0x2152ffffffffff00;
    plVar11[1] = -0x2152fffffffffede;
    kfree(plVar5);
  }
  if (*(char *)(param_1 + 0x42) != '\0') {
    _printk(&DAT_0010fe45,"haptic_hv",0x7dd,"audio_work_routine",*(undefined1 *)(param_1 + 0x40),
            *(undefined1 *)(param_1 + 0x41),*(char *)(param_1 + 0x42),
            *(undefined1 *)(param_1 + 0x45),*(undefined1 *)(param_1 + 0x43),
            *(undefined1 *)(param_1 + 0x44));
  }
  pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x28);
  if (*(int *)(pcVar9 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10df14);
    (*pcVar9)();
  }
  iVar4 = (*pcVar9)(lVar8);
  mutex_unlock(param_1 + -0x70);
  if ((iVar4 == 0) && (*(char *)(param_1 + 0x41) == '\x01')) {
    cVar2 = *(char *)(param_1 + 0x42);
    if (cVar2 == '\x02') {
      mutex_lock(param_1 + -0x270);
      pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x38);
      if (*(int *)(pcVar9 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10e0d0);
        (*pcVar9)();
      }
      (*pcVar9)(lVar8);
    }
    else {
      if (cVar2 == '\b') {
        mutex_lock(param_1 + -0x270);
        uVar6 = *(undefined1 *)(param_1 + 0x44);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x88);
      }
      else {
        if (cVar2 != '\x01') {
          return;
        }
        _printk(&DAT_0011104d,"haptic_hv",0x836,"audio_work_routine");
        mutex_lock(param_1 + -0x270);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x38);
        if (*(int *)(pcVar9 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10dfa0);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x98);
        if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10dfcc);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,1);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0xc0);
        if (*(int *)(pcVar9 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10dffc);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,0,*(undefined1 *)(param_1 + 0x45));
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0xc0);
        if (*(int *)(pcVar9 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10e02c);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,1,0);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 200);
        if (*(int *)(pcVar9 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10e05c);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,0,*(undefined1 *)(param_1 + 0x43));
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x88);
        if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10e088);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,*(undefined1 *)(param_1 + 0x44));
        uVar6 = 1;
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x60);
      }
      if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10e10c);
        (*pcVar9)();
      }
      (*pcVar9)(lVar8,uVar6);
    }
    mutex_unlock(param_1 + -0x270);
  }
  return;
}



/* 0010e190 ram_work_routine */

void ram_work_routine(long param_1)

{
  *(undefined2 *)(param_1 + -0x3bb) = 0;
  request_firmware_nowait
            (&__this_module,1,aw_ram_name,*(undefined8 *)(param_1 + -0xa0),0xcc0,param_1 + -0x3c0,
             ram_load);
  return;
}



/* 0010e1dc richtap_rtp_start */

bool richtap_rtp_start(long param_1)

{
  bool bVar1;
  uint uVar2;
  code *pcVar3;
  int iVar4;
  
  mutex_lock(param_1 + 0x2f0);
  pcVar3 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x98);
  if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e224);
    (*pcVar3)();
  }
  (*pcVar3)(param_1,2);
  pcVar3 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x60);
  if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e250);
    (*pcVar3)();
  }
  (*pcVar3)(param_1,1);
  usleep_range_state(2000,2000,2);
  iVar4 = -200;
  while( true ) {
    pcVar3 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x160);
    if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e28c);
      (*pcVar3)();
    }
    uVar2 = (*pcVar3)(param_1);
    if ((uVar2 & 0xf) == 8) break;
    usleep_range_state(2000,0x9c4,2);
    bVar1 = iVar4 == -1;
    iVar4 = iVar4 + 1;
    if (bVar1) {
      _printk(&DAT_001100df,"haptic_hv",0x509,"richtap_rtp_start");
      pcVar3 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e2f8);
        (*pcVar3)();
      }
      (*pcVar3)(param_1);
LAB_0010e330:
      mutex_unlock(param_1 + 0x2f0);
      return (uVar2 & 0xf) == 8;
    }
  }
  _printk(&DAT_00111481,"haptic_hv",0x4fd,"richtap_rtp_start");
  usleep_range_state(2000,0x9c4,2);
  goto LAB_0010e330;
}



/* 0010e35c richtap_read */

undefined8 richtap_read(void)

{
  return 0;
}



/* 0010e368 richtap_write */

undefined8 richtap_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  return param_3;
}



/* 0010e374 richtap_file_unlocked_ioctl */

void richtap_file_unlocked_ioctl(long param_1,int param_2,ulong param_3)

{
  undefined8 *puVar1;
  size_t __n;
  undefined8 uVar2;
  code *pcVar3;
  ulong uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  int local_3c;
  long local_38;
  
  lVar6 = sp_el0;
  local_38 = *(long *)(lVar6 + 0x710);
  lVar6 = *(long *)(param_1 + 0x20);
  local_3c = 0;
  _printk(&DAT_001119bb,"richtap_file_unlocked_ioctl",param_2,param_3);
  if (param_2 < 0x5209) {
    if (param_2 == 0x5203) {
      puVar1 = (undefined8 *)sp_el0;
      local_3c = 5;
      if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
         (uVar5 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
        uVar5 = param_3 & (long)(param_3 << 8) >> 8;
      }
      if (uVar5 < 0x7ffffffffd) {
        uVar2 = daif;
        uVar5 = daif;
        daif = uVar5 | 0xc0;
        uVar4 = puVar1[1];
        uVar5 = ttbr1_el1;
        ttbr1_el1 = uVar4 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
        ttbr0_el1 = uVar4;
        InstructionSynchronizationBarrier();
        daif = uVar2;
        lVar6 = __arch_copy_to_user(uVar4,param_3 & 0xff7fffffffffffff,&local_3c,4);
        uVar2 = daif;
        uVar5 = daif;
        daif = uVar5 | 0xc0;
        uVar5 = ttbr1_el1;
        ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar5 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar2;
LAB_0010e740:
        uVar2 = 0;
        if (lVar6 != 0) {
          uVar2 = 0xfffffffffffffff2;
        }
        goto LAB_0010e76c;
      }
      goto LAB_0010e768;
    }
    if (param_2 == 0x5205) {
      if (0x7f < param_3) {
        param_3 = 0x80;
      }
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x88);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e698);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,param_3);
    }
    else if (param_2 != 0x5206) goto LAB_0010e8f0;
  }
  else {
    if (param_2 < 0x5211) {
      if (param_2 == 0x5209) {
        mutex_lock(lVar6 + 0x2f0);
        pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x38);
        if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e468);
          (*pcVar3)();
        }
        (*pcVar3)(lVar6);
        mutex_unlock(lVar6 + 0x2f0);
        puVar1 = (undefined8 *)sp_el0;
        lVar7 = *(long *)(lVar6 + 0x608);
        if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
           (uVar5 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
          uVar5 = param_3 & (long)(param_3 << 8) >> 8;
        }
        if (uVar5 < 0x7fffffc181) {
          uVar2 = daif;
          uVar5 = daif;
          daif = uVar5 | 0xc0;
          uVar4 = puVar1[1];
          uVar5 = ttbr1_el1;
          ttbr1_el1 = uVar4 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
          ttbr0_el1 = uVar4;
          InstructionSynchronizationBarrier();
          daif = uVar2;
          __n = __arch_copy_from_user(uVar4,lVar7,param_3 & 0xff7fffffffffffff,16000);
          uVar2 = daif;
          uVar5 = daif;
          daif = uVar5 | 0xc0;
          uVar5 = ttbr1_el1;
          ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
          ttbr1_el1 = uVar5 & 0xffffffffffff;
          InstructionSynchronizationBarrier();
          daif = uVar2;
          if (__n == 0) {
            local_3c = **(int **)(lVar6 + 0x608);
            if (0x3e7c < local_3c) {
              _dev_err(*(undefined8 *)(lVar6 + 800),"rtp mode date len error %d\n");
              uVar2 = 0xffffffffffffffea;
              goto LAB_0010e76c;
            }
            pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x118);
            if (*(int *)(pcVar3 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
              pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e554);
              (*pcVar3)();
            }
            (*pcVar3)(lVar6,2);
            pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xa0);
            if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
              pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e580);
              (*pcVar3)();
            }
            (*pcVar3)(lVar6,*(undefined4 *)(lVar6 + 0x30));
            uVar5 = richtap_rtp_start(lVar6);
            if ((uVar5 & 1) != 0) {
              pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xd0);
              if (*(int *)(pcVar3 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
                pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e5c0);
                (*pcVar3)();
              }
              (*pcVar3)(lVar6,*(long *)(lVar6 + 0x608) + 4,local_3c);
            }
            goto LAB_0010e69c;
          }
        }
        else {
          __n = 16000;
        }
        memset((void *)((lVar7 - __n) + 16000),0,__n);
        goto LAB_0010e768;
      }
      if (param_2 != 0x520a) goto LAB_0010e8f0;
      _printk(&DAT_0010fd17,"haptic_hv",0x5d9,"richtap_file_unlocked_ioctl");
      richtap_clean_buf(lVar6);
      mutex_lock(lVar6 + 0x2f0);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xf0);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e828);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x38);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e850);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6);
      mutex_unlock(lVar6 + 0x2f0);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x110);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e884);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,0);
      *(undefined4 *)(lVar6 + 0x6bc) = 0;
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x118);
      if (*(int *)(pcVar3 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e8b4);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,2);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xa0);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e8e0);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,*(undefined4 *)(lVar6 + 0x30));
      uVar2 = *(undefined8 *)(lVar6 + 0x448);
      lVar6 = lVar6 + 0x648;
    }
    else {
      if (param_2 == 0x5211) {
        puVar1 = (undefined8 *)sp_el0;
        local_3c = *(int *)(lVar6 + 0x60);
        if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
           (uVar5 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
          uVar5 = param_3 & (long)(param_3 << 8) >> 8;
        }
        if (uVar5 < 0x7ffffffffd) {
          uVar2 = daif;
          uVar5 = daif;
          daif = uVar5 | 0xc0;
          uVar4 = puVar1[1];
          uVar5 = ttbr1_el1;
          ttbr1_el1 = uVar4 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
          ttbr0_el1 = uVar4;
          InstructionSynchronizationBarrier();
          daif = uVar2;
          lVar6 = __arch_copy_to_user(uVar4,param_3 & 0xff7fffffffffffff,&local_3c,4);
          uVar2 = daif;
          uVar5 = daif;
          daif = uVar5 | 0xc0;
          uVar5 = ttbr1_el1;
          ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
          ttbr1_el1 = uVar5 & 0xffffffffffff;
          InstructionSynchronizationBarrier();
          daif = uVar2;
          goto LAB_0010e740;
        }
LAB_0010e768:
        uVar2 = 0xfffffffffffffff2;
        goto LAB_0010e76c;
      }
      if (param_2 != 0x5212) {
        if (param_2 == 0x5213) {
          _printk(&DAT_0010f89e,"haptic_hv",0x5f2,"richtap_file_unlocked_ioctl");
          goto LAB_0010e69c;
        }
LAB_0010e8f0:
        _dev_err(*(undefined8 *)(lVar6 + 800),"%s, unknown cmd\n","richtap_file_unlocked_ioctl");
        goto LAB_0010e69c;
      }
      uVar2 = *(undefined8 *)(lVar6 + 0x448);
      lVar6 = lVar6 + 0x668;
    }
    queue_work_on(0x20,uVar2,lVar6);
  }
LAB_0010e69c:
  uVar2 = 0;
LAB_0010e76c:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}



/* 0010e92c richtap_file_mmap */

void richtap_file_mmap(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x800,0x10ea24);
  (*pcVar1)();
}



/* 0010ea28 richtap_file_open */

undefined8 richtap_file_open(undefined8 param_1,long param_2)

{
  ulong uVar1;
  undefined8 uVar2;
  
  uVar1 = try_module_get(&__this_module);
  if ((uVar1 & 1) == 0) {
    uVar2 = 0xffffffed;
  }
  else {
    uVar2 = 0;
    *(undefined8 *)(param_2 + 0x20) = g_aw_haptic;
  }
  return uVar2;
}



/* 0010ea78 richtap_file_release */

undefined8 richtap_file_release(void)

{
  module_put(&__this_module);
  return 0;
}



/* 0010eaa0 richtap_clean_buf */

void richtap_clean_buf(long param_1)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  
  puVar1 = *(undefined1 **)(param_1 + 0x610);
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  *puVar2 = 0xff;
  return;
}



/* 0010ec50 aw_i2c_suspend */

undefined8 aw_i2c_suspend(long param_1)

{
  code *pcVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar2 + 0x2f0);
  pcVar1 = *(code **)(*(long *)(lVar2 + 0x5c8) + 0x38);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10ec90);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2);
  mutex_unlock(lVar2 + 0x2f0);
  return 0;
}



/* 0010ecb4 aw_i2c_resume */

undefined8 aw_i2c_resume(void)

{
  return 0;
}



/* 001119fc init_module */

int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00110b21,"v0.5.0.15");
  iVar1 = i2c_register_driver(&__this_module,aw_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_001115ee);
  }
  return iVar1;
}



/* 00111a64 cleanup_module */

void cleanup_module(void)

{
  i2c_del_driver(aw_i2c_driver);
  return;
}



