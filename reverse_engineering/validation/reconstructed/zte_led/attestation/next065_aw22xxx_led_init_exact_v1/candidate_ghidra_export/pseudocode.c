/* 00100e8c aw22xxx_fw_loaded */

void aw22xxx_fw_loaded(ulong *param_1,undefined8 *param_2)

{
  ulong uVar1;
  ushort *puVar2;
  long lVar3;
  undefined8 uVar4;
  char cVar5;
  code *pcVar6;
  uint *puVar7;
  undefined1 *puVar8;
  undefined *puVar9;
  ulong extraout_x1;
  undefined1 uVar10;
  ulong uVar11;
  ushort uVar12;
  short sVar13;
  int iVar14;
  ulong uVar15;
  short sVar16;
  uint uVar17;
  ulong uVar18;
  byte *pbVar19;
  ulong uVar20;
  uint uVar21;
  char local_94 [4];
  char acStack_90 [4];
  byte abStack_8c [4];
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_94[0] = '\0';
  _printk(&DAT_00106edd,"aw22xxx_fw_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&UNK_00106c47,"aw22xxx_fw_loaded",&aw22xxx_fw_name);
    func_0x00111008(0);
  }
  else {
    _printk(&UNK_0010691e,"aw22xxx_fw_loaded",&aw22xxx_fw_name,*param_1);
    uVar1 = *param_1;
    puVar2 = (ushort *)param_1[1];
    if (uVar1 < 3) {
      uVar12 = 0;
    }
    else {
      uVar15 = uVar1 - 2;
      if (uVar15 < 2) {
        uVar11 = 2;
        iVar14 = 2;
        uVar12 = 0;
      }
      else {
        iVar14 = 2;
        uVar17 = (uint)(uVar1 - 3);
        uVar11 = 2;
        uVar12 = 0;
        if (((uVar17 < 0x7ffffffe) && (uVar12 = 0, uVar17 < 0x7ffffffd)) && (uVar1 - 3 >> 0x20 == 0)
           ) {
          uVar18 = uVar15 & 0xfffffffffffffffe;
          sVar13 = 0;
          uVar11 = uVar18 + 2;
          iVar14 = (int)uVar18 + 2;
          sVar16 = 0;
          pbVar19 = (byte *)((long)puVar2 + 3);
          uVar20 = uVar18;
          do {
            uVar20 = uVar20 - 2;
            sVar13 = sVar13 + (ushort)pbVar19[-1];
            sVar16 = sVar16 + (ushort)*pbVar19;
            pbVar19 = pbVar19 + 2;
          } while (uVar20 != 0);
          uVar12 = sVar16 + sVar13;
          if (uVar15 == uVar18) goto LAB_00100f78;
        }
      }
      do {
        iVar14 = iVar14 + 1;
        pbVar19 = (byte *)((long)puVar2 + uVar11);
        uVar11 = (ulong)iVar14;
        uVar12 = uVar12 + *pbVar19;
      } while (uVar11 < uVar1);
    }
LAB_00100f78:
    if (uVar12 == (ushort)(*puVar2 >> 8 | *puVar2 << 8)) {
      _printk(&UNK_00106f64,"aw22xxx_fw_loaded");
      uVar15 = *param_1;
      uVar1 = uVar15 + 0x10;
      puVar7 = (uint *)func_0x00111010(uVar1,0xdc0);
      if (puVar7 == (uint *)0x0) {
        func_0x00111008(param_1);
        puVar9 = &UNK_00107b46;
      }
      else {
        _printk(&UNK_00107591,"aw22xxx_fw_loaded",*(undefined1 *)(param_1[1] + 2));
        local_88 = *(undefined8 *)(param_1[1] + 3);
        uStack_80 = *(undefined8 *)(param_1[1] + 0xb);
        _printk(&UNK_00106a47,"aw22xxx_fw_loaded",&local_88);
        local_88 = *(undefined8 *)(param_1[1] + 0x13);
        _printk(&UNK_00107989,"aw22xxx_fw_loaded",&local_88);
        if ((uVar1 < 4) || ((uVar1 & 0xfffffffffffffffc) == 4)) goto LAB_00101ab8;
        uVar17 = (*(uint *)(param_1[1] + 0x1b) & 0xff00ff00) >> 8 |
                 (*(uint *)(param_1[1] + 0x1b) & 0xff00ff) << 8;
        puVar7[1] = uVar17 >> 0x10 | uVar17 << 0x10;
        _printk(&UNK_00107c5f,"aw22xxx_fw_loaded");
        if ((uVar1 < 8) || ((uVar1 & 0xfffffffffffffffc) == 8)) goto LAB_00101ab8;
        puVar7[2] = (uint)(*(ushort *)(param_1[1] + 0x22) >> 8) |
                    (*(ushort *)(param_1[1] + 0x22) & 0xff00ff) << 8;
        _printk(&UNK_001078a8,"aw22xxx_fw_loaded");
        if ((uVar1 < 0xc) || ((uVar1 & 0xfffffffffffffffc) == 0xc)) goto LAB_00101ab8;
        puVar7[3] = (uint)*(byte *)(param_1[1] + 0x24);
        _printk(&UNK_00107f92,"aw22xxx_fw_loaded");
        *puVar7 = (uint)(*(ushort *)(param_1[1] + 0x26) >> 8) |
                  (*(ushort *)(param_1[1] + 0x26) & 0xff00ff) << 8;
        _printk(&UNK_0010799f,"aw22xxx_fw_loaded");
        uVar11 = 0;
        if (0xf < uVar1) {
          uVar11 = uVar15;
        }
        if (uVar11 < *puVar7) {
          func_0x00111040(0x11);
          goto LAB_00101ac4;
        }
        func_0x00111018(puVar7 + 4,param_1[1] + 0x28);
        func_0x00111008(param_1);
        func_0x00101ef4(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        _printk(&UNK_00107a8c,"aw22xxx_chip_enable",0x1aa,1);
        abStack_8c[0] = 0;
        func_0x00102034(param_2,2,abStack_8c);
        abStack_8c[0] = abStack_8c[0] | 1;
        func_0x00101f4c(param_2,2);
        usleep_range_state(2000,3000,2);
        abStack_8c[0] = 0;
        func_0x00102068(param_2,4,abStack_8c);
        abStack_8c[0] = abStack_8c[0] | 1;
        func_0x00101ee4(param_2,4);
        func_0x00101ee4(param_2,0x22,*puVar7 + 0xffff >> 8);
        func_0x00101ef4(param_2,0x21,(byte)*puVar7 - 1);
        func_0x00101ee4(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        func_0x001020e8(param_2,0x24,local_94);
        if (local_94[0] == '\x05') {
          func_0x001020f4(param_2,0x25,local_94);
          cVar5 = local_94[0];
          func_0x00102018(param_2,0x26,local_94);
          if ((uVar1 < 8) || ((uVar1 & 0xfffffffffffffffc) == 8)) goto LAB_00101ab8;
          if ((uint)CONCAT11(local_94[0],cVar5) == puVar7[2]) {
            _printk(&UNK_00107a4a,"aw22xxx_fw_loaded",(uint)CONCAT11(local_94[0],cVar5));
            if (*(char *)((long)param_2 + 0x2ee) == '\0') {
              kfree(puVar7);
              func_0x001022f4(param_2,0x24,0);
              aw22xxx_led_init(param_2);
              *(undefined1 *)((long)param_2 + 0x2ef) = 2;
              goto LAB_00101a4c;
            }
            if ((uVar1 & 0xfffffffffffffffc) == 4) goto LAB_00101ab8;
            uVar17 = puVar7[1];
            puVar9 = &UNK_00107022;
          }
          else {
            _printk(&UNK_001078c0,"aw22xxx_fw_loaded");
            if ((uVar1 & 0xfffffffffffffffc) == 4) goto LAB_00101ab8;
            uVar17 = puVar7[1];
            puVar9 = &UNK_001073b2;
          }
          _printk(puVar9,"aw22xxx_fw_loaded",uVar17);
        }
        else {
          _printk(&UNK_001075ac,"aw22xxx_fw_loaded");
          _printk(&UNK_001079b6,"aw22xxx_fw_loaded");
        }
        func_0x001022ec(param_2,0x24,0);
        acStack_90[0] = '\0';
        func_0x00102314(param_2,0xff,0);
        func_0x001022e4(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        _printk(&UNK_00107a8c,"aw22xxx_chip_enable",0x1aa,1);
        abStack_8c[0] = 0;
        func_0x00102414(param_2,2,abStack_8c);
        abStack_8c[0] = abStack_8c[0] | 1;
        func_0x001022ec(param_2,2);
        usleep_range_state(2000,3000,2);
        abStack_8c[0] = 0;
        func_0x00102418(param_2,4,abStack_8c);
        abStack_8c[0] = abStack_8c[0] | 1;
        func_0x001022f4(param_2,4);
        func_0x001022e4(param_2,0x80,0xec);
        func_0x001024d4(param_2,0x35,0x29);
        if ((uVar1 < 0xc) || ((uVar1 & 0xfffffffffffffffc) == 0xc)) {
LAB_00101ab8:
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(1,0x101abc);
          (*pcVar6)();
        }
        func_0x001022ec(param_2,0x38,puVar7[3]);
        func_0x0010230c(param_2,0x22,0);
        func_0x0010230c(param_2,0x21,0);
        func_0x001022ec(param_2,0x20,3);
        func_0x001022ec(param_2,0x30,3);
        func_0x0010234c(param_2,0x23,0);
        if (g_ver_var < 0xc) {
          msleep(0x28);
        }
        else {
          usleep_range_state(4000,0x1194,2);
        }
        func_0x001022e4(param_2,0x30,0);
        func_0x00102314(param_2,0x22,0x40);
        func_0x001022e4(param_2,0x21,0);
        func_0x001022f4(param_2,0x30,2);
        thunk_FUN_0010243c(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        func_0x001022ec(param_2,0x30,0);
        func_0x001022ec(param_2,0x22,0x42);
        func_0x0010230c(param_2,0x21,0);
        func_0x0010230c(param_2,0x30,2);
        func_0x001022ec(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        func_0x0010234c(param_2,0x30,0);
        func_0x0010234c(param_2,0x22,0x44);
        func_0x001022ec(param_2,0x21,0);
        func_0x001022ec(param_2,0x30,2);
        func_0x0010230c(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        func_0x001022ec(param_2,0x30,0);
        func_0x001022ec(param_2,0x20,0);
        func_0x001022cc(param_2,0x20,3);
        if (*puVar7 != 0) {
          uVar17 = 0;
          uVar4 = sp_el0;
          do {
            func_0x00101ee4(param_2,0x22,uVar17 >> 8);
            func_0x00101ef4(param_2,0x21,uVar17);
            func_0x00101ee4(param_2,0x11,1);
            func_0x001020d4(param_2,0x30,4);
            uVar21 = *puVar7 - uVar17;
            if (0x7f < uVar21) {
              uVar21 = 0x80;
            }
            uVar15 = (ulong)uVar21;
            puVar8 = (undefined1 *)func_0x00111010((ulong)(uVar21 + 1),0xcc0);
            if (puVar8 != (undefined1 *)0x0) {
              uVar11 = (ulong)(uVar21 + 1) - 1;
              *puVar8 = 0x23;
              if (uVar11 < uVar15) {
                func_0x00111040(0x11,uVar11,uVar15);
                uVar11 = extraout_x1;
              }
              else {
                uVar20 = (ulong)uVar17 + 0x10;
                uVar18 = 0;
                if (uVar20 <= uVar1) {
                  uVar18 = uVar1 - uVar20;
                }
                if (uVar15 <= uVar18) {
                  func_0x00111018(puVar8 + 1,(long)(puVar7 + 4) + (ulong)uVar17,uVar15);
                  iVar14 = i2c_transfer_buffer_flags(*param_2,puVar8,uVar21 + 1,0);
                  if (iVar14 < 0) {
                    _printk(&UNK_00106f83,"aw22xxx_i2c_writes");
                  }
                  kfree(puVar8);
                  goto LAB_00101870;
                }
              }
              func_0x00111040(0x10,uVar11,uVar15);
              goto LAB_00101ab8;
            }
            _printk(&UNK_00107145,"aw22xxx_i2c_writes");
LAB_00101870:
            func_0x00101ef4(param_2,0x11,0);
            func_0x00101ee4(param_2,0x30,0);
            uVar17 = uVar21 + uVar17;
          } while (uVar17 < *puVar7);
        }
        func_0x00101ee4(param_2,0x20,0);
        func_0x00101ef4(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        _printk(&UNK_00107a8c,"aw22xxx_chip_enable",0x1aa,1);
        abStack_8c[0] = 0;
        func_0x00102434(param_2,2,abStack_8c);
        abStack_8c[0] = abStack_8c[0] | 1;
        func_0x00101f4c(param_2,2);
        usleep_range_state(2000,3000,2);
        abStack_8c[0] = 0;
        FUN_00102468(param_2,4,abStack_8c);
        abStack_8c[0] = abStack_8c[0] | 1;
        func_0x00101ee4(param_2,4);
        func_0x00101ee4(param_2,0x22,*puVar7 + 0xffff >> 8);
        func_0x00101ef4(param_2,0x21,(byte)*puVar7 - 1);
        func_0x00101ee4(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        func_0x001023e8(param_2,0x24,acStack_90);
        if (acStack_90[0] == '\x05') {
          func_0x001023f4(param_2,0x25,acStack_90);
          cVar5 = acStack_90[0];
          func_0x00102018(param_2,0x26,acStack_90);
          if ((uVar1 < 8) || ((uVar1 & 0xfffffffffffffffc) == 8)) goto LAB_00101ab8;
          if ((uint)CONCAT11(acStack_90[0],cVar5) == puVar7[2]) {
            puVar9 = &UNK_00107a4a;
            goto LAB_001019cc;
          }
          _printk(&UNK_00106a5e,"aw22xxx_container_update",puVar7[2]);
          _printk(&UNK_001079cc,"aw22xxx_container_update");
          uVar10 = 3;
        }
        else {
          puVar9 = &UNK_001075ac;
LAB_001019cc:
          _printk(puVar9,"aw22xxx_container_update");
          func_0x00101fcc(param_2,0x24,0);
          uVar10 = 2;
        }
        *(undefined1 *)((long)param_2 + 0x2ef) = uVar10;
        kfree(puVar7);
        *(undefined1 *)((long)param_2 + 0x2ee) = 0;
        FUN_001061c8(param_2);
        puVar9 = &DAT_00107b65;
      }
      _printk(puVar9,"aw22xxx_fw_loaded");
    }
    else {
      _printk(&UNK_00106b45,"aw22xxx_fw_loaded");
      func_0x00111008(param_1);
    }
  }
LAB_00101a4c:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_68) {
    return;
  }
LAB_00101ac4:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101ac8 aw22xxx_init_cfg_update_array */

void aw22xxx_init_cfg_update_array(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_00106e0e,"aw22xxx_init_cfg_update_array",0x1ca);
  return;
}



/* 00101c1c aw22xxx_set_breath_data */

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



/* 00101d2c aw22xxx_play */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_play(long param_1)

{
  code *pcVar1;
  
  aw22xxx_init_cfg_update_array();
  aw22xxx_set_breath_data(param_1,&user_para_data);
  while( true ) {
    msleep(duration / 0x1e);
    if (read_idx == write_idx) {
      kthread_status = 0;
      read_idx = 0;
      write_idx = 0;
      queue_work_on(0x20,_system_wq,param_1 + 0x230);
      _printk(&DAT_0010749e,"aw22xxx_play");
      return;
    }
    if ((kthread_status & 1) == 0) break;
    if (25000 < (uint)(read_idx * 0x19)) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x101e70);
      (*pcVar1)();
    }
    aw22xxx_set_breath_data(param_1,&user_para_data + (uint)(read_idx * 0x19));
    read_idx = read_idx + 1;
  }
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,5,0);
  aw22xxx_i2c_write(param_1,4,1);
  aw22xxx_i2c_write(param_1,2,0);
  _printk(&DAT_001070f3,"aw22xxx_play");
  return;
}



/* 00101e74 aw22xxx_led_imax_cfg */

void aw22xxx_led_imax_cfg(long param_1)

{
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,0xb,7);
  *(undefined4 *)(param_1 + 0x2f0) = 7;
  _printk(&DAT_00106cf4,"aw22xxx_led_imax_cfg",
          *(undefined8 *)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8),7);
  return;
}



/* 00101ee4 aw22xxx_i2c_write */

void aw22xxx_i2c_write(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_3c;
  undefined1 local_3b;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = param_2;
  local_3b = param_3;
  iVar2 = i2c_transfer_buffer_flags(*param_1,&local_3c,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    uVar3 = gpiod_get_raw_value();
    _printk(&DAT_00106883,"aw22xxx_i2c_write",0,iVar2,uVar3);
    return;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102014 aw22xxx_i2c_read */

void aw22xxx_i2c_read(undefined8 *param_1,undefined1 param_2,undefined1 *param_3)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = param_2;
  iVar2 = i2c_transfer_buffer_flags(*param_1,local_2c,1,0);
  if (iVar2 < 0) {
    puVar3 = &DAT_00107768;
  }
  else {
    iVar2 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < iVar2) {
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) == local_28) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    puVar3 = &DAT_00106d17;
    *param_3 = (char)iVar2;
  }
  _printk(puVar3,"aw22xxx_i2c_read",iVar2);
  return;
}



/* 00102150 aw22xxx_i2c_probe */

void aw22xxx_i2c_probe(void)

{
  _printk(&DAT_001074bf,"aw22xxx_i2c_probe",0x9d9);
  return;
}



/* 0010243c FUN_0010243c */

undefined8 FUN_0010243c(void)

{
  _dev_err();
  _dev_err();
  devm_kfree();
  return 0xffffffea;
}



/* 00102468 FUN_00102468 */

undefined4 FUN_00102468(void)

{
  undefined4 unaff_w23;
  
  devm_kfree();
  return unaff_w23;
}



/* 001027ec aw22xxx_i2c_remove */

void aw22xxx_i2c_remove(void)

{
  _printk(&DAT_00106edd,"aw22xxx_i2c_remove");
  return;
}



/* 001028b0 aw22xxx_hw_reset */

void aw22xxx_hw_reset(void)

{
  _printk(&DAT_00106edd,"aw22xxx_hw_reset");
  return;
}



/* 0010294c aw22xxx_read_chipid */

void aw22xxx_read_chipid(long param_1)

{
  long lVar1;
  int iVar2;
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = '\0';
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  iVar2 = aw22xxx_i2c_read(param_1,1,local_2c);
  if (-1 < iVar2) {
    if (local_2c[0] == 'v') {
      _printk(&DAT_001071e9,"aw22xxx_read_chipid",0x76,iVar2);
      return;
    }
    _printk(&DAT_00107da7,"aw22xxx_read_chipid",local_2c[0],iVar2);
    return;
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"%s: failed to read register AW22XXX_REG_ID: %d\n",
           "aw22xxx_read_chipid");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0xfffffffb);
}



