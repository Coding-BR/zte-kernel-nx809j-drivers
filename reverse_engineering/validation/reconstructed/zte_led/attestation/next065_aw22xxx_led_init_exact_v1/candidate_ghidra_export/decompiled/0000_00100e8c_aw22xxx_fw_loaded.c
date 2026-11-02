
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

