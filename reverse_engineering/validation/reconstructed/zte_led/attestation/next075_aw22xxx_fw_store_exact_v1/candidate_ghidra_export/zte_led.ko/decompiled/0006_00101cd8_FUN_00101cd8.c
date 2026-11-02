
void FUN_00101cd8(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  int iVar2;
  undefined4 uVar3;
  long unaff_x19;
  long in_stack_00000008;
  
  iVar2 = i2c_transfer_buffer_flags(param_1,param_2,2);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
    uVar3 = gpiod_get_raw_value();
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001064eb,"aw22xxx_i2c_write",0,iVar2,uVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