/* 00102b18 aw22xxx_interrupt_setup */

void aw22xxx_interrupt_setup(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_00106edd,"aw22xxx_interrupt_setup");
  return;
}



/* 00102c20 aw22xxx_irq_v15 */

void aw22xxx_irq_v15(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  undefined1 local_44 [28];
  undefined8 local_28;
  
  lVar1 = sp_el0;
  local_28 = *(undefined8 *)(lVar1 + 0x710);
  local_44[0] = 0;
  aw22xxx_i2c_read(param_2,10,local_44);
  _printk(&DAT_00106987,"aw22xxx_irq_v15",local_44[0]);
  return;
}



/* 00102e68 aw22xxx_irq */

void aw22xxx_irq(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_00106edd,"aw22xxx_irq");
  return;
}



/* 00102f6c aw22xxx_parse_led_cdev */

void aw22xxx_parse_led_cdev(void)

{
  _printk(&DAT_00106edd,"aw22xxx_parse_led_cdev");
  return;
}



/* 00103174 aw22xxx_alloc_name_array */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_alloc_name_array(void)

{
  undefined8 uVar1;
  long lVar2;
  undefined8 *puVar3;
  long lVar4;
  
  aw22xxx_cfg_name = (undefined8 *)__kmalloc_cache_noprof(___kmalloc_cache_noprof,0xcc0,0x58);
  if (aw22xxx_cfg_name == (undefined8 *)0x0) {
    _printk(&DAT_001068e3,"aw22xxx_alloc_name_array",0x687);
    return;
  }
  lVar4 = 0;
  uVar1 = sp_el0;
  do {
    lVar2 = __kmalloc_cache_noprof(_strlen,0xcc0,0x40);
    puVar3 = aw22xxx_cfg_name;
    aw22xxx_cfg_name[lVar4] = lVar2;
    if (lVar2 == 0) {
      if (lVar4 != 0) {
        lVar4 = lVar4 + 1;
        do {
          kfree(aw22xxx_cfg_name[(int)lVar4 - 2]);
          lVar4 = lVar4 + -1;
          puVar3 = aw22xxx_cfg_name;
        } while (1 < lVar4);
      }
      kfree(puVar3);
      _printk(&DAT_001068e3,"aw22xxx_alloc_name_array",0x692);
      return;
    }
    lVar4 = lVar4 + 1;
  } while (lVar4 != 0xb);
  builtin_strncpy((char *)*puVar3,"m_led_off.bin",0xe);
  puVar3 = aw22xxx_cfg_name;
  builtin_strncpy((char *)aw22xxx_cfg_name[1],"fan_led_on.bin",0xf);
  builtin_strncpy((char *)puVar3[2],"fan_led_off.bin",0x10);
  puVar3 = aw22xxx_cfg_name;
  builtin_strncpy((char *)aw22xxx_cfg_name[3],"touch_led_off.bin",0x12);
  builtin_strncpy((char *)puVar3[4],"lamps_init.bin",0xf);
  puVar3 = aw22xxx_cfg_name;
  builtin_strncpy((char *)aw22xxx_cfg_name[5],"nubia_all_rgb_red.bin",0x16);
  builtin_strncpy((char *)puVar3[6],"nubia_all_rgb_green.bin",0x18);
  puVar3 = aw22xxx_cfg_name;
  builtin_strncpy((char *)aw22xxx_cfg_name[7],"nubia_all_rgb_blue.bin",0x17);
  builtin_strncpy((char *)puVar3[8],"nubia_all_rgb_red.bin",0x16);
  puVar3 = aw22xxx_cfg_name;
  builtin_strncpy((char *)aw22xxx_cfg_name[9],"nubia_all_rgb_green.bin",0x18);
  builtin_strncpy((char *)puVar3[10],"nubia_all_rgb_blue.bin",0x17);
  return;
}



