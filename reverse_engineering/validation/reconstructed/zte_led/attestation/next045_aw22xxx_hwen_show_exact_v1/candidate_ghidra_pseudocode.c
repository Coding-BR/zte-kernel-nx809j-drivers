/* 001012ec aw22xxx_fw_loaded */

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
  char local_90 [4];
  byte local_8c [4];
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
  _printk(&DAT_001070b5,"aw22xxx_fw_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_00106e1f,"aw22xxx_fw_loaded",&aw22xxx_fw_name);
    release_firmware(0);
  }
  else {
    _printk(&DAT_00106af6,"aw22xxx_fw_loaded",&aw22xxx_fw_name,*param_1);
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
          if (uVar15 == uVar18) goto LAB_001013d8;
        }
      }
      do {
        iVar14 = iVar14 + 1;
        pbVar19 = (byte *)((long)puVar2 + uVar11);
        uVar11 = (ulong)iVar14;
        uVar12 = uVar12 + *pbVar19;
      } while (uVar11 < uVar1);
    }
LAB_001013d8:
    if (uVar12 == (ushort)(*puVar2 >> 8 | *puVar2 << 8)) {
      _printk(&DAT_0010713c,"aw22xxx_fw_loaded");
      uVar15 = *param_1;
      uVar1 = uVar15 + 0x10;
      puVar7 = (uint *)__kmalloc_noprof(uVar1,0xdc0);
      if (puVar7 == (uint *)0x0) {
        release_firmware(param_1);
        puVar9 = &DAT_00107d1e;
      }
      else {
        _printk(&DAT_00107769,"aw22xxx_fw_loaded",*(undefined1 *)(param_1[1] + 2));
        local_88 = *(undefined8 *)(param_1[1] + 3);
        uStack_80 = *(undefined8 *)(param_1[1] + 0xb);
        _printk(&DAT_00106c1f,"aw22xxx_fw_loaded",&local_88);
        local_88 = *(undefined8 *)(param_1[1] + 0x13);
        _printk(&DAT_00107b61,"aw22xxx_fw_loaded",&local_88);
        if ((uVar1 < 4) || ((uVar1 & 0xfffffffffffffffc) == 4)) goto LAB_00101f18;
        uVar17 = (*(uint *)(param_1[1] + 0x1b) & 0xff00ff00) >> 8 |
                 (*(uint *)(param_1[1] + 0x1b) & 0xff00ff) << 8;
        puVar7[1] = uVar17 >> 0x10 | uVar17 << 0x10;
        _printk(&DAT_00107e37,"aw22xxx_fw_loaded");
        if ((uVar1 < 8) || ((uVar1 & 0xfffffffffffffffc) == 8)) goto LAB_00101f18;
        puVar7[2] = (uint)(*(ushort *)(param_1[1] + 0x22) >> 8) |
                    (*(ushort *)(param_1[1] + 0x22) & 0xff00ff) << 8;
        _printk(&DAT_00107a80,"aw22xxx_fw_loaded");
        if ((uVar1 < 0xc) || ((uVar1 & 0xfffffffffffffffc) == 0xc)) goto LAB_00101f18;
        puVar7[3] = (uint)*(byte *)(param_1[1] + 0x24);
        _printk(&DAT_0010816a,"aw22xxx_fw_loaded");
        *puVar7 = (uint)(*(ushort *)(param_1[1] + 0x26) >> 8) |
                  (*(ushort *)(param_1[1] + 0x26) & 0xff00ff) << 8;
        _printk(&DAT_00107b77,"aw22xxx_fw_loaded");
        uVar11 = 0;
        if (0xf < uVar1) {
          uVar11 = uVar15;
        }
        if (uVar11 < *puVar7) {
          __fortify_panic(0x11);
          goto LAB_00101f24;
        }
        memcpy(puVar7 + 4,(void *)(param_1[1] + 0x28),(ulong)*puVar7);
        release_firmware(param_1);
        FUN_00102354(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        _printk(&DAT_00107c64,"aw22xxx_chip_enable",0x1aa,1);
        local_8c[0] = 0;
        FUN_00102494(param_2,2,local_8c);
        local_8c[0] = local_8c[0] | 1;
        FUN_001023ac(param_2,2);
        usleep_range_state(2000,3000,2);
        local_8c[0] = 0;
        FUN_001024c8(param_2,4,local_8c);
        local_8c[0] = local_8c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x22,*puVar7 + 0xffff >> 8);
        FUN_00102354(param_2,0x21,(byte)*puVar7 - 1);
        aw22xxx_i2c_write(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        FUN_00102548(param_2,0x24,local_94);
        if (local_94[0] == '\x05') {
          FUN_00102554(param_2,0x25,local_94);
          cVar5 = local_94[0];
          FUN_00102478(param_2,0x26,local_94);
          if ((uVar1 < 8) || ((uVar1 & 0xfffffffffffffffc) == 8)) goto LAB_00101f18;
          if ((uint)CONCAT11(local_94[0],cVar5) == puVar7[2]) {
            _printk(&DAT_00107c22,"aw22xxx_fw_loaded",(uint)CONCAT11(local_94[0],cVar5));
            if (*(char *)((long)param_2 + 0x2ee) == '\0') {
              kfree(puVar7);
              FUN_00102754(param_2,0x24,0);
              FUN_001041c4(param_2);
              *(undefined1 *)((long)param_2 + 0x2ef) = 2;
              goto LAB_00101eac;
            }
            if ((uVar1 & 0xfffffffffffffffc) == 4) goto LAB_00101f18;
            uVar17 = puVar7[1];
            puVar9 = &DAT_001071fa;
          }
          else {
            _printk(&DAT_00107a98,"aw22xxx_fw_loaded");
            if ((uVar1 & 0xfffffffffffffffc) == 4) goto LAB_00101f18;
            uVar17 = puVar7[1];
            puVar9 = &DAT_0010758a;
          }
          _printk(puVar9,"aw22xxx_fw_loaded",uVar17);
        }
        else {
          _printk(&DAT_00107784,"aw22xxx_fw_loaded");
          _printk(&DAT_00107b8e,"aw22xxx_fw_loaded");
        }
        FUN_0010274c(param_2,0x24,0);
        local_90[0] = '\0';
        FUN_00102774(param_2,0xff,0);
        FUN_00102744(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        _printk(&DAT_00107c64,"aw22xxx_chip_enable",0x1aa,1);
        local_8c[0] = 0;
        FUN_00102874(param_2,2,local_8c);
        local_8c[0] = local_8c[0] | 1;
        FUN_0010274c(param_2,2);
        usleep_range_state(2000,3000,2);
        local_8c[0] = 0;
        FUN_00102878(param_2,4,local_8c);
        local_8c[0] = local_8c[0] | 1;
        FUN_00102754(param_2,4);
        FUN_00102744(param_2,0x80,0xec);
        FUN_00102934(param_2,0x35,0x29);
        if ((uVar1 < 0xc) || ((uVar1 & 0xfffffffffffffffc) == 0xc)) {
LAB_00101f18:
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(1,0x101f1c);
          (*pcVar6)();
        }
        FUN_0010274c(param_2,0x38,puVar7[3]);
        FUN_0010276c(param_2,0x22,0);
        FUN_0010276c(param_2,0x21,0);
        FUN_0010274c(param_2,0x20,3);
        FUN_0010274c(param_2,0x30,3);
        FUN_001027ac(param_2,0x23,0);
        if (g_ver_var < 0xc) {
          msleep(0x28);
        }
        else {
          usleep_range_state(4000,0x1194,2);
        }
        FUN_00102744(param_2,0x30,0);
        FUN_00102774(param_2,0x22,0x40);
        FUN_00102744(param_2,0x21,0);
        FUN_00102754(param_2,0x30,2);
        thunk_FUN_0010289c(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        FUN_0010274c(param_2,0x30,0);
        FUN_0010274c(param_2,0x22,0x42);
        FUN_0010276c(param_2,0x21,0);
        FUN_0010276c(param_2,0x30,2);
        FUN_0010274c(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        FUN_001027ac(param_2,0x30,0);
        FUN_001027ac(param_2,0x22,0x44);
        FUN_0010274c(param_2,0x21,0);
        FUN_0010274c(param_2,0x30,2);
        FUN_0010276c(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        FUN_0010274c(param_2,0x30,0);
        FUN_0010274c(param_2,0x20,0);
        FUN_0010272c(param_2,0x20,3);
        if (*puVar7 != 0) {
          uVar17 = 0;
          uVar4 = sp_el0;
          do {
            aw22xxx_i2c_write(param_2,0x22,uVar17 >> 8);
            FUN_00102354(param_2,0x21,uVar17);
            aw22xxx_i2c_write(param_2,0x11,1);
            FUN_00102534(param_2,0x30,4);
            uVar21 = *puVar7 - uVar17;
            if (0x7f < uVar21) {
              uVar21 = 0x80;
            }
            uVar15 = (ulong)uVar21;
            puVar8 = (undefined1 *)__kmalloc_noprof((ulong)(uVar21 + 1),0xcc0);
            if (puVar8 != (undefined1 *)0x0) {
              uVar11 = (ulong)(uVar21 + 1) - 1;
              *puVar8 = 0x23;
              if (uVar11 < uVar15) {
                __fortify_panic(0x11,uVar11,uVar15);
                uVar11 = extraout_x1;
              }
              else {
                uVar20 = (ulong)uVar17 + 0x10;
                uVar18 = 0;
                if (uVar20 <= uVar1) {
                  uVar18 = uVar1 - uVar20;
                }
                if (uVar15 <= uVar18) {
                  memcpy(puVar8 + 1,(void *)((long)(puVar7 + 4) + (ulong)uVar17),uVar15);
                  iVar14 = i2c_transfer_buffer_flags(*param_2,puVar8,uVar21 + 1,0);
                  if (iVar14 < 0) {
                    _printk(&DAT_0010715b,"aw22xxx_i2c_writes");
                  }
                  kfree(puVar8);
                  goto LAB_00101cd0;
                }
              }
              __fortify_panic(0x10,uVar11,uVar15);
              goto LAB_00101f18;
            }
            _printk(&DAT_0010731d,"aw22xxx_i2c_writes");
LAB_00101cd0:
            FUN_00102354(param_2,0x11,0);
            aw22xxx_i2c_write(param_2,0x30,0);
            uVar17 = uVar21 + uVar17;
          } while (uVar17 < *puVar7);
        }
        aw22xxx_i2c_write(param_2,0x20,0);
        FUN_00102354(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        _printk(&DAT_00107c64,"aw22xxx_chip_enable",0x1aa,1);
        local_8c[0] = 0;
        FUN_00102894(param_2,2,local_8c);
        local_8c[0] = local_8c[0] | 1;
        FUN_001023ac(param_2,2);
        usleep_range_state(2000,3000,2);
        local_8c[0] = 0;
        FUN_001028c8(param_2,4,local_8c);
        local_8c[0] = local_8c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x22,*puVar7 + 0xffff >> 8);
        FUN_00102354(param_2,0x21,(byte)*puVar7 - 1);
        aw22xxx_i2c_write(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        FUN_00102848(param_2,0x24,local_90);
        if (local_90[0] == '\x05') {
          FUN_00102854(param_2,0x25,local_90);
          cVar5 = local_90[0];
          FUN_00102478(param_2,0x26,local_90);
          if ((uVar1 < 8) || ((uVar1 & 0xfffffffffffffffc) == 8)) goto LAB_00101f18;
          if ((uint)CONCAT11(local_90[0],cVar5) == puVar7[2]) {
            puVar9 = &DAT_00107c22;
            goto LAB_00101e2c;
          }
          _printk(&DAT_00106c36,"aw22xxx_container_update",puVar7[2]);
          _printk(&DAT_00107ba4,"aw22xxx_container_update");
          uVar10 = 3;
        }
        else {
          puVar9 = &DAT_00107784;
LAB_00101e2c:
          _printk(puVar9,"aw22xxx_container_update");
          FUN_0010242c(param_2,0x24,0);
          uVar10 = 2;
        }
        *(undefined1 *)((long)param_2 + 0x2ef) = uVar10;
        kfree(puVar7);
        *(undefined1 *)((long)param_2 + 0x2ee) = 0;
        func_0x00104284(param_2);
        puVar9 = &DAT_00107d3d;
      }
      _printk(puVar9,"aw22xxx_fw_loaded");
    }
    else {
      _printk(&DAT_00106d1d,"aw22xxx_fw_loaded");
      release_firmware(param_1);
    }
  }
LAB_00101eac:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_68) {
    return;
  }
LAB_00101f24:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101f28 aw22xxx_init_cfg_update_array */

void aw22xxx_init_cfg_update_array(undefined8 param_1)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_00106fe6,"aw22xxx_init_cfg_update_array",0x1ca);
  _printk(&DAT_00107c64,"aw22xxx_chip_enable",0x1aa,1);
  local_2c[0] = 0;
  aw22xxx_i2c_read(param_1,2,local_2c);
  local_2c[0] = local_2c[0] | 1;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,2,1);
  aw22xxx_i2c_write(param_1,0xc,0);
  aw22xxx_i2c_write(param_1,0xb,5);
  aw22xxx_i2c_write(param_1,5,1);
  aw22xxx_i2c_write(param_1,4,1);
  aw22xxx_i2c_write(param_1,9,1);
  aw22xxx_i2c_write(param_1,4,3);
  aw22xxx_i2c_write(param_1,5,0x41);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010207c aw22xxx_set_breath_data */

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



/* 0010218c aw22xxx_play */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_play(long param_1)

{
  code *pcVar1;
  
  aw22xxx_init_cfg_update_array();
  aw22xxx_set_breath_data(param_1,&user_para_data);
  while( true ) {
    msleep(duration / 0x1e);
    if (read_idx == write_idx) {
      kthread_status._0_1_ = 0;
      read_idx = 0;
      write_idx = 0;
      queue_work_on(0x20,_system_wq,param_1 + 0x230);
      _printk(&DAT_00107676,"aw22xxx_play");
    }
    if (((byte)kthread_status & 1) == 0) {
      aw22xxx_i2c_write(param_1,0xff,0);
      aw22xxx_i2c_write(param_1,5,0);
      aw22xxx_i2c_write(param_1,4,1);
      aw22xxx_i2c_write(param_1,2,0);
      _printk(&DAT_001072cb,"aw22xxx_play");
    }
    if (25000 < (uint)(read_idx * 0x19)) break;
    aw22xxx_set_breath_data(param_1,(long)&user_para_data + (ulong)(uint)(read_idx * 0x19));
    read_idx = read_idx + 1;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x1022d0);
  (*pcVar1)();
}



/* 001022d4 aw22xxx_led_imax_cfg */

void aw22xxx_led_imax_cfg(long param_1)

{
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,0xb,7);
  *(undefined4 *)(param_1 + 0x2f0) = 7;
  _printk(&DAT_00106ecc,"aw22xxx_led_imax_cfg",
          *(undefined8 *)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8),7);
  return;
}



