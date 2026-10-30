
void FUN_001054c4(void)

{
  ulong uVar1;
  byte bVar2;
  char cVar3;
  byte bVar4;
  int iVar5;
  long unaff_x19;
  byte bVar6;
  long lVar7;
  ulong *in_stack_00000000;
  long in_stack_00000008;
  
  iVar5 = request_firmware();
  if (iVar5 == 0) {
    _printk(&DAT_001088ad);
    if (in_stack_00000000 == (ulong *)0x0) {
      _printk(&DAT_001082f0);
      release_firmware(0);
    }
    else {
      _printk(&DAT_001086ab,*in_stack_00000000);
      if (1 < *in_stack_00000000) {
        lVar7 = 0;
        bVar6 = 0;
        do {
          cVar3 = *(char *)(in_stack_00000000[1] + lVar7);
          bVar4 = ((char *)(in_stack_00000000[1] + lVar7))[1];
          bVar2 = bVar4;
          if (cVar3 != -1) {
            bVar2 = bVar6;
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
          uVar1 = lVar7 + 3;
          lVar7 = lVar7 + 2;
          bVar6 = bVar2;
        } while (uVar1 < *in_stack_00000000);
      }
      release_firmware();
      if (*(uint *)(unaff_x19 + 0x2f0) < 0xd) {
        aw22xxx_i2c_write();
        aw22xxx_i2c_write();
      }
      *(int *)(unaff_x19 + 0x2f8) = *(int *)(unaff_x19 + 0x2f8) + 1;
      _printk(&DAT_001080c4,"aw22xxx_cfg_recover_update_wait");
      _printk(&DAT_0010886c,*(undefined4 *)(unaff_x19 + 0x2f8));
      msleep(0x14);
    }
  }
  else {
    _printk(&DAT_00108159,"aw22xxx_cfg_recover_update_wait",iVar5);
  }
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

