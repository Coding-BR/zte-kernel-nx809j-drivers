
void aw9620x_fw_update(long param_1,char param_2,long param_3,uint param_4,uint param_5)

{
  ulong uVar1;
  uint uVar2;
  uint uVar3;
  long lVar4;
  bool bVar5;
  int iVar6;
  int iVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *pcVar10;
  char *pcVar11;
  undefined8 uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  undefined8 local_88;
  undefined8 local_80;
  uint local_78 [3];
  undefined4 local_6c;
  long local_68;
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] fw_len = %d,app_version = 0x%x\n","aw9620x_fw_update",0xa07,param_4,param_5);
  if (param_2 == '\0') {
    local_78[0] = 0;
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                "aw9620x_fw_version_cmp",0x722);
    iVar6 = aw9620x_i2c_read(param_1,0x1a10,local_78);
    uVar15 = local_78[0];
    if (iVar6 < 0) {
      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] read firmware version err\n","aw9620x_fw_version_cmp",0x726);
      goto LAB_001044dc;
    }
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] REG_FWVER :0x%08x bin_fwver :0x%08x!\n","aw9620x_fw_version_cmp",0x72a,
                local_78[0],param_5);
    if (uVar15 != param_5) goto LAB_001044dc;
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    puVar8 = &DAT_0010eb37;
    pcVar10 = "[%s:%d] bin fw not greater than soc fw, no update!\n";
    pcVar11 = "aw9620x_fw_update";
    uVar12 = 0xa0c;
LAB_001044d0:
    _dev_printk(puVar8,uVar9,pcVar10,pcVar11,uVar12);
    uVar9 = 0;
    goto LAB_001049e8;
  }
LAB_001044dc:
  local_88 = 0;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_send_all_update_cmd",0x974);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] 1.Send online upgrade command\n","aw9620x_send_all_update_cmd",0x978);
  local_78[0] = 0;
  iVar6 = aw9620x_i2c_write(param_1,0x4408,2);
  if (iVar6 == 0) {
    uVar15 = 0;
    do {
      iVar6 = aw9620x_i2c_read(param_1,0x1a14,local_78);
      if (iVar6 != 0) {
        uVar9 = *(undefined8 *)(param_1 + 0x30);
        puVar8 = &DAT_0010dd3c;
        pcVar11 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
        uVar12 = 0x90d;
        goto LAB_001047cc;
      }
      if (local_78[0] == 0x3000000) {
        uVar9 = *(undefined8 *)(param_1 + 0x30);
        pcVar11 = "[%s:%d] enter SLEEP MODE OK!\n";
        uVar12 = 0x911;
        goto LAB_00104634;
      }
      usleep_range_state(1000,0x3f2,2);
      bVar5 = uVar15 < 99;
      uVar15 = uVar15 + 1;
    } while (bVar5);
    iVar6 = aw9620x_i2c_read(param_1,0x1a10,local_78);
    if (iVar6 != 0) {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      puVar8 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
      uVar12 = 0x91a;
      goto LAB_001047cc;
    }
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    if (local_78[0] != 0x3000000) {
      puVar8 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] enter AW_PUB_VER SLEEP MODE err\n";
      uVar12 = 0x920;
      goto LAB_001047cc;
    }
    pcVar11 = "[%s:%d] enterA W_PUB_VER SLEEP MODE OK!\n";
    uVar12 = 0x91e;
