
void aw22xxx_i2c_write(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  int iVar2;
  undefined1 local_3c;
  undefined1 local_3b;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = param_2;
  local_3b = param_3;
  iVar2 = i2c_transfer_buffer_flags(*param_1,&local_3c,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    gpiod_get_raw_value();
    _printk("\x013aw22xxx: %s: i2c master send error retry 1\n","aw22xxx_i2c_write");
    return;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

