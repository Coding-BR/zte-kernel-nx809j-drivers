
void aw22xxx_cfg_recover_update_wait(long param_1)

{
  ulong uVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  char cVar5;
  int iVar6;
  size_t sVar7;
  undefined *puVar8;
  uint uVar9;
  char *__s;
  uint uVar10;
  byte bVar11;
  long lVar12;
  ulong *local_60;
  long local_58;
  
  lVar12 = sp_el0;
  local_58 = *(long *)(lVar12 + 0x710);
  local_60 = (ulong *)0x0;
  _printk(&DAT_0010844a,"aw22xxx_cfg_recover_update_wait");
  _printk(&DAT_00108119,*(undefined1 *)(param_1 + 0x2ef));
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 4) {
    lamp_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_00108507,"aw22xxx_cfg_recover_update_wait",lamp_effect);
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 2) {
    fan_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_00108152,"aw22xxx_cfg_recover_update_wait",fan_effect);
  if ((*(uint *)(param_1 + 0x300) >> 2 < 0x465) && (aw22xxx_cfg_name != 0)) {
    __s = *(char **)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8);
    _printk(&DAT_00108356,"aw22xxx_cfg_recover_update_wait",__s);
    sVar7 = strlen(__s);
    cVar5 = g_init_flg;
    if (sVar7 < 5) {
      puVar8 = &DAT_00108323;
    }
    else {
      if (*(char *)(param_1 + 0x2ef) == '\x02') {
        *(bool *)(param_1 + 0x348) = *(int *)(param_1 + 0x300) != 2;
        if (cVar5 == '\0') {
          g_init_flg = '\x01';
          aw22xxx_init_cfg_update_array(param_1);
        }
        iVar6 = request_firmware(&local_60,__s,*(undefined8 *)(param_1 + 8));
        if (iVar6 == 0) {
          _printk(&DAT_00108658);
          if (local_60 == (ulong *)0x0) {
            _printk(&DAT_001081c3);
            release_firmware(local_60);
          }
          else {
            _printk(&DAT_001084c4,*local_60);
            if (1 < *local_60) {
              lVar12 = 0;
              bVar11 = 0;
              do {
                bVar3 = *(byte *)(local_60[1] + lVar12);
                bVar4 = ((byte *)(local_60[1] + lVar12))[1];
                uVar10 = (uint)bVar4;
                bVar2 = bVar4;
                if (bVar3 != 0xff) {
                  bVar2 = bVar11;
                }
                uVar9 = (uint)bVar3;
                if ((*(char *)(param_1 + 0x304) == '\x01') || (bVar2 != 1)) {
                  aw22xxx_i2c_write(param_1,uVar9,bVar4);
                  if ((uVar9 == 2) && ((bVar2 == 0 && ((bVar4 & 1) != 0)))) {
                    usleep_range_state(2000,0x9c4,2);
                  }
                }
                else {
                  if (bVar3 - 0x10 < 0x1b) {
                    uVar10 = *(uint *)(param_1 + 0x30c + ((ulong)(uVar9 - 0x10) / 3) * 4) >>
                             (ulong)(((uVar9 - 0x10) % 3) * -8 + 0x10 & 0x1f);
                  }
                  aw22xxx_i2c_write(param_1,bVar3,uVar10);
                }
                uVar1 = lVar12 + 3;
                lVar12 = lVar12 + 2;
                bVar11 = bVar2;
              } while (uVar1 < *local_60);
            }
            release_firmware();
            if (*(uint *)(param_1 + 0x2f0) < 0xd) {
              bVar11 = aw22xxx_imax_code[*(uint *)(param_1 + 0x2f0)];
              if (0xe < bVar11) {
                bVar11 = 0xf;
              }
              aw22xxx_i2c_write(param_1,0xff,0);
              aw22xxx_i2c_write(param_1,0xb,bVar11);
            }
            *(int *)(param_1 + 0x2f8) = *(int *)(param_1 + 0x2f8) + 1;
            _printk(&DAT_0010800c,"aw22xxx_cfg_recover_update_wait");
            _printk(&DAT_00108617,*(undefined4 *)(param_1 + 0x2f8));
            msleep(0x14);
          }
        }
        else {
          _printk(&DAT_0010808b,"aw22xxx_cfg_recover_update_wait",iVar6);
        }
        goto LAB_00105030;
      }
      puVar8 = &DAT_00108635;
    }
  }
  else {
    puVar8 = &DAT_0010818b;
  }
  _printk(puVar8,"aw22xxx_cfg_recover_update_wait");
LAB_00105030:
  lVar12 = sp_el0;
  if (*(long *)(lVar12 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

