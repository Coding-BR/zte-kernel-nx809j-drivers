
void FUN_0010501c(void)

{
  ulong uVar1;
  char cVar2;
  long lVar3;
  long unaff_x19;
  byte unaff_w21;
  byte bVar4;
  byte unaff_w22;
  long unaff_x24;
  ulong *in_stack_00000000;
  long in_stack_00000008;
  
  do {
    bVar4 = unaff_w22;
    if ((unaff_w21 & 1) != 0) {
      usleep_range_state(2000,0x9c4,2);
    }
    do {
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
          _printk(&DAT_00108024,"aw22xxx_cfg_recover_update_wait");
          _printk(&UNK_0010893e,*(undefined4 *)(unaff_x19 + 0x2f8));
          msleep(0x14);
          lVar3 = sp_el0;
          if (*(long *)(lVar3 + 0x710) == in_stack_00000008) {
            return;
          }
                    /* WARNING: Subroutine does not return */
          __stack_chk_fail();
        }
        cVar2 = *(char *)(in_stack_00000000[1] + unaff_x24);
        unaff_w21 = ((char *)(in_stack_00000000[1] + unaff_x24))[1];
        unaff_w22 = unaff_w21;
        if (cVar2 != -1) {
          unaff_w22 = bVar4;
        }
        bVar4 = unaff_w22;
        if ((*(char *)(unaff_x19 + 0x304) == '\x01') || (unaff_w22 != 1)) break;
        aw22xxx_i2c_write();
      }
      aw22xxx_i2c_write();
    } while ((cVar2 != '\x02') || (unaff_w22 != 0));
  } while( true );
}

