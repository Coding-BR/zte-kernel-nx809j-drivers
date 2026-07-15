
void aw22xxx_cfg_loaded(ulong *param_1,long param_2)

{
  byte *pbVar1;
  byte bVar2;
  uint uVar3;
  code *pcVar4;
  uint uVar5;
  byte bVar6;
  int iVar7;
  ulong uVar8;
  
  _printk(&DAT_0010d681,"aw22xxx_cfg_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_0010d158,"aw22xxx_cfg_loaded",*(undefined4 *)(param_2 + 0x300));
    release_firmware(0);
  }
  else {
    _printk(&DAT_0010d17c,"aw22xxx_cfg_loaded",*(undefined4 *)(param_2 + 0x300),*param_1);
    if (*param_1 != 0) {
      uVar8 = 0;
      bVar6 = 0;
      iVar7 = 2;
      do {
        pbVar1 = (byte *)(param_1[1] + uVar8);
        bVar2 = *pbVar1;
        if (bVar2 == 0xff) {
          bVar6 = pbVar1[1];
        }
        if ((*(char *)(param_2 + 0x304) == '\x01') || (bVar6 != 1)) {
          aw22xxx_i2c_write(param_2,bVar2,pbVar1[1]);
          if ((bVar6 == 0) &&
             ((*(char *)(param_1[1] + uVar8) == '\x02' &&
              ((((char *)(param_1[1] + uVar8))[1] & 1U) != 0)))) {
            usleep_range_state(2000,0x9c4,2);
          }
        }
        else {
          uVar5 = bVar2 - 0x10;
          if (uVar5 < 0x1b) {
            uVar3 = (uVar5 & 0xff) / 3;
            uVar5 = *(uint *)(param_2 + 0x30c + (ulong)uVar3 * 4) >>
                    (ulong)((uVar5 + uVar3 * -3 & 0x1f) * -8 + 0x10 & 0x1f);
          }
          else {
            uVar5 = (uint)pbVar1[1];
          }
          aw22xxx_i2c_write(param_2,bVar2,uVar5);
        }
        uVar8 = (ulong)iVar7;
        iVar7 = iVar7 + 2;
      } while (uVar8 < *param_1);
    }
    release_firmware(param_1);
    if (0xc < *(uint *)(param_2 + 0x2f0)) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x1042a8);
      (*pcVar4)();
    }
    bVar6 = aw22xxx_imax_code[*(uint *)(param_2 + 0x2f0)];
    if (0xe < bVar6) {
      bVar6 = 0xf;
    }
    aw22xxx_i2c_write(param_2,0xff,0);
    aw22xxx_i2c_write(param_2,0xb,bVar6);
    _printk(&DAT_0010d5f4,"aw22xxx_cfg_loaded");
  }
  return;
}

