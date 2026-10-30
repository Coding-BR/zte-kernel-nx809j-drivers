
void FUN_00104da8(void)

{
  ulong uVar1;
  byte bVar2;
  char cVar3;
  byte bVar4;
  long unaff_x19;
  ulong *unaff_x20;
  byte bVar5;
  long unaff_x25;
  
  bVar5 = 0;
  do {
    cVar3 = *(char *)(unaff_x20[1] + unaff_x25);
    bVar4 = ((char *)(unaff_x20[1] + unaff_x25))[1];
    bVar2 = bVar4;
    if (cVar3 != -1) {
      bVar2 = bVar5;
    }
    if ((*(char *)(unaff_x19 + 0x304) == '\x01') || (bVar2 != 1)) {
      aw22xxx_i2c_write();
      if ((cVar3 == '\x02') && ((bVar2 == 0 && ((bVar4 & 1) != 0)))) {
        usleep_range_state(2000,0x9c4,2);
      }
    }
    else {
      aw22xxx_i2c_write();
    }
    uVar1 = unaff_x25 + 3;
    unaff_x25 = unaff_x25 + 2;
    bVar5 = bVar2;
  } while (uVar1 < *unaff_x20);
  release_firmware();
  if (*(uint *)(unaff_x19 + 0x2f0) < 0xd) {
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
    _printk(&DAT_0010800c,"aw22xxx_cfg_loaded");
  }
  return;
}

