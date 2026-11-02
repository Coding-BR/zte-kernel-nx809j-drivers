
void FUN_00104ff0(ulong *param_1)

{
  ulong uVar1;
  byte bVar2;
  char cVar3;
  byte bVar4;
  long unaff_x19;
  byte bVar5;
  long lVar6;
  ulong *in_stack_00000000;
  long in_stack_00000008;
  
  lVar6 = 0;
  bVar5 = 0;
  do {
    cVar3 = *(char *)(param_1[1] + lVar6);
    bVar4 = ((char *)(param_1[1] + lVar6))[1];
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
    uVar1 = lVar6 + 3;
    lVar6 = lVar6 + 2;
    param_1 = in_stack_00000000;
    bVar5 = bVar2;
  } while (uVar1 < *in_stack_00000000);
  release_firmware();
  if (*(uint *)(unaff_x19 + 0x2f0) < 0xd) {
    aw22xxx_i2c_write();
    aw22xxx_i2c_write();
  }
  *(int *)(unaff_x19 + 0x2f8) = *(int *)(unaff_x19 + 0x2f8) + 1;
  _printk(&DAT_00108004,"aw22xxx_cfg_recover_update_wait");
  _printk(&DAT_001088f0,*(undefined4 *)(unaff_x19 + 0x2f8));
  msleep(0x14);
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

