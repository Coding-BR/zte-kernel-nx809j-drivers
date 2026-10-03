
void aw22xxx_fw_loaded(ulong *param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  bool bVar3;
  int iVar4;
  uint *puVar5;
  undefined *puVar6;
  undefined1 *puVar7;
  ulong extraout_x1;
  ulong extraout_x1_00;
  undefined1 uVar8;
  long lVar9;
  ulong uVar10;
  ulong uVar11;
  ulong uVar12;
  ulong uVar13;
  ushort *puVar14;
  short sVar15;
  short sVar16;
  ushort *puVar17;
  ushort uVar18;
  uint uVar19;
  uint uVar20;
  ulong uVar21;
  ulong unaff_x27;
  undefined1 local_7c [4];
  undefined1 local_78 [4];
  undefined1 local_74 [4];
  undefined1 local_70 [4];
  byte local_6c [4];
  long local_68;
  
  lVar9 = sp_el0;
  local_68 = *(long *)(lVar9 + 0x710);
  local_6c[0] = 0;
  _printk(&DAT_00107424,"aw22xxx_fw_loaded");
  _printk(&DAT_001070b0);
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_00106086);
    release_firmware(0);
  }
  else {
    uVar21 = *param_1;
    _printk(&DAT_0010738b,uVar21);
    puVar17 = (ushort *)param_1[1];
    if (uVar21 < 4) {
      uVar18 = 0;
    }
    else {
      uVar13 = (uVar21 >> 1) - 1;
      if (uVar13 < 2) {
        uVar18 = 0;
        uVar12 = 1;
      }
      else {
        sVar15 = 0;
        sVar16 = 0;
        uVar12 = uVar13 | 1;
        uVar10 = uVar13 & 0xfffffffffffffffe;
        puVar14 = puVar17;
        do {
          uVar18 = puVar14[2];
          uVar10 = uVar10 - 2;
          sVar15 = sVar15 + (puVar14[1] >> 8 | puVar14[1] << 8);
          sVar16 = sVar16 + (uVar18 >> 8 | uVar18 << 8);
          puVar14 = puVar14 + 2;
        } while (uVar10 != 0);
        uVar18 = sVar16 + sVar15;
        if (uVar13 == (uVar13 & 0xfffffffffffffffe)) goto LAB_00104f08;
      }
      lVar9 = (uVar21 >> 1) - uVar12;
      puVar14 = puVar17 + uVar12;
      do {
        lVar9 = lVar9 + -1;
        uVar18 = uVar18 + (*puVar14 >> 8 | *puVar14 << 8);
        puVar14 = puVar14 + 1;
      } while (lVar9 != 0);
    }
LAB_00104f08:
    _printk(&DAT_00107943);
    if (uVar18 == (ushort)(*puVar17 >> 8 | *puVar17 << 8)) {
      _printk(&DAT_00106e43);
      uVar13 = uVar21 + 0x10;
      _printk(&DAT_0010643d);
      puVar5 = (uint *)__kmalloc_noprof(uVar13,0xdc0);
      if (puVar5 == (uint *)0x0) {
        release_firmware(param_1);
        puVar6 = &DAT_00107a4e;
      }
      else {
        if ((((uVar13 < 4) || ((uVar21 & 0xfffffffffffffffc) == 0xfffffffffffffff4)) ||
            (uVar20 = (*(uint *)(param_1[1] + 0x1b) & 0xff00ff00) >> 8 |
                      (*(uint *)(param_1[1] + 0x1b) & 0xff00ff) << 8,
            puVar5[1] = uVar20 >> 0x10 | uVar20 << 0x10, uVar13 < 8)) ||
           (((uVar21 & 0xfffffffffffffffc) == 0xfffffffffffffff8 ||
            (puVar5[2] = (uint)(*(ushort *)(param_1[1] + 0x22) >> 8) |
                         (*(ushort *)(param_1[1] + 0x22) & 0xff00ff) << 8,
            0xffffffffffffffef < uVar21)))) goto LAB_0010587c;
        uVar10 = param_1[1];
        puVar5[3] = (uint)*(byte *)(uVar10 + 0x24);
        if (uVar13 < 4) goto LAB_0010587c;
        uVar18 = *(ushort *)(uVar10 + 0x26);
        *puVar5 = (uint)(uVar18 >> 8) | (uVar18 & 0xff00ff) << 8;
        _printk(&DAT_00106f10);
        if (uVar21 < *puVar5) {
          __fortify_panic(0x11,uVar21);
          uVar10 = extraout_x1;
LAB_0010588c:
          __fortify_panic(0x11,uVar10,unaff_x27);
          uVar10 = extraout_x1_00;
LAB_00105898:
          __fortify_panic(0x10,uVar10,unaff_x27);
          goto LAB_001058a4;
        }
        memcpy(puVar5 + 4,(void *)(param_1[1] + 0x28),(ulong)*puVar5);
        _printk(&DAT_00106540);
        release_firmware(param_1);
        _printk(&DAT_00106ada);
        aw22xxx_i2c_write(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,2,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,2);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,4,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x22,*puVar5 + 0xffff >> 8);
        aw22xxx_i2c_write(param_2,0x21,(byte)*puVar5 - 1);
        aw22xxx_i2c_write(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        aw22xxx_i2c_read(param_2,0x24,local_6c);
        if (local_6c[0] == 5) {
          _printk(&DAT_00107469);
          local_70[0] = 0;
          local_74[0] = 0;
          aw22xxx_i2c_read(param_2,0x25,local_70);
          aw22xxx_i2c_read(param_2,0x26,local_74);
          if ((uVar13 < 8) || ((uVar21 & 0xfffffffffffffffc) == 0xfffffffffffffff8))
          goto LAB_0010587c;
          if ((uint)CONCAT11(local_74[0],local_70[0]) == puVar5[2]) {
            _printk(&DAT_00106201);
            if (*(char *)((long)param_2 + 0x2ee) == '\0') {
              _printk(&DAT_0010677d);
              kfree(puVar5);
              aw22xxx_i2c_write(param_2,0x24,0);
              aw22xxx_led_init(param_2);
              *(undefined1 *)((long)param_2 + 0x2ef) = 2;
              goto LAB_00105844;
            }
          }
          else {
            _printk(&DAT_00105fc4);
          }
        }
        else {
          _printk(&DAT_001069e7);
        }
        aw22xxx_i2c_write(param_2,0x24,0);
        _printk(&DAT_0010688a);
        aw22xxx_i2c_write(param_2,0xff,0);
        aw22xxx_i2c_write(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,2,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,2);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,4,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x80,0xec);
        aw22xxx_i2c_write(param_2,0x35,0x29);
        if (uVar13 < 0xc) {
LAB_0010587c:
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(1,0x105880);
          (*pcVar2)();
        }
        aw22xxx_i2c_write(param_2,0x38,puVar5[3]);
        aw22xxx_i2c_write(param_2,0x22,0);
        aw22xxx_i2c_write(param_2,0x21,0);
        aw22xxx_i2c_write(param_2,0x20,3);
        aw22xxx_i2c_write(param_2,0x30,3);
        aw22xxx_i2c_write(param_2,0x23,0);
        _printk(&DAT_001073a9);
        if (g_ver_var < 0xc) {
          msleep(0x28);
        }
        else {
          usleep_range_state(4000,0x1194,2);
        }
        aw22xxx_i2c_write(param_2,0x30,0);
        aw22xxx_i2c_write(param_2,0x22,0x40);
        aw22xxx_i2c_write(param_2,0x21,0);
        aw22xxx_i2c_write(param_2,0x30,2);
        aw22xxx_i2c_write(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        aw22xxx_i2c_write(param_2,0x30,0);
        aw22xxx_i2c_write(param_2,0x22,0x42);
        aw22xxx_i2c_write(param_2,0x21,0);
        aw22xxx_i2c_write(param_2,0x30,2);
        aw22xxx_i2c_write(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        aw22xxx_i2c_write(param_2,0x30,0);
        aw22xxx_i2c_write(param_2,0x22,0x44);
        aw22xxx_i2c_write(param_2,0x21,0);
        aw22xxx_i2c_write(param_2,0x30,2);
        aw22xxx_i2c_write(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        aw22xxx_i2c_write(param_2,0x30,0);
        aw22xxx_i2c_write(param_2,0x20,0);
        aw22xxx_i2c_write(param_2,0x20,3);
        if (*puVar5 != 0) {
          _printk(&DAT_001065dd);
          uVar20 = 0;
          uVar1 = sp_el0;
          do {
            aw22xxx_i2c_write(param_2,0x22,uVar20 >> 8);
            aw22xxx_i2c_write(param_2,0x21,uVar20);
            aw22xxx_i2c_write(param_2,0x11,1);
            aw22xxx_i2c_write(param_2,0x30,4);
            uVar19 = *puVar5 - uVar20;
            if (0x7f < uVar19) {
              uVar19 = 0x80;
            }
            unaff_x27 = (ulong)uVar19;
            puVar7 = (undefined1 *)__kmalloc_noprof((ulong)(uVar19 + 1),0xcc0);
            if (puVar7 != (undefined1 *)0x0) {
              _printk(&DAT_001068b4);
              uVar11 = (ulong)uVar20;
              uVar10 = (ulong)(uVar19 + 1) - 1;
              uVar12 = 0;
              if (uVar11 + 0x10 <= uVar13) {
                uVar12 = uVar21 - uVar11;
              }
              *puVar7 = 0x23;
              if (uVar10 < unaff_x27) goto LAB_0010588c;
              if (uVar12 < unaff_x27) goto LAB_00105898;
              memcpy(puVar7 + 1,(void *)((long)(puVar5 + 4) + uVar11),unaff_x27);
              iVar4 = i2c_transfer_buffer_flags(*param_2,puVar7,uVar19 + 1,0);
              if (iVar4 < 0) {
                _printk(&DAT_0010748d);
              }
              kfree(puVar7);
            }
            aw22xxx_i2c_write(param_2,0x11,0);
            aw22xxx_i2c_write(param_2,0x30,0);
            uVar20 = uVar19 + uVar20;
          } while (uVar20 < *puVar5);
        }
        aw22xxx_i2c_write(param_2,0x20,0);
        aw22xxx_i2c_write(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,2,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,2);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,4,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x22,*puVar5 + 0xffff >> 8);
        aw22xxx_i2c_write(param_2,0x21,(byte)*puVar5 - 1);
        aw22xxx_i2c_write(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        _printk(&DAT_00106cdf);
        aw22xxx_i2c_read(param_2,0x24,local_6c);
        if (local_6c[0] == 5) {
          local_78[0] = 0;
          local_7c[0] = 0;
          aw22xxx_i2c_read(param_2,0x25,local_78);
          aw22xxx_i2c_read(param_2,0x26,local_7c);
          if ((uVar21 & 0xfffffffffffffffc) == 0xfffffffffffffff8) goto LAB_0010587c;
          bVar3 = (uint)CONCAT11(local_7c[0],local_78[0]) != puVar5[2];
          puVar6 = &DAT_00106d09;
          if (bVar3) {
            puVar6 = &DAT_00106be3;
          }
          uVar8 = 2;
          if (bVar3) {
            uVar8 = 3;
          }
          _printk(puVar6);
          *(undefined1 *)((long)param_2 + 0x2ef) = uVar8;
        }
        else {
          _printk(&DAT_00105fe9);
          *(undefined1 *)((long)param_2 + 0x2ef) = 3;
        }
        aw22xxx_i2c_write(param_2,0x24,0);
        kfree(puVar5);
        *(undefined1 *)((long)param_2 + 0x2ee) = 0;
        aw22xxx_led_init(param_2);
        _printk(&DAT_00106159);
        puVar6 = &DAT_0010617e;
      }
    }
    else {
      _printk(&DAT_0010759e);
      release_firmware(param_1);
      puVar6 = &DAT_0010641f;
    }
    _printk(puVar6);
  }
LAB_00105844:
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) == local_68) {
    return;
  }
LAB_001058a4:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

