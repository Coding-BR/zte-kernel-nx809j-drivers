
void aw9620x_update_work(long param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  byte bVar3;
  long lVar4;
  bool bVar5;
  int iVar6;
  undefined *puVar7;
  undefined8 uVar8;
  char *pcVar9;
  undefined8 uVar10;
  char *pcVar11;
  undefined8 *puVar12;
  ulong uVar13;
  int local_6c;
  long local_68;
  
  lVar4 = sp_el0;
  pcVar11 = (char *)(param_1 + -0x208);
  local_68 = *(long *)(lVar4 + 0x710);
  mutex_lock(aw_lock);
  puVar12 = (undefined8 *)(param_1 + -0x1d8);
  _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] enter\n","aw9620x_update_work",0xd15);
  bVar3 = *(byte *)(param_1 + -0x202);
  if (bVar3 < 3) {
    if (bVar3 == 0) {
LAB_00105b50:
      *(undefined1 *)(param_1 + -0x205) = 0;
      iVar6 = aw9620x_load_frimware_work(pcVar11);
      if (iVar6 != 0) {
        _dev_printk(&DAT_0010dd3c,*puVar12,"[%s:%d] frimware load err!\n","aw9620x_update_work",
                    0xd30);
        goto LAB_00105cb4;
      }
LAB_00105b64:
      if (*pcVar11 == '\x01') {
        *pcVar11 = '\0';
        _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] start to download para!\n","aw9620x_para_loaded"
                    ,0xba6);
        uVar13 = 0;
        *(undefined1 *)(param_1 + -0x204) = 1;
        do {
          if (uVar13 == 200) {
            *(undefined4 *)(param_1 + -500) = 0xf;
          }
          else {
            uVar1 = (&aw9620x_reg_default)[uVar13];
            uVar2 = (&DAT_0010fbdc)[uVar13];
            aw9620x_i2c_write(pcVar11,uVar1,uVar2);
            _dev_printk(&DAT_0010e5cb,*puVar12,"[%s:%d] reg_addr = 0x%04x, reg_data = 0x%08x\n",
                        "aw9620x_para_loaded",0xbb4,uVar1,uVar2);
          }
          bVar5 = uVar13 < 0xde;
          uVar13 = uVar13 + 2;
        } while (bVar5);
        aw9620x_en_active(pcVar11);
        uVar8 = *puVar12;
        puVar7 = &DAT_0010e5cb;
        pcVar11 = "[%s:%d] para writen completely\n";
        pcVar9 = "aw9620x_para_loaded";
        uVar10 = 0xbb9;
      }
      else {
        iVar6 = aw9620x_load_def_reg_bin(pcVar11);
        if (iVar6 == 0) goto LAB_00105d98;
        uVar8 = *puVar12;
        puVar7 = &DAT_0010dd3c;
        pcVar11 = "[%s:%d] reg_bin load err!\n";
        pcVar9 = "aw9620x_update_work";
        uVar10 = 0xd68;
      }
    }
    else if (bVar3 == 2) {
      _dev_printk(&DAT_0010dd3c,*puVar12,"[%s:%d] enter\n","aw9620x_error_chipid_handle",0x3ec);
      local_6c = 0;
      _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] enter\n","aw9620x_check_chipid",0x34b);
      iVar6 = aw9620x_reg_read_all_val(pcVar11,&local_6c,0x4190);
      if (-1 < iVar6) {
        if (local_6c == 0x20226208) {
          pcVar9 = "[%s:%d] AW96208CSR check CHIP ID : 0x%08X\n";
          uVar10 = 0x20226208;
          uVar8 = 0x35c;
        }
        else if (local_6c == 0x20226205) {
          pcVar9 = "[%s:%d] AW96205DNR check CHIP ID : 0x%08X\n";
          uVar10 = 0x20226205;
          uVar8 = 0x359;
        }
        else {
          if (local_6c != 0x20226203) {
            _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] check chipid error, CHIP ID : 0x%08x\n",
                        "aw9620x_check_chipid",0x35f);
            goto LAB_00105b24;
          }
          pcVar9 = "[%s:%d] AW96203CSR check CHIP ID : 0x%08X\n";
          uVar8 = 0x356;
          uVar10 = 0x20226203;
        }
        _dev_printk(&DAT_0010eb37,*puVar12,pcVar9,"aw9620x_check_chipid",uVar8,uVar10);
        _dev_printk(&DAT_0010dd3c,*puVar12,"[%s:%d] update boot\n","aw9620x_error_chipid_handle",
                    0x3ef);
        iVar6 = aw9620x_reg_update_boot_work(pcVar11);
        uVar8 = *puVar12;
        if (iVar6 == 0) {
          _dev_printk(&DAT_0010dd3c,uVar8,"[%s:%d] update boot to flash update fw ok!!!\n",
                      "aw9620x_error_chipid_handle",0x3f2);
          iVar6 = aw9620x_soft_reset(pcVar11);
          if (iVar6 == 0) {
            iVar6 = aw9620x_read_chipid(pcVar11);
            if (iVar6 != 0) {
              _dev_printk(&DAT_0010dd3c,*puVar12,
                          "[%s:%d] after update boot, read chipid failed, ret=%d, \n",
                          "aw9620x_error_chipid_handle",0x3fc,iVar6);
              goto LAB_00105d98;
            }
            _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] after update boot, read chipid ok!\n",
                        "aw9620x_error_chipid_handle",0x3fa);
            iVar6 = aw9620x_read_init_over_irq(pcVar11);
            uVar8 = *puVar12;
            if (iVar6 == -3) {
              _dev_printk(&DAT_0010dd3c,uVar8,"[%s:%d] _read_init_over_irq, ret=%d, \n",
                          "aw9620x_update_work",0xd21,0xfffffffd);
              aw9620x_get_err_info(pcVar11);
            }
            else {
              if (iVar6 == -1) {
                puVar7 = &DAT_0010dd3c;
                pcVar11 = "[%s:%d] read chipid failed\n";
                pcVar9 = "aw9620x_update_work";
                uVar10 = 0xd1e;
                goto LAB_00105d94;
              }
              _dev_printk(&DAT_0010dd3c,uVar8,"[%s:%d] read_init_over_irq ok!\n",
                          "aw9620x_update_work",0xd24);
            }
            goto LAB_00105b50;
          }
          uVar8 = *puVar12;
          pcVar11 = "[%s:%d] soft_reset failed :%d\n";
          uVar10 = 0x3f5;
        }
        else {
          pcVar11 = "[%s:%d] update_boot_to_flash failed :%d\n";
          uVar10 = 0x3ff;
        }
        _dev_printk(&DAT_0010dd3c,uVar8,pcVar11,"aw9620x_error_chipid_handle",uVar10,0xffffffff);
        goto LAB_00105d98;
      }
      _dev_printk(&DAT_0010dd3c,*puVar12,"[%s:%d] read chipid err\n","aw9620x_check_chipid",0x350);
