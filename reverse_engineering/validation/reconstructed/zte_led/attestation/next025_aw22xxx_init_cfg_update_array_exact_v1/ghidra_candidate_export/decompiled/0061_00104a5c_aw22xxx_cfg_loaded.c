
void aw22xxx_cfg_loaded(ulong *param_1,long param_2)

{
  ulong uVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  byte bVar5;
  byte bVar6;
  long lVar7;
  
  _printk(&DAT_001095b8,"aw22xxx_cfg_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_00108992);
    release_firmware(0);
  }
  else {
    _printk(&DAT_0010969d,"aw22xxx_cfg_loaded",*(undefined4 *)(param_2 + 0x300),*param_1);
    if (1 < *param_1) {
      lVar7 = 0;
      bVar5 = 0;
      do {
        bVar3 = *(byte *)(param_1[1] + lVar7);
        bVar6 = ((byte *)(param_1[1] + lVar7))[1];
        bVar2 = bVar6;
        if (bVar3 != 0xff) {
          bVar2 = bVar5;
        }
        if ((*(char *)(param_2 + 0x304) == '\x01') || (bVar2 != 1)) {
          aw22xxx_i2c_write(param_2,bVar3,bVar6);
          if ((bVar3 == 2) && ((bVar2 == 0 && ((bVar6 & 1) != 0)))) {
            usleep_range_state(2000,0x9c4,2);
          }
        }
        else {
          if (bVar3 - 0x10 < 0x1b) {
            uVar4 = bVar3 - 0x10;
            bVar6 = (byte)(*(uint *)(param_2 + 0x30c + ((ulong)uVar4 / 3) * 4) >>
                          (ulong)((uVar4 % 3) * -8 + 0x10 & 0x1f));
          }
          aw22xxx_i2c_write(param_2,bVar3,bVar6);
        }
        uVar1 = lVar7 + 3;
        lVar7 = lVar7 + 2;
        bVar5 = bVar2;
      } while (uVar1 < *param_1);
    }
    release_firmware(param_1);
    if (*(uint *)(param_2 + 0x2f0) < 0xd) {
      bVar5 = (&aw22xxx_imax_code)[*(uint *)(param_2 + 0x2f0)];
      if (0xe < bVar5) {
        bVar5 = 0xf;
      }
      aw22xxx_i2c_write(param_2,0xff,0);
      aw22xxx_i2c_write(param_2,0xb,bVar5);
      _printk(&DAT_001084bc,"aw22xxx_cfg_loaded");
    }
  }
  return;
}