/* 001033d8 aw22xxx_fw_init */

void aw22xxx_fw_init(long param_1)

{
  bool bVar1;
  
  hrtimer_init(param_1 + 0x270,1,1);
  *(code **)(param_1 + 0x298) = aw22xxx_fw_timer_func;
  *(undefined8 *)(param_1 + 0x210) = 0xfffffffe00000;
  *(long *)(param_1 + 0x218) = param_1 + 0x218;
  *(long *)(param_1 + 0x220) = param_1 + 0x218;
  *(code **)(param_1 + 0x228) = aw22xxx_fw_work_routine;
  *(undefined8 *)(param_1 + 0x230) = 0xfffffffe00000;
  *(long *)(param_1 + 0x238) = param_1 + 0x238;
  *(long *)(param_1 + 0x240) = param_1 + 0x238;
  bVar1 = g_ver_var == 0xb;
  *(code **)(param_1 + 0x248) = aw22xxx_cfg_work_routine;
  if (bVar1) {
    *(undefined8 *)(param_1 + 0x250) = 0xfffffffe00000;
    *(long *)(param_1 + 600) = param_1 + 600;
    *(long *)(param_1 + 0x260) = param_1 + 600;
    *(code **)(param_1 + 0x268) = aw22xxx_recover_work_routine;
  }
  _printk(&DAT_00106a2c,"aw22xxx_fw_init");
  return;
}



