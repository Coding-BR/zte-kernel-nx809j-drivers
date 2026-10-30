
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
  _printk(&DAT_0010920d,"aw22xxx_cfg_recover_update_wait");
  _printk(&DAT_001088e3,*(undefined1 *)(param_1 + 0x2ef));
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 4) {
    lamp_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_0010938d,"aw22xxx_cfg_recover_update_wait",lamp_effect);
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 2) {
    fan_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_00108954,"aw22xxx_cfg_recover_update_wait",fan_effect);
  if ((*(uint *)(param_1 + 0x300) >> 2 < 0x465) && (aw22xxx_cfg_name != 0)) {
    __s = *(char **)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8);
    _printk(&DAT_00108e78,"aw22xxx_cfg_recover_update_wait",__s);
    sVar6 = strlen(__s);
    bVar10 = g_init_flg;
    if (sVar6 < 5) {
      puVar7 = &DAT_00108e25;
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
          _printk(&DAT_001096f6);
          if (local_60 == (ulong *)0x0) {
            _printk(&DAT_00108a02);
            release_firmware(local_60);
          }
          else {
            _printk(&DAT_001092c0,*local_60);
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
            _printk(&DAT_00108534,"aw22xxx_cfg_recover_update_wait");
            _printk(&DAT_0010969b,*(undefined4 *)(param_1 + 0x2f8));
            msleep(0x14);
          }
        }
        else {
          _printk(&DAT_0010870a,"aw22xxx_cfg_recover_update_wait",iVar5);
        }
        goto LAB_0010492c;
      }
      puVar7 = &DAT_001096d3;
    }
  }
  else {
    puVar7 = &DAT_001089ba;
  }
  _printk(puVar7,"aw22xxx_cfg_recover_update_wait");
LAB_0010492c:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

