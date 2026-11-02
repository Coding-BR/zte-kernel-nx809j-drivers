
void aw9620x_flash_update(long param_1,char *param_2)

{
  char cVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined *puVar6;
  undefined8 uVar7;
  char *pcVar8;
  undefined8 uVar9;
  uint uVar10;
  uint uVar11;
  long lVar12;
  uint local_5c;
  long local_58;
  
  lVar12 = sp_el0;
  local_58 = *(long *)(lVar12 + 0x710);
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter read_len = %d\n",
              "aw9620x_flash_update",0x5af,*(undefined4 *)(param_2 + 0x10));
  _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] 1.opne register access enable\n","aw9620x_flash_update",0x5b2);
  iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00ffff);
  if (iVar3 == 0) {
    iVar3 = aw9620x_i2c_write(param_1,0x4444,0x10000);
    if (iVar3 == 0) {
      iVar3 = aw9620x_i2c_write(param_1,0x4820,6);
      if (iVar3 == 0) {
        if ((*param_2 == '\x01') &&
           (iVar3 = aw9620x_i2c_write(param_1,0x4794,0x5a637955), iVar3 != 0)) {
          uVar7 = *(undefined8 *)(param_1 + 0x30);
          pcVar8 = "[%s:%d] write 0x4794 err\n";
          uVar9 = 0x5c5;
        }
        else {
          _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] 2.Erase sector (0x3800~0x37ff)\n","aw9620x_flash_update",0x5ca);
          uVar11 = **(uint **)(param_2 + 0x18) >> 7;
          bVar2 = (**(uint **)(param_2 + 0x18) & 0x7f) != 0;
          if (bVar2) {
            uVar11 = uVar11 + 1;
          }
          _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] enter temp = %d erase_cnt = %d\n","aw9620x_erase_sector",0x55c,bVar2,
                      uVar11);
          _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] 1.open host write FMC protect\n","aw9620x_erase_sector",0x55f);
          iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
          if (iVar3 == 0) {
            iVar3 = aw9620x_i2c_write(param_1,0x4820,6);
            if (iVar3 == 0) {
              if ((*param_2 == '\0') &&
                 (iVar3 = aw9620x_i2c_write(param_1,0x4794,0x5a637955), iVar3 != 0)) {
                uVar7 = *(undefined8 *)(param_1 + 0x30);
                puVar6 = &DAT_0010d797;
                pcVar8 = "[%s:%d] write 0x4794 err\n";
                uVar9 = 0x56f;
              }
              else {
                if (uVar11 != 0) {
                  iVar3 = 0;
                  do {
                    iVar4 = aw9620x_i2c_write(param_1,0x4704,
                                              iVar3 + *(int *)(*(long *)(param_2 + 0x18) + 4));
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010c99c;
                      pcVar8 = "[%s:%d] write 0x4794 err\n";
                      uVar9 = 0x579;
                      goto LAB_00101970;
                    }
                    iVar4 = aw9620x_i2c_write(param_1,0x4710,5);
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010c99c;
                      pcVar8 = "[%s:%d] write 0x4710 err\n";
                      uVar9 = 0x57f;
                      goto LAB_00101970;
                    }
                    iVar4 = aw9620x_i2c_write(param_1,0x472c,0xf0);
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010c99c;
                      pcVar8 = "[%s:%d] write 0x472c err\n";
                      uVar9 = 0x585;
                      goto LAB_00101970;
                    }
                    iVar4 = aw9620x_i2c_write(param_1,0x4714,1);
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010c99c;
                      pcVar8 = "[%s:%d] write 0x4714 err\n";
                      uVar9 = 0x58b;
                      goto LAB_00101970;
                    }
                    iVar4 = aw9620x_check_isp_go_reg(param_1);
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010c99c;
                      pcVar8 = "[%s:%d] check_isp_go_reg err\n";
                      uVar9 = 0x591;
                      goto LAB_00101970;
                    }
                    uVar11 = uVar11 - 1;
                    iVar3 = iVar3 + 0x80;
                  } while (uVar11 != 0);
                }
                iVar3 = aw9620x_i2c_write(param_1,0x472c,0x16);
                if (iVar3 == 0) {
                  iVar3 = aw9620x_i2c_write(param_1,0x4820,4);
                  if (iVar3 == 0) {
                    iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
                    uVar7 = *(undefined8 *)(param_1 + 0x30);
                    if (iVar3 == 0) {
                      _dev_printk(&DAT_0010d797,uVar7,"[%s:%d] 3.write boot\n",
                                  "aw9620x_flash_update",0x5d2);
                      uVar11 = *(uint *)(param_2 + 0x10);
                      iVar3 = *(int *)(param_2 + 0x14);
                      lVar12 = *(long *)(param_2 + 8);
                      _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                                  "aw9620x_reg_write_bin_to_flash",0x531);
                      cVar1 = *param_2;
                      iVar4 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
                      if (iVar4 == 0) {
                        iVar4 = aw9620x_i2c_write(param_1,0x4820,6);
                        if (iVar4 != 0) {
                          uVar7 = 0x44d;
                          goto LAB_00101b94;
                        }
                        if ((cVar1 == '\0') &&
                           (iVar4 = aw9620x_i2c_write(param_1,0x4794,0x5a637955), iVar4 != 0)) {
                          uVar7 = 0x455;
                          goto LAB_00101b94;
                        }
                        if (uVar11 != 0) {
                          uVar10 = 0;
                          do {
                            iVar4 = aw9620x_reg_write_to_flash_once
                                              (param_1,iVar3 + uVar10,
                                               (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 3)) << 0x18
                                               | (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 2)) <<
                                                 0x10 | (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 1)
                                                                       ) << 8 |
                                               (uint)*(byte *)(lVar12 + (ulong)uVar10));
                            if (iVar4 != 0) {
                              uVar7 = *(undefined8 *)(param_1 + 0x30);
                              puVar6 = &DAT_0010d797;
                              pcVar8 = "[%s:%d] write aw9620x_reg_write_bin_once err\n";
                              uVar9 = 0x53f;
                              goto LAB_00101bd4;
                            }
                            uVar10 = uVar10 + 4;
                          } while (uVar10 < uVar11);
                        }
                        iVar3 = aw9620x_i2c_write(param_1,0x4820,4);
                        if (iVar3 == 0) {
                          iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
                          uVar7 = *(undefined8 *)(param_1 + 0x30);
                          if (iVar3 == 0) {
                            _dev_printk(&DAT_0010d797,uVar7,"[%s:%d] 4.read data check\n",
                                        "aw9620x_flash_update",0x5da);
                            lVar12 = *(long *)(param_2 + 8);
                            uVar11 = *(uint *)(param_2 + 0x10);
                            local_5c = 0;
                            _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                                        "[%s:%d] enter\n","aw9620x_rd_or_wi_cmp",0x4fa);
                            iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
                            if (iVar3 == 0) {
                              iVar3 = aw9620x_i2c_write(param_1,0x4820,4);
                              uVar7 = *(undefined8 *)(param_1 + 0x30);
                              if (iVar3 == 0) {
                                _dev_printk(&DAT_0010c99c,uVar7,"[%s:%d] read_cnt = %d\n",
                                            "aw9620x_rd_or_wi_cmp",0x509,uVar11);
                                if (uVar11 != 0) {
                                  uVar10 = 0;
                                  do {
                                    iVar3 = aw9620x_reg_read_val
                                                      (param_1,&local_5c,
                                                       uVar10 + *(int *)(param_2 + 0x14));
                                    if (iVar3 != 0) {
                                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                                      pcVar8 = "[%s:%d] reg_read_bin err\n";
                                      uVar9 = 0x50e;
                                      goto LAB_00101d14;
                                    }
                                    if (((uint)*(byte *)(lVar12 + (ulong)(uVar10 + 3)) << 0x18 |
                                         (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 2)) << 0x10 |
                                         (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 1)) << 8 |
                                        (uint)*(byte *)(lVar12 + (ulong)uVar10)) != local_5c) {
                                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                                      pcVar8 = "[%s:%d] w_data != r_data err!\n";
                                      uVar9 = 0x517;
                                      goto LAB_00101d14;
                                    }
                                    uVar10 = uVar10 + 4;
                                  } while (uVar10 < uVar11);
                                }
                                iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
                                uVar7 = *(undefined8 *)(param_1 + 0x30);
                                if (iVar3 == 0) {
                                  _dev_printk(&DAT_0010d797,uVar7,"[%s:%d] END\n",
                                              "aw9620x_rd_or_wi_cmp",0x522);
                                  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                                              "[%s:%d] 5.write checksum\n","aw9620x_flash_update",
                                              0x5e5);
                                  iVar3 = aw9620x_reg_write_val_to_flash
                                                    (param_1,*(undefined4 *)
                                                              (*(long *)(param_2 + 0x18) + 8),
                                                     0x20222022,param_2);
                                  uVar7 = *(undefined8 *)(param_1 + 0x30);
                                  if (iVar3 == 0) {
                                    _dev_printk(&DAT_0010d797,uVar7,"[%s:%d] write checksum en ok\n"
                                                ,"aw9620x_flash_update",0x5ec);
                                    uVar5 = aw9620x_get_bin_checksum
                                                      (*(undefined8 *)(param_2 + 8),
                                                       *(undefined4 *)(param_2 + 0x10),
                                                       **(undefined4 **)(param_2 + 0x18));
                                    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                                                "[%s:%d] check_sum = 0x%x\n","aw9620x_flash_update",
                                                0x5f1,uVar5);
                                    iVar3 = aw9620x_reg_write_val_to_flash
                                                      (param_1,*(undefined4 *)
                                                                (*(long *)(param_2 + 0x18) + 0xc),
                                                       uVar5,param_2);
                                    uVar7 = *(undefined8 *)(param_1 + 0x30);
                                    if (iVar3 == 0) {
                                      _dev_printk(&DAT_0010d797,uVar7,
                                                  "[%s:%d] 5.write checksum ok\n",
                                                  "aw9620x_flash_update",0x5f8);
                                      _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                                                  "[%s:%d] 6.open flash protect\n",
                                                  "aw9620x_flash_update",0x5fb);
                                      cVar1 = *param_2;
                                      if (cVar1 == '\x01') {
                                        iVar3 = aw9620x_i2c_write(param_1,0x4794,0);
                                        if (iVar3 != 0) {
                                          uVar7 = *(undefined8 *)(param_1 + 0x30);
                                          pcVar8 = "[%s:%d] 6.open flash protect err\n";
                                          uVar9 = 0x5ff;
                                          goto LAB_00101994;
                                        }
                                        cVar1 = *param_2;
                                      }
                                      puVar6 = &DAT_0010b82b;
                                      if (cVar1 != '\0') {
                                        puVar6 = &DAT_0010d3ef;
                                      }
                                      _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                                                  "[%s:%d] %s update success!!!\n",
                                                  "aw9620x_flash_update",0x60b,puVar6);
                                      uVar7 = 0;
                                      goto LAB_0010199c;
                                    }
                                    pcVar8 = "[%s:%d] 5.write checksum err\n";
                                    uVar9 = 0x5f5;
                                  }
                                  else {
                                    pcVar8 = "[%s:%d] write checksum en err\n";
                                    uVar9 = 0x5e9;
                                  }
                                  goto LAB_00101994;
                                }
                                pcVar8 = "[%s:%d] write 0xff20 err\n";
                                uVar9 = 0x51e;
                              }
                              else {
                                pcVar8 = "[%s:%d] config PMU_CFG reg err\n";
                                uVar9 = 0x505;
                              }
                            }
                            else {
                              uVar7 = *(undefined8 *)(param_1 + 0x30);
                              pcVar8 = "[%s:%d] write 0xff20 err\n";
                              uVar9 = 0x4ff;
                            }