/* 001034ac aw22xxx_create_proc_entry */

void aw22xxx_create_proc_entry(void)

{
  long lVar1;
  
  lVar1 = proc_create("driver/colorleds_id",0x124,0,proc_ops_awid);
  if (lVar1 == 0) {
    _printk(&DAT_0010728a);
    return;
  }
  _printk(&DAT_00107b96,"aw22xxx_create_proc_entry",0x9c3);
  return;
}



/* 00103510 aw22xxx_brightness_work */

void aw22xxx_brightness_work(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_00106edd,"aw22xxx_brightness_work");
  return;
}



/* 00103760 aw22xxx_task_work */

void aw22xxx_task_work(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_00106edd,"aw22xxx_task_work");
  return;
}



/* 001039fc aw22xxx_reg_show */

long aw22xxx_reg_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  size_t sVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  char local_60 [4];
  byte local_5c [4];
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_5c[0] = 0;
  local_60[0] = '\0';
  lVar4 = *(long *)(param_1 + 0x98) + -0x10;
  aw22xxx_i2c_read(lVar4,0xff,local_60);
  uVar5 = 0;
  lVar3 = 0;
  do {
    if ((local_60[0] != '\0') || (((&aw22xxx_reg_access)[uVar5] & 1) != 0)) {
      aw22xxx_i2c_read(lVar4,uVar5 & 0xffffffff,local_5c);
      iVar1 = snprintf((char *)(param_3 + lVar3),0x1000U - lVar3,"reg:0x%02x=0x%02x \n",
                       uVar5 & 0xffffffff,(ulong)local_5c[0]);
      if (0x1000U - lVar3 <= (ulong)(long)iVar1) {
        lVar3 = -0xe;
        break;
      }
      sVar2 = strlen((char *)(param_3 + lVar3));
      lVar3 = sVar2 + lVar3;
    }
    uVar5 = uVar5 + 1;
  } while (uVar5 != 0x100);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103b10 aw22xxx_reg_store */