LAB_00104634:
    _dev_printk(&DAT_0010eb37,uVar9,pcVar11,"aw9620x_send_online_cmd",uVar12);
    iVar6 = aw9620x_i2c_write(param_1,0x4408,0x14);
    if (iVar6 != 0) {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      puVar8 = &DAT_0010eb37;
      pcVar11 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
      uVar12 = 0x927;
      goto LAB_001047cc;
    }
    msleep(1);
    iVar6 = aw9620x_read_ack_irq(param_1);
    if (iVar6 != 0) {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      puVar8 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] read_ack_irq err\n";
      uVar12 = 0x92f;
      goto LAB_001047cc;
    }
    *(undefined1 *)(param_1 + 0x280) = 1;
    iVar6 = aw9620x_i2c_read(param_1,0x1c30,(undefined4 *)(param_1 + 0x290));
    if (iVar6 == 0) {
      iVar6 = aw9620x_i2c_read(param_1,0x1c34,(undefined4 *)(param_1 + 0x294));
      if (iVar6 != 0) {
        uVar9 = *(undefined8 *)(param_1 + 0x30);
        pcVar11 = "[%s:%d] read AW_BT_VER_INF_DATE err\n";
        uVar12 = 0x8e4;
        goto LAB_00104a60;
      }
      iVar6 = aw9620x_reg_read_all_val(param_1,(undefined4 *)(param_1 + 0x298),0x7fc);
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      if (iVar6 != 0) {
        pcVar11 = "[%s:%d] read bt_checksum err\n";
        uVar12 = 0x8eb;
        goto LAB_00104a60;
      }
      _dev_printk(&DAT_0010e5cb,uVar9,"[%s:%d] boot version:0x%08x, date:0x%08x, checksum 0x%08x\n",
                  "aw9620x_get_fw_and_bt_info",0x8ef,*(undefined4 *)(param_1 + 0x290),
                  *(undefined4 *)(param_1 + 0x294),*(undefined4 *)(param_1 + 0x298));
      uVar15 = 0;
      iVar6 = 0;
      uVar13 = 0xfffffffc;
      do {
        uVar13 = uVar13 + 4;
        if (uVar13 < param_4) {
          uVar14 = uVar15 + 3;
          uVar2 = uVar15 + 2;
          uVar3 = uVar15 + 1;
          uVar1 = (ulong)uVar15;
          uVar15 = uVar15 + 4;
          uVar14 = (uint)*(byte *)(param_3 + (ulong)uVar14) << 0x18 |
                   (uint)*(byte *)(param_3 + (ulong)uVar2) << 0x10 |
                   (uint)*(byte *)(param_3 + (ulong)uVar3) << 8 | (uint)*(byte *)(param_3 + uVar1);
        }
        else {
          uVar14 = 0xffffffff;
        }
        iVar6 = uVar14 + iVar6;
      } while (uVar13 >> 2 < 0xdfd);
      uVar15 = -iVar6;
      *(uint *)(param_1 + 0x28c) = uVar15;
      _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),"[%s:%d] firmwarw checksum 0x%08x\n"
                  ,"aw9620x_get_fw_and_bt_info",0x8f9,uVar15);
      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 2.send start cmd\n",
                  "aw9620x_send_all_update_cmd",0x988);
      *(undefined4 *)(param_1 + 0x24) = 1;
      iVar6 = aw9620x_send_once_cmd(param_1,1,1,0,0);
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      if (iVar6 == 0) {
        _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] 3.a en fw check erase_last_sector\n",
                    "aw9620x_send_all_update_cmd",0x993);
        local_78[0] = 0x803f0010;
        *(undefined4 *)(param_1 + 0x24) = 2;
        iVar6 = aw9620x_send_once_cmd(param_1,2,2,local_78,4);
        if (iVar6 == 0) {
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] cnt : %d, addr = 0x%x\n","aw9620x_flash_erase_last_sector",0x964,0x40
                      ,0x10003f80);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 3.b en fw check\n",
                      "aw9620x_send_all_update_cmd",0x99b);
          *(undefined4 *)(param_1 + 0x24) = 4;
          local_80 = 0;
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                      "aw9620x_write_firmware_checksum",0x892);
          uVar13 = (uVar15 & 0xff00ff00) >> 8 | (uVar15 & 0xff00ff) << 8;
          local_6c = uVar13 >> 0x10 | uVar13 << 0x10;
          local_78[0] = 0;
          local_78[1] = 0xf83f0010;
          local_78[2] = 0x22202220;
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x%x 0x%x 0x%x 0x%x\n",
                      "aw9620x_write_firmware_checksum",0x8ab,0,0,0,0);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x%x 0x%x 0x%x 0x%x\n",
                      "aw9620x_write_firmware_checksum",0x8ab,0x10,0,0x3f,0xf8);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x%x 0x%x 0x%x 0x%x\n",
                      "aw9620x_write_firmware_checksum",0x8ab,0x20,0x22,0x20,0x22);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x%x 0x%x 0x%x 0x%x\n",
                      "aw9620x_write_firmware_checksum",0x8ab,(undefined1)local_6c,local_6c._1_1_,
                      local_6c._2_1_,local_6c >> 0x18);
          iVar6 = aw9620x_send_once_cmd(param_1,1,2,local_78,0x10);
          if (iVar6 == 0) {
            iVar6 = aw9620x_reg_read_all_val(param_1,(long)&local_80 + 4,0x3ff8);
            if (iVar6 == 0) {
              iVar6 = aw9620x_reg_read_all_val(param_1,&local_80,0x3ffc);
              uVar9 = *(undefined8 *)(param_1 + 0x30);
              if (iVar6 == 0) {
                uVar13 = (uint)local_80;
                iVar6 = local_80._4_4_;
                _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] r_check_en :0x%08x, r_checksum 0x%08x\n",
                            "aw9620x_write_firmware_checksum",0x8c7,local_80._4_4_,
                            local_80 & 0xffffffff);
                uVar9 = *(undefined8 *)(param_1 + 0x30);
                if ((iVar6 == 0x20222022) && (uVar13 == uVar15)) {
                  _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] Consistent reading and writing\n",
                              "aw9620x_write_firmware_checksum",0x8ca);
                  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                              "[%s:%d] 4.send Erase Chip Cmd\n","aw9620x_send_all_update_cmd",0x9a5)
                  ;
                  iVar6 = 0;
                  uVar15 = 0x10002000;
                  do {
                    uVar13 = (uVar15 & 0xff00ff00) >> 8 | (uVar15 & 0xff00ff) << 8;
                    local_78[0] = uVar13 >> 0x10 | uVar13 << 0x10;
                    *(undefined4 *)(param_1 + 0x24) = 2;
                    iVar7 = aw9620x_send_once_cmd(param_1,2,2,local_78,4);
                    if (iVar7 != 0) {
                      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                                  "[%s:%d] send_UPDATE_START_CMD_cmd err i = %d\n",
                                  "aw9620x_flash_erase_sector",0x948,iVar6);
                      uVar9 = *(undefined8 *)(param_1 + 0x30);
                      pcVar11 = "[%s:%d] aw9620x_flash_erase_sector err\n";
                      uVar12 = 0x9a8;
                      goto LAB_001047f0;
                    }
                    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                                "[%s:%d] cnt : %d, addr = 0x%x\n","aw9620x_flash_erase_sector",0x94b
                                ,iVar6,uVar15);
                    iVar6 = iVar6 + 1;
                    uVar15 = uVar15 + 0x80;
                  } while (iVar6 != 0x3f);
                  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                              "[%s:%d] 5.Cycle write firmware\n","aw9620x_send_all_update_cmd",0x9ae
                             );
                  *(undefined4 *)(param_1 + 0x24) = 3;
                  iVar6 = aw9620x_cycle_write_firmware(param_1,param_3,param_4);
                  uVar9 = *(undefined8 *)(param_1 + 0x30);
                  if (iVar6 == 0) {
                    _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] 6.send stop\n",
                                "aw9620x_send_all_update_cmd",0x9b8);
                    *(undefined4 *)(param_1 + 0x24) = 6;
                    iVar6 = aw9620x_send_stop_cmd(param_1);
                    uVar9 = *(undefined8 *)(param_1 + 0x30);
                    if (iVar6 == 0) {
                      pcVar11 = "aw9620x_send_all_update_cmd";
                      _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] %s ok, update firmware ok!\n",
                                  "aw9620x_send_all_update_cmd",0x9c0,"aw9620x_send_all_update_cmd")
                      ;
                      uVar9 = *(undefined8 *)(param_1 + 0x30);
                      puVar8 = &DAT_0010dd3c;
                      pcVar10 = "[%s:%d] prot update fw ok!!!\n";
                      uVar12 = 0x9f5;
                      goto LAB_001044d0;
                    }
                    pcVar11 = "[%s:%d] stop err\n";
                    uVar12 = 0x9bc;
                  }
                  else {
                    pcVar11 = "[%s:%d] cycle_write_firmware err\n";
                    uVar12 = 0x9b2;
                  }
                  goto LAB_001047f0;
                }
                puVar8 = &DAT_0010dd3c;
                pcVar11 = 
                "[%s:%d] err ! r_check_en != AW_CHECK_EN_VAL || r_checksum != w_checksum\n";
                uVar12 = 0x8ce;
              }
              else {
                puVar8 = &DAT_0010eb37;
                pcVar11 = "[%s:%d] aw9620x_read check_en err\n";
                uVar12 = 0x8c1;
              }
            }
            else {
              uVar9 = *(undefined8 *)(param_1 + 0x30);
              puVar8 = &DAT_0010eb37;
              pcVar11 = "[%s:%d] aw9620x_read check_en err\n";
              uVar12 = 0x8ba;
            }
            _dev_printk(puVar8,uVar9,pcVar11,"aw9620x_write_firmware_checksum",uVar12);
          }
          else {
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] %s err\n",
                        "aw9620x_write_firmware_checksum",0x8b3,"aw9620x_write_firmware_checksum");
          }
          uVar9 = *(undefined8 *)(param_1 + 0x30);
          pcVar11 = "[%s:%d] aw9620x_write_firmware_checksum err\n";
          uVar12 = 0x99f;
        }
        else {
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] send_UPDATE_START_CMD_cmd\n","aw9620x_flash_erase_last_sector",0x961)
          ;
          uVar9 = *(undefined8 *)(param_1 + 0x30);
          pcVar11 = "[%s:%d] aw9620x_flash_erase_sector err\n";
          uVar12 = 0x996;
        }
      }
      else {
        pcVar11 = "[%s:%d] send_UPDATE_START_CMD_cmd err\n";
        uVar12 = 0x98e;
      }
    }
    else {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      pcVar11 = "[%s:%d] read AW_BT_VER_INF_VERSION err\n";
      uVar12 = 0x8de;
LAB_00104a60:
      _dev_printk(&DAT_0010dd3c,uVar9,pcVar11,"aw9620x_get_fw_and_bt_info",uVar12);
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      pcVar11 = "[%s:%d] aw9620x_get_fw_and_bt_infor\n";
      uVar12 = 0x982;
    }
  }
  else {
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    puVar8 = &DAT_0010dd3c;
    pcVar11 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
    uVar12 = 0x906;
LAB_001047cc:
    _dev_printk(puVar8,uVar9,pcVar11,"aw9620x_send_online_cmd",uVar12);
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    pcVar11 = "[%s:%d] 1.Send online upgrade command err\n";
    uVar12 = 0x97b;
  }
