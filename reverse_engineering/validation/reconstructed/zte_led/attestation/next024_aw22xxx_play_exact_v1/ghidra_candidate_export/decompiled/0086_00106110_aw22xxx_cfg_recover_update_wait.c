
void aw22xxx_cfg_recover_update_wait(long param_1)

{
  ulong uVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  int iVar5;
  size_t sVar6;
  undefined *puVar7;
  byte bVar8;
  char *__s;
  byte bVar9;
  long lVar10;
  ulong *local_60;
  long local_58;
  
  lVar10 = sp_el0;
  local_58 = *(long *)(lVar10 + 0x710);
  local_60 = (ulong *)0x0;
  _printk(&DAT_001095b8,"aw22xxx_cfg_recover_update_wait");
  _printk(&DAT_001089dd,*(undefined1 *)(param_1 + 0x2ef));
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 4) {
    lamp_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_00109800,"aw22xxx_cfg_recover_update_wait",lamp_effect);
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 2) {
    fan_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_00108a56,"aw22xxx_cfg_recover_update_wait",fan_effect);
  if ((*(uint *)(param_1 + 0x300) < g_cfgarray_count) && (aw22xxx_cfg_name != 0)) {
    __s = *(char **)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8);
    _printk(&DAT_0010913c,"aw22xxx_cfg_recover_update_wait",__s);
    sVar6 = strlen(__s);
    bVar8 = g_init_flg;
    if (sVar6 < 5) {
      puVar7 = &DAT_0010904c;
    }
    else {
      if (*(char *)(param_1 + 0x2ef) == '\x02') {
        *(bool *)(param_1 + 0x348) = *(int *)(param_1 + 0x300) != 2;
        if ((bVar8 & 1) == 0) {
          g_init_flg = 1;
          aw22xxx_init_cfg_update_array();
        }
        iVar5 = request_firmware(&local_60,__s,*(undefined8 *)(param_1 + 8));
        if (iVar5 == 0) {
          _printk(&DAT_00109b8a);
          if (local_60 == (ulong *)0x0) {
            _printk(&DAT_00108bcd);
            release_firmware(local_60);
          }
          else {
            _printk(&DAT_00109701,*local_60);
            if (1 < *local_60) {
              lVar10 = 0;
              bVar8 = 0;
              do {
                bVar3 = *(byte *)(local_60[1] + lVar10);
                bVar9 = ((byte *)(local_60[1] + lVar10))[1];
                bVar2 = bVar9;
                if (bVar3 != 0xff) {
                  bVar2 = bVar8;
                }
                if ((*(char *)(param_1 + 0x304) == '\x01') || (bVar2 != 1)) {
                  aw22xxx_i2c_write(param_1,bVar3,bVar9);
                  if ((bVar3 == 2) && ((bVar2 == 0 && ((bVar9 & 1) != 0)))) {
                    usleep_range_state(2000,0x9c4,2);
                  }
                }
                else {
                  if (bVar3 - 0x10 < 0x1b) {
                    uVar4 = bVar3 - 0x10;
                    bVar9 = (byte)(*(uint *)(param_1 + 0x30c + ((ulong)uVar4 / 3) * 4) >>
                                  (ulong)((uVar4 % 3) * -8 + 0x10 & 0x1f));
                  }
                  aw22xxx_i2c_write(param_1,bVar3,bVar9);
                }
                uVar1 = lVar10 + 3;
                lVar10 = lVar10 + 2;
                bVar8 = bVar2;
              } while (uVar1 < *local_60);
            }
            release_firmware();
            if (*(uint *)(param_1 + 0x2f0) < 0xd) {
              bVar8 = (&aw22xxx_imax_code)[*(uint *)(param_1 + 0x2f0)];
              if (0xe < bVar8) {
                bVar8 = 0xf;
              }
              aw22xxx_i2c_write(param_1,0xff,0);
              aw22xxx_i2c_write(param_1,0xb,bVar8);
            }
            *(int *)(param_1 + 0x2f8) = *(int *)(param_1 + 0x2f8) + 1;
            _printk(&DAT_001084bc,"aw22xxx_cfg_recover_update_wait");
            _printk(&DAT_00109b3c,*(undefined4 *)(param_1 + 0x2f8));
            msleep(0x14);
          }
        }
        else {
          _printk(&DAT_00108704,"aw22xxx_cfg_recover_update_wait",iVar5);
        }
        goto LAB_00106244;
      }
      puVar7 = &DAT_00109b67;
    }
  }
  else {
    puVar7 = &DAT_00108aa7;
  }
  _printk(puVar7,"aw22xxx_cfg_recover_update_wait");
LAB_00106244:
  lVar10 = sp_el0;
  if (*(long *)(lVar10 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