undefined8 aw22xxx_reg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if ((iVar1 == 2) && ((uint)local_30 < 0x100)) {
    aw22xxx_i2c_write(lVar3 + -0x10,local_30 & 0xffffffff,local_30._4_4_);
    lVar3 = sp_el0;
    if (*(long *)(lVar3 + 0x710) == local_28) {
      return param_4;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  uVar2 = _printk(&DAT_00106b08,"aw22xxx_reg_store",0x78b);
  return uVar2;
}



/* 00103bd0 aw22xxx_hwen_show */

long aw22xxx_hwen_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  
  gpio_to_desc(*(undefined4 *)(*(long *)(param_1 + 0x98) + 0x2d0));
  uVar2 = gpiod_get_raw_value();
  iVar1 = snprintf(param_3,0x1000,"hwen=%d\n",uVar2 & 0xffffffff);
  return (long)iVar1;
}



/* 00103c90 aw22xxx_hwen_store */

undefined8 aw22xxx_hwen_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

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
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    if (local_3c < 2) {
      if (local_3c != 1) {
        uVar2 = _printk(&DAT_00106edd,"aw22xxx_hw_off");
        return uVar2;
      }
      aw22xxx_hw_reset(lVar3 + -0x10);
      lVar3 = sp_el0;
      if (*(long *)(lVar3 + 0x710) == local_38) {
        return param_4;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  }
  uVar2 = _printk(&DAT_00106b08,"aw22xxx_hwen_store",0x7b9);
  return uVar2;
}