LAB_00105b24:
      uVar8 = *puVar12;
      puVar7 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] nvr chipid err!\n";
      pcVar9 = "aw9620x_error_chipid_handle";
      uVar10 = 0x403;
    }
    else {
LAB_00105d74:
      uVar8 = *puVar12;
      puVar7 = &DAT_0010eb37;
      pcVar11 = "[%s:%d] aw9620x->init_err_flag error\n";
      pcVar9 = "aw9620x_update_work";
      uVar10 = 0xd5d;
    }
  }
  else {
    if (bVar3 == 3) goto LAB_00105b50;
    if (bVar3 != 5) goto LAB_00105d74;
LAB_00105cb4:
    iVar6 = aw9620x_reg_update_boot_work(pcVar11);
    uVar8 = *puVar12;
    if (iVar6 == 0) {
      _dev_printk(&DAT_0010eb37,uVar8,"[%s:%d] reg_update_boot ok\n","aw9620x_update_work",0xd39);
      *(undefined1 *)(param_1 + -0x205) = 1;
      iVar6 = aw9620x_load_frimware_work(pcVar11);
      if (iVar6 == 0) {
        iVar6 = aw9620x_recover_fun(pcVar11,0);
        if (iVar6 == 0) {
          iVar6 = aw9620x_soft_reset(pcVar11);
          if (iVar6 == 0) {
            iVar6 = aw9620x_read_chipid(pcVar11);
            if (iVar6 == 0) {
              iVar6 = aw9620x_read_init_over_irq(pcVar11);
              if (iVar6 == 0) goto LAB_00105b64;
              uVar8 = *puVar12;
              puVar7 = &DAT_0010dd3c;
              pcVar11 = "[%s:%d] init_over_irq err\n";
              pcVar9 = "aw9620x_update_work";
              uVar10 = 0xd58;
            }
            else {
              uVar8 = *puVar12;
              puVar7 = &DAT_0010dd3c;
              pcVar11 = "[%s:%d] read_chipid err\n";
              pcVar9 = "aw9620x_update_work";
              uVar10 = 0xd52;
            }
          }
          else {
            uVar8 = *puVar12;
            puVar7 = &DAT_0010dd3c;
            pcVar11 = "[%s:%d] soft_reset err\n";
            pcVar9 = "aw9620x_update_work";
            uVar10 = 0xd4b;
          }
        }
        else {
          uVar8 = *puVar12;
          puVar7 = &DAT_0010dd3c;
          pcVar11 = "[%s:%d] recover_fun err\n";
          pcVar9 = "aw9620x_update_work";
          uVar10 = 0xd46;
        }
      }
      else {
        uVar8 = *puVar12;
        puVar7 = &DAT_0010dd3c;
        pcVar11 = "[%s:%d] reg frimware load err!\n";
        pcVar9 = "aw9620x_update_work";
        uVar10 = 0xd40;
      }
    }
    else {
      puVar7 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] reg_update_boot err\n";
      pcVar9 = "aw9620x_update_work";
      uVar10 = 0xd36;
    }
  }
LAB_00105d94:
  _dev_printk(puVar7,uVar8,pcVar11,pcVar9,uVar10);
LAB_00105d98:
  mutex_unlock(aw_lock);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

