
void FUN_001053d0(void)

{
  ulong uVar1;
  char cVar2;
  byte bVar3;
  long lVar4;
  long unaff_x19;
  byte bVar5;
  byte unaff_w22;
  long unaff_x24;
  ulong *in_stack_00000000;
  long in_stack_00000008;
  
  do {
    aw22xxx_i2c_write();
    bVar5 = unaff_w22;
    while( true ) {
      uVar1 = unaff_x24 + 3;
      unaff_x24 = unaff_x24 + 2;
      if (*in_stack_00000000 <= uVar1) {
        release_firmware();
        if (*(uint *)(unaff_x19 + 0x2f0) < 0xd) {
          aw22xxx_i2c_write();
          aw22xxx_i2c_write();
        }
        *(int *)(unaff_x19 + 0x2f8) = *(int *)(unaff_x19 + 0x2f8) + 1;
        _printk(&DAT_0010801c,"aw22xxx_cfg_recover_update_wait");
        _printk(&UNK_0010869c,*(undefined4 *)(unaff_x19 + 0x2f8));
        msleep(0x14);
        lVar4 = sp_el0;
        if (*(long *)(lVar4 + 0x710) != in_stack_00000008) {
                    /* WARNING: Subroutine does not return */
          __stack_chk_fail();
        }
        return;
      }
      cVar2 = *(char *)(in_stack_00000000[1] + unaff_x24);
      bVar3 = ((char *)(in_stack_00000000[1] + unaff_x24))[1];
      unaff_w22 = bVar3;
      if (cVar2 != -1) {
        unaff_w22 = bVar5;
      }
      if ((*(char *)(unaff_x19 + 0x304) != '\x01') && (unaff_w22 == 1)) break;
      aw22xxx_i2c_write();
      bVar5 = unaff_w22;
      if ((cVar2 == '\x02') && ((unaff_w22 == 0 && ((bVar3 & 1) != 0)))) {
        usleep_range_state(2000,0x9c4,2);
      }
    }
  } while( true );
}