/* 00103db8 aw22xxx_imax_show */

long aw22xxx_imax_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  
  lVar4 = *(long *)(param_1 + 0x98);
  iVar3 = snprintf(param_3,0x1000,"imax[%x] = %s\n",0,s_AW22XXX_IMAX_2mA_001004e8);
  lVar5 = (long)iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",1,s_AW22XXX_IMAX_3mA_00100508);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",2,s_AW22XXX_IMAX_4mA_00100528);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",3,s_AW22XXX_IMAX_6mA_00100548);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",4,s_AW22XXX_IMAX_9mA_00100568);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",5,s_AW22XXX_IMAX_10mA_00100588);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",6,s_AW22XXX_IMAX_15mA_001005a8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",7,s_AW22XXX_IMAX_20mA_001005c8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",8,s_AW22XXX_IMAX_30mA_001005e8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",9,s_AW22XXX_IMAX_40mA_00100608);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",10,s_AW22XXX_IMAX_45mA_00100628)
  ;
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",0xb,s_AW22XXX_IMAX_60mA_00100648
                  );
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",0xc,s_AW22XXX_IMAX_75mA_00100668
                  );
  uVar1 = *(uint *)(lVar4 + 0x2e0);
  if (uVar1 < 0xe) {
    lVar5 = lVar5 + iVar3;
    iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"current id = 0x%02x, imax = %s\n",(ulong)uVar1,
                     s_AW22XXX_IMAX_2mA_001004e8 + (ulong)uVar1 * 0x20);
    return lVar5 + iVar3;
  }
                    /* WARNING: Does not return */
  pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x103fa0);
  (*pcVar2)();
}



/* 00103fa4 aw22xxx_imax_store */

undefined8 aw22xxx_imax_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  byte bVar3;
  long lVar4;
  uint local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if ((iVar1 != 1) || (0xc < local_3c)) {
    uVar2 = _printk(&DAT_00106b08,"aw22xxx_imax_store",0x8a7);
    return uVar2;
  }
  *(uint *)(lVar4 + 0x2e0) = local_3c;
  bVar3 = aw22xxx_imax_code[local_3c];
  lVar4 = lVar4 + -0x10;
  if (0xe < bVar3) {
    bVar3 = 0xf;
  }
  aw22xxx_i2c_write(lVar4,0xff,0);
  aw22xxx_i2c_write(lVar4,0xb,bVar3);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104098 aw22xxx_rgb_show */

long aw22xxx_rgb_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  lVar2 = *(long *)(param_1 + 0x98);
  iVar1 = snprintf(param_3,0x1000,"rgb[%d] = 0x%06x\n",0,(ulong)*(uint *)(lVar2 + 0x2fc));
  lVar3 = (long)iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",1,
                   (ulong)*(uint *)(lVar2 + 0x300));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",2,
                   (ulong)*(uint *)(lVar2 + 0x304));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",3,
                   (ulong)*(uint *)(lVar2 + 0x308));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",4,
                   (ulong)*(uint *)(lVar2 + 0x30c));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",5,
                   (ulong)*(uint *)(lVar2 + 0x310));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",6,
                   (ulong)*(uint *)(lVar2 + 0x314));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",7,
                   (ulong)*(uint *)(lVar2 + 0x318));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",8,
                   (ulong)*(uint *)(lVar2 + 0x31c));
  return lVar3 + iVar1;
}



/* 001041dc aw22xxx_rgb_store */

undefined8 aw22xxx_rgb_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if ((iVar1 == 2) && ((uint)local_30 < 9)) {
    *(undefined4 *)(lVar3 + (local_30 & 0xffffffff) * 4 + 0x2fc) = local_30._4_4_;
    uVar2 = _printk(&DAT_00106854,"aw22xxx_rgb_store",0x8d3);
    return uVar2;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010429c aw22xxx_task0_show */

long aw22xxx_task0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task0 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ec));
  return (long)iVar1;
}