LAB_00101d14:
                            _dev_printk(&DAT_0010c99c,uVar7,pcVar8,"aw9620x_rd_or_wi_cmp",uVar9);
                            uVar7 = *(undefined8 *)(param_1 + 0x30);
                            pcVar8 = "[%s:%d] reg_read_bin err\n";
                            uVar9 = 0x5e0;
                            goto LAB_00101994;
                          }
                          puVar6 = &DAT_0010c99c;
                          pcVar8 = "[%s:%d] write 0xff20 err\n";
                          uVar9 = 0x54d;
                        }
                        else {
                          uVar7 = *(undefined8 *)(param_1 + 0x30);
                          puVar6 = &DAT_0010c99c;
                          pcVar8 = "[%s:%d] write 0x4820 err\n";
                          uVar9 = 0x547;
                        }
                      }
                      else {
                        uVar7 = 0x446;
LAB_00101b94:
                        _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                                    "[%s:%d] write 0xff20 err\n","aw9620x_close_write_flash_protect"
                                    ,uVar7);
                        uVar7 = *(undefined8 *)(param_1 + 0x30);
                        pcVar8 = "[%s:%d] close_write_flash_protect err\n";
                        puVar6 = &DAT_0010c99c;
                        uVar9 = 0x535;
                      }
LAB_00101bd4:
                      _dev_printk(puVar6,uVar7,pcVar8,"aw9620x_reg_write_bin_to_flash",uVar9);
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      pcVar8 = "[%s:%d] erase_sector_main err\n";
                      uVar9 = 0x5d5;
                      goto LAB_00101994;
                    }
                    puVar6 = &DAT_0010c99c;
                    pcVar8 = "[%s:%d] write 0xff20 err\n";
                    uVar9 = 0x5a3;
                  }
                  else {
                    uVar7 = *(undefined8 *)(param_1 + 0x30);
                    puVar6 = &DAT_0010c99c;
                    pcVar8 = "[%s:%d] write 0x4820 err\n";
                    uVar9 = 0x59d;
                  }
                }
                else {
                  uVar7 = *(undefined8 *)(param_1 + 0x30);
                  puVar6 = &DAT_0010c99c;
                  pcVar8 = "[%s:%d] write 0x472c err\n";
                  uVar9 = 0x597;
                }
              }
            }
            else {
              uVar7 = *(undefined8 *)(param_1 + 0x30);
              puVar6 = &DAT_0010c99c;
              pcVar8 = "[%s:%d] write 0xff20 err\n";
              uVar9 = 0x568;
            }
          }
          else {
            uVar7 = *(undefined8 *)(param_1 + 0x30);
            puVar6 = &DAT_0010c99c;
            pcVar8 = "[%s:%d] write 0xff20 err\n";
            uVar9 = 0x562;
          }
LAB_00101970:
          _dev_printk(puVar6,uVar7,pcVar8,"aw9620x_erase_sector",uVar9);
          uVar7 = *(undefined8 *)(param_1 + 0x30);
          pcVar8 = "[%s:%d] erase_sector_main err\n";
          uVar9 = 0x5cd;
        }
      }
      else {
        uVar7 = *(undefined8 *)(param_1 + 0x30);
        pcVar8 = "[%s:%d] 0x4820 write 0x6 err\n";
        uVar9 = 0x5bf;
      }
    }
    else {
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      pcVar8 = "[%s:%d] 0x4444 write 0x10000 err\n";
      uVar9 = 0x5ba;
    }
  }
  else {
    uVar7 = *(undefined8 *)(param_1 + 0x30);
    pcVar8 = "[%s:%d] write 0xff20 err\n";
    uVar9 = 0x5b5;
  }
LAB_00101994:
  _dev_printk(&DAT_0010c99c,uVar7,pcVar8,"aw9620x_flash_update",uVar9);
  uVar7 = 0xffffffff;
LAB_0010199c:
  lVar12 = sp_el0;
  if (*(long *)(lVar12 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar7);
  }
  return;
}

