
void aw22xxx_cfg_recover_update_wait(long param_1)

{
  byte *pbVar1;
  byte bVar2;
  uint uVar3;
  ulong *puVar4;
  code *pcVar5;
  int iVar6;
  size_t sVar7;
  undefined *puVar8;
  uint uVar9;
  undefined8 uVar10;
  byte bVar11;
  ulong uVar12;
  long lVar13;
  ulong *local_60;
  long local_58;
  
  lVar13 = sp_el0;
  local_58 = *(long *)(lVar13 + 0x710);
  local_60 = (ulong *)0x0;
  _printk(&DAT_0010d681,"aw22xxx_cfg_recover_update_wait");
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 4) {
    lamp_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_0010e19c,"aw22xxx_cfg_recover_update_wait",lamp_effect);
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 2) {
    fan_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_0010d923,"aw22xxx_cfg_recover_update_wait",fan_effect);
  if (g_cfgarray_count <= *(uint *)(param_1 + 0x300)) {
    _printk(&DAT_0010e315,"aw22xxx_cfg_recover_update_wait");
    goto LAB_00106644;
  }
  _printk(&DAT_0010e65e,"aw22xxx_cfg_recover_update_wait",
          *(undefined8 *)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8));
  lVar13 = aw22xxx_cfg_name;
  uVar9 = *(uint *)(param_1 + 0x300);
  uVar12 = (ulong)uVar9;
  sVar7 = strlen(*(char **)(aw22xxx_cfg_name + uVar12 * 8));
  bVar11 = g_init_flg;
  if (sVar7 < 5) {
    _printk(&DAT_0010d0df,"aw22xxx_cfg_recover_update_wait",uVar12);
    goto LAB_00106644;
  }
  if (*(char *)(param_1 + 0x2ef) == '\x02') {
    if (uVar9 == 2) {
      *(undefined1 *)(param_1 + 0x348) = 0;
      if ((bVar11 & 1) == 0) {
LAB_0010650c:
        g_init_flg = 1;
        aw22xxx_init_cfg_update_array(param_1);
        uVar12 = (ulong)*(uint *)(param_1 + 0x300);
        lVar13 = aw22xxx_cfg_name;
      }
      else {
        uVar12 = 2;
      }
    }
    else {
      *(undefined1 *)(param_1 + 0x348) = 1;
      if ((bVar11 & 1) == 0) goto LAB_0010650c;
    }
    iVar6 = request_firmware(&local_60,*(undefined8 *)(lVar13 + uVar12 * 8),
                             *(undefined8 *)(param_1 + 8));
    puVar4 = local_60;
    if (iVar6 == 0) {
      _printk(&DAT_0010d681,"aw22xxx_cfg_recover_loaded");
      uVar10 = *(undefined8 *)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8);
      if (puVar4 == (ulong *)0x0) {
        _printk(&DAT_0010d3eb,"aw22xxx_cfg_recover_loaded",uVar10);
        release_firmware(0);
      }
      else {
        _printk(&DAT_0010d0c2,"aw22xxx_cfg_recover_loaded",uVar10,*puVar4);
        if (*puVar4 != 0) {
          uVar12 = 0;
          bVar11 = 0;
          iVar6 = 2;
          do {
            pbVar1 = (byte *)(puVar4[1] + uVar12);
            bVar2 = *pbVar1;
            if (bVar2 == 0xff) {
              bVar11 = pbVar1[1];
            }
            if ((*(char *)(param_1 + 0x304) == '\x01') || (bVar11 != 1)) {
              aw22xxx_i2c_write(param_1,bVar2,pbVar1[1]);
              if ((bVar11 == 0) &&
                 ((*(char *)(puVar4[1] + uVar12) == '\x02' &&
                  ((((char *)(puVar4[1] + uVar12))[1] & 1U) != 0)))) {
                usleep_range_state(2000,0x9c4,2);
              }
            }
            else {
              uVar9 = bVar2 - 0x10;
              if (uVar9 < 0x1b) {
                uVar3 = (uVar9 & 0xff) / 3;
                uVar9 = *(uint *)(param_1 + 0x30c + (ulong)uVar3 * 4) >>
                        (ulong)((uVar9 + uVar3 * -3 & 0x1f) * -8 + 0x10 & 0x1f);
              }
              else {
                uVar9 = (uint)pbVar1[1];
              }
              aw22xxx_i2c_write(param_1,bVar2,uVar9);
            }
            uVar12 = (ulong)iVar6;
            iVar6 = iVar6 + 2;
          } while (uVar12 < *puVar4);
        }
        release_firmware(puVar4);
        if (0xc < *(uint *)(param_1 + 0x2f0)) {
                    /* WARNING: Does not return */
          pcVar5 = (code *)SoftwareBreakpoint(0x5512,0x10675c);
          (*pcVar5)();
        }
        bVar11 = aw22xxx_imax_code[*(uint *)(param_1 + 0x2f0)];
        if (0xe < bVar11) {
          bVar11 = 0xf;
        }
        aw22xxx_i2c_write(param_1,0xff,0);
        aw22xxx_i2c_write(param_1,0xb,bVar11);
        _printk(&DAT_0010d5f4,"aw22xxx_cfg_recover_loaded");
      }
      *(int *)(param_1 + 0x2f8) = *(int *)(param_1 + 0x2f8) + 1;
      _printk(&DAT_0010db7e,"aw22xxx_cfg_recover_update_wait",0x42d);
      msleep(0x14);
      goto LAB_00106644;
    }
    puVar8 = &DAT_0010e0fd;
  }
  else {
    puVar8 = &DAT_0010d466;
  }
  _printk(puVar8,"aw22xxx_cfg_recover_update_wait");
LAB_00106644:
  lVar13 = sp_el0;
  if (*(long *)(lVar13 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