/* 001042d8 aw22xxx_task0_store */

void aw22xxx_task0_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ec) = (char)local_2c;
    _printk(&DAT_00106ddf,"aw22xxx_task0_store",0x8f4,local_2c & 0xff);
    return;
  }
  _printk(&DAT_0010675b,"aw22xxx_task0_store",0x8ef);
  return;
}



/* 001043b0 aw22xxx_task1_show */

long aw22xxx_task1_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task1 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ed));
  return (long)iVar1;
}



/* 001043ec aw22xxx_task1_store */

void aw22xxx_task1_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ed) = (char)local_2c;
    _printk(&DAT_00106659,"aw22xxx_task1_store",0x911,local_2c & 0xff);
    return;
  }
  _printk(&DAT_0010675b,"aw22xxx_task1_store",0x90c);
  return;
}



/* 001044b0 aw22xxx_task_irq_show */

long aw22xxx_task_irq_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task_irq = %u\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2e8));
  return (long)iVar1;
}



/* 001044ec aw22xxx_task_irq_store */

void aw22xxx_task_irq_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%u",&local_2c);
  if (iVar1 == 1) {
    *(undefined4 *)(lVar2 + 0x2e8) = local_2c;
    _printk(&DAT_00107118,"aw22xxx_task_irq_store",0x92c);
    return;
  }
  _printk(&DAT_0010675b,"aw22xxx_task_irq_store",0x927);
  return;
}



/* 001045ac aw22xxx_para_show */

long aw22xxx_para_show(undefined8 param_1,undefined8 param_2,long param_3)

{
  code *pcVar1;
  int iVar2;
  long lVar3;
  ulong uVar4;
  
  if (write_idx == 0) {
    lVar3 = 0;
  }
  else {
    uVar4 = 0;
    lVar3 = 0;
    do {
      if (((uint)uVar4 & 0xffff) * -0x3d70a3d7 < 0xa3d70a4) {
        iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
        if (0xc34 < uVar4 >> 3) {
LAB_001046c4:
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x1046c8);
          (*pcVar1)();
        }
        lVar3 = lVar3 + iVar2;
      }
      else if (0xc34 < uVar4 >> 3) goto LAB_001046c4;
      iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"%d  ",
                       (ulong)(byte)(&user_para_data)[uVar4]);
      uVar4 = uVar4 + 1;
      lVar3 = lVar3 + iVar2;
    } while (uVar4 < (uint)(write_idx * 0x19));
    iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
    lVar3 = lVar3 + iVar2;
  }
  return lVar3;
}



/* 001046cc aw22xxx_para_store */

void aw22xxx_para_store(void)

{
  _printk(&DAT_00106ce8,"aw22xxx_para_store");
  return;
}



/* 00104b24 aw22xxx_multi_breath_pattern_show */

long aw22xxx_multi_breath_pattern_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000," pattern_status = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f8));
  return (long)iVar1;
}



/* 00104b60 aw22xxx_cfg_loaded */

void aw22xxx_cfg_loaded(void)

{
  _printk(&DAT_001083ee,"aw22xxx_cfg_loaded");
  return;
}



/* 00104d40 aw22xxx_cfg_recover_update_wait */

void aw22xxx_cfg_recover_update_wait(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_001083ee,"aw22xxx_cfg_recover_update_wait");
  return;
}



/* 001050cc aw22xxx_set_brightness */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_set_brightness(long param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 8) = param_2;
  queue_work_on(0x20,_system_wq,param_1 + 0x1c0);
  return;
}



/* 00105104 get_aw22xxx_id */

undefined8 get_aw22xxx_id(void)

{
  undefined8 uVar1;
  long *in_x3;
  
  if (*in_x3 != 0) {
    return 0;
  }
  uVar1 = _printk(&DAT_001083ee,"get_aw22xxx_id");
  return uVar1;
}



/* 001051c8 aw22xxx_cfg_show */

size_t aw22xxx_cfg_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  size_t sVar2;
  
  uVar1 = *(uint *)(*(long *)(param_1 + 0x98) + 0x2f0);
  if (uVar1 < 0xb) {
    uVar1 = snprintf(param_3,0x1000,"current cfg = %s\n",
                     *(undefined8 *)(aw22xxx_cfg_name + (ulong)uVar1 * 8));
    if (uVar1 < 0x1000) {
      sVar2 = strlen(param_3);
    }
    else {
      sVar2 = 0xfffffffffffffff2;
    }
    return sVar2;
  }
  sVar2 = _printk(&DAT_00107ff4);
  return sVar2;
}



/* 00105244 aw22xxx_cfg_store */

void aw22xxx_cfg_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%u",&local_2c);
  if (iVar1 == 1) {
    *(byte *)(lVar2 + 0x2f4) = (byte)local_2c & 0xf;
    _printk(&DAT_001080b1,"aw22xxx_cfg_store");
    return;
  }
  _printk(&DAT_0010819d,"aw22xxx_cfg_store");
  return;
}



/* 00105300 aw22xxx_effect_show */

long aw22xxx_effect_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"effect = 0x%02x\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f0));
  return (long)iVar1;
}



/* 0010533c aw22xxx_effect_store */

void aw22xxx_effect_store(undefined8 param_1,undefined8 param_2,char *param_3)

