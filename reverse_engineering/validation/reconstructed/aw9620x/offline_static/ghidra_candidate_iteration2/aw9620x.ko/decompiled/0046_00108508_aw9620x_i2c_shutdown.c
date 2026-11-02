
void aw9620x_i2c_shutdown(long param_1)

{
  long lVar1;
  undefined1 auStack_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  lVar1 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_0010dbe8,"aw9620x_i2c_shutdown");
  if (*(char *)(lVar1 + 5) == '\0') {
    disable_irq(*(undefined4 *)(lVar1 + 0x1c));
    *(undefined1 *)(lVar1 + 5) = 1;
  }
  aw9620x_i2c_read(lVar1,0x4410,auStack_2c);
  aw9620x_i2c_write(lVar1,0x4408,2);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

