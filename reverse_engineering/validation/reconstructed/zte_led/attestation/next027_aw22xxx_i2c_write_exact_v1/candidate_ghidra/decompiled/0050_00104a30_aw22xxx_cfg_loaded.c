
void aw22xxx_cfg_loaded(ulong *param_1,long param_2)

{
  ulong uVar1;
  byte bVar2;
  char cVar3;
  byte bVar4;
  byte bVar5;
  long lVar6;
  
  _printk(&DAT_001094c0,"aw22xxx_cfg_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_0010893f);
    release_firmware(0);
  }
  else {
    _printk(&DAT_001095a5,"aw22xxx_cfg_loaded",*(undefined4 *)(param_2 + 0x300),*param_1);
    if (1 < *param_1) {
      lVar6 = 0;
      bVar5 = 0;
      do {
        cVar3 = *(char *)(param_1[1] + lVar6);
        bVar4 = ((char *)(param_1[1] + lVar6))[1];
        bVar2 = bVar4;
        if (cVar3 != -1) {
          bVar2 = bVar5;
        }
        if ((*(char *)(param_2 + 0x304) == '\x01') || (bVar2 != 1)) {
          aw22xxx_i2c_write();
          if ((cVar3 == '\x02') && ((bVar2 == 0 && ((bVar4 & 1) != 0)))) {
            usleep_range_state(2000,0x9c4,2);
          }
        }
        else {
          aw22xxx_i2c_write();
        }
        uVar1 = lVar6 + 3;
        lVar6 = lVar6 + 2;
        bVar5 = bVar2;
      } while (uVar1 < *param_1);
    }
    release_firmware(param_1);
    if (*(uint *)(param_2 + 0x2f0) < 0xd) {
      aw22xxx_i2c_write();
      aw22xxx_i2c_write();
      _printk(&DAT_00108494,"aw22xxx_cfg_loaded");
    }
  }
  return;
}

