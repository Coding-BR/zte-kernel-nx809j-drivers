
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
  
  _printk(&DAT_0010859e,"aw22xxx_cfg_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_00108192);
    release_firmware(0);
  }
  else {
    _printk(&DAT_001085f6,"aw22xxx_cfg_loaded",*(undefined4 *)(param_2 + 0x300),*param_1);
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
      bVar7 = aw22xxx_imax_code[*(uint *)(param_2 + 0x2f0)];
      if (0xe < bVar7) {
        bVar7 = 0xf;
      }
      aw22xxx_i2c_write(param_2,0xff,0);
      aw22xxx_i2c_write(param_2,0xb,bVar7);
      _printk(&DAT_00108074,"aw22xxx_cfg_loaded");
    }
  }
  return;
}

