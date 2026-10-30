
void FUN_0010280c(void)

{
  long lVar1;
  undefined8 uVar2;
  long unaff_x19;
  long in_stack_00000008;
  
  _printk(&DAT_00106d3b);
  uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
  gpiod_direction_output_raw(uVar2,1);
  _printk(&DAT_00106c63);
  msleep(1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