LAB_001047f0:
  _dev_printk(&DAT_0010eb37,uVar9,pcVar11,"aw9620x_send_all_update_cmd",uVar12);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] Write through protocol failed, start write through register\n",
              "aw9620x_send_all_update_cmd",0x9c4);
  iVar6 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
  if (iVar6 == 0) {
    iVar6 = aw9620x_i2c_read(param_1,0x4748,&local_88);
    if (iVar6 == 0) {
      if (((int)local_88 == 0) || (iVar6 = aw9620x_i2c_write(param_1,0x4748,0), iVar6 == 0)) {
        iVar6 = aw9620x_i2c_read(param_1,0x4744,(long)&local_88 + 4);
        if (iVar6 == 0) {
          if (((local_88 & 0xff00000000000000) == 0) ||
             (iVar6 = aw9620x_i2c_write(param_1,0x4744,local_88._4_4_ & 0xffffff), iVar6 == 0)) {
            iVar6 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
            if (iVar6 == 0) {
              if (param_2 != '\x01') {
                uVar9 = 0xfffffffc;
                goto LAB_001049e8;
              }
              uVar9 = *(undefined8 *)(param_1 + 0x30);
              puVar8 = &DAT_0010eb37;
              pcVar11 = "[%s:%d] aw9620x->direct_updata_flag = AW_TURE\n";
              uVar12 = 0x9ee;
            }
            else {
              uVar9 = *(undefined8 *)(param_1 + 0x30);
              puVar8 = &DAT_0010dd3c;
              pcVar11 = "[%s:%d] REG_APB_ACCESS_EN wr err\n";
              uVar12 = 0x9e9;
            }
          }
          else {
            uVar9 = *(undefined8 *)(param_1 + 0x30);
            puVar8 = &DAT_0010dd3c;
            pcVar11 = "[%s:%d] 0x4744 wr err\n";
            uVar12 = 0x9e2;
          }
        }
        else {
          uVar9 = *(undefined8 *)(param_1 + 0x30);
          puVar8 = &DAT_0010dd3c;
          pcVar11 = "[%s:%d] 0x4744 read err\n";
          uVar12 = 0x9db;
        }
      }
      else {
        uVar9 = *(undefined8 *)(param_1 + 0x30);
        puVar8 = &DAT_0010dd3c;
        pcVar11 = "[%s:%d] write REG_BOOT_LOADER_ACTIVE err\n";
        uVar12 = 0x9d4;
      }
    }
    else {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      puVar8 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] read REG_BOOT_LOADER_ACTIVE err\n";
      uVar12 = 0x9ce;
    }
  }
  else {
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    puVar8 = &DAT_0010dd3c;
    pcVar11 = "[%s:%d] REG_APB_ACCESS_EN err\n";
    uVar12 = 0x9c8;
  }
  _dev_printk(puVar8,uVar9,pcVar11,"aw9620x_send_all_update_cmd",uVar12);
  uVar9 = 0xffffffff;
LAB_001049e8:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar9);
}