/* 00102344 aw22xxx_i2c_write */

void aw22xxx_i2c_write(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  undefined1 uStack_3c;
  undefined1 uStack_3b;
  long lStack_38;
  
  lVar1 = sp_el0;
  lStack_38 = *(long *)(lVar1 + 0x710);
  uStack_3c = param_2;
  uStack_3b = param_3;
  iVar2 = i2c_transfer_buffer_flags(*param_1,&uStack_3c,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    uVar3 = gpiod_get_raw_value();
    _printk(&DAT_00106a5b,"aw22xxx_i2c_write",0,iVar2,uVar3);
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(*param_1,&uStack_3c,2,0);
    if (iVar2 < 0) {
      gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      uVar3 = gpiod_get_raw_value();
      _printk(&DAT_00106a5b,"aw22xxx_i2c_write",1,iVar2,uVar3);
      uVar4 = gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_direction_output_raw(uVar4,1);
      _printk(&DAT_00106983,"aw22xxx_i2c_write");
      msleep(1);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102354 FUN_00102354 */

void FUN_00102354(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  undefined1 uStack0000000000000004;
  undefined1 uStack0000000000000005;
  long lStack0000000000000008;
  
  lVar1 = sp_el0;
  lStack0000000000000008 = *(long *)(lVar1 + 0x710);
  uStack0000000000000004 = param_2;
  uStack0000000000000005 = param_3;
  iVar2 = i2c_transfer_buffer_flags(*param_1,&stack0x00000004,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    uVar3 = gpiod_get_raw_value();
    _printk(&DAT_00106a5b,"aw22xxx_i2c_write",0,iVar2,uVar3);
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(*param_1,&stack0x00000004,2,0);
    if (iVar2 < 0) {
      gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      uVar3 = gpiod_get_raw_value();
      _printk(&DAT_00106a5b,"aw22xxx_i2c_write",1,iVar2,uVar3);
      uVar4 = gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_direction_output_raw(uVar4,1);
      _printk(&DAT_00106983,"aw22xxx_i2c_write");
      msleep(1);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack0000000000000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001023ac FUN_001023ac */

void FUN_001023ac(void)

{
  return;
}



/* 0010242c FUN_0010242c */

void FUN_0010242c(void)

{
  long lVar1;
  undefined8 uVar2;
  long unaff_x19;
  long in_stack_00000008;
  
  _printk(&DAT_00106a5b);
  uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
  gpiod_direction_output_raw(uVar2,1);
  _printk(&DAT_00106983);
  msleep(1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102474 aw22xxx_i2c_read */

void aw22xxx_i2c_read(undefined8 *param_1,undefined1 param_2,undefined1 *param_3)

{
  long lVar1;
  uint uVar2;
  ulong uVar3;
  undefined *puVar4;
  undefined1 auStack_2c [4];
  long lStack_28;
  
  lVar1 = sp_el0;
  lStack_28 = *(long *)(lVar1 + 0x710);
  auStack_2c[0] = param_2;
  uVar2 = i2c_transfer_buffer_flags(*param_1,auStack_2c,1,0);
  if ((int)uVar2 < 0) {
    uVar3 = (ulong)uVar2;
    puVar4 = &DAT_00107940;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < (int)uVar3) goto LAB_001024d0;
    puVar4 = &DAT_00106eef;
    *param_3 = (char)uVar3;
    uVar3 = uVar3 & 0xffffffff;
  }
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
  uVar3 = i2c_transfer_buffer_flags(*param_1,auStack_2c,1,0);
  if ((int)uVar3 < 0) {
    puVar4 = &DAT_00107940;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < (int)uVar3) goto LAB_001024d0;
    *param_3 = (char)uVar3;
    puVar4 = &DAT_00106eef;
  }
  uVar3 = uVar3 & 0xffffffff;
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
LAB_001024d0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 00102478 FUN_00102478 */

void FUN_00102478(undefined8 *param_1,undefined1 param_2,undefined1 *param_3)

{
  long lVar1;
  uint uVar2;
  ulong uVar3;
  undefined *puVar4;
  undefined1 auStack_2c [4];
  long lStack_28;
  
  lVar1 = sp_el0;
  lStack_28 = *(long *)(lVar1 + 0x710);
  auStack_2c[0] = param_2;
  uVar2 = i2c_transfer_buffer_flags(*param_1,auStack_2c,1,0);
  if ((int)uVar2 < 0) {
    uVar3 = (ulong)uVar2;
    puVar4 = &DAT_00107940;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < (int)uVar3) goto LAB_001024d0;
    puVar4 = &DAT_00106eef;
    *param_3 = (char)uVar3;
    uVar3 = uVar3 & 0xffffffff;
  }
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
  uVar3 = i2c_transfer_buffer_flags(*param_1,auStack_2c,1,0);
  if ((int)uVar3 < 0) {
    puVar4 = &DAT_00107940;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < (int)uVar3) goto LAB_001024d0;
    *param_3 = (char)uVar3;
    puVar4 = &DAT_00106eef;
  }
  uVar3 = uVar3 & 0xffffffff;
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
LAB_001024d0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 00102494 FUN_00102494 */

void FUN_00102494(long param_1,undefined8 *param_2,undefined1 param_3)

{
  long lVar1;
  uint uVar2;
  ulong uVar3;
  undefined *puVar4;
  undefined1 *unaff_x19;
  undefined8 *unaff_x20;
  undefined1 uStack0000000000000004;
  long lStack0000000000000008;
  
  lStack0000000000000008 = *(long *)(param_1 + 0x710);
  uStack0000000000000004 = param_3;
  uVar2 = i2c_transfer_buffer_flags(*param_2,&stack0x00000004,1,0);
  if ((int)uVar2 < 0) {
    uVar3 = (ulong)uVar2;
    puVar4 = &DAT_00107940;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*unaff_x20);
    if (-1 < (int)uVar3) goto LAB_001024d0;
    puVar4 = &DAT_00106eef;
    *unaff_x19 = (char)uVar3;
    uVar3 = uVar3 & 0xffffffff;
  }
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
  uVar3 = i2c_transfer_buffer_flags(*unaff_x20,&stack0x00000004,1,0);
  if ((int)uVar3 < 0) {
    puVar4 = &DAT_00107940;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*unaff_x20);
    if (-1 < (int)uVar3) goto LAB_001024d0;
    *unaff_x19 = (char)uVar3;
    puVar4 = &DAT_00106eef;
  }
  uVar3 = uVar3 & 0xffffffff;
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
LAB_001024d0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack0000000000000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 001024c8 FUN_001024c8 */

void FUN_001024c8(void)

{
  long lVar1;
  ulong uVar2;
  undefined *puVar3;
  undefined1 *unaff_x19;
  undefined8 *unaff_x20;
  long in_stack_00000008;
  
  uVar2 = i2c_transfer_buffer_flags();
  if ((int)uVar2 < 0) {
    *unaff_x19 = (char)uVar2;
    _printk(&DAT_00106eef,"aw22xxx_i2c_read",uVar2 & 0xffffffff);
    msleep(1);
    uVar2 = i2c_transfer_buffer_flags(*unaff_x20,&stack0x00000004,1,0);
    if ((int)uVar2 < 0) {
      puVar3 = &DAT_00107940;
    }
    else {
      uVar2 = i2c_transfer_buffer_flags(*unaff_x20);
      if (-1 < (int)uVar2) goto LAB_001024d0;
      *unaff_x19 = (char)uVar2;
      puVar3 = &DAT_00106eef;
    }
    uVar2 = uVar2 & 0xffffffff;
    _printk(puVar3,"aw22xxx_i2c_read",uVar2);
    msleep(1);
  }
LAB_001024d0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00102534 FUN_00102534 */

void FUN_00102534(void)

{
  long lVar1;
  ulong uVar2;
  undefined *puVar3;
  undefined1 *unaff_x19;
  undefined8 *unaff_x20;
  long in_stack_00000008;
  
  msleep();
  uVar2 = i2c_transfer_buffer_flags(*unaff_x20,&stack0x00000004,1,0);
  if ((int)uVar2 < 0) {
    puVar3 = &DAT_00107940;
  }
  else {
    uVar2 = i2c_transfer_buffer_flags(*unaff_x20);
    if (-1 < (int)uVar2) goto LAB_001024d0;
    *unaff_x19 = (char)uVar2;
    puVar3 = &DAT_00106eef;
  }
  uVar2 = uVar2 & 0xffffffff;
  _printk(puVar3,"aw22xxx_i2c_read",uVar2);
  msleep(1);
LAB_001024d0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00102548 FUN_00102548 */

void FUN_00102548(void)

{
  long lVar1;
  ulong uVar2;
  undefined *puVar3;
  undefined1 *unaff_x19;
  undefined8 *unaff_x20;
  long in_stack_00000008;
  
  uVar2 = i2c_transfer_buffer_flags();
  if ((int)uVar2 < 0) {
    puVar3 = &DAT_00107940;
  }
  else {
    uVar2 = i2c_transfer_buffer_flags(*unaff_x20);
    if (-1 < (int)uVar2) goto LAB_001024d0;
    *unaff_x19 = (char)uVar2;
    puVar3 = &DAT_00106eef;
  }
  uVar2 = uVar2 & 0xffffffff;
  _printk(puVar3,"aw22xxx_i2c_read",uVar2);
  msleep(1);
LAB_001024d0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00102554 FUN_00102554 */

void FUN_00102554(void)

{
  long lVar1;
  ulong uVar2;
  undefined1 *unaff_x19;
  long in_stack_00000008;
  
  uVar2 = i2c_transfer_buffer_flags();
  if ((int)uVar2 < 0) {
    *unaff_x19 = (char)uVar2;
    uVar2 = uVar2 & 0xffffffff;
    _printk(&DAT_00106eef,"aw22xxx_i2c_read",uVar2);
    msleep(1);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 001025b0 aw22xxx_i2c_probe */

ulong aw22xxx_i2c_probe(long param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  ulong uVar4;
  long *plVar5;
  undefined *puVar6;
  undefined8 uVar7;
  long lVar8;
  char *pcVar9;
  code *pcVar10;
  long lVar11;
  
  lVar11 = *(long *)(param_1 + 0x308);
  lVar8 = param_1 + 0x20;
  _printk(&DAT_00107697,"aw22xxx_i2c_probe",0x9d9);
  pcVar10 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar10 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x102614);
    (*pcVar10)();
  }
  uVar4 = (*pcVar10)();
  if ((uVar4 & 1) == 0) {
    _dev_err(lVar8,"check_functionality failed\n");
    uVar1 = 0xfffffffb;
    goto LAB_00102798;
  }
  plVar5 = (long *)devm_kmalloc(lVar8,0x358,0xdc0);
  if (plVar5 == (long *)0x0) {
    uVar1 = 0xfffffff4;
    goto LAB_00102798;
  }
  *plVar5 = param_1;
  plVar5[1] = lVar8;
  *(long **)(param_1 + 0xb8) = plVar5;
  __mutex_init(plVar5 + 0x56,"&aw22xxx->cfg_lock",&DAT_0010ef90);
  *(undefined1 *)((long)plVar5 + 0x304) = 1;
  uVar4 = devm_pinctrl_get(lVar8);
  puVar6 = &DAT_001077b1;
  plVar5[0x66] = uVar4;
  if ((uVar4 == 0) || (0xfffffffffffff000 < uVar4)) {
LAB_0010270c:
    _printk(puVar6,"aw22xxx_pinctrl_init");
    _printk(&aw22xxx_exact_rodata_str_base,"aw22xxx_i2c_probe");
    uVar1 = 0xffffffea;
LAB_00102788:
    plVar5[0x66] = 0;
  }
  else {
    uVar4 = pinctrl_lookup_state(uVar4,"aw22xxx_led_default");
    puVar6 = &DAT_00107486;
    plVar5[0x67] = uVar4;
    if ((uVar4 == 0) || (0xfffffffffffff000 < uVar4)) goto LAB_0010270c;
    uVar4 = pinctrl_lookup_state(plVar5[0x66],"aw22xxx_led_sleep");
    puVar6 = &DAT_0010707b;
    plVar5[0x68] = uVar4;
    if ((uVar4 == 0) || (0xfffffffffffff000 < uVar4)) goto LAB_0010270c;
    if ((plVar5[0x66] == 0) || (plVar5[0x67] == 0)) {
      _printk(&UNK_00107962,"aw22xxx_pinctrl_set_state");
      uVar4 = FUN_0010276c();
      return uVar4;
    }
    uVar1 = pinctrl_select_state();
    if (uVar1 != 0) {
      _printk(&DAT_00106f30,"aw22xxx_i2c_probe");
      goto LAB_00102780;
    }
    if (lVar11 != 0) {
      iVar2 = of_property_read_variable_u32_array(lVar11,"aw_drv_ver",&g_ver_var,1,0);
      if (iVar2 < 0) {
        g_ver_var = 0xb;
      }
      _dev_info(lVar8,"%s: aw drv ver=%d\n","aw22xxx_parse_dt",g_ver_var);
      iVar2 = of_get_named_gpio(lVar11,"reset-gpio",0);
      *(int *)(plVar5 + 0x5c) = iVar2;
      if (iVar2 < 0) {
        pcVar9 = "%s: no reset gpio provided, will not HW reset device\n";
FUN_0010289c:
        _dev_err(lVar8,pcVar9,"aw22xxx_parse_dt");
        _dev_err(lVar8,"%s: failed to parse device tree node\n","aw22xxx_i2c_probe");
        uVar1 = 0xffffffea;
        goto LAB_0010278c;
      }
      uVar7 = gpio_to_desc();
      iVar2 = gpiod_direction_output_raw(uVar7,1);
      if (iVar2 == 0) {
        _dev_info(lVar8,"%s: not enable gpio, aw22xxx->reset_gpio=%d\n","aw22xxx_parse_dt",
                  (int)plVar5[0x5c]);
      }
      _dev_info(lVar8,"%s: reset gpio provided ok, aw22xxx->reset_gpio=%d\n","aw22xxx_parse_dt",
                (int)plVar5[0x5c]);
      iVar2 = of_get_named_gpio(lVar11,"irq-gpio",0);
      *(int *)((long)plVar5 + 0x2e4) = iVar2;
      if (iVar2 < 0) {
        pcVar9 = "%s: no irq gpio provided, will not suppport intterrupt\n";
        goto FUN_0010289c;
      }
      _dev_info(lVar8,"%s: irq gpio provided ok, aw22xxx->irq_gpio=%d\n","aw22xxx_parse_dt",iVar2);
      iVar2 = of_get_named_gpio(lVar11,"nubia_ver-gpio",0);
      *(int *)(plVar5 + 0x5d) = iVar2;
      if (iVar2 < 0) {
        _dev_info(lVar8,"%s: not suppport nubia_ver_gpio, regard as normal version\n",
                  "aw22xxx_parse_dt");
      }
      else {
        _dev_info(lVar8,"%s: nubia_ver_gpio provided ok, aw22xxx->nubia_ver_gpio=%d\n",
                  "aw22xxx_parse_dt",iVar2);
      }
      iVar2 = of_property_read_variable_u32_array(lVar11,"cfg_custom_en",&DAT_0010ef94,1,0);
      if (iVar2 < 0) {
        DAT_0010ef94 = 0;
      }
      if ((-1 < (int)plVar5[0x5c]) &&
         (uVar1 = devm_gpio_request_one(lVar8,(int)plVar5[0x5c],0,"aw22xxx_rst"), uVar1 != 0)) {
        pcVar9 = "%s: rst request failed\n";
LAB_00102a4c:
        _dev_err(lVar8,pcVar9,"aw22xxx_i2c_probe");
        goto LAB_0010278c;
      }
      if ((-1 < *(int *)((long)plVar5 + 0x2e4)) &&
         (uVar1 = devm_gpio_request_one(lVar8,*(int *)((long)plVar5 + 0x2e4),1,"aw22xxx_int"),
         uVar1 != 0)) {
        pcVar9 = "%s: int request failed\n";
        goto LAB_00102a4c;
      }
      aw22xxx_hw_reset(plVar5);
      _printk(&DAT_001080a5,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
      if (multicolor_led - 1U < 2) {
        uVar7 = gpio_to_desc((int)plVar5[0x5c]);
        gpiod_set_raw_value_cansleep(uVar7,0);
        devm_gpio_request_one(lVar8,*(undefined4 *)((long)plVar5 + 0x2e4),0,"aw22xxx_int");
        uVar1 = 0;
        multicolor_led = 0;
        DAT_0010f028 = 0x1194;
        if (DAT_0010ef94 != 0) {
          DAT_0010f028 = 0xb;
        }
        goto LAB_00102798;
      }
      uVar1 = aw22xxx_read_chipid(plVar5);
      if (-1 < (int)uVar1) {
        if ((*(int *)((long)plVar5 + 0x2e4) < 0) || ((*(byte *)((long)plVar5 + 0x2ec) & 1) != 0)) {
          *(byte *)((long)plVar5 + 0x2ec) = *(byte *)((long)plVar5 + 0x2ec) | 1;
        }
        else {
          aw22xxx_interrupt_setup(plVar5);
          if (g_ver_var < 0xc) {
            pcVar10 = aw22xxx_irq;
          }
          else {
            _printk(&DAT_00106888);
            pcVar10 = aw22xxx_irq_v15;
          }
          gpio_to_desc(*(undefined4 *)((long)plVar5 + 0x2e4));
          uVar3 = gpiod_to_irq();
          uVar1 = devm_request_threaded_irq(lVar8,uVar3,0,pcVar10,0x2002,"aw22xxx",plVar5);
          if (uVar1 != 0) {
            gpio_to_desc(*(undefined4 *)((long)plVar5 + 0x2e4));
            uVar3 = gpiod_to_irq();
            _dev_err(lVar8,"%s: failed to request IRQ %d: %d\n","aw22xxx_i2c_probe",uVar3,uVar1);
            goto LAB_00102780;
          }
        }
        *(long **)(param_1 + 0xb8) = plVar5;
        aw22xxx_parse_led_cdev(plVar5,lVar11);
        aw22xxx_alloc_name_array();
        DAT_0010efd7 = 0;
        DAT_0010efcf = 0;
        DAT_0010efc7 = 0;
        DAT_0010efbf = 0;
        DAT_0010efb7 = 0;
        DAT_0010efaf = 0;
        DAT_0010efa7 = 0;
        aw22xxx_fw_name._0_7_ = 0x78787832327761;
        aw22xxx_fw_name._7_1_ = 0x5f;
        uRam000000000010efa0 = 0x6e69622e7766;
        _printk(&DAT_00106dcd,"aw22xxx_load_nubia_fw_name",0x5de,(int)plVar5[0x5d],0);
        aw22xxx_fw_init(plVar5);
        _printk(&DAT_001080d4,"aw22xxx_i2c_probe",0xa56);
        uVar7 = gpio_to_desc((int)plVar5[0x5c]);
        iVar2 = gpiod_direction_output_raw(uVar7,0);
        if (iVar2 != 0) {
          _printk(&DAT_00106c73,"aw22xxx_i2c_probe",0xa5b);
        }
        lVar8 = zlog_register_client(&zlog_aw22xxx_dev);
        plVar5[0x6a] = lVar8;
        if (lVar8 == 0) {
          _printk(&DAT_001076b3,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
        }
        aw22xxx_create_proc_entry();
        uVar1 = 0;
        goto LAB_00102798;
      }
      _dev_err(lVar8,"%s: aw22xxx_read_chipid failed ret=%d\n","aw22xxx_i2c_probe",uVar1);
LAB_00102780:
      devm_pinctrl_put(plVar5[0x66]);
      goto LAB_00102788;
    }
    uVar1 = 0;
    plVar5[0x5c] = -1;
  }
LAB_0010278c:
  devm_kfree(lVar8,plVar5);
LAB_00102798:
  return (ulong)uVar1;
}



/* 0010272c FUN_0010272c */

undefined8 FUN_0010272c(void)

{
  long unaff_x19;
  
  *(undefined8 *)(unaff_x19 + 0x330) = 0;
  devm_kfree();
  return 0xffffffea;
}



/* 00102744 FUN_00102744 */

undefined8 FUN_00102744(void)

{
  return 0xfffffffb;
}



/* 0010274c FUN_0010274c */

void FUN_0010274c(void)

{
  _printk(&UNK_00107962,"aw22xxx_pinctrl_set_state");
  FUN_0010276c();
  return;
}



/* 00102754 FUN_00102754 */

void FUN_00102754(undefined8 param_1)

{
  _printk(param_1,"aw22xxx_pinctrl_set_state");
  FUN_0010276c();
  return;
}



/* 0010276c FUN_0010276c */

undefined4 FUN_0010276c(void)

{
  long unaff_x19;
  undefined4 unaff_w23;
  
  _printk(&DAT_00106f30,"aw22xxx_i2c_probe");
  devm_pinctrl_put(*(undefined8 *)(unaff_x19 + 0x330));
  *(undefined8 *)(unaff_x19 + 0x330) = 0;
  devm_kfree();
  return unaff_w23;
}



/* 00102774 FUN_00102774 */

undefined4 FUN_00102774(undefined8 param_1)

{
  long unaff_x19;
  undefined4 unaff_w23;
  
  _printk(param_1,"aw22xxx_i2c_probe");
  devm_pinctrl_put(*(undefined8 *)(unaff_x19 + 0x330));
  *(undefined8 *)(unaff_x19 + 0x330) = 0;
  devm_kfree();
  return unaff_w23;
}



/* 001027ac FUN_001027ac */

void FUN_001027ac(void)

{
  return;
}



/* 00102848 FUN_00102848 */

int FUN_00102848(void)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long unaff_x19;
  long unaff_x21;
  long unaff_x24;
  
  _dev_info();
  _dev_info();
  iVar1 = of_get_named_gpio();
  *(int *)(unaff_x19 + 0x2e4) = iVar1;
  if (iVar1 < 0) {
    _dev_err();
    _dev_err();
    iVar1 = -0x16;
  }
  else {
    _dev_info();
    iVar1 = of_get_named_gpio();
    *(int *)(unaff_x19 + 0x2e8) = iVar1;
    if (iVar1 < 0) {
      _dev_info();
    }
    else {
      _dev_info();
    }
    iVar1 = of_property_read_variable_u32_array();
    if (iVar1 < 0) {
      DAT_0010ef94 = 0;
    }
    if (((*(int *)(unaff_x19 + 0x2e0) < 0) || (iVar1 = devm_gpio_request_one(), iVar1 == 0)) &&
       ((*(int *)(unaff_x19 + 0x2e4) < 0 || (iVar1 = devm_gpio_request_one(), iVar1 == 0)))) {
      aw22xxx_hw_reset();
      _printk(&DAT_001080a5,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
      if (multicolor_led - 1U < 2) {
        uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
        gpiod_set_raw_value_cansleep(uVar2,0);
        devm_gpio_request_one();
        if (DAT_0010ef94 == 0) {
          DAT_0010f028 = 0x1194;
          multicolor_led = 0;
          return 0;
        }
        DAT_0010f028 = 0xb;
        multicolor_led = 0;
        return 0;
      }
      iVar1 = aw22xxx_read_chipid();
      if (iVar1 < 0) {
        _dev_err();
      }
      else {
        if ((*(int *)(unaff_x19 + 0x2e4) < 0) || ((*(byte *)(unaff_x19 + 0x2ec) & 1) != 0)) {
          *(byte *)(unaff_x19 + 0x2ec) = *(byte *)(unaff_x19 + 0x2ec) | 1;
LAB_00102b14:
          *(long *)(unaff_x21 + 0xb8) = unaff_x19;
          aw22xxx_parse_led_cdev();
          aw22xxx_alloc_name_array();
          DAT_0010efd7 = 0;
          DAT_0010efcf = 0;
          DAT_0010efc7 = 0;
          DAT_0010efbf = 0;
          DAT_0010efb7 = 0;
          DAT_0010efaf = 0;
          DAT_0010efa7 = 0;
          aw22xxx_fw_name._0_7_ = 0x78787832327761;
          aw22xxx_fw_name._7_1_ = 0x5f;
          uRam000000000010efa0 = 0x6e69622e7766;
          _printk(&DAT_00106dcd,"aw22xxx_load_nubia_fw_name",0x5de,
                  *(undefined4 *)(unaff_x19 + 0x2e8),0);
          aw22xxx_fw_init();
          _printk(&DAT_001080d4,"aw22xxx_i2c_probe",0xa56);
          uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
          iVar1 = gpiod_direction_output_raw(uVar2,0);
          if (iVar1 != 0) {
            _printk(&DAT_00106c73,"aw22xxx_i2c_probe",0xa5b);
          }
          lVar3 = zlog_register_client(&zlog_aw22xxx_dev);
          *(long *)(unaff_x19 + 0x350) = lVar3;
          if (lVar3 == 0) {
            _printk(&DAT_001076b3,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
          }
          aw22xxx_create_proc_entry();
          return 0;
        }
        aw22xxx_interrupt_setup();
        if (0xb < *(uint *)(unaff_x24 + 0x380)) {
          _printk(&DAT_00106888);
        }
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        iVar1 = devm_request_threaded_irq();
        if (iVar1 == 0) goto LAB_00102b14;
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        _dev_err();
      }
      devm_pinctrl_put(*(undefined8 *)(unaff_x19 + 0x330));
      *(undefined8 *)(unaff_x19 + 0x330) = 0;
    }
    else {
      _dev_err();
    }
  }
  devm_kfree();
  return iVar1;
}



/* 00102854 FUN_00102854 */

int FUN_00102854(void)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long unaff_x19;
  long unaff_x21;
  long unaff_x24;
  
  _dev_info();
  _dev_info();
  iVar1 = of_get_named_gpio();
  *(int *)(unaff_x19 + 0x2e4) = iVar1;
  if (iVar1 < 0) {
    _dev_err();
    _dev_err();
    iVar1 = -0x16;
  }
  else {
    _dev_info();
    iVar1 = of_get_named_gpio();
    *(int *)(unaff_x19 + 0x2e8) = iVar1;
    if (iVar1 < 0) {
      _dev_info();
    }
    else {
      _dev_info();
    }
    iVar1 = of_property_read_variable_u32_array();
    if (iVar1 < 0) {
      DAT_0010ef94 = 0;
    }
    if (((*(int *)(unaff_x19 + 0x2e0) < 0) || (iVar1 = devm_gpio_request_one(), iVar1 == 0)) &&
       ((*(int *)(unaff_x19 + 0x2e4) < 0 || (iVar1 = devm_gpio_request_one(), iVar1 == 0)))) {
      aw22xxx_hw_reset();
      _printk(&DAT_001080a5,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
      if (multicolor_led - 1U < 2) {
        uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
        gpiod_set_raw_value_cansleep(uVar2,0);
        devm_gpio_request_one();
        if (DAT_0010ef94 == 0) {
          DAT_0010f028 = 0x1194;
          multicolor_led = 0;
          return 0;
        }
        DAT_0010f028 = 0xb;
        multicolor_led = 0;
        return 0;
      }
      iVar1 = aw22xxx_read_chipid();
      if (iVar1 < 0) {
        _dev_err();
      }
      else {
        if ((*(int *)(unaff_x19 + 0x2e4) < 0) || ((*(byte *)(unaff_x19 + 0x2ec) & 1) != 0)) {
          *(byte *)(unaff_x19 + 0x2ec) = *(byte *)(unaff_x19 + 0x2ec) | 1;
LAB_00102b14:
          *(long *)(unaff_x21 + 0xb8) = unaff_x19;
          aw22xxx_parse_led_cdev();
          aw22xxx_alloc_name_array();
          DAT_0010efd7 = 0;
          DAT_0010efcf = 0;
          DAT_0010efc7 = 0;
          DAT_0010efbf = 0;
          DAT_0010efb7 = 0;
          DAT_0010efaf = 0;
          DAT_0010efa7 = 0;
          aw22xxx_fw_name._0_7_ = 0x78787832327761;
          aw22xxx_fw_name._7_1_ = 0x5f;
          uRam000000000010efa0 = 0x6e69622e7766;
          _printk(&DAT_00106dcd,"aw22xxx_load_nubia_fw_name",0x5de,
                  *(undefined4 *)(unaff_x19 + 0x2e8),0);
          aw22xxx_fw_init();
          _printk(&DAT_001080d4,"aw22xxx_i2c_probe",0xa56);
          uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
          iVar1 = gpiod_direction_output_raw(uVar2,0);
          if (iVar1 != 0) {
            _printk(&DAT_00106c73,"aw22xxx_i2c_probe",0xa5b);
          }
          lVar3 = zlog_register_client(&zlog_aw22xxx_dev);
          *(long *)(unaff_x19 + 0x350) = lVar3;
          if (lVar3 == 0) {
            _printk(&DAT_001076b3,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
          }
          aw22xxx_create_proc_entry();
          return 0;
        }
        aw22xxx_interrupt_setup();
        if (0xb < *(uint *)(unaff_x24 + 0x380)) {
          _printk(&DAT_00106888);
        }
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        iVar1 = devm_request_threaded_irq();
        if (iVar1 == 0) goto LAB_00102b14;
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        _dev_err();
      }
      devm_pinctrl_put(*(undefined8 *)(unaff_x19 + 0x330));
      *(undefined8 *)(unaff_x19 + 0x330) = 0;
    }
    else {
      _dev_err();
    }
  }
  devm_kfree();
  return iVar1;
}



/* 00102874 FUN_00102874 */

int FUN_00102874(void)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long unaff_x19;
  long unaff_x21;
  long unaff_x24;
  
  _dev_info();
  iVar1 = of_get_named_gpio();
  *(int *)(unaff_x19 + 0x2e4) = iVar1;
  if (iVar1 < 0) {
    _dev_err();
    _dev_err();
    iVar1 = -0x16;
  }
  else {
    _dev_info();
    iVar1 = of_get_named_gpio();
    *(int *)(unaff_x19 + 0x2e8) = iVar1;
    if (iVar1 < 0) {
      _dev_info();
    }
    else {
      _dev_info();
    }
    iVar1 = of_property_read_variable_u32_array();
    if (iVar1 < 0) {
      DAT_0010ef94 = 0;
    }
    if (((*(int *)(unaff_x19 + 0x2e0) < 0) || (iVar1 = devm_gpio_request_one(), iVar1 == 0)) &&
       ((*(int *)(unaff_x19 + 0x2e4) < 0 || (iVar1 = devm_gpio_request_one(), iVar1 == 0)))) {
      aw22xxx_hw_reset();
      _printk(&DAT_001080a5,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
      if (multicolor_led - 1U < 2) {
        uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
        gpiod_set_raw_value_cansleep(uVar2,0);
        devm_gpio_request_one();
        if (DAT_0010ef94 == 0) {
          DAT_0010f028 = 0x1194;
          multicolor_led = 0;
          return 0;
        }
        DAT_0010f028 = 0xb;
        multicolor_led = 0;
        return 0;
      }
      iVar1 = aw22xxx_read_chipid();
      if (iVar1 < 0) {
        _dev_err();
      }
      else {
        if ((*(int *)(unaff_x19 + 0x2e4) < 0) || ((*(byte *)(unaff_x19 + 0x2ec) & 1) != 0)) {
          *(byte *)(unaff_x19 + 0x2ec) = *(byte *)(unaff_x19 + 0x2ec) | 1;
LAB_00102b14:
          *(long *)(unaff_x21 + 0xb8) = unaff_x19;
          aw22xxx_parse_led_cdev();
          aw22xxx_alloc_name_array();
          DAT_0010efd7 = 0;
          DAT_0010efcf = 0;
          DAT_0010efc7 = 0;
          DAT_0010efbf = 0;
          DAT_0010efb7 = 0;
          DAT_0010efaf = 0;
          DAT_0010efa7 = 0;
          aw22xxx_fw_name._0_7_ = 0x78787832327761;
          aw22xxx_fw_name._7_1_ = 0x5f;
          uRam000000000010efa0 = 0x6e69622e7766;
          _printk(&DAT_00106dcd,"aw22xxx_load_nubia_fw_name",0x5de,
                  *(undefined4 *)(unaff_x19 + 0x2e8),0);
          aw22xxx_fw_init();
          _printk(&DAT_001080d4,"aw22xxx_i2c_probe",0xa56);
          uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
          iVar1 = gpiod_direction_output_raw(uVar2,0);
          if (iVar1 != 0) {
            _printk(&DAT_00106c73,"aw22xxx_i2c_probe",0xa5b);
          }
          lVar3 = zlog_register_client(&zlog_aw22xxx_dev);
          *(long *)(unaff_x19 + 0x350) = lVar3;
          if (lVar3 == 0) {
            _printk(&DAT_001076b3,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
          }
          aw22xxx_create_proc_entry();
          return 0;
        }
        aw22xxx_interrupt_setup();
        if (0xb < *(uint *)(unaff_x24 + 0x380)) {
          _printk(&DAT_00106888);
        }
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        iVar1 = devm_request_threaded_irq();
        if (iVar1 == 0) goto LAB_00102b14;
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        _dev_err();
      }
      devm_pinctrl_put(*(undefined8 *)(unaff_x19 + 0x330));
      *(undefined8 *)(unaff_x19 + 0x330) = 0;
    }
    else {
      _dev_err();
    }
  }
  devm_kfree();
  return iVar1;
}



/* 00102878 FUN_00102878 */

int FUN_00102878(void)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long unaff_x19;
  long unaff_x21;
  long unaff_x24;
  
  iVar1 = of_get_named_gpio();
  *(int *)(unaff_x19 + 0x2e4) = iVar1;
  if (iVar1 < 0) {
    _dev_err();
    _dev_err();
    iVar1 = -0x16;
  }
  else {
    _dev_info();
    iVar1 = of_get_named_gpio();
    *(int *)(unaff_x19 + 0x2e8) = iVar1;
    if (iVar1 < 0) {
      _dev_info();
    }
    else {
      _dev_info();
    }
    iVar1 = of_property_read_variable_u32_array();
    if (iVar1 < 0) {
      DAT_0010ef94 = 0;
    }
    if (((*(int *)(unaff_x19 + 0x2e0) < 0) || (iVar1 = devm_gpio_request_one(), iVar1 == 0)) &&
       ((*(int *)(unaff_x19 + 0x2e4) < 0 || (iVar1 = devm_gpio_request_one(), iVar1 == 0)))) {
      aw22xxx_hw_reset();
      _printk(&DAT_001080a5,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
      if (multicolor_led - 1U < 2) {
        uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
        gpiod_set_raw_value_cansleep(uVar2,0);
        devm_gpio_request_one();
        if (DAT_0010ef94 == 0) {
          DAT_0010f028 = 0x1194;
          multicolor_led = 0;
          return 0;
        }
        DAT_0010f028 = 0xb;
        multicolor_led = 0;
        return 0;
      }
      iVar1 = aw22xxx_read_chipid();
      if (iVar1 < 0) {
        _dev_err();
      }
      else {
        if ((*(int *)(unaff_x19 + 0x2e4) < 0) || ((*(byte *)(unaff_x19 + 0x2ec) & 1) != 0)) {
          *(byte *)(unaff_x19 + 0x2ec) = *(byte *)(unaff_x19 + 0x2ec) | 1;
LAB_00102b14:
          *(long *)(unaff_x21 + 0xb8) = unaff_x19;
          aw22xxx_parse_led_cdev();
          aw22xxx_alloc_name_array();
          DAT_0010efd7 = 0;
          DAT_0010efcf = 0;
          DAT_0010efc7 = 0;
          DAT_0010efbf = 0;
          DAT_0010efb7 = 0;
          DAT_0010efaf = 0;
          DAT_0010efa7 = 0;
          aw22xxx_fw_name._0_7_ = 0x78787832327761;
          aw22xxx_fw_name._7_1_ = 0x5f;
          uRam000000000010efa0 = 0x6e69622e7766;
          _printk(&DAT_00106dcd,"aw22xxx_load_nubia_fw_name",0x5de,
                  *(undefined4 *)(unaff_x19 + 0x2e8),0);
          aw22xxx_fw_init();
          _printk(&DAT_001080d4,"aw22xxx_i2c_probe",0xa56);
          uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
          iVar1 = gpiod_direction_output_raw(uVar2,0);
          if (iVar1 != 0) {
            _printk(&DAT_00106c73,"aw22xxx_i2c_probe",0xa5b);
          }
          lVar3 = zlog_register_client(&zlog_aw22xxx_dev);
          *(long *)(unaff_x19 + 0x350) = lVar3;
          if (lVar3 == 0) {
            _printk(&DAT_001076b3,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
          }
          aw22xxx_create_proc_entry();
          return 0;
        }
        aw22xxx_interrupt_setup();
        if (0xb < *(uint *)(unaff_x24 + 0x380)) {
          _printk(&DAT_00106888);
        }
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        iVar1 = devm_request_threaded_irq();
        if (iVar1 == 0) goto LAB_00102b14;
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        _dev_err();
      }
      devm_pinctrl_put(*(undefined8 *)(unaff_x19 + 0x330));
      *(undefined8 *)(unaff_x19 + 0x330) = 0;
    }
    else {
      _dev_err();
    }
  }
  devm_kfree();
  return iVar1;
}



/* 00102894 FUN_00102894 */

undefined8 FUN_00102894(void)

{
  _dev_err();
  _dev_err();
  devm_kfree();
  return 0xffffffea;
}



/* 0010289c FUN_0010289c */

undefined8 FUN_0010289c(void)

{
  _dev_err();
  _dev_err();
  devm_kfree();
  return 0xffffffea;
}



/* 001028c8 FUN_001028c8 */

undefined4 FUN_001028c8(void)

{
  undefined4 unaff_w23;
  
  devm_kfree();
  return unaff_w23;
}



/* 00102934 FUN_00102934 */

int FUN_00102934(void)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long unaff_x19;
  long unaff_x21;
  long unaff_x24;
  
  _dev_info();
  iVar1 = of_property_read_variable_u32_array();
  if (iVar1 < 0) {
    DAT_0010ef94 = 0;
  }
  if (((*(int *)(unaff_x19 + 0x2e0) < 0) || (iVar1 = devm_gpio_request_one(), iVar1 == 0)) &&
     ((*(int *)(unaff_x19 + 0x2e4) < 0 || (iVar1 = devm_gpio_request_one(), iVar1 == 0)))) {
    aw22xxx_hw_reset();
    _printk(&DAT_001080a5,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
    if (multicolor_led - 1U < 2) {
      uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
      gpiod_set_raw_value_cansleep(uVar2,0);
      devm_gpio_request_one();
      if (DAT_0010ef94 == 0) {
        DAT_0010f028 = 0x1194;
        multicolor_led = 0;
        return 0;
      }
      DAT_0010f028 = 0xb;
      multicolor_led = 0;
      return 0;
    }
    iVar1 = aw22xxx_read_chipid();
    if (iVar1 < 0) {
      _dev_err();
    }
    else {
      if ((*(int *)(unaff_x19 + 0x2e4) < 0) || ((*(byte *)(unaff_x19 + 0x2ec) & 1) != 0)) {
        *(byte *)(unaff_x19 + 0x2ec) = *(byte *)(unaff_x19 + 0x2ec) | 1;
LAB_00102b14:
        *(long *)(unaff_x21 + 0xb8) = unaff_x19;
        aw22xxx_parse_led_cdev();
        aw22xxx_alloc_name_array();
        DAT_0010efd7 = 0;
        DAT_0010efcf = 0;
        DAT_0010efc7 = 0;
        DAT_0010efbf = 0;
        DAT_0010efb7 = 0;
        DAT_0010efaf = 0;
        DAT_0010efa7 = 0;
        aw22xxx_fw_name._0_7_ = 0x78787832327761;
        aw22xxx_fw_name._7_1_ = 0x5f;
        uRam000000000010efa0 = 0x6e69622e7766;
        _printk(&DAT_00106dcd,"aw22xxx_load_nubia_fw_name",0x5de,*(undefined4 *)(unaff_x19 + 0x2e8),
                0);
        aw22xxx_fw_init();
        _printk(&DAT_001080d4,"aw22xxx_i2c_probe",0xa56);
        uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
        iVar1 = gpiod_direction_output_raw(uVar2,0);
        if (iVar1 != 0) {
          _printk(&DAT_00106c73,"aw22xxx_i2c_probe",0xa5b);
        }
        lVar3 = zlog_register_client(&zlog_aw22xxx_dev);
        *(long *)(unaff_x19 + 0x350) = lVar3;
        if (lVar3 == 0) {
          _printk(&DAT_001076b3,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
        }
        aw22xxx_create_proc_entry();
        return 0;
      }
      aw22xxx_interrupt_setup();
      if (0xb < *(uint *)(unaff_x24 + 0x380)) {
        _printk(&DAT_00106888);
      }
      gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
      gpiod_to_irq();
      iVar1 = devm_request_threaded_irq();
      if (iVar1 == 0) goto LAB_00102b14;
      gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
      gpiod_to_irq();
      _dev_err();
    }
    devm_pinctrl_put(*(undefined8 *)(unaff_x19 + 0x330));
    *(undefined8 *)(unaff_x19 + 0x330) = 0;
  }
  else {
    _dev_err();
  }
  devm_kfree();
  return iVar1;
}



/* 00102c4c aw22xxx_i2c_remove */

void aw22xxx_i2c_remove(long param_1)

{
  undefined4 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_001070b5,"aw22xxx_i2c_remove");
  remove_proc_entry("driver/colorleds_id",0);
  _printk(&DAT_00107178,"aw22xxx_proc_deinit",0x9ca);
  sysfs_remove_group(*(undefined8 *)(lVar2 + 0x60),&DAT_001003a8);
  led_classdev_unregister(lVar2 + 0x10);
  gpio_to_desc(*(undefined4 *)(lVar2 + 0x2e4));
  uVar1 = gpiod_to_irq();
  devm_free_irq(param_1 + 0x20,uVar1,lVar2);
  devm_kfree(param_1 + 0x20,lVar2);
  DAT_0010f028 = 0x1194;
  if (DAT_0010ef94 != 0) {
    DAT_0010f028 = 0xb;
  }
  return;
}



/* 00102d10 aw22xxx_hw_reset */

void aw22xxx_hw_reset(long param_1)

{
  undefined8 uVar1;
  
  _printk(&DAT_001070b5,"aw22xxx_hw_reset");
  if ((param_1 == 0) || (*(int *)(param_1 + 0x2e0) < 0)) {
    _dev_err(*(undefined8 *)(param_1 + 8),"%s:  failed\n","aw22xxx_hw_reset");
  }
  else {
    uVar1 = gpio_to_desc();
    gpiod_set_raw_value_cansleep(uVar1,0);
    usleep_range_state(1000,0x5dc,2);
    uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x2e0));
    gpiod_set_raw_value_cansleep(uVar1,1);
    usleep_range_state(1000,0x5dc,2);
  }
  return;
}



/* 00102dac aw22xxx_read_chipid */

void aw22xxx_read_chipid(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined1 uVar4;
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
LAB_00102e44:
      _printk(&DAT_001073c1,"aw22xxx_read_chipid",local_2c[0],iVar2);
      aw22xxx_i2c_read(param_1,0,local_2c);
      if (local_2c[0] == '\x18') {
        uVar4 = 1;
        DAT_00100388 = 0x38313132327761;
      }
      else {
        if (local_2c[0] != '\'') {
          _printk(&DAT_00106a87,"aw22xxx_read_chipid");
          goto LAB_00102f48;
        }
        uVar4 = 2;
        DAT_00100388 = 0x37323132327761;
      }
      *(undefined1 *)(param_1 + 0x2ed) = uVar4;
      _printk(&DAT_001077d8,"aw22xxx_read_chipid");
      uVar3 = 0;
      goto LAB_00102f4c;
    }
    _printk(&DAT_00107f7f,"aw22xxx_read_chipid",local_2c[0],iVar2);
    msleep(1);
    iVar2 = aw22xxx_i2c_read(param_1,1,local_2c);
    if (-1 < iVar2) {
      if (local_2c[0] == 'v') goto LAB_00102e44;
      _printk(&DAT_00107f7f,"aw22xxx_read_chipid",local_2c[0],iVar2);
      msleep(1);
LAB_00102f48:
      uVar3 = 0xffffffea;
      goto LAB_00102f4c;
    }
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"%s: failed to read register AW22XXX_REG_ID: %d\n",
           "aw22xxx_read_chipid");
  uVar3 = 0xfffffffb;
LAB_00102f4c:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 00102f78 aw22xxx_interrupt_setup */

void aw22xxx_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  undefined1 local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_001070b5,"aw22xxx_interrupt_setup");
  local_44[0] = 0;
  _printk(&DAT_001070b5,"aw22xxx_interrupt_clear");
  aw22xxx_i2c_read(param_1,10,local_44);
  _printk(&DAT_00106b5f,"aw22xxx_interrupt_clear",local_44[0]);
  local_40[0] = 0;
  aw22xxx_i2c_read(param_1,9,local_40);
  local_40[0] = local_40[0] | 1;
  aw22xxx_i2c_write(param_1,9);
  local_3c[0] = 0;
  aw22xxx_i2c_read(param_1,9,local_3c);
  local_3c[0] = local_3c[0] | 0x10;
  aw22xxx_i2c_write(param_1,9);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103080 aw22xxx_irq_v15 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_irq_v15(undefined8 param_1,long param_2)

{
  long lVar1;
  byte local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  byte local_38 [4];
  byte local_34 [4];
  byte local_30 [4];
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_44[0] = 0;
  aw22xxx_i2c_read(param_2,10,local_44);
  _printk(&DAT_00106b5f,"aw22xxx_irq_v15",local_44[0]);
  if ((local_44[0] & 1) != 0) {
    _printk(&DAT_00106d7e,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    local_40[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_40);
    local_40[0] = local_40[0] & 0xfd;
    aw22xxx_i2c_write(param_2,4);
    local_3c[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_3c);
    local_3c[0] = local_3c[0] & 0xfe;
    aw22xxx_i2c_write(param_2,4);
    _printk(&DAT_00107c64,"aw22xxx_chip_enable",0x1aa,0);
    local_38[0] = 0;
    aw22xxx_i2c_read(param_2,2,local_38);
    local_38[0] = local_38[0] & 0xfe;
    aw22xxx_i2c_write(param_2,2);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_00106f89,"aw22xxx_irq_v15");
  }
  if ((local_44[0] >> 4 & 1) != 0) {
    _printk(&DAT_001070c2,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    local_34[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_34);
    local_34[0] = local_34[0] & 0xfd;
    aw22xxx_i2c_write(param_2,4);
    local_30[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_30);
    local_30[0] = local_30[0] | 2;
    aw22xxx_i2c_write(param_2,4);
    local_2c[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_2c);
    local_2c[0] = local_2c[0] | 1;
    aw22xxx_i2c_write(param_2,4);
    if (*(int *)(param_2 + 0x300) != 0) {
      queue_work_on(0x20,_system_wq,param_2 + 0x230);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001032c8 aw22xxx_irq */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_irq(undefined8 param_1,long param_2)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  _printk(&DAT_001070b5,"aw22xxx_irq");
  aw22xxx_i2c_read(param_2,10,local_2c);
  _printk(&DAT_00106b5f,"aw22xxx_irq",local_2c[0]);
  if ((local_2c[0] >> 4 & 1) != 0) {
    queue_work_on(0x20,_system_wq,param_2 + 0x250);
    _printk(&DAT_00106ca0,"aw22xxx_irq",0x625,*(undefined4 *)(param_2 + 0x2f8));
    zlog_client_record(*(undefined8 *)(param_2 + 0x350),
                       "LED WATCHDOG recover cfg warnning,count:%d\n",
                       *(undefined4 *)(param_2 + 0x2f8));
    zlog_client_notify(*(undefined8 *)(param_2 + 0x350),0x400259);
  }
  _printk(&DAT_00107bfb,"aw22xxx_irq");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001033cc aw22xxx_parse_led_cdev */

void aw22xxx_parse_led_cdev(long param_1,undefined8 param_2)

{
  int iVar1;
  long lVar2;
  
  _printk(&DAT_001070b5,"aw22xxx_parse_led_cdev");
  lVar2 = of_get_next_child(param_2,0);
  while( true ) {
    if (lVar2 == 0) {
      *(undefined8 *)(param_1 + 0x1d0) = 0xfffffffe00000;
      *(long *)(param_1 + 0x1d8) = param_1 + 0x1d8;
      *(long *)(param_1 + 0x1e0) = param_1 + 0x1d8;
      *(code **)(param_1 + 0x1e8) = aw22xxx_brightness_work;
      *(undefined8 *)(param_1 + 0x1f0) = 0xfffffffe00000;
      *(long *)(param_1 + 0x1f8) = param_1 + 0x1f8;
      *(long *)(param_1 + 0x200) = param_1 + 0x1f8;
      *(code **)(param_1 + 0x208) = aw22xxx_task_work;
      *(code **)(param_1 + 0x30) = aw22xxx_set_brightness;
      iVar1 = led_classdev_register_ext(*(undefined8 *)(param_1 + 8),param_1 + 0x10,0);
      if (iVar1 == 0) {
        iVar1 = sysfs_create_group(*(undefined8 *)(param_1 + 0x60),aw22xxx_attribute_group);
        if (iVar1 != 0) {
          _dev_err(*(undefined8 *)(param_1 + 8),"led sysfs ret: %d\n",iVar1);
          led_classdev_unregister(param_1 + 0x10);
        }
      }
      else {
        _dev_err(*(undefined8 *)(param_1 + 8),"unable to register led ret=%d\n",iVar1);
      }
      return;
    }
    iVar1 = of_property_read_string(lVar2,"aw22xxx,name",param_1 + 0x10);
    if (iVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading led name, ret = %d\n",iVar1);
      return;
    }
    iVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,imax",param_1 + 0x2f0,1,0);
    if (iVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading imax, ret = %d\n",iVar1);
      return;
    }
    iVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,brightness",param_1 + 0x18,1,0);
    if (iVar1 < 0) break;
    iVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,max_brightness",param_1 + 0x1c,1,0);
    if (iVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading max brightness, ret = %d\n",iVar1);
      return;
    }
    lVar2 = of_get_next_child(param_2,lVar2);
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading brightness, ret = %d\n",iVar1);
  return;
}



/* 001035d4 aw22xxx_alloc_name_array */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_alloc_name_array(void)

{
  undefined8 uVar1;
  long lVar2;
  undefined8 *puVar3;
  long lVar4;
  
  aw22xxx_cfg_name = (undefined8 *)__kmalloc_cache_noprof(___kmalloc_cache_noprof,0xcc0,0x58);
  if (aw22xxx_cfg_name == (undefined8 *)0x0) {
    _printk(&DAT_00106abb,"aw22xxx_alloc_name_array",0x687);
  }
  else {
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
        _printk(&DAT_00106abb,"aw22xxx_alloc_name_array",0x692);
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
  }
  return;
}



/* 00103838 aw22xxx_fw_init */

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
  _printk(&DAT_00106c04,"aw22xxx_fw_init");
  hrtimer_start_range_ns(param_1 + 0x270,1000000000,0,1);
  return;
}



/* 0010390c aw22xxx_create_proc_entry */

void aw22xxx_create_proc_entry(void)

{
  long lVar1;
  
  lVar1 = proc_create("driver/colorleds_id",0x124,0,proc_ops_awid);
  if (lVar1 == 0) {
    _printk(&DAT_00107462);
  }
  else {
    _printk(&DAT_00107d6e,"aw22xxx_create_proc_entry",0x9c3);
  }
  return;
}



/* 00103970 aw22xxx_brightness_work */

void aw22xxx_brightness_work(long param_1)

{
  long lVar1;
  byte bVar2;
  long lVar3;
  byte local_3c [4];
  byte local_38 [4];
  byte local_34 [4];
  byte local_30 [4];
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  lVar3 = param_1 + -0x1d0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_001070b5,"aw22xxx_brightness_work");
  aw22xxx_i2c_write(lVar3,5,0xff);
  local_3c[0] = 0;
  aw22xxx_i2c_read(lVar3,4,local_3c);
  local_3c[0] = local_3c[0] & 0xfd;
  aw22xxx_i2c_write(lVar3,4);
  _printk(&DAT_00107c64,"aw22xxx_chip_enable",0x1aa,0);
  local_38[0] = 0;
  aw22xxx_i2c_read(lVar3,2,local_38);
  local_38[0] = local_38[0] & 0xfe;
  aw22xxx_i2c_write(lVar3,2);
  usleep_range_state(2000,3000,2);
  if (*(int *)(param_1 + -0x1b8) != 0) {
    _printk(&DAT_00107c64,"aw22xxx_chip_enable",0x1aa,1);
    local_34[0] = 0;
    aw22xxx_i2c_read(lVar3,2,local_34);
    local_34[0] = local_34[0] | 1;
    aw22xxx_i2c_write(lVar3,2);
    usleep_range_state(2000,3000,2);
    local_30[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_30);
    local_30[0] = local_30[0] | 1;
    aw22xxx_i2c_write(lVar3,4);
    bVar2 = *(byte *)(param_1 + 0x120);
    if (0xe < bVar2) {
      bVar2 = 0xf;
    }
    aw22xxx_i2c_write(lVar3,0xff,0);
    aw22xxx_i2c_write(lVar3,0xb,bVar2);
    aw22xxx_i2c_write(lVar3,0x21,0xe1);
    aw22xxx_i2c_write(lVar3,0x22,0);
    aw22xxx_i2c_write(lVar3,0x20,2);
    aw22xxx_i2c_write(lVar3,0x23,0x3d);
    aw22xxx_i2c_write(lVar3,0x20,0);
    aw22xxx_i2c_write(lVar3,5,0x82);
    local_2c[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_2c);
    local_2c[0] = local_2c[0] | 2;
    aw22xxx_i2c_write(lVar3,4);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103bc0 aw22xxx_task_work */

void aw22xxx_task_work(long param_1)

{
  long lVar1;
  byte bVar2;
  long lVar3;
  byte local_4c [4];
  byte local_48 [4];
  byte local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  lVar3 = param_1 + -0x1f0;
  local_38 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_001070b5,"aw22xxx_task_work");
  aw22xxx_i2c_write(lVar3,5,0xff);
  local_4c[0] = 0;
  aw22xxx_i2c_read(lVar3,4,local_4c);
  local_4c[0] = local_4c[0] & 0xfd;
  aw22xxx_i2c_write(lVar3,4);
  _printk(&DAT_00107c64,"aw22xxx_chip_enable",0x1aa,0);
  local_48[0] = 0;
  aw22xxx_i2c_read(lVar3,2,local_48);
  local_48[0] = local_48[0] & 0xfe;
  aw22xxx_i2c_write(lVar3,2);
  usleep_range_state(2000,3000,2);
  if (*(char *)(param_1 + 0x10c) != '\0') {
    _printk(&DAT_00107c64,"aw22xxx_chip_enable",0x1aa,1);
    local_44[0] = 0;
    aw22xxx_i2c_read(lVar3,2,local_44);
    local_44[0] = local_44[0] | 1;
    aw22xxx_i2c_write(lVar3,2);
    usleep_range_state(2000,3000,2);
    local_40[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_40);
    local_40[0] = local_40[0] | 1;
    aw22xxx_i2c_write(lVar3,4);
    bVar2 = *(byte *)(param_1 + 0x100);
    if (0xe < bVar2) {
      bVar2 = 0xf;
    }
    aw22xxx_i2c_write(lVar3,0xff,0);
    aw22xxx_i2c_write(lVar3,0xb,bVar2);
    aw22xxx_i2c_write(lVar3,0x21,0xe1);
    aw22xxx_i2c_write(lVar3,0x22,0);
    aw22xxx_i2c_write(lVar3,0x20,2);
    aw22xxx_i2c_write(lVar3,0x23,0x3d);
    aw22xxx_i2c_write(lVar3,0x20,0);
    aw22xxx_i2c_write(lVar3,5,*(undefined1 *)(param_1 + 0x10c));
    aw22xxx_i2c_write(lVar3,6,*(undefined1 *)(param_1 + 0x10d));
    local_3c[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_3c);
    local_3c[0] = local_3c[0] | 2;
    aw22xxx_i2c_write(lVar3,4);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103e5c aw22xxx_reg_show */

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



/* 00103f70 aw22xxx_reg_store */

undefined8 aw22xxx_reg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if ((iVar1 == 2) && ((uint)local_30 < 0x100)) {
    aw22xxx_i2c_write(lVar2 + -0x10,local_30 & 0xffffffff,local_30._4_4_);
  }
  else {
    _printk(&DAT_00106ce0,"aw22xxx_reg_store",0x78b);
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104030 aw22xxx_hwen_show */

long aw22xxx_hwen_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  
  gpio_to_desc(*(undefined4 *)(*(long *)(param_1 + 0x98) + 0x2d0));
  uVar2 = gpiod_get_raw_value();
  iVar1 = snprintf(param_3,0x1000,"hwen=%d\n",uVar2 & 0xffffffff);
  return (long)iVar1;
}



/* 00104084 aw22xxx_led_init */

void aw22xxx_led_init(long param_1)

{
  uint uVar1;
  long lVar2;
  undefined8 uVar3;
  byte local_3c [4];
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_3c[0] = 0;
  _printk(&DAT_001089de,"aw22xxx_led_init");
  _printk(&DAT_001084e1,"aw22xxx_led_init");
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_read(param_1,2,local_3c);
  local_3c[0] = local_3c[0] | 1;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  uVar1 = *(uint *)(param_1 + 0x2f0);
  if (uVar1 < 0xd) {
    aw22xxx_i2c_write(param_1,0xff,0);
    aw22xxx_i2c_write(param_1,0xb,(&aw22xxx_imax_code)[uVar1]);
    _printk(&DAT_00108b2a,"aw22xxx_led_init");
    aw22xxx_i2c_read(param_1,2,local_3c);
    local_3c[0] = local_3c[0] & 0xfe;
    aw22xxx_i2c_write(param_1,2);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_001081b4,"aw22xxx_led_init");
    uVar3 = 0;
  }
  else {
    uVar3 = 0xffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 001041c4 FUN_001041c4 */

void FUN_001041c4(undefined8 param_1)

{
  long lVar1;
  byte in_w8;
  byte bStack0000000000000004;
  long in_stack_00000008;
  
  bStack0000000000000004 = in_w8 & 0xfe;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_001081b4);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00104204 aw22xxx_fw_work_routine */

void aw22xxx_fw_work_routine(long param_1)

{
  _printk(&DAT_001089de,"aw22xxx_fw_work_routine");
  _printk(&DAT_0010848a);
  *(undefined1 *)(param_1 + 0xdf) = 1;
  request_firmware_nowait
            (&__this_module,1,&aw22xxx_fw_name,*(undefined8 *)(param_1 + -0x208),0xcc0,
             param_1 + -0x210,aw22xxx_fw_loaded);
  return;
}



/* 00104288 aw22xxx_cfg_work_routine */

void aw22xxx_cfg_work_routine(long param_1)

{
  _printk(&DAT_001089de,"aw22xxx_cfg_work_routine");
  _printk(&DAT_00108686);
  if (*(char *)(param_1 + 0xbf) == '\x02') {
    *(bool *)(param_1 + 0x118) = *(int *)(param_1 + 0xd0) != 2;
    if ((g_init_flg & 1) == 0) {
      g_init_flg = 1;
      aw22xxx_init_cfg_update_array(param_1 + -0x230);
    }
    request_firmware_nowait
              (&__this_module,1,aw22xxx_dyn_name,*(undefined8 *)(param_1 + -0x228),0xcc0,
               param_1 + -0x230,aw22xxx_cfg_loaded);
  }
  else {
    _printk(&DAT_00108c85);
  }
  return;
}



/* 0010434c aw22xxx_cfg_loaded */

void aw22xxx_cfg_loaded(ulong *param_1,long param_2)

{
  ulong uVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  uint uVar5;
  uint uVar6;
  byte bVar7;
  long lVar8;
  
  _printk(&DAT_001089de,"aw22xxx_cfg_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_00108421);
    release_firmware(0);
  }
  else {
    _printk(&DAT_00108a36,"aw22xxx_cfg_loaded",*(undefined4 *)(param_2 + 0x300),*param_1);
    if (1 < *param_1) {
      lVar8 = 0;
      bVar7 = 0;
      do {
        bVar3 = *(byte *)(param_1[1] + lVar8);
        bVar4 = ((byte *)(param_1[1] + lVar8))[1];
        uVar6 = (uint)bVar4;
        bVar2 = bVar4;
        if (bVar3 != 0xff) {
          bVar2 = bVar7;
        }
        uVar5 = (uint)bVar3;
        if ((*(char *)(param_2 + 0x304) == '\x01') || (bVar2 != 1)) {
          aw22xxx_i2c_write(param_2,uVar5,bVar4);
          if ((uVar5 == 2) && ((bVar2 == 0 && ((bVar4 & 1) != 0)))) {
            usleep_range_state(2000,0x9c4,2);
          }
        }
        else {
          if (bVar3 - 0x10 < 0x1b) {
            uVar6 = *(uint *)(param_2 + 0x30c + ((ulong)(uVar5 - 0x10) / 3) * 4) >>
                    (ulong)(((uVar5 - 0x10) % 3) * -8 + 0x10 & 0x1f);
          }
          aw22xxx_i2c_write(param_2,bVar3,uVar6);
        }
        uVar1 = lVar8 + 3;
        lVar8 = lVar8 + 2;
        bVar7 = bVar2;
      } while (uVar1 < *param_1);
    }
    release_firmware(param_1);
    if (*(uint *)(param_2 + 0x2f0) < 0xd) {
      bVar7 = (&aw22xxx_imax_code)[*(uint *)(param_2 + 0x2f0)];
      if (0xe < bVar7) {
        bVar7 = 0xf;
      }
      aw22xxx_i2c_write(param_2,0xff,0);
      aw22xxx_i2c_write(param_2,0xb,bVar7);
      _printk(&DAT_001081b4,"aw22xxx_cfg_loaded");
    }
  }
  return;
}



/* 0010452c aw22xxx_recover_work_routine */

void aw22xxx_recover_work_routine(long param_1)

{
  long lVar1;
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  lVar1 = param_1 + -0x250;
  local_3c[0] = 0;
  _printk(&DAT_001089de,"aw22xxx_recover_work_routine");
  aw22xxx_i2c_write(lVar1,0xff,0);
  aw22xxx_i2c_read(lVar1,4,local_3c);
  aw22xxx_i2c_write(lVar1,4,local_3c[0] & 0xfd);
  aw22xxx_i2c_read(lVar1,4,local_3c);
  aw22xxx_i2c_write(lVar1,4,local_3c[0] & 0xfe);
  _printk(&DAT_001088c4);
  aw22xxx_i2c_read(lVar1,2,local_3c);
  aw22xxx_i2c_write(lVar1,2,local_3c[0] & 0xfe);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_001087dd,"aw22xxx_recover_work_routine");
  aw22xxx_i2c_write(lVar1,0xff,0);
  aw22xxx_i2c_write(lVar1,2,1);
  aw22xxx_i2c_write(lVar1,0xc,0);
  aw22xxx_i2c_write(lVar1,5,1);
  aw22xxx_i2c_write(lVar1,4,1);
  aw22xxx_i2c_write(lVar1,9,0x11);
  aw22xxx_i2c_write(lVar1,4,3);
  aw22xxx_i2c_write(lVar1,5,0x41);
  msleep(200);
  _printk(&DAT_00108b72,"aw22xxx_recover_work_routine");
  *(undefined4 *)(param_1 + 0xb0) = lamp_effect;
  aw22xxx_cfg_recover_update_wait(lVar1);
  msleep(200);
  *(undefined4 *)(param_1 + 0xb0) = fan_effect;
  aw22xxx_cfg_recover_update_wait(lVar1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104714 aw22xxx_cfg_recover_update_wait */

void aw22xxx_cfg_recover_update_wait(long param_1)

{
  ulong uVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  int iVar5;
  size_t sVar6;
  undefined *puVar7;
  uint uVar8;
  char *__s;
  uint uVar9;
  byte bVar10;
  long lVar11;
  ulong *local_60;
  long local_58;
  
  lVar11 = sp_el0;
  local_58 = *(long *)(lVar11 + 0x710);
  local_60 = (ulong *)0x0;
  _printk(&DAT_001089de,"aw22xxx_cfg_recover_update_wait");
  _printk(&DAT_0010843f,*(undefined1 *)(param_1 + 0x2ef));
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 4) {
    lamp_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_00108ace,"aw22xxx_cfg_recover_update_wait",lamp_effect);
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 2) {
    fan_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_001084b0,"aw22xxx_cfg_recover_update_wait",fan_effect);
  if ((*(uint *)(param_1 + 0x300) >> 2 < 0x465) && (aw22xxx_cfg_name != 0)) {
    __s = *(char **)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8);
    _printk(&DAT_00108830,"aw22xxx_cfg_recover_update_wait",__s);
    sVar6 = strlen(__s);
    bVar10 = g_init_flg;
    if (sVar6 < 5) {
      puVar7 = &DAT_001087fd;
    }
    else {
      if (*(char *)(param_1 + 0x2ef) == '\x02') {
        *(bool *)(param_1 + 0x348) = *(int *)(param_1 + 0x300) != 2;
        if ((bVar10 & 1) == 0) {
          g_init_flg = 1;
          aw22xxx_init_cfg_update_array(param_1);
        }
        iVar5 = request_firmware(&local_60,__s,*(undefined8 *)(param_1 + 8));
        if (iVar5 == 0) {
          _printk(&DAT_00108d34);
          if (local_60 == (ulong *)0x0) {
            _printk(&DAT_00108544);
            release_firmware(local_60);
          }
          else {
            _printk(&DAT_00108a58,*local_60);
            if (1 < *local_60) {
              lVar11 = 0;
              bVar10 = 0;
              do {
                bVar3 = *(byte *)(local_60[1] + lVar11);
                bVar4 = ((byte *)(local_60[1] + lVar11))[1];
                uVar9 = (uint)bVar4;
                bVar2 = bVar4;
                if (bVar3 != 0xff) {
                  bVar2 = bVar10;
                }
                uVar8 = (uint)bVar3;
                if ((*(char *)(param_1 + 0x304) == '\x01') || (bVar2 != 1)) {
                  aw22xxx_i2c_write(param_1,uVar8,bVar4);
                  if ((uVar8 == 2) && ((bVar2 == 0 && ((bVar4 & 1) != 0)))) {
                    usleep_range_state(2000,0x9c4,2);
                  }
                }
                else {
                  if (bVar3 - 0x10 < 0x1b) {
                    uVar9 = *(uint *)(param_1 + 0x30c + ((ulong)(uVar8 - 0x10) / 3) * 4) >>
                            (ulong)(((uVar8 - 0x10) % 3) * -8 + 0x10 & 0x1f);
                  }
                  aw22xxx_i2c_write(param_1,bVar3,uVar9);
                }
                uVar1 = lVar11 + 3;
                lVar11 = lVar11 + 2;
                bVar10 = bVar2;
              } while (uVar1 < *local_60);
            }
            release_firmware();
            if (*(uint *)(param_1 + 0x2f0) < 0xd) {
              bVar10 = (&aw22xxx_imax_code)[*(uint *)(param_1 + 0x2f0)];
              if (0xe < bVar10) {
                bVar10 = 0xf;
              }
              aw22xxx_i2c_write(param_1,0xff,0);
              aw22xxx_i2c_write(param_1,0xb,bVar10);
            }
            *(int *)(param_1 + 0x2f8) = *(int *)(param_1 + 0x2f8) + 1;
            _printk(&DAT_001081b4,"aw22xxx_cfg_recover_update_wait");
            _printk(&DAT_00108cf3,*(undefined4 *)(param_1 + 0x2f8));
            msleep(0x14);
          }
        }
        else {
          _printk(&DAT_0010830a,"aw22xxx_cfg_recover_update_wait",iVar5);
        }
        goto LAB_00104844;
      }
      puVar7 = &DAT_00108d11;
    }
  }
  else {
    puVar7 = &DAT_001084fc;
  }
  _printk(puVar7,"aw22xxx_cfg_recover_update_wait");
LAB_00104844:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 00104aa0 aw22xxx_fw_timer_func */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_fw_timer_func(long param_1)

{
  _printk(&DAT_001089de,"aw22xxx_fw_timer_func");
  queue_work_on(0x20,_system_wq,param_1 + -0x60);
  return 0;
}



/* 00104af4 aw22xxx_set_brightness */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_set_brightness(long param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 8) = param_2;
  queue_work_on(0x20,_system_wq,param_1 + 0x1c0);
  return;
}



/* 00104b2c get_aw22xxx_id */

/* WARNING: Control flow encountered bad instruction data */

undefined8 get_aw22xxx_id(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  size_t sVar1;
  undefined8 uVar2;
  
  if (*param_4 != 0) {
    return 0;
  }
  _printk(&DAT_001089de,"get_aw22xxx_id");
  sVar1 = strnlen(g_chip_id,0x20);
  if (sVar1 < 0x21) {
    if (sVar1 < 0x21) {
      uVar2 = simple_read_from_buffer(param_2,param_3,param_4,g_chip_id);
      return uVar2;
    }
    __fortify_panic(4,0x20,sVar1);
  }
  __fortify_panic(2,0x20,sVar1 + 1);
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* 00104bf0 aw22xxx_cfg_show */

size_t aw22xxx_cfg_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  size_t sVar2;
  
  uVar1 = *(uint *)(*(long *)(param_1 + 0x98) + 0x2f0);
  if (uVar1 < 0xb) {
    uVar1 = snprintf(param_3,0x1000,"current cfg = %s\n",
                     *(undefined8 *)(aw22xxx_cfg_name + (ulong)uVar1 * 8));
    if (0xfff < uVar1) {
      return 0xfffffffffffffff2;
    }
  }
  else {
    _printk(&DAT_001081e2);
  }
  sVar2 = strlen(param_3);
  return sVar2;
}



/* 00104c6c aw22xxx_cfg_store */

undefined8 aw22xxx_cfg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%u",&local_2c);
  if (iVar1 == 1) {
    *(byte *)(lVar2 + 0x2f4) = (byte)local_2c & 0xf;
    _printk(&DAT_001083d5,"aw22xxx_cfg_store");
  }
  else {
    _printk(&DAT_00108569,"aw22xxx_cfg_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104d28 aw22xxx_effect_show */

long aw22xxx_effect_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"effect = 0x%02x\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f0));
  return (long)iVar1;
}



/* 00104d64 aw22xxx_effect_store */

undefined8 aw22xxx_effect_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  byte local_50 [4];
  uint local_4c;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_4c = 0;
  local_50[0] = 0;
  iVar1 = sscanf(param_3,"%x",&local_4c);
  if (iVar1 == 1) {
    lVar2 = lVar3 + -0x10;
    _printk(&DAT_00108a09,"aw22xxx_effect_store",local_4c);
    mutex_lock(lVar3 + 0x2a0);
    if ((local_4c - 8 < 3) && (init_flag != 0)) {
      _printk(&DAT_00108585,"aw22xxx_effect_store");
      *(undefined4 *)(lVar3 + 0x2f0) = 4;
      aw22xxx_get_fwname(4);
      aw22xxx_cfg_update_wait_from_dyn_name(lVar2);
      aw22xxx_set_cfg_run_state(*(undefined4 *)(lVar3 + 0x2f0));
      if (g_cfg_cur_state == '\0') {
        _printk(&DAT_0010890c,"aw22xxx_effect_store");
        aw22xxx_i2c_read(lVar2,2,local_50);
        local_50[0] = local_50[0] & 0xfe;
        aw22xxx_i2c_write(lVar2,2);
        usleep_range_state(2000,3000,2);
        g_init_flg = 0;
      }
      init_flag = 0;
      _printk(&DAT_00108c3d,"aw22xxx_effect_store");
    }
    *(uint *)(lVar3 + 0x2f0) = local_4c;
    _printk(&DAT_00108a7e,"aw22xxx_effect_store");
    if (((local_4c < 4) && (local_4c != 1)) && ((init_flag & 1) == 0)) {
      init_flag = 1;
      _printk(&DAT_00108cb3,"aw22xxx_effect_store");
    }
    aw22xxx_get_fwname(*(undefined4 *)(lVar3 + 0x2f0));
    aw22xxx_cfg_update_wait_from_dyn_name(lVar2);
    iVar1 = *(int *)(lVar3 + 0x2f0);
    if (iVar1 == 0) {
      msleep(100);
      iVar1 = *(int *)(lVar3 + 0x2f0);
    }
    aw22xxx_set_cfg_run_state(iVar1);
    if (g_cfg_cur_state == '\0') {
      _printk(&DAT_001089b6,"aw22xxx_effect_store");
      aw22xxx_i2c_read(lVar2,2,local_50);
      local_50[0] = local_50[0] & 0xfe;
      aw22xxx_i2c_write(lVar2,2);
      usleep_range_state(2000,3000,2);
      g_init_flg = 0;
    }
    _printk(&DAT_001081b4,"aw22xxx_effect_store");
    mutex_unlock(lVar3 + 0x2a0);
  }
  else {
    _printk(&DAT_00108569,"aw22xxx_effect_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104ff0 aw22xxx_get_fwname */

void aw22xxx_get_fwname(ulong param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  byte bVar4;
  int iVar5;
  size_t sVar6;
  long lVar7;
  char *__s;
  ulong uVar8;
  undefined8 uStack_70;
  long lStack_68;
  undefined1 *puStack_60;
  code *pcStack_58;
  char *pcStack_50;
  
  uVar8 = param_1 >> 0x18 & 0xff;
  uVar2 = (uint)param_1 >> 0xc & 0xfff;
  uVar1 = (uint)param_1 & 0xfff;
  _printk(&DAT_00108714,"aw22xxx_get_fwname",uVar8);
  _printk(&DAT_00108768,"aw22xxx_get_fwname",uVar2);
  _printk(&DAT_001085be,"aw22xxx_get_fwname",uVar1);
  iVar5 = (int)uVar8;
  if (iVar5 == 3) {
    sprintf(aw22xxx_dyn_name,"aw_fan%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
LAB_00105114:
    _printk(&DAT_0010862d,"aw22xxx_get_fwname",aw22xxx_dyn_name);
    return;
  }
  if (iVar5 == 2) {
    sprintf(aw22xxx_dyn_name,"aw_touch%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
    goto LAB_00105114;
  }
  if (iVar5 == 1) {
    sprintf(aw22xxx_dyn_name,"aw_cfg%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
    goto LAB_00105114;
  }
  if (((iVar5 != 0) || (10 < uVar1)) || (aw22xxx_cfg_name == 0)) {
    _printk(&DAT_00108b91,"aw22xxx_get_fwname");
    return;
  }
  __s = *(char **)(aw22xxx_cfg_name + (param_1 & 0xffffffff) * 8);
  sVar6 = strlen(__s);
  if (sVar6 + 1 < 0x41) {
    memcpy(aw22xxx_dyn_name,__s,sVar6 + 1);
    goto LAB_00105114;
  }
  lVar7 = __fortify_panic(0x11,0x40);
  pcStack_58 = aw22xxx_cfg_update_wait_from_dyn_name;
  lVar3 = sp_el0;
  lStack_68 = *(long *)(lVar3 + 0x710);
  uStack_70 = 0;
  puStack_60 = &stack0xffffffffffffffc0;
  pcStack_50 = __s;
  _printk(&DAT_001089de,"aw22xxx_cfg_update_wait_from_dyn_name");
  bVar4 = g_init_flg;
  if (*(char *)(lVar7 + 0x2ef) == '\x02') {
    if (*(int *)(lVar7 + 0x300) == 2) {
      *(undefined1 *)(lVar7 + 0x348) = 0;
    }
    else {
      *(undefined1 *)(lVar7 + 0x348) = 1;
    }
    if ((bVar4 & 1) == 0) {
      g_init_flg = 1;
      aw22xxx_init_cfg_update_array(lVar7);
    }
    iVar5 = request_firmware(&uStack_70,aw22xxx_dyn_name,*(undefined8 *)(lVar7 + 8));
    if (iVar5 == 0) {
      aw22xxx_cfg_loaded(uStack_70,lVar7);
      msleep(0x14);
      goto LAB_00105220;
    }
  }
  else {
    iVar5 = -0x16;
  }
  _printk(&DAT_0010825a,"aw22xxx_cfg_update_wait_from_dyn_name",iVar5);
LAB_00105220:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != lStack_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 0010516c aw22xxx_cfg_update_wait_from_dyn_name */

void aw22xxx_cfg_update_wait_from_dyn_name(long param_1)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined8 local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_30 = 0;
  _printk(&DAT_001089de,"aw22xxx_cfg_update_wait_from_dyn_name");
  bVar2 = g_init_flg;
  if (*(char *)(param_1 + 0x2ef) == '\x02') {
    if (*(int *)(param_1 + 0x300) == 2) {
      *(undefined1 *)(param_1 + 0x348) = 0;
    }
    else {
      *(undefined1 *)(param_1 + 0x348) = 1;
    }
    if ((bVar2 & 1) == 0) {
      g_init_flg = 1;
      aw22xxx_init_cfg_update_array(param_1);
    }
    iVar3 = request_firmware(&local_30,aw22xxx_dyn_name,*(undefined8 *)(param_1 + 8));
    if (iVar3 == 0) {
      aw22xxx_cfg_loaded(local_30,param_1);
      msleep(0x14);
      goto LAB_00105220;
    }
  }
  else {
    iVar3 = -0x16;
  }
  _printk(&DAT_0010825a,"aw22xxx_cfg_update_wait_from_dyn_name",iVar3);
LAB_00105220:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105270 aw22xxx_set_cfg_run_state */

void aw22xxx_set_cfg_run_state(ulong param_1)

{
  uint uVar1;
  byte bVar2;
  int iVar3;
  ulong uVar4;
  
  uVar4 = param_1 >> 0x18 & 0xff;
  uVar1 = (uint)param_1 >> 0xc & 0xfff;
  _printk(&DAT_001088a4,"aw22xxx_set_cfg_run_state",uVar4);
  _printk(&DAT_0010845d,"aw22xxx_set_cfg_run_state",uVar1);
  _printk(&DAT_00108648,"aw22xxx_set_cfg_run_state",param_1 & 0xffffffff);
  iVar3 = (int)uVar4;
  if ((iVar3 == 1) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0x7d;
  }
  else if ((iVar3 == 3) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0x7e;
  }
  else if ((iVar3 == 3) && (uVar1 == 2)) {
    g_cfg_cur_state = g_cfg_cur_state | 1;
  }
  else if ((iVar3 == 2) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0x7b;
  }
  else if ((iVar3 == 2) && (uVar1 - 0x101 < 4)) {
    g_cfg_cur_state = g_cfg_cur_state | 4;
  }
  else {
    bVar2 = 1;
    if (iVar3 != 3) {
      bVar2 = 2;
    }
    g_cfg_cur_state = g_cfg_cur_state | bVar2;
  }
  return;
}



/* 00105390 aw22xxx_fw_show */

long aw22xxx_fw_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"firmware name = %s\n",&aw22xxx_fw_name);
  return (long)iVar1;
}



/* 001053cc aw22xxx_fw_store */

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



/* 00105478 aw22xxx_hwen_store */

undefined8 aw22xxx_hwen_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  uint local_2c;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    if (local_2c < 2) {
      if (local_2c == 1) {
        aw22xxx_hw_reset(lVar3 + -0x10);
      }
      else {
        _printk(&DAT_00108780);
        if (*(int *)(lVar3 + 0x2d0) < 0) {
          _dev_err(*(undefined8 *)(lVar3 + -8),"aw22xxx_hw_off failed\n");
        }
        else {
          uVar2 = gpio_to_desc();
          gpiod_set_raw_value_cansleep(uVar2,0);
          usleep_range_state(1000,0x5dc,2);
        }
      }
      goto LAB_001054e0;
    }
  }
  _printk(&DAT_00108bba,"aw22xxx_hwen_store");
  param_4 = 0xffffffffffffffea;
LAB_001054e0:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105578 aw22xxx_imax_show */

long aw22xxx_imax_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(param_1 + 0x98);
  iVar2 = snprintf(param_3,0x1000,"imax[%x] = %s\n",0,"AW22XXX_IMAX_2mA");
  lVar4 = (long)iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",1,"AW22XXX_IMAX_3mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",2,"AW22XXX_IMAX_4mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",3,"AW22XXX_IMAX_6mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",4,"AW22XXX_IMAX_9mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",5,"AW22XXX_IMAX_10mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",6,"AW22XXX_IMAX_15mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",7,"AW22XXX_IMAX_20mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",8,"AW22XXX_IMAX_30mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",9,"AW22XXX_IMAX_40mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",10,"AW22XXX_IMAX_45mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",0xb,"AW22XXX_IMAX_60mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",0xc,"AW22XXX_IMAX_75mA");
  uVar1 = *(uint *)(lVar3 + 0x2e0);
  lVar4 = lVar4 + iVar2;
  if (uVar1 < 0xd) {
    iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"current id = 0x%02x, imax = %s\n",(ulong)uVar1,
                     *(undefined8 *)(aw22xxx_imax_name + (ulong)uVar1 * 8));
    lVar4 = lVar4 + iVar2;
  }
  return lVar4;
}



/* 00105798 aw22xxx_imax_store */

undefined8 aw22xxx_imax_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  uint uVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  uint local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar2 = sscanf(param_3,"%x",&local_3c);
  uVar1 = local_3c;
  if ((iVar2 == 1) && (local_3c < 0xd)) {
    lVar3 = lVar4 + -0x10;
    *(uint *)(lVar4 + 0x2e0) = local_3c;
    aw22xxx_i2c_write(lVar3,0xff,0);
    aw22xxx_i2c_write(lVar3,0xb,(&aw22xxx_imax_code)[uVar1]);
  }
  else {
    _printk(&DAT_00108285,"aw22xxx_imax_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105878 aw22xxx_para_show */

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
    if (write_idx * 0x19 < 1) {
      lVar3 = 0;
    }
    else {
      uVar4 = 0;
      lVar3 = 0;
      do {
        if ((uVar4 != 0) && ((int)uVar4 + (int)((uVar4 & 0xffffffff) / 0x19) * -0x19 == 0)) {
          iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
          lVar3 = lVar3 + iVar2;
        }
        if (uVar4 == 25000) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x105998);
          (*pcVar1)();
        }
        iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"%d  ",
                         (ulong)(uint)(&user_para_data)[uVar4]);
        uVar4 = uVar4 + 1;
        lVar3 = lVar3 + iVar2;
      } while ((long)uVar4 < (long)(write_idx * 0x19));
    }
    iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
    lVar3 = lVar3 + iVar2;
  }
  return lVar3;
}



/* 0010599c aw22xxx_para_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
aw22xxx_para_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  undefined4 *puVar1;
  uint uVar2;
  ulong uVar3;
  ulong uVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  code *pcVar8;
  int iVar9;
  long lVar10;
  ulong uVar11;
  ulong uVar12;
  undefined4 *puVar13;
  undefined4 *puVar14;
  long lVar15;
  
  _printk(&DAT_001089de,"aw22xxx_para_store");
  lVar10 = __kmalloc_cache_noprof(_sscanf,0xcc0,100);
  if (lVar10 == 0) {
    _printk(&DAT_001083fc,"aw22xxx_para_store");
    param_4 = 0xfffffffffffffff2;
  }
  else {
    iVar9 = sscanf(param_3,
                   "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d",
                   lVar10,lVar10 + 4,lVar10 + 8,lVar10 + 0xc,lVar10 + 0x10,lVar10 + 0x14,
                   lVar10 + 0x18,lVar10 + 0x1c,lVar10 + 0x20,lVar10 + 0x24,lVar10 + 0x28,
                   lVar10 + 0x2c,lVar10 + 0x30,lVar10 + 0x34,lVar10 + 0x38,lVar10 + 0x3c,
                   lVar10 + 0x40,lVar10 + 0x44,lVar10 + 0x48,lVar10 + 0x4c,lVar10 + 0x50,
                   lVar10 + 0x54,lVar10 + 0x58,lVar10 + 0x5c,lVar10 + 0x60);
    iVar7 = write_idx;
    if (iVar9 == 0x19) {
      if (write_idx < 1000) {
        uVar6 = write_idx * 0x19;
        uVar2 = 0;
        if (uVar6 < 0x61a9) {
          uVar2 = write_idx * -0x19 + 25000;
        }
        uVar11 = (ulong)uVar2;
        if (uVar2 < 2) {
          uVar12 = 0;
        }
        else {
          uVar3 = uVar11;
          if (0x17 < uVar11) {
            uVar3 = 0x18;
          }
          uVar12 = uVar3 + 1 & 1;
          uVar4 = 2;
          if (uVar12 != 0) {
            uVar4 = uVar12;
          }
          puVar14 = (undefined4 *)(lVar10 + 4);
          uVar12 = (uVar3 + 1) - uVar4;
          puVar13 = &DAT_00108dc9 + uVar6;
          lVar15 = ~uVar3 + uVar4;
          do {
            puVar1 = puVar14 + -1;
            uVar5 = *puVar14;
            lVar15 = lVar15 + 2;
            puVar14 = puVar14 + 2;
            puVar13[-1] = *puVar1;
            *puVar13 = uVar5;
            puVar13 = puVar13 + 2;
          } while (lVar15 != 0);
        }
        do {
          if (uVar11 == uVar12) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(0x5512,0x105c10);
            (*pcVar8)();
          }
          (&user_para_data)[uVar6 + uVar12] = *(undefined4 *)(lVar10 + uVar12 * 4);
          uVar12 = uVar12 + 1;
        } while (uVar12 != 0x19);
        write_idx = iVar7 + 1;
        _printk(&DAT_001085d6,"aw22xxx_para_store");
      }
      else {
        _printk(&DAT_001086cf,"aw22xxx_para_store");
        param_4 = 0xffffffffffffffe4;
      }
    }
    else {
      _printk(&DAT_001082e6,"aw22xxx_para_store");
      param_4 = 0xffffffffffffffea;
    }
    kfree(lVar10);
  }
  return param_4;
}



/* 00105c14 aw22xxx_multi_breath_pattern_show */

long aw22xxx_multi_breath_pattern_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000," pattern_status = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f8));
  return (long)iVar1;
}



/* 00105c50 aw22xxx_multi_breath_pattern_store */

undefined8
aw22xxx_multi_breath_pattern_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  int local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    lVar2 = lVar3 + -0x10;
    *(int *)(lVar3 + 0x2f8) = local_3c;
    if (local_3c == 0) {
      read_idx = 0;
      write_idx = 0;
      if (kthread_status == 1) {
        kthread_status = 0;
      }
      aw22xxx_i2c_write(lVar2,0xff,0);
      aw22xxx_i2c_write(lVar2,5,0);
      aw22xxx_i2c_write(lVar2,4,1);
      aw22xxx_i2c_write(lVar2,2,0);
    }
    else if (((local_3c == 1) && (read_idx = 0, kthread_status == 0)) && (write_idx != 0)) {
      cfg_update_kthread = kthread_create_on_node(aw22xxx_play,lVar2,0xffffffff,"aw22xxx_play");
      if (cfg_update_kthread < 0xfffffffffffff001) {
        wake_up_process();
        kthread_status = 1;
        _printk(&DAT_0010838d);
      }
      else {
        kthread_status = 0;
        _printk(&DAT_00108b09);
      }
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105dd8 aw22xxx_rgb_show */

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



/* 00105f1c aw22xxx_rgb_store */

void aw22xxx_rgb_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

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
  iVar1 = sscanf(param_3,"%x %x",(long)&local_30 + 4,&local_30);
  uVar2 = 0xffffffffffffffea;
  if ((iVar1 == 2) && (local_30._4_4_ < 9)) {
    *(undefined4 *)(lVar3 + (ulong)local_30._4_4_ * 4 + 0x2fc) = (undefined4)local_30;
    _printk(&DAT_00108218);
    uVar2 = param_4;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00105fcc aw22xxx_task0_show */

long aw22xxx_task0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task0 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ec));
  return (long)iVar1;
}



/* 00106008 aw22xxx_task0_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_task0_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ec) = (char)local_2c;
    _printk(&DAT_00108240,"aw22xxx_task0_store");
    queue_work_on(0x20,_system_wq,lVar2 + 0x1e0);
  }
  else {
    _printk(&DAT_00108569,"aw22xxx_task0_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001060d4 aw22xxx_task1_show */

long aw22xxx_task1_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task1 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ed));
  return (long)iVar1;
}



/* 00106110 aw22xxx_task1_store */

undefined8 aw22xxx_task1_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ed) = (char)local_2c;
    _printk(&DAT_001086fa,"aw22xxx_task1_store");
  }
  else {
    _printk(&DAT_00108569,"aw22xxx_task1_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001061c8 aw22xxx_task_irq_show */

long aw22xxx_task_irq_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task_irq = %u\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2e8));
  return (long)iVar1;
}



/* 00106204 aw22xxx_task_irq_store */

undefined8 aw22xxx_task_irq_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%u",&local_2c);
  if (iVar1 == 1) {
    *(undefined4 *)(lVar2 + 0x2e8) = local_2c;
    _printk(&DAT_00108c22,"aw22xxx_task_irq_store");
  }
  else {
    _printk(&DAT_00108569,"aw22xxx_task_irq_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010f0bc init_module */

int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00108c63);
  msleep(500);
  _printk(&DAT_001087ba);
  iVar1 = i2c_register_driver(&__this_module,aw22xxx_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_001083ad,iVar1);
  }
  return iVar1;
}



/* 0010f134 cleanup_module */

void cleanup_module(void)

{
  i2c_del_driver(aw22xxx_i2c_driver);
  return;
}