{
  long lVar1;
  int iVar2;
  undefined4 local_4c;
  undefined8 local_48;
  
  lVar1 = sp_el0;
  local_48 = *(undefined8 *)(lVar1 + 0x710);
  local_4c = 0;
  iVar2 = sscanf(param_3,"%x",&local_4c);
  if (iVar2 == 1) {
    _printk(&DAT_00108419,"aw22xxx_effect_store",local_4c);
    return;
  }
  _printk(&DAT_0010819d,"aw22xxx_effect_store");
  return;
}



/* 001055c8 aw22xxx_get_fwname */

void aw22xxx_get_fwname(ulong param_1)

{
  _printk(&DAT_00108255,"aw22xxx_get_fwname",param_1 >> 0x18 & 0xff);
  return;
}



/* 00105744 aw22xxx_cfg_update_wait_from_dyn_name */

void aw22xxx_cfg_update_wait_from_dyn_name(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_001083ee,"aw22xxx_cfg_update_wait_from_dyn_name");
  return;
}



/* 00105970 aw22xxx_fw_show */

long aw22xxx_fw_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"firmware name = %s\n",&aw22xxx_fw_name);
  return (long)iVar1;
}



/* 001059ac aw22xxx_fw_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_fw_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if ((iVar1 == 1) && (*(char *)(lVar2 + 0x2de) = (char)local_2c, local_2c == 1)) {
    queue_work_on(0x20,_system_wq,lVar2 + 0x200);
  }
  g_init_flg = 0;
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105a58 aw22xxx_multi_breath_pattern_store */

undefined8
aw22xxx_multi_breath_pattern_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  long lVar4;
  long lVar5;
  int local_3c;
  long local_38;
  
  lVar5 = sp_el0;
  local_38 = *(long *)(lVar5 + 0x710);
  lVar5 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    lVar4 = lVar5 + -0x10;
    *(int *)(lVar5 + 0x2f8) = local_3c;
    if (local_3c == 0) {
      read_idx = 0;
      write_idx = 0;
      if (kthread_status == 1) {
        kthread_status = 0;
      }
      aw22xxx_i2c_write(lVar4,0xff,0);
      aw22xxx_i2c_write(lVar4,5,0);
      aw22xxx_i2c_write(lVar4,4,1);
      aw22xxx_i2c_write(lVar4,2,0);
    }
    else if (((local_3c == 1) && (read_idx = 0, (kthread_status & 1) == 0)) && (write_idx != 0)) {
      uVar2 = kthread_create_on_node(aw22xxx_play,lVar4,0xffffffff,&DAT_00107142,"aw22xxx_play");
      if (0xfffffffffffff000 < uVar2) {
        kthread_status = 0;
        cfg_update_kthread = uVar2;
        uVar3 = _printk("kthread_create error\n");
        return uVar3;
      }
      wake_up_process();
      kthread_status = 1;
      cfg_update_kthread = uVar2;
      uVar3 = _printk("kthread_create done\n");
      return uVar3;
    }
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105bec aw22xxx_fw_timer_func */

void aw22xxx_fw_timer_func(void)

{
  _printk(&DAT_00106edd,"aw22xxx_fw_timer_func");
  return;
}



/* 00105c40 aw22xxx_fw_work_routine */

void aw22xxx_fw_work_routine(void)

{
  _printk(&DAT_00106edd,"aw22xxx_fw_work_routine");
  return;
}



/* 00105cd4 aw22xxx_cfg_work_routine */

void aw22xxx_cfg_work_routine(void)

{
  _printk(&DAT_00106edd,"aw22xxx_cfg_work_routine");
  return;
}



/* 00105dbc aw22xxx_recover_work_routine */

void aw22xxx_recover_work_routine(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_00107164,"aw22xxx_recover_work_routine");
  return;
}



/* 00105fc8 aw22xxx_led_init */

void aw22xxx_led_init(long param_1)

{
  long lVar1;
  code *pcVar2;
  byte bVar3;
  byte abStack_30 [4];
  byte abStack_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_00106edd,"aw22xxx_led_init");
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  _printk(&UNK_00107a8c,"aw22xxx_chip_enable",0x1aa,1);
  abStack_30[0] = 0;
  aw22xxx_i2c_read(param_1,2,abStack_30);
  abStack_30[0] = abStack_30[0] | 1;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  if (0xc < *(uint *)(param_1 + 0x2f0)) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x106154);
    (*pcVar2)();
  }
  bVar3 = aw22xxx_imax_code[*(uint *)(param_1 + 0x2f0)];
  if (0xe < bVar3) {
    bVar3 = 0xf;
  }
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,0xb,bVar3);
  _printk(&UNK_00107a8c,"aw22xxx_chip_enable",0x1aa,0);
  abStack_2c[0] = 0;
  aw22xxx_i2c_read(param_1,2,abStack_2c);
  abStack_2c[0] = abStack_2c[0] & 0xfe;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_00107b65,"aw22xxx_led_init");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001061c8 FUN_001061c8 */

void FUN_001061c8(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x1061c8);
  (*pcVar1)();
}



/* 0010e948 init_module */

void init_module(void)

{
  _printk(&DAT_0010853d);
  return;
}



/* 0010e9c0 cleanup_module */

void cleanup_module(void)

{
  i2c_del_driver(aw22xxx_i2c_driver);
  return;
}



