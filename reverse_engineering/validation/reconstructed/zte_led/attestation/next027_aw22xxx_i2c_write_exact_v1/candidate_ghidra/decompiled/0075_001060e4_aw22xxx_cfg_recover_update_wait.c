
void aw22xxx_cfg_recover_update_wait(long param_1)

{
  ulong uVar1;
  byte bVar2;
  char cVar3;
  byte bVar4;
  int iVar5;
  size_t sVar6;
  undefined *puVar7;
  char *__s;
  byte bVar8;
  long lVar9;
  ulong *local_60;
  long local_58;
  
  lVar9 = sp_el0;
  local_58 = *(long *)(lVar9 + 0x710);
  local_60 = (ulong *)0x0;
  _printk(&DAT_001094c0,"aw22xxx_cfg_recover_update_wait");
  _printk(&DAT_0010898a,*(undefined1 *)(param_1 + 0x2ef));
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 4) {
    lamp_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_00109708,"aw22xxx_cfg_recover_update_wait",lamp_effect);
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 2) {
    fan_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_00108a03,"aw22xxx_cfg_recover_update_wait",fan_effect);
  if ((*(uint *)(param_1 + 0x300) < g_cfgarray_count) && (aw22xxx_cfg_name != 0)) {
    __s = *(char **)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8);
    _printk(&DAT_00109072,"aw22xxx_cfg_recover_update_wait",__s);
    sVar6 = strlen(__s);
    bVar8 = g_init_flg;
    if (sVar6 < 5) {
      puVar7 = &DAT_00108fba;
    }
    else {
      if (*(char *)(param_1 + 0x2ef) == '\x02') {
        *(bool *)(param_1 + 0x348) = *(int *)(param_1 + 0x300) != 2;
        if ((bVar8 & 1) == 0) {
          g_init_flg = 1;
          aw22xxx_init_cfg_update_array(param_1);
        }
        iVar5 = request_firmware(&local_60,__s,*(undefined8 *)(param_1 + 8));
        if (iVar5 == 0) {
          _printk(&DAT_00109a92);
          if (local_60 == (ulong *)0x0) {
            _printk(&DAT_00108b7a);
            release_firmware(local_60);
          }
          else {
            _printk(&DAT_00109609,*local_60);
            if (1 < *local_60) {
              lVar9 = 0;
              bVar8 = 0;
              do {
                cVar3 = *(char *)(local_60[1] + lVar9);
                bVar4 = ((char *)(local_60[1] + lVar9))[1];
                bVar2 = bVar4;
                if (cVar3 != -1) {
                  bVar2 = bVar8;
                }
                if ((*(char *)(param_1 + 0x304) == '\x01') || (bVar2 != 1)) {
                  aw22xxx_i2c_write();
                  if ((cVar3 == '\x02') && ((bVar2 == 0 && ((bVar4 & 1) != 0)))) {
                    usleep_range_state(2000,0x9c4,2);
                  }
                }
                else {
                  aw22xxx_i2c_write();
                }
                uVar1 = lVar9 + 3;
                lVar9 = lVar9 + 2;
                bVar8 = bVar2;
              } while (uVar1 < *local_60);
            }
            release_firmware();
            if (*(uint *)(param_1 + 0x2f0) < 0xd) {
              aw22xxx_i2c_write();
              aw22xxx_i2c_write();
            }
            *(int *)(param_1 + 0x2f8) = *(int *)(param_1 + 0x2f8) + 1;
            _printk(&DAT_00108494,"aw22xxx_cfg_recover_update_wait");
            _printk(&DAT_00109a44,*(undefined4 *)(param_1 + 0x2f8));
            msleep(0x14);
          }
        }
        else {
          _printk(&DAT_001086c7,"aw22xxx_cfg_recover_update_wait",iVar5);
        }
        goto LAB_00106218;
      }
      puVar7 = &DAT_00109a6f;
    }
  }
  else {
    puVar7 = &DAT_00108a54;
  }
  _printk(puVar7,"aw22xxx_cfg_recover_update_wait");
LAB_00106218:
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

